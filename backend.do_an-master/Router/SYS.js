const express = require('express');
const router = express.Router();
const Query = require("../Query");

router.get("/GetAllHD",Query.GetAllHD);
router.get("/GetHD/:mahoadon",Query.GetHD);
router.get("/GetCTHD/:mahoadon",Query.GetCTHD);

module.exports = router
