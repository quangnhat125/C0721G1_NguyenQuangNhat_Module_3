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
    
    FOREIGN KEY (id_vi_tri) REFERENCES vi_tri(id_vi_tri),
    FOREIGN KEY (id_trinh_do) REFERENCES trinh_do(id_trinh_do),
    FOREIGN KEY (id_bo_phan) REFERENCES bo_phan(id_bo_phan)
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
    
    FOREIGN KEY (id_loai_khach) REFERENCES loai_khach(id_loai_khach)
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
    
    FOREIGN KEY (id_kieu_thue) REFERENCES kieu_thue(id_kieu_thue),
    FOREIGN KEY (id_loai_dich_vu) REFERENCES loai_dich_vu(id_loai_dich_vu)
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
    
    FOREIGN KEY (id_nhan_vien) REFERENCES nhan_vien(id_nhan_vien),
    FOREIGN KEY (id_khach_hang) REFERENCES khach_hang(id_khach_hang),
    FOREIGN KEY (id_dich_vu) REFERENCES dich_vu(id_dich_vu)
);

CREATE TABLE hop_dong_chi_tiet(
	id_hop_dong_chi_tiet INT PRIMARY KEY AUTO_INCREMENT,
    id_hop_dong INT,
    id_dich_vu_di_kem INT,
    so_luong INT,
    
    FOREIGN KEY (id_hop_dong) REFERENCES hop_dong(id_hop_dong),
    FOREIGN KEY (id_dich_vu_di_kem) REFERENCES dich_vu_di_kem(id_dich_vu_di_kem)
);

INSERT INTO trinh_do(trinh_do)
VALUES ('Trung Cấp'),
		('Cao Đẳng'),
        ('Đại Học'),
        ('Sau Đại Học');
INSERT INTO vi_tri(ten_vi_tri)
VALUES ('Lễ Tân'),
		('Phục Vụ'),
        ('Chuyên Viên'),
        ('Giám Sát'),
        ('Quản Lý'),
        ('Giám Đốc');
INSERT INTO bo_phan(ten_bo_phan)
VALUES ('Sale - Marketing'),
		('Hành Chính'),
        ('Chuyên Viên'),
        ('Giám Sát');
INSERT INTO loai_dich_vu(ten_loai_dich_vu)
VALUES ('Villa'),
		('House'),
        ('Room');
INSERT INTO kieu_thue(ten_kieu_thue, gia)
VALUES ('Năm', 10000000),
		('Tháng', 1000000),
        ('Ngày', 120000),
        ('Giờ', 80000);
INSERT INTO loai_khach(ten_loai_khach)
VALUES 	('Diamond'),
		('Platinium'),
		('Gold'),
		('Silver'),
		('Member');
INSERT INTO dich_vu_di_kem(ten_dich_vu_di_kem, gia, don_vi, trang_thai_kha_dung)
VALUES ('Massage', 200000, 1, 'còn chỗ'),
		('Karaoke', 100000, 1, 'còn chỗ'),
		('Thức ăn', 50000, 1, 'còn hàng'),
        ('Nước uống', 20000, 1, 'còn hàng'),
        ('thuê xe tham quan', 250000, 1, 'còn chỗ');
INSERT INTO nhan_vien(ho_ten, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, so_cmtnd, luong, sdt, email, dia_chi)
VALUES ('Nguyễn Quang Nhật', 4, 3, 4, '1998-05-12', '1234567890', '10000000', '0915858501', 'quangnhatnguyen@gmail.com', 'Đà Nẵng'),
		('Dương Quốc Huy', 3, 3, 3, '1997-04-18','0123456098', '10000000', '0835123123', 'quochuy@gmail.com', 'Hội An'),
        ('Trần Ngọc Tân', 4, 4, 4, '1991-09-23', '200123456', '14000000', '0392434343', 'ngoctan@gmail.com', 'Hà Nội'),
        ('Phạm Anh Thư', 2, 3, 1, '2003-08-16','201777888', '5000000', '0325592612', 'anhthu@gmail.com', 'Hồ Chí Minh'),
        ('Hoàng Văn Khoa', 1, 2, 1, '1992-02-10', '123456777', '4000000', '0816777777', 'vankhoa@gmail.com', 'Hải Dương');
