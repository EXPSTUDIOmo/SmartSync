/*
    SWR EXPERIMENTALSTUDIO 2024
    Maurice Oeser

    Smart Sync
*/

// TIME_SYNC object, handles synchronisation between server and clients. (https://github.com/enmasseio/timesync)
let TIME_SYNC = timesync.create({ server: '/timesync', interval: 1000});

TIME_SYNC.on('change', function (offset) {
    SERVER_TIME_OFFSET = offset * -1;
  });

// Scheduler WebWorker, this handles the precise timing of events due to spinning. notifies mainthread then when an event should fire
const scheduler = new Worker('/js/Scheduler.js');

// Socket.IO connection to the server
const urlParams = new URLSearchParams(window.location.search);
let voiceid = urlParams.get('voiceid');
let SERVER_START_TIME = -1;

const socket = io({
    query: {
      voiceid: voiceid,
    }
});


socket.on('connected', (state) => {
    console.log("id:", state.id, state.isPlaying, state.startTime, state.mode);
    SERVER_START_TIME = state.startTime;
    switchMode(state.mode);
});

socket.on('start', () => {
    console.log("start");
})


socket.on('mode', (mode) => {
    switchMode(mode);
});

let SERVER_TIME = -1;
let ELAPSED_SERVER_TIME = -1;
let SERVER_TIME_OFFSET = 0;
let PIECE_DURATION = 54864;

function sync()
{
    SERVER_TIME = TIME_SYNC.now();
    let localTime = Date.now();
    SERVER_TIME_OFFSET = localTime - SERVER_TIME;
    console.log("offset:", SERVER_TIME_OFFSET);
    ELAPSED_SERVER_TIME = SERVER_TIME - SERVER_START_TIME;
    //scheduler.postMessage({id: 'sync', elapsedTime: elapsedTime, timePoint: Date.now()});
}

function playSound(soundID)
{
    let localTime = Date.now() - SERVER_TIME_OFFSET;
    let playTime = ((SERVER_START_TIME + localTime) % PIECE_DURATION) / 1000.0;
    SOUNDS[soundID].seek(playTime);
    SOUNDS[soundID].play();
    console.log(playTime, SERVER_TIME_OFFSET);
}


function notifySound(soundID)
{
    socket.emit('playsound', soundID);
}

function stopSound(soundID)
{
    SOUNDS[soundID].stop();
}

let SOUNDS = [];

for(let i = 0; i < 16; ++i)
{
    SOUNDS.push(new Howl({
        src: [`../Samples/SS${i+1}.mp3`],
        loop: true
    }));
}

let currentMode = 0;

function switchMode(mode)
{
    currentMode = mode;

    for(let sound of SOUNDS)
    {
        sound.stop();
    }

    if(mode === 0)
    {
        document.getElementById('content_mode0').style.display = "flex";
        document.getElementById('content_mode1').style.display = "none";
        document.body.style.backgroundColor = "white";
    }

    else 
    {
        document.getElementById('content_mode0').style.display = "none";
        document.getElementById('content_mode1').style.display = "flex";
        document.body.style.backgroundColor = "green";
    }
}


/*
    Scheduler callbacks
*/

scheduler.onmessage = (event) => {

    switch(event.data.id)
    {
        case 'event':
            handleEvent(event.data.data);
            break;

        case 'done':
            break;
    }
};

let sound = 0;
function handleEvent(schedulerEvent)
{
    if(schedulerEvent.sound == 99)
    {
        SOUNDS[sound++].play();

        if(sound >= 11)
            sound = 0;

        logTimeBetweenEvents();
    }

}

document.getElementById('syncbtn').onclick = () => {
    sync();
    document.getElementById('startscreen').style.display = "none";
    switchMode(currentMode);
}

let buttons = [];

for(let i = 0; i < 16; ++i)
{
    let button = document.getElementById(`playbtn${i+1}`);
    buttons.push(button);

    button.addEventListener('touchstart', function(event) {
        playSound(i)
        button.style.border = "3px solid green";
    });

    button.addEventListener('touchend', function(event) {
        stopSound(i);
        button.style.border = "1px solid black";
    });

    button.addEventListener('mousedown', function(event) {
        playSound(i)
    });

    button.addEventListener('mouseup', function(event) {
        stopSound(i);
    });
}


for(let i = 16; i < 25; ++i)
{
    let button = document.getElementById(`playbtn${i+1}`);
    buttons.push(button);

    button.addEventListener('touchstart', function(event) {
        notifySound(i - 16)
        button.style.border = "3px solid blue";
    });

    button.addEventListener('touchend', function(event) {
        button.style.border = "1px solid black";
    });

    button.addEventListener('mousedown', function(event) {
        button.style.border = "3px solid blue";
        notifySound(i - 16)
    });

    button.addEventListener('mouseup', function(event) {
        button.style.border = "1px solid black";
    });
}
