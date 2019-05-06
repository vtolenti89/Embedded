import React from 'react';
import logo from './logo.svg';
import './App.css';
import {userService} from './services/user-service';


class App extends React.Component {

  constructor(props) {
    super(props);
    this.getUsers = this.getUsers.bind(this);
  }

  getUsers = async () => {
    console.log("blah");
    let tt = await userService.getUsers();
    console.log(tt);
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Edit <code>src/App.js</code> and save to reload.
        </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
        </a>
          <button onClick={this.getUsers}>Test</button>
        </header>
      </div>
    );
  }
}

export default App;
