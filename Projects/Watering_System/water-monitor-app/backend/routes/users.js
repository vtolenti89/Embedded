var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.status(200);
  const response = JSON.stringify({data: "some data"})
  res.send(response);
});

module.exports = router;
