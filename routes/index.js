var express = require('express');
var router = express.Router();

var test = require('kd-game-engine');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

module.exports = router;
