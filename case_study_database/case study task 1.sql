DROP DATABASE IF EXISTS furama_resort_case_study;
CREATE DATABASE IF NOT EXISTS furama_resort_case_study;
USE furama_resort_case_study;

CREATE TABLE vi_tri (
	id_vi_tri INT PRIMARY KEY AUTO_INCREMENT,
    ten_vi_tri VARCHAR(45)
);
CREATE TABLE trinh_do(
	id_trinh_do INT PRIMARY KEY AUTO_INCREMENT,
    trinh_do VARCHAR(45)
);
CREATE TABLE bo_phan(
	id_bo_phan INT PRIMARY KEY AUTO_INCREMENT,
    ten_bo_phan VARCHAR(45)
);

CREATE TABLE nhan_vien(
	id_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
    ho_ten VARCHAR(45),
    id_vi_tri INT,
    id_trinh_do INT,
    id_bo_phan INT,
    ngay_sinh DATE,
    so_cmtnd VARCHAR(45),
    luong VARCHAR(45),
    sdt VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    
    FOREIGN KEY (id_vi_tri) REFERENCES vi_tri(id_vi_tri) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_trinh_do) REFERENCES trinh_do(id_trinh_do) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_bo_phan) REFERENCES bo_phan(id_bo_phan) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE loai_khach(
	id_loai_khach INT PRIMARY KEY AUTO_INCREMENT,
    ten_loai_khach VARCHAR(45)
);

CREATE TABLE kieu_thue(
	id_kieu_thue INT PRIMARY KEY AUTO_INCREMENT,
    ten_kieu_thue VARCHAR(45),
    gia INT
);

CREATE TABLE loai_dich_vu(
	id_loai_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
    ten_loai_dich_vu VARCHAR(45)
    
);
CREATE TABLE dich_vu_di_kem(
	id_dich_vu_di_kem INT PRIMARY KEY AUTO_INCREMENT,
    ten_dich_vu_di_kem VARCHAR(45),
    gia INT,
    don_vi INT,
    trang_thai_kha_dung VARCHAR(45)
);

CREATE TABLE khach_hang(
	id_khach_hang INT PRIMARY KEY AUTO_INCREMENT,
    id_loai_khach INT,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    so_cmtnd VARCHAR(45),
    sdt VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    
    FOREIGN KEY (id_loai_khach) REFERENCES loai_khach(id_loai_khach) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE dich_vu(
	id_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
    ten_dich_vu VARCHAR(45),
    dien_tich INT,
    so_tang INT,
    so_nguoi_toi_da VARCHAR(45),
    chi_phi_thue VARCHAR(45),
    id_kieu_thue INT,
    id_loai_dich_vu INT,
    trang_thai VARCHAR(45),
    
    FOREIGN KEY (id_kieu_thue) REFERENCES kieu_thue(id_kieu_thue) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_loai_dich_vu) REFERENCES loai_dich_vu(id_loai_dich_vu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE hop_dong(
	id_hop_dong INT PRIMARY KEY AUTO_INCREMENT,
    id_nhan_vien INT,
    id_khach_hang INT,
    id_dich_vu INT,
    ngay_lam_hop_dong DATE,
    ngay_ket_thuc DATE,
    tien_dat_coc INT,
    tong_tien INT,
    
    FOREIGN KEY (id_nhan_vien) REFERENCES nhan_vien(id_nhan_vien) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_khach_hang) REFERENCES khach_hang(id_khach_hang) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_dich_vu) REFERENCES dich_vu(id_dich_vu) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE hop_dong_chi_tiet(
	id_hop_dong_chi_tiet INT PRIMARY KEY AUTO_INCREMENT,
    id_hop_dong INT,
    id_dich_vu_di_kem INT,
    so_luong INT,
    
    FOREIGN KEY (id_hop_dong) REFERENCES hop_dong(id_hop_dong) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_dich_vu_di_kem) REFERENCES dich_vu_di_kem(id_dich_vu_di_kem) ON UPDATE CASCADE ON DELETE CASCADE
);

