var socket_io = require('socket.io');
var io = socket_io();
var socketApi = {};

socketApi.io = io;

io.on('connection', function(socket) {
    var connectionId = socket.id;
    console.log('SOCKET:', socket.id)
    console.log('A user connected');
    console.log('connected users:', Object.keys(io.sockets.sockets))
    socket.on('incomingData', function(data) {
        //Here we broadcast it out to all other sockets EXCLUDING the socket which sent us the data
        console.log('CLIENT SENDS:', data)
            //broadcast to everyone but this user
            //socket.broadcast.emit("outgoingData", { num: data });
        socket.emit("outgoingData", { num: data });
    });

    //A special namespace "disconnect" for when a client disconnects
    socket.on("disconnect", (socket) => {
        console.log("Client disconnected:", connectionId)
    });
});

socketApi.sendNotification = function() {
    io.sockets.emit('hello', { msg: 'Hello World!' });
}

module.exports = socketApi;