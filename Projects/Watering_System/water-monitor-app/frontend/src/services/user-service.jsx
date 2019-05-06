import HttpService from './api-service';

export const userService = {
    signin,
    googleTokenLogin,
    facebookTokenLogin,
    signup,
    updateBasic,
    updateEmail,
    checkVerificationCode,
    sendVerificationReminder,
    resetPassword,
    checkResetCode,
    setNewPassword,
    changePassword,
    uploadProfilePhoto,
    deleteProfilePhoto,
    checkPassword,
    getUsers
};

const http = new HttpService();

function getUsers() {
    return http.get('/users');
}

function signin(email, password) {
    return http.post('/users/signin', {email, password});
}

function googleTokenLogin(token){
    return http.post('/users/googletokensignin', {token});
}
function facebookTokenLogin(token, userData){
    return http.post('/users/facebooktokensignin', {token, userData});
}

function signup(data) {
    return http.post('/users/signup', data);
}

function updateBasic(data) {
    return http.post('/users/updatebasic', data);
}

function updateEmail(data) {
    return http.post('/users/setnewemail', data);
}

function checkVerificationCode(verificationCode) {
    return http.get('/users/verification/' + verificationCode);
}

function sendVerificationReminder(user) {
    return http.post('/users/verificationreminder/', user);
}

function resetPassword(email) {
    return http.post('/users/resetpassword', {email});
}

function checkResetCode(resetCode) {
    return http.get('/users/checkresetcode/' + resetCode);
}

function setNewPassword(data) {
    return http.post('/users/setnewpassword', data);
}

function changePassword(data){
    return http.post('/users/changepassword', data);
}

function uploadProfilePhoto(data) {
    return http.post('/users/uploadprofilephoto', data);
}

function deleteProfilePhoto(data) {
    return http.post('/users/deleteprofilephoto', data)
}

function checkPassword(email, password){
    return http.post('/users/signin', {email, password});
}
