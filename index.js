/*
   SmartSync  
   SWR EXPERIMENTALSTUDIO 
   Maurice Oeser
   2024
*/

// **************** Server setup ****************************


// if used in MaxMSP directly, use this ( WARNING : this will prevent the code from running in a non MaxMSP environment)
/*
  const Max = require('max-api');

  Max.addHandler("example", (arguments) => {
    doSomething()
  });
*/

const SmartSyncServer = require('smart-sync-server');

let osc = {
  senderIP : "127.0.0.1",
  senderPort : 5555,
  receiverPort : 3333
}

const server = new SmartSyncServer({osc: osc});

server.onClientMessage('test', (id, data) => {
  console.log("test data", id, data);
})

server.onOSCMessageReceived((msg) => {
  server.setStartTime();
})

server.start();
