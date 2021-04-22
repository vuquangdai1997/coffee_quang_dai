const mysql = require("mysql");



const pool = mysql.createPool({
    host: "localhost",
    port: "3306",
    user: "doan",
    password: "doan",
    database: "doan",
});

const GetData = (req, res, csql = "") => {
    pool.getConnection((err, con) => {
        if (err) {
            console.log(err);
            con.release();
            res.status(404).json({ error: err, access: 0 });
        }
        let sql = csql || `select * from sanpham Order By tensp ASC limit 15; `
        con.query(sql, (err, data) => {
            if (err) {
                console.log(err);
                con.release();
                res.status(404).json({ error: err, access: 0 });
            } else {
                console.log(data);
                con.release();
                res.status(200).json({ access: 1, data: data });
            }
        })
    })
}
const QueryData = (req, res, sql) => {
    pool.getConnection((err, con) => {
        if (err) {
            console.log(err);
            con.release();
            res.status(404).json({ error: err, access: 0 });
        }
        con.query(sql, (err, data) => {
            if (err) {
                console.log(err);
                con.release();
                res.status(404).json({ error: err, access: 0 });
            } else {
                console.log(data);
                con.release();
                res.status(200).json({ access: 1 });
            }
        })

    })
}

module.exports = {
    Logkh: (req, res) => {
        let { makh, matkhau } = req.body;
        pool.getConnection((err, con) => {
            if (err) {
                console.log(err);
                res.status(404).json({ error: err, access: 0 });
            }
            let sql = `Select * from khachhang where makh='${makh}' and matkhau='${matkhau}';`;
            con.query(sql, (err, data) => {
                if (err) {
                    console.log(err);
                    res.status(404).json({ error: err, access: 0 });
                } else {
                    console.log(data);
                    data.length > 0 ? res.status(200).json({ access: 1 }) : res.status(404).json({ access: 0 });
                }
                con.release();
            });
        });
    },
    Lognv: (req, res) => {
        let { manv, matkhau } = req.body;

        pool.getConnection((err, con) => {
            if (err) {
                console.log(err);
                res.status(404).json({ error: err, access: 0 });
            }
            let sql = `Select * from nhanvien where manv='${manv}' and matkhau='${matkhau}';`;
            con.query(sql, (err, data) => {
                if (err) {
                    console.log(err);
                    res.status(404).json({ error: err, access: 0 });
                }
                console.log(data);
                if (data.length > 0 && data[0].machucvu === 1)
                    res.status(200).json({ access: 1 });
                else if (data.length > 0 && data[0].machucvu === 2)
                    res.status(200).json({ access: 2 });
                else if (data.length > 0 && data[0].machucvu === 3)
                    res.status(200).json({ access: 3 });
                else if (data.length > 0 && data[0].machucvu === 4)
                    res.status(200).json({ access: 4 });
                else res.status(200).json({ access: 0 });
                con.release();
            });
        });
    },
    Regkh: (req, res) => {
        let { anhkh, diachi, email, makh, sdt, tenkh, matkhau } = req.body;
        pool.getConnection((err, con) => {
            // Tạo 1 tài khoản người dùng -> Tạo luôn giỏ hàng với cùng mã kh
            if (err) {
                console.log(err);
                con.release();
                res.status(404).json({ error: err, access: 0 });
            }
            let sql = `Insert into khachhang (anhkh,diachi,email,makh,sdt,tenkh,matkhau) values('${anhkh}','${diachi}','${email}','${makh}',${sdt},'${tenkh}','${matkhau}');`
            let error = [];
            con.query(sql, (err, data) => {
                if (err) {
                    console.log(err);
                    error[0] = err;
                    con.release();
                } else {
                    console.log(data);
                };
            });
            // insert gio hang

            sql = `insert into giohang (magiohang,makh) values ('${makh}','${makh}');`;
            con.query(sql, (err, data) => {
                if (err) {
                    console.log(err);
                    error[1] = err;
                    con.release();
                    res.status(404).json({ error: error, access: 0 });
                } else {
                    console.log(data);
                    con.release();
                    res.status(200).json({ access: 1 })
                };

            })
        });

    },
    // CAC API VIET CHO TRANG DANG NHAP VA DANG KY

    Client: (req, res) => {
        GetData(req, res)
    }, //Trang tru hien thi san pham select * from sanpham Order By tensp ASC limit 15 ;
    SearchMasp: (req, res) => {
        csql = `Select * from sanpham where masp Like '%${req.params.masp}%';`
        GetData(req, res, csql);
    },
    SearchTensp: (req, res) => {
        csql = `Select * from sanpham where tensp Like '%${req.params.tensp}%';`
        GetData(req, res, csql);
    },
    SearchMaLoaiSp: (req, res) => {
        csql = `Select * from sanpham where maloaisp Like '%${req.params.maloaisp}%';`
        GetData(req, res, csql);
    },
    GetAllInfo: (req, res) => {
        csql = `Select * from khachhang;`
        GetData(req, res, csql);
    },
    GetInfo: (req, res) => {
        csql = `Select * from khachhang where makh = '${req.params.makh}';`
        GetData(req, res, csql);
    },
    UpdateInfo: (req, res) => {
        let { anhkh, diachi, email, makh, sdt, tenkh, matkhau } = req.body;
        let sql = `UPDATE khachhang SET anhkh= '${anhkh}',diachi='${diachi}',email='${email}',sdt='${sdt}', tenkh='${tenkh}', matkhau='${matkhau}' WHERE makh='${makh}';`
        QueryData(req, res, sql);
    },
    DeleteInfo: (req, res) => {
        // Xóa 1 tài khoản người dùng -> Xóa luôn giỏ hàng với cùng mã kh
        pool.getConnection((err, con) => {
            if (err) {
                console.log(err);
                con.release();
                res.status(404).json({ error: err, access: 0 });
            }
            let sql = `DELETE from chitietgiohang where magiohang='${req.params.makh}';`
            let error = [];
            con.query(sql, (err, data) => {
                if (err) {
                    console.log(err);
                    error[0] = err;
                    con.release();
                } else {
                    console.log(data);
                };

            });
            // delete khachhang
            sql = `delete from giohang where makh='${req.params.makh}';`
            con.query(sql, (err, data) => {
                if (err) {
                    console.log(err);
                    error[1] = err;
                    con.release();
                } else {
                    console.log(data);
                };
            })
            sql = `delete from khachhang where makh='${req.params.makh}';`
            con.query(sql, (err, data) => {
                if (err) {
                    console.log(err);
                    error[2] = err;
                    con.release();
                    res.status(404).json({ error: error, access: 0 });
                } else {
                    console.log(data);
                    con.release();
                    res.status(200).json({ access: 1 })
                };
            })
        });
    },
    InsertGioHang: (req, res) => {
        let { masp, soluong, magiohang } = req.body;
        let sql = `Insert into chitietgiohang (magiohang,masp,soluong) values('${magiohang}','${masp}',${soluong});`;
        QueryData(req, res, sql);
    },
    UpdateGioHang: (req, res) => {
        let { masp, soluong, machitietgiohang, magiohang } = req.body;
        let sql = `UPDATE chitietgiohang SET masp= '${masp}',soluong=${soluong} WHERE machitietgiohang=${machitietgiohang} and magiohang='${magiohang}';`
        QueryData(req, res, sql);
    },
    DeleteGioHang: (req, res) => {
        let { magiohang, machitietgiohang } = req.body;
        let sql = `delete from chitietgiohang where magiohang='${magiohang}' and machitietgiohang=${machitietgiohang};`;
        QueryData(req, res, sql);

    },
    GetGioHang: (req, res) => {
        csql = `Select machitietgiohang,chitietgiohang.masp,chitietgiohang.soluong,tensp,giaban from chitietgiohang,giohang,khachhang,sanpham where giohang.magiohang='${req.params.magiohang}' and giohang.magiohang = chitietgiohang.magiohang and khachhang.makh = giohang.makh and chitietgiohang.masp = sanpham.masp;`;
        GetData(req, res, csql);
    },

    // CAC API VIET CHO Khach hang
    GetAllHD: (req, res) => {
        csql = `Select * from hoadon;`
        GetData(req, res, csql);
    },
    GetHD: (req, res) => {
        csql = `Select * from hoadon where mahoadon = '${req.params.mahoadon}';`
        GetData(req, res, csql);
    },
    GetCTHD: (req, res) => {
        csql = `select machitiethoadon,hoadon.mahoadon,tensp,chitiethoadon.masp,chitiethoadon.soluong,chitiethoadon.dongia from hoadon,chitiethoadon,sanpham where chitiethoadon.mahoadon=${req.params.mahoadon} and hoadon.mahoadon = chitiethoadon.mahoadon and sanpham.masp = chitiethoadon.masp;`
        GetData(req, res, csql);
    },
    InsertHoaDon: (req, res) => {
        let { diachi, ghichu, machinhanh, makh, masukien, ngaytao, sdt, tenhoadon, trangthai } = req.body;
        let sql = `Insert into hoadon (diachi,ghichu,machinhanh,makh,masukien,ngaytao,sdt,tenhoadon,trangthai) values('${diachi}','${ghichu}','${machinhanh}','${makh}','${masukien}','${ngaytao}',${sdt},'${tenhoadon}','${trangthai}' );`;
        QueryData(req, res, sql);
    }, //==> TODO: LOGIC THEM HOA DON CO VAN DE


    //CAC API VOI he thong, HOA DON ...
    GetAllInfoNV: (req, res) => {
        csql = `Select * from nhanvien;`
        GetData(req, res, csql);
    }, //Loi res tra ve chuoi nhan vien rong~
    GetInfoNV: (req, res) => {
        csql = `Select * from nhanvien where manv = '${req.params.manv}';`
        GetData(req, res, csql);
    },
    UpdateInfoNV: (req, res) => {
        let { anhnv, diachi, email, manv, sdt, tennv, matkhau, machucvu, machinhanh, ngaysinh, cmnd } = req.body;
        let sql = `UPDATE nhanvien SET anhnv= '${anhnv}',machucvu=${machucvu},machinhanh='${machinhanh}',diachi='${diachi}',email='${email}',sdt=${sdt}, tennv='${tennv}', matkhau='${matkhau}',ngaysinh='${ngaysinh}',cmnd=${cmnd} WHERE manv='${manv}';`
        QueryData(req, res, sql);
    },
    InsertNV: (req, res) => {
        let { anhnv, diachi, email, manv, sdt, tennv, matkhau, machucvu, machinhanh, ngaysinh, cmnd } = req.body;
        let sql = `Insert into nhanvien(anhnv, diachi, email, manv, sdt, tennv, matkhau, machucvu,machinhanh, ngaysinh, cmnd) values ('${anhnv}', '${diachi}', '${email}', '${manv}', ${sdt}, '${tennv}', '${matkhau}', ${machucvu}, '${machinhanh}', '${ngaysinh}', ${cmnd});`;
        QueryData(req, res, sql);
    },
    DeleteNV: (req, res) => {
        let sql = `delete from nhanvien where manv='${req.params.manv}';`;
        QueryData(req, res, sql);
    },

    GetAllNCC: (req, res) => {
        csql = `Select * from nhacc;`
        GetData(req, res, csql);
    }, //Loi res tra ve chuoi nha cung cap rong~
    GetNCC: (req, res) => {
        csql = `Select * from nhacc where mancc = '${req.params.mancc}';`
        GetData(req, res, csql);
    },
    UpdateNCC: (req, res) => {
        let { ghichu, tenncc, mancc } = req.body;
        let sql = `UPDATE nhacc SET ghichu= '${ghichu}',tenncc='${tenncc}' WHERE mancc='${mancc}';`
        QueryData(req, res, sql);
    },
    DeleteNCC: (req, res) => {
        let sql = `delete from nhacc where mancc='${req.params.mancc}';`
        QueryData(req, res, sql);
    },
    InsertNCC: (req, res) => {
        let { ghichu, tenncc, mancc } = req.body;
        let sql = `Insert into nhacc(mancc,tenncc,ghichu) values ('${mancc}','${tenncc}','${ghichu}')`;
        QueryData(req, res, sql);
    },

    GetAllSK: (req, res) => {
        csql = `Select * from sukien;`
        GetData(req, res, csql);
    },
    // Loi res tra ve chuoi su kien rong
    GetSK: (req, res) => {
        csql = `Select * from sukien where masukien = '${req.params.masukien}';`
        GetData(req, res, csql);
    },
    UpdateSK: (req, res) => {

        let { chietkhau, tungay, denngay, masukien, noidung, tensukien } = req.body;
        let sql = `UPDATE sukien SET chietkhau= ${chietkhau},tungay='${tungay}',denngay='${denngay}',noidung='${noidung}',tensukien='${tensukien}' WHERE masukien='${masukien}';`
        QueryData(req, res, sql);
    },
    DeleteSK: (req, res) => {
        let sql = `delete from sukien where masukien='${req.params.masukien}';`
        QueryData(req, res, sql);
    },
    InsertSK: (req, res) => {
        let { chietkhau, tungay, denngay, masukien, noidung, tensukien } = req.body;
        let sql = `Insert into sukien(chietkhau,tungay,denngay,masukien,noidung,tensukien ) values (${chietkhau},'${tungay}','${denngay}','${masukien}','${noidung}','${tensukien}')`;
        QueryData(req, res, sql);
    },

    GetAllChinhanh: (req, res) => {
        csql = `Select * from chinhanh;`
        GetData(req, res, csql);
    }, // Loi response tra ve chuoi all chi nhanh rong~
    GetChinanh: (req, res) => {
        csql = `Select * from chinhanh where machinhanh = '${req.params.machinhanh}';`
        GetData(req, res, csql);
    },
    UpdateChinhanh: (req, res) => {

        let { machinhanh, sdt, tenchinhanh, gmail, diachi } = req.body;
        let sql = `UPDATE chinhanh SET sdt= ${sdt},tenchinhanh='${tenchinhanh}',gmail='${gmail}',diachi='${diachi}' WHERE machinhanh='${machinhanh}';`
        QueryData(req, res, sql);
    },
    DeleteChinhanh: (req, res) => {
        let sql = `delete from chinhanh where machinhanh='${req.params.machinhanh}';`
        QueryData(req, res, sql);
    },
    InsertChinhanh: (req, res) => {
        let { machinhanh, sdt, tenchinhanh, gmail, diachi } = req.body;
        let sql = `Insert into chinhanh(machinhanh,sdt,tenchinhanh,gmail,diachi) values ('${machinhanh}',${sdt},'${tenchinhanh}','${gmail}','${diachi}')`;
        QueryData(req, res, sql);
    },

    GetAllKho: (req, res) => {
        csql = `Select * from kho;`
        GetData(req, res, csql);
    }, // Loi response tra ve chuoi all kho rong~
    GetKho: (req, res) => {
        csql = `Select * from kho where makho = '${req.params.makho}';`
        GetData(req, res, csql);
    },
    UpdateKho: (req, res) => {

        let { makho, mota, tenkho } = req.body;
        let sql = `UPDATE kho SET mota= '${mota}',tenkho='${tenkho}' WHERE makho='${makho}';`
        QueryData(req, res, sql);
    },
    DeleteKho: (req, res) => {
        let sql = `delete from kho where makho='${req.params.makho}';`
        QueryData(req, res, sql);
    },
    InsertKho: (req, res) => {
        let { makho, mota, tenkho } = req.body;
        let sql = `Insert into kho(makho,mota,tenkho) values ('${makho}','${mota}','${tenkho}')`;
        QueryData(req, res, sql);
    },

    // CAC API VOI NHAN VIEN (CAP NHAT TT KH, LAP HOA DON => DONE ABOVE)
};
// TEST OKE TRU GETALLINFO NHANVIEN, THEM HOA DON