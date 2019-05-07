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

exports.setWaterLevel = async function(req, res) {
  let newWaterLevel = req.body.waterLevel;
  console.log(req.body);
  try {
    let updateWaterLevel = await pool.query(
      `UPDATE garden_system SET waterLevel = ${newWaterLevel}`
    );
    if (updateWaterLevel.affectedRows) {
      let waterLevel = await pool.query(
        "SELECT waterLevel FROM garden_system limit 1"
      );
      socketApi.sendNotification(waterLevel[0]);
      response.sendResponse(waterLevel[0], res);
    }
  } catch (err) {}
};
