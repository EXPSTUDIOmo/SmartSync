let client = new SmartSyncClient({debug: true});
client.connect();


for(let i = 1; i < 17; ++i)
{
    client.appendSound({src: [`../Samples/SS${i}.mp3`], loop: true});
}

document.getElementById('syncbtn').onclick = () => {
    document.getElementById('startscreen').style.display = "none";
    switchMode(currentMode);
    client.sync();
}


for(let i = 0; i < 16; ++i)
{
    let button = document.getElementById(`playbtn${i+1}`);

    button.addEventListener('touchstart', function(event) {
        client.playSound(i, client.getElapsedServerTime());
        button.style.border = "3px solid green";
    });

    button.addEventListener('touchend', function(event) {
        client.stopSound(i);
        button.style.border = "1px solid black";
    });

    button.addEventListener('mousedown', function(event) {
        client.playSound(i, client.getElapsedServerTime());
        button.style.border = "3px solid green";
    });

    button.addEventListener('mouseup', function(event) {
        client.stopSound(i);
        button.style.border = "1px solid black";
    });
}


























let currentMode = 0;

function switchMode(mode)
{
    currentMode = mode;

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