SET FOREIGN_KEY_CHECKS=0;
INSERT INTO trinh_do(trinh_do)
VALUES ('Trung C???p'),
		('Cao ?????ng'),
        ('?????i H???c'),
        ('Sau ?????i H???c');
INSERT INTO vi_tri(ten_vi_tri)
VALUES ('L??? T??n'),
		('Ph???c V???'),
        ('Chuy??n Vi??n'),
        ('Gi??m S??t'),
        ('Qu???n L??'),
        ('Gi??m ?????c');
INSERT INTO bo_phan(ten_bo_phan)
VALUES ('Sale - Marketing'),
		('H??nh Ch??nh'),
        ('Chuy??n Vi??n'),
        ('Gi??m S??t');
INSERT INTO loai_dich_vu(ten_loai_dich_vu)
VALUES ('Villa'),
		('House'),
        ('Room');
INSERT INTO kieu_thue(ten_kieu_thue, gia)
VALUES ('N??m', 10000000),
		('Th??ng', 1000000),
        ('Ng??y', 120000),
        ('Gi???', 80000);
INSERT INTO loai_khach(ten_loai_khach)
VALUES 	('Diamond'),
		('Platinium'),
		('Gold'),
		('Silver'),
		('Member');
INSERT INTO dich_vu_di_kem(ten_dich_vu_di_kem, gia, don_vi, trang_thai_kha_dung)
VALUES ('Massage', 200000, 1, 'c??n ch???'),
		('Karaoke', 100000, 1, 'c??n ch???'),
		('Th???c ??n', 50000, 1, 'c??n h??ng'),
        ('N?????c u???ng', 20000, 1, 'c??n h??ng'),
        ('thu?? xe tham quan', 250000, 1, 'c??n ch???');
INSERT INTO nhan_vien(ho_ten, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, so_cmtnd, luong, sdt, email, dia_chi)
VALUES ('Nguy???n Quang Nh???t', 4, 3, 4, '1998-05-12', '1234567890', '10000000', '0915858501', 'quangnhatnguyen@gmail.com', '???? N???ng'),
		('D????ng Qu???c Huy', 3, 3, 3, '1997-04-18','0123456098', '10000000', '0835123123', 'quochuy@gmail.com', 'H???i An'),
        ('Tr???n Ng???c T??n', 4, 4, 4, '1991-09-23', '200123456', '14000000', '0392434343', 'ngoctan@gmail.com', 'H?? N???i'),
        ('Ph???m Anh Th??', 2, 3, 1, '2003-08-16','201777888', '5000000', '0325592612', 'anhthu@gmail.com', 'H??? Ch?? Minh'),
        ('Ho??ng V??n Khoa', 1, 2, 1, '1992-02-10', '123456777', '4000000', '0816777777', 'vankhoa@gmail.com', 'H???i D????ng'),
        ('Nguy???n V??n X', 2, 3, 1, '1990-02-02', '201777888', '4000000', '0835123123', 'X@gmail.com', 'H?? N???i');
