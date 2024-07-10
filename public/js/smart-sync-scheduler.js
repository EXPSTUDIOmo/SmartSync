/*
   SWR EXPERIMENTALSTUDIO 07/2024
   Maurice Oeser

   SmartSync Scheduler - handles high precision firing of events by spinning before an event.
*/

const spinTime = 35;
let serverTimeOffset = 0;



/*
    Message handlers
*/
onmessage = (event) => {

    switch(event.data.id)
    {
        case 'offset': 
            updateServerOffset(event.data.offset);
            break;
        
        case 'schedulesound':
            scheduleSound(event.data.index, event.data.timeToEvent);

        default:
            break;
    }
};


function updateServerOffset(newOffset)
{
    serverTimeOffset = newOffset;
}


function scheduleSound(soundIndex, timeToEvent)
{
    let localEventTime = Date.now() + timeToEvent;

    setTimeout(() => {
        waitForEvent({id: "sound", index: soundIndex, time: localEventTime});
    }, timeToEvent - spinTime);
}

function waitForEvent(event)
{
    while(Date.now() < event.time)
    {
        // we wait
    }

    triggerEvent(event);
}


function triggerEvent(event)
{
    postMessage(event);
}


// let isRunning = false;
// let events = [];
// let SCHEDULER_TIMEOUT;
// let nextEvent;
// let nextEventTime;
// let elapsedTime = 0;
// let lastSyncTime = 0;
// let START_TIME = 0;
// let eventIndex = 0;

// function start()
// {
//     if(events.length > 0 && !isRunning)
//     {
//         eventIndex = 0;
//         isRunning = true;
//         scheduleNextEvent();
//     }       
// }

// function stop()
// {
//     clearTimeout(SCHEDULER_TIMEOUT);
//     isRunning = false;
// }

// function scheduleNextEvent()
// {
//     if(!isRunning || eventIndex >= events.length)
//     {
//         postMessage({id: "done"});
//         return;
//     }
    
//     nextEvent = events[eventIndex];
//     eventIndex++;

//     if(nextEvent == undefined)
//     {
//         isRunning = false;
//         postMessage({id: "done"});
//         return;
//     }


//     let now = Date.now();
//     let timeSinceLastSync = now - lastSyncTime;
//     let timeUntilEvent = Math.round(nextEvent.time - (elapsedTime + timeSinceLastSync));
    
//     nextEventTime = now + timeUntilEvent;


//     if(timeUntilEvent < 0)
//     {
//         scheduleNextEvent();
//     }

//     else if(timeUntilEvent <= spinTime)
//     {
//         waitForEvent();
//     }

//     else
//     {
//         SCHEDULER_TIMEOUT = setTimeout(waitForEvent, timeUntilEvent - spinTime);
//     }

// }








// function sync(elapsedServerTime, atTimePoint)
// {
//     elapsedTime = elapsedServerTime;
//     lastSyncTime = atTimePoint;

//     if(elapsedTime > 0)
//         start();
//     else
//         stop();
// }



