var express = require('express');
var router = express.Router();
var gardenController = require('../controllers/gardenController');

/* GET water level. */
router.get('/', gardenController.status);

/* SET water level */
router.put('/setwaterlevel', gardenController.setWaterLevel);

module.exports = router;


// router.get('/waterlevel', function(req, res, next) {
//   res.status(200);
//   const response = JSON.stringify({data: "some data"})
//   res.send(response);
// });