INSERT INTO khach_hang(id_loai_khach, ho_ten, ngay_sinh, so_cmtnd, sdt, email, dia_chi)
VALUES (5, 'Nguy???n V??n A', '1996-09-09', '202000001', '0123000009', 'VanA@gmail.com', '???? N???ng'),
	(1, 'Nguy???n V??n B', '1993-10-20', '202000002', '0123000010', 'VanB@gmail.com', 'Qu???ng Tr???'),
	(3, 'Nguy???n V??n C', '1995-11-20', '202000003', '0123000020', 'VanC@gmail.com', 'C?? Mau'),
    (4, 'Nguy???n V??n D', '1990-12-25', '202000001', '0123000004', 'VanD@gmail.com', 'B??nh Thu???n'),
    (2, 'Nguy???n V??n E', '1992-10-20', '202000006', '0123006666', 'VanE@gmail.com', '???? N???ng'),
    (3, 'Nguy???n V??n F', '1989-09-29', '202001234', '0123007777', 'VanF@gmail.com', '???? N???ng'),
    (1, 'Nguy???n V??n G', '1988-05-20', '202004567', '0123008888', 'VanG@gmail.com', 'S??i G??n'),
    (1, 'Nguy???n V??n H', '1987-12-25', '202006789', '0123009999', 'VanH@gmail.com', '???? N???ng'),
    (1, 'Nguy???n V??n I', '1984-11-24', '202003456', '0123001233', 'VanJ@gmail.com', 'Qu???ng Ng??i'),
    (1, 'Nguy???n V??n J', '1983-11-24', '202003456', '0123001233', 'VanJ@gmail.com', 'Vinh'),
    (1, 'Nguy???n V??n K', '1982-11-24', '202003456', '0123001233', 'VanJ@gmail.com', 'Qu???ng Ng??i'),
     (2, 'Nguy???n V??n L', '1983-11-24', '202003456', '0123001233', 'VanJ@gmail.com', 'Qu???ng L???i');

INSERT INTO dich_vu(ten_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_thue, id_loai_dich_vu, trang_thai)
VALUES ('VILLA_1', 100, 3, 10, 10000000, 3, 1, 'c??n ch???'),
		('VILLA_2', 150, 4, 12, 14000000, 3, 1, 'c??n ch???'),
		('VILLA_3', 200, 3, 15, 30000000, 2, 1, 'c??n ch???'),
		('ROOM_1', 40, 1, 2, 1200000, 4, 3, 'c??n ch???'),
		('ROOM_2', 50, 1, 3, 15000000, 3, 3, 'c??n ch???'),
		('HOUSE_1', 180, 2, 5, 8000000, 1, 2, 'c??n ch???'),
		('HOUSE_2', 200, 4, 10, 10000000, 1, 2, 'c??n ch???');
INSERT INTO hop_dong(id_nhan_vien, id_khach_hang, id_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, tong_tien)
VALUES (1,1,1,'2019-10-09', '2019-10-10', 5000000, 30000000),
		(1,2,4,'2019-01-01', '2019-01-03', 400000, 3600000),
        (3,1,1,'2019-03-09', '2019-03-12', 3000000, 30000000),
        (2,5,5,'2019-01-09', '2019-01-10', 300000, 15000000),
        (3,6,5,'2019-01-21', '2019-01-23', 400000, 2600000),
        (4,7,5,'2019-12-18', '2019-12-20', 200000, 2600000),
        (5,9,7,'2019-11-15', '2019-11-16', 10000000, 10000000),
        (1,3,6,'2019-08-12', '2019-08-16', 500000, 40000000),
        (1,10,2,'2018-07-08', '2018-07-10', 5000000,20000000),
        (2,11,3,'2019-07-08', '2019-07-10', 5000000,20000000),
        (6,11,3,'2016-07-08', '2016-07-10', 5000000,20000000),
        (1,2,4,'2019-02-12', '2019-02-14', 400000, 3600000),
        (1,2,4,'2019-06-07', '2019-06-08', 400000, 3600000),
        (1,12,7,'2019-12-07', '2019-12-08', 400000, 3600000);
INSERT INTO hop_dong_chi_tiet(id_hop_dong, id_dich_vu_di_kem, so_luong)
VALUES (1,1,2),(1,2,1),(1,4,2),(2,4,1),(3,3,5),(4,5,2),(5,2,1),(6,5,2),(7,1,4),(8,4,8),(9,1,3),(10,2,1),(11,2,2),(12,3,1), (13,2,1);
SET FOREIGN_KEY_CHECKS=1;
        
/* 
TASK 2: Hi???n th??? th??ng tin c???a t???t c??? nh??n vi??n c?? trong h??? th???ng c?? t??n b???t ?????u l?? m???t trong c??c k?? t??? ???H???, ???T??? ho???c ???K??? v?? c?? t???i ??a 15 k?? t???.
*/

SELECT *
FROM nhan_vien 
WHERE char_length(ho_ten) <= 15 ;

