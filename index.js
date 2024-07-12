/*
   SmartSync  
   SWR EXPERIMENTALSTUDIO 
   Maurice Oeser
   2024
*/

// **************** Server setup ****************************

const Max = require('max-api');
const SmartSyncServer = require('smart-sync-server');

/*
  MaxMSP Message Handlers
*/

Max.addHandler("/getelapsedtime", () => {
  Max.outlet("/elapsedtime", server.getElapsedTime());
});

Max.addHandler("/getclients", () => {

  Max.outlet("/clientdata/start");

  server.clients.forEach((client, key) => {
    Max.outlet("/clientdata", client.id, client.x, client.y, client.z);
  });

  Max.outlet("/clientdata/end");
});

Max.addHandler("/loopduration", (duration) => {
  server.setLoopDuration(duration);
});

Max.addHandler("/setstarttime", () => {
  server.setStartTime();
});

Max.addHandler("/schedulesound", (clientID, soundID, timeUntilEvent) => {
  server.scheduleClientSound(clientID, soundID , timeUntilEvent);
});

Max.addHandler("/stopsound", (clientID, soundID) => {
  server.stopClientSound(clientID, soundID);
});

Max.addHandler("/stopsounds", () => {
  server.stopAllSounds();
});

Max.addHandler("/pausesound", (clientID, soundID) => {
  server.pauseSound(clientID, soundID);
});

Max.addHandler("/pausesounds", () => {
  server.pauseAllSounds();
});




function onClientConnect(id, x, y, z)
{
  Max.outlet("/clientconnect", id, x, y, z);
}

function onClientMessage(msg)
{
  Max.outlet("/clientmessage", msg);
}

function onClientDisconnect(id)
{
  Max.outlet("/clientdisconnect", id);
}

const server = new SmartSyncServer();

server.onClientConnect = onClientConnect;
server.onClientDisconnect = onClientDisconnect;

server.start();
