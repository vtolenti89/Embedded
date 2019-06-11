import HttpService from './api-service';

export const gardenService = {
    getStatus,
    setWaterLevel
};

const http = new HttpService();


function getStatus() {
    return http.get('/garden');
}

function setWaterLevel(waterLevel) {
    return http.put('/garden/updatewaterlevel', {waterLevel: waterLevel});
}