/* 
TASK 3: Hi???n th??? th??ng tin c???a t???t c??? kh??ch h??ng c?? ????? tu???i t??? 18 ?????n 50 tu???i v?? c?? ?????a ch??? ???  ??????? N???ng??? ho???c ???Qu???ng Tr??????.
*/

SELECT *
FROM khach_hang 
WHERE (dia_chi = '???? N???ng' OR dia_chi= 'Qu???ng Tr???') 
AND TIMESTAMPDIFF(year, ngay_sinh, CURDATE()) BETWEEN 18 and 50;

/* 
TASK 4: 4.?????m xem t????ng ???ng v???i m???i kh??ch h??ng ???? t???ng ?????t ph??ng bao nhi??u l???n. K???t qu??? hi???n th??? ???????c s???p x???p t??ng d???n theo s??? l???n ?????t ph??ng c???a kh??ch h??ng. Ch??? ?????m nh???ng kh??ch h??ng n??o c?? T??n lo???i kh??ch h??ng l?? ???Diamond???.
*/

SELECT kh.ho_ten, lk.ten_loai_khach, COUNT(hd.id_dich_vu) AS so_lan_dat_phong
FROM khach_hang kh JOIN loai_khach lk ON kh.id_loai_khach = lk.id_loai_khach 
JOIN hop_dong hd ON kh.id_khach_hang = hd.id_khach_hang
JOIN dich_vu dv ON dv.id_dich_vu = hd.id_dich_vu
WHERE lk.ten_loai_khach = 'Diamond'
GROUP BY kh.id_khach_hang
ORDER BY so_lan_dat_phong;

        
/* 
TASK 5: Hi???n th??? IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien 
(V???i TongTien ???????c t??nh theo c??ng th???c nh?? sau: ChiPhiThue + SoLuong*Gia, v???i SoLuong v?? Gi?? l?? t??? b???ng DichVuDiKem) cho t???t c??? c??c Kh??ch h??ng ???? t???ng ?????t ph??ng. 
(Nh???ng Kh??ch h??ng n??o ch??a t???ng ?????t ph??ng c??ng ph???i hi???n th??? ra).
*/

SELECT kh.id_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.id_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc,
(dv.chi_phi_thue+(hdct.so_luong*dvdk.gia)) as 'T???ng ti???n'
FROM khach_hang kh LEFT JOIN hop_dong hd ON kh.id_khach_hang = hd.id_khach_hang
LEFT JOIN dich_vu dv ON dv.id_dich_vu = hd.id_dich_vu
LEFT JOIN loai_khach lk ON lk.id_loai_khach = kh.id_loai_khach
LEFT JOIN hop_dong_chi_tiet hdct ON hdct.id_hop_dong = hd.id_hop_dong
LEFT JOIN dich_vu_di_kem dvdk ON hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
ORDER BY ho_ten ASC;

/*
TASK 6: Hi???n th??? IDDichVu, TenDichVu, DienTich, ChiPhiThue, TenLoaiDichVu c???a t???t c??? c??c lo???i D???ch v??? ch??a t???ng ???????c Kh??ch h??ng th???c hi???n ?????t t??? qu?? 1 c???a n??m 2019 (Qu?? 1 l?? th??ng 1, 2, 
*/

SELECT dv.id_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu
FROM dich_vu dv LEFT JOIN loai_dich_vu ldv on dv.id_loai_dich_vu = ldv.id_loai_dich_vu
LEFT JOIN hop_dong hd ON hd.id_dich_vu = dv.id_dich_vu
WHERE NOT (month(hd.ngay_lam_hop_dong)=1 OR month(hd.ngay_lam_hop_dong)=2
 OR month(hd.ngay_lam_hop_dong)=3) AND (year(hd.ngay_lam_hop_dong) =2019);
 
 /*
TASK 7: Hi???n th??? th??ng tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu
 c???a t???t c??? c??c lo???i d???ch v??? ???? t???ng ???????c Kh??ch h??ng ?????t ph??ng trong n??m 2018 
 nh??ng ch??a t???ng ???????c Kh??ch h??ng ?????t ph??ng  trong n??m 2019.
*/

