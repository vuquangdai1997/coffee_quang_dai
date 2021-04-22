ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
flush privileges;
drop database doan;
create database doan;
use doan;

create table sukien(chietkhau float, tungay datetime, denngay datetime,masukien varchar(255) primary key not null ,noidung varchar(255),tensukien varchar(255));
-- Done
create table chinhanh (machinhanh varchar(255) primary key not null, sdt float,tenchinhanh varchar(255),gmail text,diachi varchar(255));
-- Done
create table nhanvien(anhnv text,machucvu int,gioitinh char,tennv varchar(255),manv varchar(255) primary key not null,matkhau varchar(255) not null, machinhanh varchar(255), constraint fk_nv_chinhanh foreign key (machinhanh) references chinhanh (machinhanh),ngaysinh datetime,cmnd float, sdt float,diachi text,email text);
-- Done
create table diemdanhnv (madiemdanhnv varchar(255) primary key not null,manv varchar(255),constraint fk_diemdanhnv_nv foreign key (manv) references nhanvien(manv),ngaydimuon int,ngaylam int);
-- UnDone
create table luong(hesoluong float,luongcoban float,madiemdanhnv varchar(255), constraint fk_luong_diemdanhnv foreign key (madiemdanh) references diemdanhnv(madiemdanh),manv varchar(255), constraint fk_luong_nv foreign key (manv) references nhanvien(manv),maluong varchar(255) primary key not null);
-- UnDone
create table phieuchi (maphieuchi varchar(255) primary key not null,manv varchar(255), constraint fk_phieuchi_nv foreign key (manv) references nhanvien(manv),ngaychi datetime,noidung text,sotienchi float);
-- UnDone
create table kho(makho varchar(255) primary key not null,mota varchar(255),tenkho varchar(255));
-- Done
create table phieunhap (makho varchar(255), constraint fk_phieunhap_kho foreign key (makho) references kho(makho),maphieunhap varchar(255) primary key not null, manv varchar(255), constraint fk_phieunhap_nv foreign key (manv) references nhanvien(manv),ngaynhap datetime,tenphieunhap varchar(255),tongtien float);
-- UnDone
create table nhacc(ghichu text,mancc varchar(255) primary key not null,tenncc varchar(255));
-- Done
create table hanghoa(machinhanh varchar(255), constraint fk_hoanghoa_chinhanh foreign key (machinhanh) references chinhanh(machinhanh),gianhap float,mahh varchar(255) primary key not null,makho varchar(255), constraint fk_hanghoa_kho foreign key (makho) references kho(makho),maloaihh varchar(255),mancc varchar(255), constraint fk_hanghoa_ncc foreign key (mancc) references nhacc(mancc),ngaynhap datetime,soluong int,tenhh varchar(255));
-- UnDone
create table chitietphieunhap(dongia float,machitietphieunhap int primary key not null auto_increment,maphieunhap varchar(255),constraint fk_chitietphieunhap_phieunhap foreign key (maphieunhap) references phieunhap(maphieunhap),soluong int,mahh varchar(255),constraint fk_phieunhap_hanghoa foreign key (mahh)references hanghoa(mahh));
-- UnDone
create table sanpham(masp varchar(255) primary key not null,anhsp text,giaban float,maloaisp varchar (255),manv varchar(255), constraint fk_sanpham_nhanvien foreign key (manv) references nhanvien(manv),noidung text,trangthai varchar(255),tensp varchar(255));
-- UnDone
create table chitietsp(dongia float,khoiluong float, machitietsp int primary key not null auto_increment,mahh varchar(255), constraint fk_chitietsp_hanghoa foreign key (mahh) references hanghoa(mahh),masp varchar(255), constraint fk_chitietsp_sp foreign key (masp) references sanpham(masp));
-- UnDone
create table khachhang(anhkh text,diachi text,email text,makh varchar(255) primary key not null, sdt float,tenkh varchar(255),matkhau varchar(255) not null);
-- Done
create table giohang (magiohang varchar(255) primary key not null,makh varchar(255), constraint fk_giohang_khachhang foreign key (makh) references khachhang(makh));
-- Done
create table chitietgiohang(machitietgiohang int primary key not null auto_increment, magiohang varchar(255), constraint fk_giohang_chitietgiohang foreign key (magiohang) references giohang(magiohang),soluong int,masp varchar(255),constraint fk_chitietgiohang_sanpham foreign key (masp) references sanpham(masp) );
-- Done
create table hoadon(diachi varchar(255),ghichu text,machinhanh varchar(255),constraint fk_hoadon_chinhanh foreign key (machinhanh) references chinhanh(machinhanh),mahoadon int primary key not null auto_increment, makh varchar(255), constraint fk_hoadon_khachhang foreign key (makh) references khachhang(makh),masukien varchar(255), constraint fk_hoadon_sukien foreign key (masukien) references sukien(masukien),ngaytao datetime,sdt float,tenhoadon varchar(255),trangthai varchar(255));
-- UnDone
create table chitiethoadon(machitiethoadon int primary key not null auto_increment,dongia float,mahoadon int, constraint fk_cthoadon_hoadon foreign key (mahoadon) references hoadon(mahoadon),masp varchar(255),constraint fk_cthoadon_sanpham foreign key (masp) references sanpham(masp),soluong int);
-- UnDone


