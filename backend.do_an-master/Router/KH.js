const express = require('express');
const router = express.Router();
const Query = require("../Query");

router.get("/",Query.Client);
router.get("/SearchMasp/:masp",Query.SearchMasp);
router.get("/SearchTensp/:tensp",Query.SearchTensp);
router.get("/SearchMaLoaiSp/:maloaisp",Query.SearchMaLoaiSp);
// SEARCH SAN PHAM
router.get("/GetInfo/:makh",Query.GetInfo);
router.get("/GetAllInfo",Query.GetAllInfo);
router.put("/UpdateInfo",Query.UpdateInfo);
router.delete("/DeleteInfo/:makh",Query.DeleteInfo);
// CAP NHAT THONG TIN KHACH HANG
router.post("/InsertGioHang",Query.InsertGioHang);
router.post("/DeleteGioHang",Query.DeleteGioHang);
router.put("/UpdateGioHang",Query.UpdateGioHang);
router.get("/GetGioHang/:magiohang",Query.GetGioHang);
// CAP NHAT THONG TIN GIO HANG
module.exports = router