SELECT dv.id_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.ten_loai_dich_vu
FROM dich_vu dv LEFT JOIN loai_dich_vu ldv on dv.id_loai_dich_vu = ldv.id_loai_dich_vu
LEFT JOIN hop_dong hd ON hd.id_dich_vu = dv.id_dich_vu
WHERE (YEAR(hd.ngay_lam_hop_dong)=2018) AND (NOT YEAR(hd.ngay_lam_hop_dong)=2019) ;

 /*
TASK 8: Hi???n th??? th??ng tin HoTenKhachHang c?? trong h??? th???ng, v???i y??u c???u HoThenKhachHang kh??ng tr??ng nhau.
H???c vi??n s??? d???ng theo 3 c??ch kh??c nhau ????? th???c hi???n y??u c???u tr??n
*/
/*
C??ch 1:
*/
SELECT ho_ten 
FROM khach_hang
GROUP BY ho_ten;
/*
C??ch 2:
*/
SELECT DISTINCT ho_ten
FROM khach_hang;
/*
C??ch 3:
*/
SELECT ho_ten
FROM khach_hang 
UNION 
SELECT ho_ten
FROM khach_hang;

/*
TASK 9: Th???c hi???n th???ng k?? doanh thu theo th??ng, ngh??a l?? t????ng ???ng v???i m???i th??ng trong n??m 2019 th?? s??? c?? bao nhi??u kh??ch h??ng th???c hi???n ?????t ph??ng.
*/
SELECT * FROM hop_dong;
SELECT COUNT(id_hop_dong) AS 'Doanh Thu', 
MONTH(ngay_lam_hop_dong) AS 'Th??ng'
FROM hop_dong
WHERE YEAR(ngay_lam_hop_dong) = 2019
GROUP BY MONTH(ngay_lam_hop_dong);

/*
TASK 10: Hi???n th??? th??ng tin t????ng ???ng v???i t???ng H???p ?????ng th?? ???? s??? d???ng bao nhi??u D???ch v??? ??i k??m.
K???t qu??? hi???n th??? bao g???m IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem 
(???????c t??nh d???a tr??n vi???c count c??c IDHopDongChiTiet).
*/
SELECT hdct.id_hop_dong_chi_tiet,hd.id_hop_dong,hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc, COUNT(hdct.id_dich_vu_di_kem) AS 'S??? l?????ng d???ch v??? ??i k??m', hdct.so_luong
FROM hop_dong_chi_tiet hdct JOIN hop_dong hd ON hd.id_hop_dong = hdct.id_hop_dong
GROUP BY hdct.id_hop_dong;
/*
TASK 11: Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m ???? ???????c s??? d???ng b???i nh???ng Kh??ch h??ng c?? TenLoaiKhachHang l?? ???Diamond??? 
v?? c?? ?????a ch??? l?? ???Vinh??? ho???c ???Qu???ng Ng??i???..
*/
SELECT dvdk.id_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, dvdk.gia, dvdk.don_vi, dvdk.trang_thai_kha_dung
FROM dich_vu_di_kem dvdk JOIN hop_dong_chi_tiet hdct ON dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
						JOIN hop_dong hd ON hd.id_hop_dong = hdct.id_hop_dong
                        JOIN khach_hang kh ON hd.id_khach_hang = kh.id_khach_hang
                        JOIN loai_khach lk ON lk.id_loai_khach = kh.id_loai_khach
WHERE lk.ten_loai_khach = 'Diamond' AND (kh.dia_chi = 'Qu???ng Ng??i' OR kh.dia_chi = 'Vinh');

/*
TASK 12: Hi???n th??? th??ng tin IDHopDong, TenNhanVien, TenKhachHang, 
SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem (???????c t??nh d???a tr??n t???ng H???p ?????ng chi ti???t),
TienDatCoc c???a t???t c??? c??c d???ch v??? ???? t???ng ???????c kh??ch h??ng ?????t v??o 3 th??ng cu???i n??m 2019 
nh??ng ch??a t???ng ???????c kh??ch h??ng ?????t v??o 6 th??ng ?????u n??m 2019.
*/