INSERT INTO khach_hang(id_loai_khach, ho_ten, ngay_sinh, so_cmtnd, sdt, email, dia_chi)
VALUES (5, 'Nguyễn Văn A', '1996-09-09', '202000001', '0123000009', 'VanA@gmail.com', 'Đà Nẵng'),
	(1, 'Nguyễn Văn B', '1993-10-20', '202000002', '0123000010', 'VanB@gmail.com', 'Quảng Trị'),
	(3, 'Nguyễn Văn C', '1995-11-20', '202000003', '0123000020', 'VanC@gmail.com', 'Cà Mau'),
    (4, 'Nguyễn Văn D', '1990-12-25', '202000001', '0123000004', 'VanD@gmail.com', 'Bình Thuận'),
    (2, 'Nguyễn Văn E', '1992-10-20', '202000006', '0123006666', 'VanE@gmail.com', 'Đà Nẵng'),
    (3, 'Nguyễn Văn F', '1989-09-29', '202001234', '0123007777', 'VanF@gmail.com', 'Đà Nẵng'),
    (1, 'Nguyễn Văn G', '1988-05-20', '202004567', '0123008888', 'VanG@gmail.com', 'Sài Gòn'),
    (1, 'Nguyễn Văn H', '1987-12-25', '202006789', '0123009999', 'VanH@gmail.com', 'Đà Nẵng'),
    (1, 'Nguyễn Văn I', '1984-11-24', '202003456', '0123001233', 'VanJ@gmail.com', 'Quảng Ngãi'),
    (1, 'Nguyễn Văn J', '1983-11-24', '202003456', '0123001233', 'VanJ@gmail.com', 'Vinh'),
    (1, 'Nguyễn Văn K', '1982-11-24', '202003456', '0123001233', 'VanJ@gmail.com', 'Quảng Ngãi');
INSERT INTO dich_vu(ten_dich_vu, dien_tich, so_tang, so_nguoi_toi_da, chi_phi_thue, id_kieu_thue, id_loai_dich_vu, trang_thai)
VALUES ('VILLA_1', 100, 3, 10, 10000000, 3, 1, 'còn chỗ'),
		('VILLA_2', 150, 4, 12, 14000000, 3, 1, 'còn chỗ'),
		('VILLA_3', 200, 3, 15, 30000000, 2, 1, 'còn chỗ'),
		('ROOM_1', 40, 1, 2, 1200000, 4, 3, 'còn chỗ'),
		('ROOM_2', 50, 1, 3, 1500000, 3, 3, 'còn chỗ'),
		('HOUSE_1', 180, 2, 5, 8000000, 1, 2, 'còn chỗ'),
		('HOUSE_2', 200, 4, 10, 10000000, 1, 2, 'còn chỗ');
INSERT INTO hop_dong(id_nhan_vien, id_khach_hang, id_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, tong_tien)
VALUES (1,1,1,'2019-10-09', '2019-10-10', 5000000, 30000000),
		(2,2,4,'2019-01-01', '2019-01-03', 400000, 3600000),
        (3,1,1,'2019-03-09', '2019-03-12', 3000000, 30000000),
        (2,5,5,'2019-01-09', '2019-01-10', 300000, 1500000),
        (3,6,5,'2019-01-21', '2019-01-23', 400000, 2600000),
        (4,7,5,'2019-12-18', '2019-12-20', 200000, 2600000),
        (5,9,7,'2019-11-15', '2019-11-16', 10000000, 10000000),
        (1,3,6,'2019-08-12', '2019-08-16', 500000, 40000000),
        (1,10,2,'2018-07-08', '2018-07-10', 5000000,20000000),
        (2,11,3,'2019-07-08', '2019-07-10', 5000000,20000000);
