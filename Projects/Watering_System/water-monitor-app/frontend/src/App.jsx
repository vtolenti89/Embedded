import React from 'react';
import socketClient from 'socket.io-client';
import './app.css';
import {gardenService} from './services/garden-service';
import WaterContainer from './components/water-container';

const connectionOptions = {
  "force new connection": true,
  "reconnectionAttempts": "Infinity",
  "timeout": 10000,
  "transports": ["websocket"] //important
}

class App extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      data: 0,
      endpoint: "http://localhost:3001"
  };

    this.getUsers = this.getUsers.bind(this);
  }

  componentDidMount() {
    const {data,endpoint} = this.state;
    //Very simply connect to the socket
    const socket = socketClient(endpoint,connectionOptions);
    //Listen for data on the "outgoing data" namespace and supply a callback for what to do when we get one. In this case, we set a state variable
    socket.on("outgoingData", (newData) => {
      console.log('outgoing data:', newData)
      let updatedData = Object.assign({}, data, newData);
      console.log('update:', updatedData)
      this.setState({data: updatedData}, () => {console.log(this.state.data)});
    });
    socket.emit('incomingData', { data: 'Subscribing to channel' });
  }

  getUsers = async () => {
    console.log("blah");
    let tt = await gardenService.getStatus();
    console.log(tt);
  }

  render() {
    return (
      <div className="app">
        <WaterContainer waterLevel={75}/>
      </div>
    );
  }
}

export default App;