SELECT hd.id_hop_dong, nv.ho_ten, kh.ho_ten, kh.sdt, dv.ten_dich_vu, COUNT(hdct.id_dich_vu_di_kem) as 'S??? l?????ng d???ch v??? ??i k??m', hd.tien_dat_coc
FROM dich_vu_di_kem dvdk JOIN hop_dong_chi_tiet hdct ON dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
						JOIN hop_dong hd ON hd.id_hop_dong = hdct.id_hop_dong
                        JOIN khach_hang kh ON hd.id_khach_hang = kh.id_khach_hang
                        JOIN dich_vu dv ON hd.id_dich_vu = dv.id_dich_vu
                        JOIN nhan_vien nv ON nv.id_nhan_vien = hd.id_nhan_vien
WHERE (year(hd.ngay_lam_hop_dong)=2019) AND (quarter(hd.ngay_lam_hop_dong)=4 ) 
AND dv.id_dich_vu NOT IN (SELECT dv.id_dich_vu FROM dich_vu dv JOIN hop_dong hd ON dv.id_dich_vu = hd.id_dich_vu 
						WHERE (year(hd.ngay_lam_hop_dong)) = 2019 AND (quarter(hd.ngay_lam_hop_dong) = 1 OR quarter(hd.ngay_lam_hop_dong) = 2))
GROUP BY hdct.id_hop_dong;

/*
TASK 13: Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m ???????c s??? d???ng nhi???u nh???t b???i c??c Kh??ch h??ng ???? ?????t ph??ng. 
(L??u ?? l?? c?? th??? c?? nhi???u d???ch v??? c?? s??? l???n s??? d???ng nhi???u nh?? nhau).
*/

SELECT COUNT(hdct.id_dich_vu_di_kem) as 'S??? l???n s??? d???ng', dvdk.id_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, dvdk.gia, dvdk.don_vi, dvdk.trang_thai_kha_dung
FROM dich_vu_di_kem dvdk JOIN hop_dong_chi_tiet hdct ON dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
GROUP BY hdct.id_dich_vu_di_kem
HAVING COUNT(hdct.id_dich_vu_di_kem);

/*
TASK 14: Hi???n th??? th??ng tin t???t c??? c??c D???ch v??? ??i k??m ch??? m???i ???????c s??? d???ng m???t l???n duy nh???t. Th??ng tin hi???n th??? bao g???m IDHopDong, TenLoaiDichVu, TenDichVuDiKem, SoLanSuDung.
*/
SELECT COUNT(hdct.id_dich_vu_di_kem), dvdk.ten_dich_vu_di_kem, dvdk.gia, dvdk.don_vi, dvdk.trang_thai_kha_dung
FROM loai_dich_vu ldv JOIN dich_vu dv ON ldv.id_loai_dich_vu = dv.id_loai_dich_vu
						JOIN hop_dong hd ON hd.id_dich_vu = dv.id_dich_vu
                        JOIN hop_dong_chi_tiet hdct ON hdct.id_hop_dong = hd.id_hop_dong
                        JOIN dich_vu_di_kem dvdk ON dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
GROUP BY hdct.id_dich_vu_di_kem
HAVING COUNT(hdct.id_dich_vu_di_kem) = 1;

/*
TASK 15: Hi???n thi th??ng tin c???a t???t c??? nh??n vi??n bao g???m IDNhanVien, HoTen, TrinhDo, TenBoPhan, SoDienThoai, DiaChi m???i ch??? l???p ???????c t???i ??a 3 h???p ?????ng t??? n??m 2018 ?????n 2019.
*/

