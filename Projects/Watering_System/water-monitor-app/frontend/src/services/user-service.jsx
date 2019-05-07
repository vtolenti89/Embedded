import HttpService from './api-service';

export const userService = {
    signin,
    getUsers,
    getGardenStatus,
};

const http = new HttpService();

function signin(email, password) {
    return http.post('/users/signin', {email, password});
}

function getUsers() {
    return http.get('/users');
}

function getGardenStatus() {
    return http.get('/garden');
}