const response = require("../helpers/response");
var pool = require("./../database");
var socketApi = require('../socket-server');
let that = this;

/**
 * Get water level
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.status = async function(req, res) {
  try {
    let waterLevel = await pool.query(
      "SELECT waterLevel FROM garden_system limit 1"
    );
    console.log("WATER LEVEL:", waterLevel);
    if (waterLevel && waterLevel.length > 0) {
      response.sendResponse(waterLevel[0], res);
    }
  } catch (err) {
    response.sendError(501, "Water level could not be retrieved", res, err);
  }
};

exports.updateHeartBeat = async function(req, res) {
  try {
    let updateHeartBeat = await pool.query(
      `UPDATE garden_system SET heartBeat = 'ok' WHERE id = 1`
    );
    if (updateHeartBeat.affectedRows) {
      let heartBeat = await pool.query(
        "SELECT * FROM garden_system WHERE id = 1"
      );
      response.sendResponse(heartBeat, res);
    }
  } catch (err) {}
};

exports.setWaterLevel = async function(req, res) {
  let newWaterLevel = req.params.level;
  console.log(req.body);
  try {
    let updateWaterLevel = await pool.query(
      `UPDATE garden_system SET waterLevel = ${newWaterLevel} WHERE id = 1`
    );
    if (updateWaterLevel.affectedRows) {
      let waterLevel = await pool.query(
        "SELECT waterLevel FROM garden_system WHERE id = 1"
      );
      socketApi.sendNotification(waterLevel[0]);
      response.sendResponse(waterLevel[0], res);
    }
  } catch (err) {}
};

exports.updateWaterLevel = async function(req, res) {
  let newWaterLevel = req.body.waterLevel;
  console.log(req.body);
  try {
    let updateWaterLevel = await pool.query(
      `UPDATE garden_system SET waterLevel = ${newWaterLevel} WHERE id = 1`
    );
    if (updateWaterLevel.affectedRows) {
      let waterLevel = await pool.query(
        "SELECT waterLevel FROM garden_system WHERE id = 1"
      );
      socketApi.sendNotification(waterLevel[0]);
      response.sendResponse(waterLevel[0], res);
    }
  } catch (err) {}
};