INSERT INTO hop_dong_chi_tiet(id_hop_dong, id_dich_vu_di_kem, so_luong)
VALUES (1,1,2),(1,2,1),(1,4,2),(2,4,1),(3,1,5),(4,5,2),(5,2,1),(6,5,2),(7,1,4),(8,4,8),(9,1,3),(10,2,1);
        
/* 
TASK 2: Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự.
*/

SELECT *
FROM nhan_vien 
WHERE char_length(ho_ten) <= 15 ;

/* 
TASK 3: Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở  “Đà Nẵng” hoặc “Quảng Trị”.
*/

SELECT *
FROM khach_hang 
WHERE (dia_chi = 'Đà Nẵng' OR dia_chi= 'Quảng Trị') 
AND TIMESTAMPDIFF(year, ngay_sinh, CURDATE()) BETWEEN 18 and 50;

/* 
TASK 4: 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
*/

SELECT kh.ho_ten, lk.ten_loai_khach, COUNT(hd.id_dich_vu) AS so_lan_dat_phong
FROM khach_hang kh JOIN loai_khach lk ON kh.id_loai_khach = lk.id_loai_khach 
JOIN hop_dong hd ON kh.id_khach_hang = hd.id_khach_hang
JOIN dich_vu dv ON dv.id_dich_vu = hd.id_dich_vu
WHERE lk.ten_loai_khach = 'Diamond'
GROUP BY kh.id_khach_hang
ORDER BY so_lan_dat_phong;

        
/* 
TASK 5: Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien 
(Với TongTien được tính theo công thức như sau: ChiPhiThue + SoLuong*Gia, với SoLuong và Giá là từ bảng DichVuDiKem) cho tất cả các Khách hàng đã từng đặt phòng. 
(Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
*/

SELECT kh.id_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.id_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc,
(dv.chi_phi_thue+(hdct.so_luong*dvdk.gia)) as 'Tổng tiền'
FROM khach_hang kh LEFT JOIN hop_dong hd ON kh.id_khach_hang = hd.id_khach_hang
LEFT JOIN dich_vu dv ON dv.id_dich_vu = hd.id_dich_vu
LEFT JOIN loai_khach lk ON lk.id_loai_khach = kh.id_loai_khach
LEFT JOIN hop_dong_chi_tiet hdct ON hdct.id_hop_dong = hd.id_hop_dong
LEFT JOIN dich_vu_di_kem dvdk ON hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
ORDER BY ho_ten ASC;

/*
TASK 6: Hiển thị IDDichVu, TenDichVu, DienTich, ChiPhiThue, TenLoaiDichVu của tất cả các loại Dịch vụ chưa từng được Khách hàng thực hiện đặt từ quý 1 của năm 2019 (Quý 1 là tháng 1, 2, 
*/

SELECT dv.id_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu
FROM dich_vu dv LEFT JOIN loai_dich_vu ldv on dv.id_loai_dich_vu = ldv.id_loai_dich_vu
LEFT JOIN hop_dong hd ON hd.id_dich_vu = dv.id_dich_vu
WHERE NOT (month(hd.ngay_lam_hop_dong)=1 OR month(hd.ngay_lam_hop_dong)=2
 OR month(hd.ngay_lam_hop_dong)=3) AND (year(hd.ngay_lam_hop_dong) =2019);
 
 /*
TASK 7: Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu
 của tất cả các loại dịch vụ đã từng được Khách hàng đặt phòng trong năm 2018 
 nhưng chưa từng được Khách hàng đặt phòng  trong năm 2019.
*/

SELECT dv.id_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.ten_loai_dich_vu
FROM dich_vu dv LEFT JOIN loai_dich_vu ldv on dv.id_loai_dich_vu = ldv.id_loai_dich_vu
LEFT JOIN hop_dong hd ON hd.id_dich_vu = dv.id_dich_vu
WHERE (YEAR(hd.ngay_lam_hop_dong)=2018) AND (NOT YEAR(hd.ngay_lam_hop_dong)=2019) ;

 /*
TASK 8: Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên
*/
/*
Cách 1:
*/
SELECT ho_ten 
FROM khach_hang
GROUP BY ho_ten;
/*
Cách 2:
*/
SELECT DISTINCT ho_ten
FROM khach_hang;
/*
Cách 3:
*/
SELECT ho_ten
FROM khach_hang 
UNION 
SELECT ho_ten
FROM khach_hang;

