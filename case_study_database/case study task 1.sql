DROP DATABASE IF EXISTS furama_resort_case_study;
CREATE DATABASE IF NOT EXISTS furama_resort_case_study;
USE furama_resort_case_study;

CREATE TABLE vi_tri (
	id_vi_tri INT PRIMARY KEY,
    ten_vi_tri VARCHAR(45)
);
CREATE TABLE trinh_do(
	id_trinh_do INT PRIMARY KEY,
    trinh_do VARCHAR(45)
);
CREATE TABLE bo_phan(
	id_bo_phan INT PRIMARY KEY,
    ten_bo_phan VARCHAR(45)
);

CREATE TABLE nhan_vien(
	id_nhan_vien INT PRIMARY KEY,
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
	id_loai_khach INT PRIMARY KEY,
    ten_loai_khach VARCHAR(45)
);

CREATE TABLE kieu_thue(
	id_kieu_thue INT PRIMARY KEY,
    ten_kieu_thue VARCHAR(45),
    gia INT
);

CREATE TABLE loai_dich_vu(
	id_loai_dich_vu INT PRIMARY KEY,
    ten_loai_dich_vu VARCHAR(45)
    
);
CREATE TABLE dich_vu_di_kem(
	id_dich_vu_di_kem INT PRIMARY KEY,
    ten_dich_vu_di_kem VARCHAR(45),
    gia INT,
    don_vi INT,
    trang_thai_kha_dung VARCHAR(45)
);

CREATE TABLE khach_hang(
	id_khach_hang INT PRIMARY KEY,
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
	id_dich_vu INT PRIMARY KEY,
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
	id_hop_dong INT PRIMARY KEY,
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
	id_hop_dong_chi_tiet INT PRIMARY KEY,
    id_hop_dong INT,
    id_dich_vu_di_kem INT,
    so_luong INT,
    
    FOREIGN KEY (id_hop_dong) REFERENCES hop_dong(id_hop_dong),
    FOREIGN KEY (id_dich_vu_di_kem) REFERENCES dich_vu_di_kem(id_dich_vu_di_kem)
);

INSERT INTO trinh_do(ten_trinh_do)
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

        
        
        
        