SELECT nv.id_nhan_vien, nv.ho_ten, td.trinh_do, bp.ten_bo_phan, nv.sdt, nv.dia_chi
FROM bo_phan bp JOIN nhan_vien nv ON bp.id_bo_phan = nv.id_bo_phan
				JOIN trinh_do td ON td.id_trinh_do = nv.id_trinh_do
                JOIN hop_dong hd ON hd.id_nhan_vien = nv.id_nhan_vien
WHERE YEAR(hd.ngay_lam_hop_dong) BETWEEN '2018' AND '2019'
GROUP BY nv.id_nhan_vien
HAVING (COUNT(nv.id_nhan_vien) <= 3) 
ORDER BY nv.id_nhan_vien;

/*
TASK 16: H16.X??a nh???ng Nh??n vi??n ch??a t???ng l???p ???????c h???p ?????ng n??o t??? n??m 2017 ?????n n??m 2019.
*/

-- DELETE FROM nhan_vien nv
-- WHERE id_nhan_vien NOT IN (SELECT id_nhan_vien FROM hop_dong WHERE COUNT(id_nhan_vien) = 0 )
SET SQL_SAFE_UPDATES=0;
DELETE FROM nhan_vien 
WHERE id_nhan_vien IN (
	SELECT id_nhan_vien FROM (SELECT * FROM nhan_vien) AS A 
    WHERE id_nhan_vien NOT IN (  SELECT * FROM (SELECT nv.id_nhan_vien FROM nhan_vien nv 
								JOIN hop_dong hd ON nv.id_nhan_vien = hd.id_nhan_vien 
								WHERE YEAR(hd.ngay_lam_hop_dong) BETWEEN 2017 AND 2019 
                                GROUP BY nv.id_nhan_vien) AS B));
SET SQL_SAFE_UPDATES= 1;                              
SELECT * FROM nhan_vien;
/*
TASK 17: C???p nh???t th??ng tin nh???ng kh??ch h??ng c?? TenLoaiKhachHang t???  Platinium l??n Diamond, ch??? c???p nh???t nh???ng kh??ch h??ng ???? t???ng ?????t ph??ng v???i t???ng Ti???n thanh to??n trong n??m 2019 l?? l???n h??n 10.000.000 VN??.
*/
SET SQL_SAFE_UPDATES=0;
UPDATE khach_hang  
SET id_loai_khach = 1 
-- WHERE id_loai_khach IN ( AND ((dvdk.gia+hdct.so_luong+dv.chi_phi_thue) > 10000000 AND YEAR(hd.ngay_lam_hop_dong) = 2019);
WHERE id_khach_hang IN (SELECT A.id_khach_hang FROM ( SELECT kh.id_khach_hang FROM khach_hang kh JOIN hop_dong hd ON kh.id_khach_hang = hd.id_khach_hang
					JOIN hop_dong_chi_tiet hdct ON hdct.id_hop_dong = hd.id_hop_dong
                    JOIN dich_vu_di_kem dvdk ON dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
                    JOIN dich_vu dv ON dv.id_dich_vu = hd.id_dich_vu
                    JOIN loai_khach lk ON lk.id_loai_khach = kh.id_loai_khach 
                    WHERE lk.id_loai_khach = 2 AND 
                    ((dvdk.gia+hdct.so_luong+dv.chi_phi_thue) > 10000000 AND YEAR(hd.ngay_lam_hop_dong) = 2019)) AS A);
SET SQL_SAFE_UPDATES= 1;
SELECT * FROM khach_hang;

/*
TASK 18: X??a nh???ng kh??ch h??ng c?? h???p ?????ng tr?????c n??m 2016 (ch?? ?? r??ng bu???c gi???a c??c b???ng).
*/
SET SQL_SAFE_UPDATES = 0;
DELETE FROM khach_hang 
WHERE id_khach_hang IN (SELECT id_khach_hang FROM( SELECT kh.id_khach_hang FROM khach_hang kh JOIN hop_dong hd ON kh.id_khach_hang = hd.id_khach_hang
						WHERE YEAR(hd.ngay_lam_hop_dong) < 2016) AS A);
SET SQL_SAFE_UPDATES = 1;    
            