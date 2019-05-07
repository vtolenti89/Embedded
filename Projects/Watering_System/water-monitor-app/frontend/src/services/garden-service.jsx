import HttpService from './api-service';

export const gardenService = {
    signin,
    getStatus,
};

const http = new HttpService();

function signin(email, password) {
    return http.post('/users/signin', {email, password});
}

function getStatus() {
    return http.get('/garden');
}