let client = new SmartSyncClient({debug: true});
client.connect();


client.appendSound({src: [`../Samples/SS1.mp3`], loop: false});
client.appendSound({src: [`../Samples/SS2.mp3`], loop: false});


// let currentMode = 0;
// let SOUNDS = [];

// document.getElementById('syncbtn').onclick = () => {
//     document.getElementById('startscreen').style.display = "none";
//     switchMode(currentMode);
// }



// // let buttons = [];

// for(let i = 0; i < 16; ++i)
// {
//     let button = document.getElementById(`playbtn${i+1}`);
//     //buttons.push(button);

//     button.addEventListener('touchstart', function(event) {
//         playSound(i)
//         button.style.border = "3px solid green";
//     });

//     button.addEventListener('touchend', function(event) {
//         stopSound(i);
//         button.style.border = "1px solid black";
//     });

//     button.addEventListener('mousedown', function(event) {
//        client.playSound(i)
//     });

//     button.addEventListener('mouseup', function(event) {
//         client.stopSound(i);
//     });
// }






// function switchMode(mode)
// {
//     currentMode = mode;

//     for(let sound of SOUNDS)
//     {
//         sound.stop();
//     }

//     if(mode === 0)
//     {
//         document.getElementById('content_mode0').style.display = "flex";
//         document.getElementById('content_mode1').style.display = "none";
//         document.body.style.backgroundColor = "white";
//     }

//     else 
//     {
//         document.getElementById('content_mode0').style.display = "none";
//         document.getElementById('content_mode1').style.display = "flex";
//         document.body.style.backgroundColor = "green";
//     }
// }