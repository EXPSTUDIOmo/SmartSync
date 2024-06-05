/*
   SmartSync  
   SWR EXPERIMENTALSTUDIO 
   Maurice Oeser
   2024
*/

// **************** Server setup ****************************


// MaxMSP node setup
const Max = require('max-api');

Max.addHandler("mode", (mode) => {
  switchMode(mode);
});


// standard express HTTP Server setup with socket.io
const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const { Server } = require("socket.io");
const io = new Server(server);

// timesync server to synchronize the devices
const timesyncServer = require('timesync/server');

app.use(express.static('public'));
app.use('/timesync', timesyncServer.requestHandler);
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
});

server.listen(3000, () => {
  console.log('listening on *:3000');
});


// **********************************************************

let clients = new Map(); // list of all connected clients
let bStartTimeSet = false; // if starttime is initiates or not
let START_TIME = -1; // the startpoint where the server started 
let PIECE_DURATION = 54864;
let isPlaying = false;


// ********************** Socket.IO *************************
io.on('connection', (socket) => {

  let voiceid = parseInt(socket.handshake.query.voiceid);
  
  if(isNaN(voiceid))
  {
    //voiceid = anonymousClientCounter++;
  }
    
  socket.voiceid = voiceid;  
  clients.set(socket.voiceid, socket);
  socket.emit('connected', {id: socket.voiceid, isPlaying: false, startTime: START_TIME, mode: currentMode});

  if(bStartTimeSet)
    socket.emit('starttime', START_TIME);

  socket.on('disconnect', () => {
    clients.delete(socket.voiceid);
  oscToMax.send("/userdisconnect", socket.id, socket.voiceid);
  });

  socket.on('activate', () => {
    oscToMax.send('/userconnect', socket.id, socket.voiceid);
 })

  socket.on('playsound', (soundID) => {
    Max.outlet("play", soundID);
  });

});

let currentMode = 0;

function switchMode(mode)
{

  currentMode = mode;

  clients.forEach((value, key) => {
    value.emit('mode', mode);
  });
}









// ======================= OSC ADMIN CONTROL =======================
const OSCserver = require('node-osc').Server;
const OSCClient = require('node-osc').Client;


const oscToMax = new OSCClient('127.0.0.1', 5555);

var oscServer = new OSCserver(3333, '0.0.0.0', () => {
  console.log('OSC Server is listening');
});


oscServer.on('message', function (msg) {

  let AP = msg[0]; // AdressPattern

  switch(AP)
  {
    case '/start':
      startPlayback();
      oscToMax.send('/node', "started");
      break;
    
    case '/stop':
      stopPlayback();
      oscToMax.send('/node', "stopped");
      break;

    case '/stopsync':
      stopSyncing();
      break;

    case '/colorall':
      let R = msg[1];
      let G = msg[2];
      let B = msg[3];

      setClientColors(R,G,B);
      break;

    case '/play':
      let clientID = msg[1];
      playSound(clientID);
      break;

    case '/client':
      routeMaxMessageToClient(msg);
      break;

    case '/broadcast':
      broadcastMaxMessage(msg);
      console.log("broadcast");
      break;
  }

});



function routeMaxMessageToClient(msg)
{
  let clientID = msg[1];
  msg.splice(0,2);

  let client = clients.get(clientID);

  if(client != undefined)
    client.emit('max', msg);
}

function broadcastMaxMessage(msg)
{
  msg.splice(0,1);

  clients.forEach((value, key) => {
    value.emit('max', msg);
  });
}


function broadcastMessage(msg)
{
  clients.forEach((value, key) => {
    value.emit('msg', msg);
  });
}


function stopSyncing()
{
  clients.forEach((value) => {
    value.emit('stopsync');
    
  });
}

function setStartTime()
{
  START_TIME = Date.now();
  bStartTimeSet = true;
}

setStartTime();
