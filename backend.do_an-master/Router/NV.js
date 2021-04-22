const express = require('express');
const router = express.Router();
const Query = require("../Query");


router.get("/:manv",Query.GetInfoNV);
router.get("/GetAllInfoNV",Query.GetAllInfoNV);
router.put("/UpdateInfoNV",Query.UpdateInfoNV);
router.post("/InsertNV",Query.InsertNV);
router.delete("/DeleteNV/:manv",Query.DeleteNV);
// NCC
router.get("/NCC/:mancc",Query.GetNCC);
router.get("/NCC/GetAllNCC",Query.GetAllNCC);
router.put("/NCC/UpdateNCC",Query.UpdateNCC);
router.post("/NCC/InsertNCC",Query.InsertNCC);
router.delete("/NCC/DeleteNCC/:mancc",Query.DeleteNCC);
// Su kien
router.get("/SK/:masukien",Query.GetSK);
router.get("/SK/GetAllSK",Query.GetAllSK);
router.put("/SK/UpdateSK",Query.UpdateSK);
router.post("/SK/InsertSK",Query.InsertSK);
router.delete("/SK/DeleteSK/:masukien",Query.DeleteSK);
// Su kien
router.get("/CA/:machinhanh",Query.GetChinanh);
router.get("/CA/GetAllChinhanh",Query.GetAllChinhanh);
router.put("/CA/UpdateChinhanh",Query.UpdateChinhanh);
router.post("/CA/InsertChinhanh",Query.InsertChinhanh);
router.delete("/CA/DeleteChinhanh/:machinhanh",Query.DeleteChinhanh);
// Kho
router.get("/KHO/:makho",Query.GetKho);
router.get("/KHO/GetAllKho",Query.GetAllKho);
router.put("/KHO/UpdateKho",Query.UpdateKho);
router.post("/KHO/InsertKho",Query.InsertKho);
router.delete("/KHO/DeleteKho/:makho",Query.DeleteKho);

module.exports = router
