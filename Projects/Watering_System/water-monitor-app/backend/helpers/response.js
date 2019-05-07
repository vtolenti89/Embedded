/**
 * Sends successful response to client
 * @param user
 * @param res
 */
exports.sendResponse = function (data, res) {
    let response = JSON.stringify(data);
    if (response) {
        res.status(200);
        res.send(response);
    }
};

/**
 * Sends error message to client
 * @param code
 * @param message
 * @param res
 */
exports.sendError = function (code, message, res) {
    res.status(code);
    res.statusMessage = JSON.stringify(message);
    res.end();
};