/*
TASK 9: Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
*/
SELECT * FROM hop_dong;
SELECT COUNT(id_hop_dong) AS 'Doanh Thu', 
MONTH(ngay_lam_hop_dong) AS 'Tháng'
FROM hop_dong
WHERE YEAR(ngay_lam_hop_dong) = 2019
GROUP BY MONTH(ngay_lam_hop_dong);

/*
TASK 10: Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm.
Kết quả hiển thị bao gồm IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem 
(được tính dựa trên việc count các IDHopDongChiTiet).
*/
SELECT hdct.id_hop_dong_chi_tiet,hd.id_hop_dong,hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc, COUNT(hdct.id_dich_vu_di_kem) AS 'Số lượng dịch vụ đi kèm', hdct.so_luong
FROM hop_dong_chi_tiet hdct JOIN hop_dong hd ON hd.id_hop_dong = hdct.id_hop_dong
GROUP BY hdct.id_hop_dong;
/*
TASK 11: Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách hàng có TenLoaiKhachHang là “Diamond” 
và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”..
*/
SELECT dvdk.id_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, dvdk.gia, dvdk.don_vi, dvdk.trang_thai_kha_dung
FROM dich_vu_di_kem dvdk JOIN hop_dong_chi_tiet hdct ON dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
						JOIN hop_dong hd ON hd.id_hop_dong = hdct.id_hop_dong
                        JOIN khach_hang kh ON hd.id_khach_hang = kh.id_khach_hang
                        JOIN loai_khach lk ON lk.id_loai_khach = kh.id_loai_khach
WHERE lk.ten_loai_khach = 'Diamond' AND (kh.dia_chi = 'Quảng Ngãi' OR kh.dia_chi = 'Vinh');

/*
TASK 12: Hiển thị thông tin IDHopDong, TenNhanVien, TenKhachHang, 
SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem (được tính dựa trên tổng Hợp đồng chi tiết),
TienDatCoc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2019 
nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2019.
*/

SELECT hd.id_hop_dong, nv.ho_ten, kh.ho_ten, kh.sdt, dv.ten_dich_vu, COUNT(hdct.id_dich_vu_di_kem) as 'Số lượng dịch vụ đi kèm', hd.tien_dat_coc
FROM dich_vu_di_kem dvdk JOIN hop_dong_chi_tiet hdct ON dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
						JOIN hop_dong hd ON hd.id_hop_dong = hdct.id_hop_dong
                        JOIN khach_hang kh ON hd.id_khach_hang = kh.id_khach_hang
                        JOIN dich_vu dv ON hd.id_dich_vu = dv.id_dich_vu
                        JOIN nhan_vien nv ON nv.id_nhan_vien = hd.id_nhan_vien
WHERE (year(hd.ngay_lam_hop_dong)=2019 AND quarter(hd.ngay_lam_hop_dong)=4)
AND NOT ((year(hd.ngay_lam_hop_dong)) = 2019 AND (quarter(hd.ngay_lam_hop_dong) = 1 OR quarter(hd.ngay_lam_hop_dong) = 2))
GROUP BY hdct.id_hop_dong;

/*
TASK 13: Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
(Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
*/

SELECT COUNT(hdct.id_dich_vu_di_kem) as 'Số lần sử dụng', dvdk.id_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, dvdk.gia, dvdk.don_vi, dvdk.trang_thai_kha_dung
FROM dich_vu_di_kem dvdk JOIN hop_dong_chi_tiet hdct ON dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
GROUP BY hdct.id_dich_vu_di_kem
HAVING COUNT(hdct.id_dich_vu_di_kem) 




