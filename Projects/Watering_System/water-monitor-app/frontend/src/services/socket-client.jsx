import openSocket from 'socket.io-client';
const url = "http://localhost:3001";

const socket = openSocket(url);

export const socketService = {
    subscribeToSocket
};

async function subscribeToSocket ()  {
    console.log("calling")
    socket.on('outgoingData', (data) => {
        console.log('Outgoing Data', data);
        return data;
    });
    socket.emit('incomingData', { data: 'Subscribing to channel' });
}