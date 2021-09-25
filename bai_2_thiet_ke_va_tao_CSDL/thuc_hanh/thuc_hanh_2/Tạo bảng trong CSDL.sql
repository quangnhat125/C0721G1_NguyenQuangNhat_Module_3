DROP DATABASE IF EXISTS quan_ly_diem_thi;
CREATE DATABASE IF NOT EXISTS quan_ly_diem_thi;
USE quan_ly_diem_thi;

CREATE TABLE hoc_sinh(
	ma_hs VARCHAR(255) PRIMARY KEY,
    ten_hs VARCHAR(255),
    ngay_sinh DATE,
    lop VARCHAR(255),
    GT VARCHAR(255)
);

CREATE TABLE mon_hoc(
	ma_mh VARCHAR(255) PRIMARY KEY,
    ten_mh VARCHAR(255),
    ma_gv VARCHAR(255)
);

CREATE TABLE bang_diem(
	ma_hs VARCHAR(255),
    ma_mh VARCHAR(255),
    diem_thi INT,
    ngay_kt DATE,
    
    PRIMARY KEY (ma_hs, ma_mh),
    FOREIGN KEY (ma_hs) REFERENCES hoc_sinh(ma_hs),
    FOREIGN KEY (ma_mh) REFERENCES mon_hoc(ma_mh)bang_diem
);

CREATE TABLE giao_vien(
	ma_gv VARCHAR(255) PRIMARY KEY,
    ten_gv VARCHAR(255),
    sdt INT
);

ALTER TABLE mon_hoc ADD ma_gv VARCHAR(255);
ALTER TABLE mon_hoc ADD CONSTRAINT ma_gv FOREIGN KEY (ma_gv) REFERENCES giao_vien(ma_gv);
