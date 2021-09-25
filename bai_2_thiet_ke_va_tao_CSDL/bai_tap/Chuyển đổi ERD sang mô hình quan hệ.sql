DROP DATABASE IF EXISTS quan_ly_vat_tu;
CREATE DATABASE IF NOT EXISTS quan_ly_vat_tu;
USE quan_ly_vat_tu;

CREATE TABLE phieu_xuat(
	so_px INT PRIMARY KEY AUTO_INCREMENT,
    ngay_xuat DATETIME NOT NULL
);

CREATE TABLE vat_tu(
	ma_vat_tu INT PRIMARY KEY AUTO_INCREMENT,
    ten_vat_tu VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE phieu_nhap(
	so_pn INT PRIMARY KEY AUTO_INCREMENT,
    ngay_nhap DATETIME NOT NULL
);

CREATE TABLE don_dat_hang(
	so_dat_hang INT PRIMARY KEY AUTO_INCREMENT,
    ngay_dat_hang DATETIME NOT NULL
);

CREATE TABLE nha_cung_cap(
	ma_nha_cung_cap INT PRIMARY KEY, 
    ten_nha_cung_cap VARCHAR(255) NOT NULL,
    dia_chi_nha_cung_cap VARCHAR(255) NOT NULL,
    sdt INT NOT NULL
);

CREATE TABLE chi_tiet_phieu_xuat(
	so_px INT NOT NULL,
    ma_vat_tu INT NOT NULL,
	don_gia_xuat INT,
    so_luong_xuat INT,
    PRIMARY KEY (so_px, ma_vat_tu),
    FOREIGN KEY (so_px) REFERENCES phieu_xuat(so_px),
    FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu(ma_vat_tu)
);

CREATE TABLE chi_tiet_phieu_nhap(
	ma_vat_tu INT NOT NULL,
    so_pn INT NOT NULL,
    don_gia_nhap INT,
    so_luong_nhap INT,
    PRIMARY KEY (ma_vat_tu, so_pn),
    FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu(ma_vat_tu),
    FOREIGN KEY (so_pn) REFERENCES phieu_nhap(so_pn)
);

CREATE TABLE chi_tiet_dat_hang(
	ma_vat_tu INT NOT NULL,
    so_dat_hang INT NOT NULL,
    
    PRIMARY KEY(ma_vat_tu, so_dat_hang),
    FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu(ma_vat_tu),
    FOREIGN KEY (so_dat_hang) REFERENCES don_dat_hang(so_dat_hang)
);

CREATE TABLE cung_cap(
	so_dat_hang INT NOT NULL,
    ma_nha_cung_cap INT NOT NULL,
    
    PRIMARY KEY (so_dat_hang, ma_nha_cung_cap),
    FOREIGN KEY (so_dat_hang) REFERENCES don_dat_hang(so_dat_hang),
    FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap(ma_nha_cung_cap)
);
