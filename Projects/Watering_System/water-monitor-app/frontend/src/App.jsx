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
      data: {
        waterLevel: 0
      },
      endpoint: "http://localhost:3001"
  };

    this.getGardenStatus = this.getGardenStatus.bind(this);
    this.setWaterLevel = this.setWaterLevel.bind(this);
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

  getGardenStatus = async () => {
    let gardenStatus = await gardenService.getStatus();
    console.log(gardenStatus);
  }

  setWaterLevel = async (waterLevel) => {
    let newWaterLevel = await gardenService.setWaterLevel(waterLevel);
    console.log(newWaterLevel);
  } 

  render() {
    const {data} = this.state;
    return (
      <div className="app">
        <WaterContainer waterLevel={data.waterLevel}/>
        <button onClick={()=>this.setWaterLevel(50)}>Set Water</button>
      </div>
    );
  }
}

export default App;
