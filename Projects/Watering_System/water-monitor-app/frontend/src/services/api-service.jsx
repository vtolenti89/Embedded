//const localhost = "https://localhost:3000";
const url = "http://votolentino.com:43000";
const localhost = "https://localhost:3000";

class HttpService {

  get(endpoint) {

    var values = JSON.parse(localStorage.getItem("rootKeys"));
    return new Promise(function (resolve, reject) {
      fetch(url + endpoint, {
        method: 'GET',
        credentials: 'same-origin', // persistent cookies
        //credentials: "include",
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin':url,
          'x-access-token': values ? values.user.token : ''
        },
      })
        .then(response => {
          if (!response.ok) {
            if (response.status === 403) {
              // token is not valid
              window.location.replace(localhost); // TODO add the domain
            }
            return response;
          }
          return response.json();
        }).then(data => {
          resolve(data)
          return data;
        })
        .catch(error => {
          console.log(error);
          reject(error)
        });
    })
  };

  post(endpoint, data) {
    var values = JSON.parse(localStorage.getItem("rootKeys"));
    return new Promise(function (resolve, reject) {
      fetch(url + endpoint, {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          //'Access-Control-Allow-Origin':url,
          //'x-access-token': values ? values.user.token : ''
        },
        body: JSON.stringify(data)
      })
        .then(response => {
          if (!response.ok) {
            if (response.status === 403) {
              // token is not valid
              window.location.replace(localhost); // TODO add the domain
            }
            return response;
          }
          return response.json();
        }).then(data => {
          resolve(data)
          return data;
        })
        .catch(error => {
          reject(error)
        });
    })
  };

  put(endpoint, data, options) {
    var values = JSON.parse(localStorage.getItem("rootKeys"));
    return new Promise(function (resolve, reject) {
      console.log(url + endpoint);
      fetch( url + endpoint, {
        method: 'PUT',
        credentials: 'same-origin', // persistent cookies
        //credentials: "include",
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin':url,
          'x-access-token': values ? values.user.token : ''
        },
        body: JSON.stringify(data)
      })
        .then(response => {
          console.log(response)
          if (!response.ok) {
            if (response.status === 403) {
              // token is not valid
              window.location.replace(localhost); // TODO add the domain
            }
            return response;
          }
          return response.json();
        }).then(data => {
          resolve(data)
          return data;
        })
        .catch(error => {
          reject(error)
        });
    })
  };
};

export default HttpService;