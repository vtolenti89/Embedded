const response = require('../helpers/response');
var pool = require('./../database');
let that = this;

/**
 * Get water level
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.status = async function (req, res) {
  try {
    let water_level = await pool.query('SELECT water_level FROM garden_system limit 1');
    console.log('WATER LEVEL:', water_level)
    if (water_level && water_level.length > 0) {
      response.sendResponse(water_level[0], res);
    }
  } catch (err) {
    response.sendError(501, "Water level could not be retrieved", res, err);
  }
};


// exports.waterLevel = async function (req, res) {
//   if (validators.fieldsValid('signUp', req.body, res)) {
//       let clientReq = req.body;
//       let user = await userQuery.findUserByEmail(clientReq.email);
//       clientReq.firstName = clientReq.email.split('@')[0];
//       clientReq.lastName = '';
//       if (user && user.length > 0) {
//           response.sendError(401, errors.EMAIL_EXISTS, res);
//       } else {
//           await that.signUp(clientReq, USER_ORIGIN.STANDARD, res);
//       }
//   }
// };