-- NOTE 1: Xoa bang tai khoan 
-- NOTE 2: Them truong trang thai vao hoa don (varchar) de nhan vien xac nhan don hang
-- Note 3: doi anhnhanvien thanh anhnv, hoten thanh tennv => Xoa gioi tinh trong bang csdl nhan vien, them truong diachi + email
-- Note 4: Doi soluong trong bang sanpham thay trangthai (con hang/het hang) => Do so luong san pham dua theo nhieu so luong hang hoa (Ap dung thuc te se ko the tinh chinh xac duoc)
-- Note 5: Bo hesoluong va luongcoban trong bang nhanvien, do hesoluong va luongcoban da ton tai trong bang luong cua nhanvien
insert into khachhang(makh,tenkh,matkhau) values('kh01','nguyen xuan mot','123456');
Select * from khachhang where makh='kh01' AND matkhau='123456';
insert into nhanvien(manv,matkhau,machucvu) values ('nv01','123456',1);
insert into nhanvien(manv,matkhau,machucvu) values ('nv02','123456',2);
insert into sanpham(masp,anhsp,giaban,maloaisp,manv,noidung,soluong,tensp)values('sp02','anh san pham 1',10000,'SP VN','nv01','san pham nay la 01',5,'san pham mot');
insert into sanpham(masp,anhsp,giaban,maloaisp,manv,noidung,soluong,tensp)values('sp01','anh san pham 1',10000,'SP VN','nv01','san pham nay la 01',5,'san pham mot');
select * from sanpham where giaban LIKE '%10000khachhang%';
select * from sanpham Order By tensp ASC limit 15 ;
select * from khachhang;
select * from nhanvien;
Select * from nhanvien limit 0,1000000;
insert into chinhanh (machinhanh,tenchinhanh) values ('cn01','Chi nhanh 01');
UPDATE khachhang SET anhkh= 'anh kh02',diachi='dia chi 02'  WHERE makh='kh02';
insert into giohang(magiohang,makh)values('kh01','kh01');
insert into chitietgiohang(magiohang,soluong,masp) values('kh01',9,'sp01');
insert into chitietgiohang(magiohang,soluong,masp) values('kh01',100,'sp02');
delete from chitietgiohang where magiohang='kh01' and soluong =9;
Insert into khachhang (anhkh,diachi,email,makh,sdt,tenkh,matkhau) values('11','11','11','11',11,'11','11');insert into giohang(magiohang,makh)values('11','11');
select * from giohang;
select * from chitietgiohang;
Select machitietgiohang,chitietgiohang.masp,chitietgiohang.soluong,tensp,giaban from chitietgiohang,giohang,khachhang,sanpham where giohang.magiohang='kh01' and giohang.magiohang = chitietgiohang.magiohang and khachhang.makh = giohang.makh and chitietgiohang.masp = sanpham.masp;
-- Chi tiet gio hang select machitiethoadon,hoadon.mahoadon,tensp,chitiethoadon.masp,chitiethoadon.soluong,chitiethoadon.dongia from hoadon,chitiethoadon,sanpham where hoadon.mahoadon=1 and hoadon.mahoadon = chitiethoadon.mahoadon and sanpham.masp = chitiethoadon.masp;-- Chi tiet hoa don 

-- Chi tiet hoa don 
select * from sanpham Order By tensp ASC limit 15;
select * from nhanvien;
insert into hoadon()values();
select * from hoadon;
select * from sanpham;
select * from nhacc;
select * from sukien;
select * from chinhanh;
delete from nhacc where mancc='NCC01';
insert into chitiethoadon(mahoadon,masp,soluong)values(1,'sp01',100);
