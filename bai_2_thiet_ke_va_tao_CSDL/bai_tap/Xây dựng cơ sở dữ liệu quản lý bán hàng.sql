DROP DATABASE IF EXISTS quan_ly_ban_hang;
CREATE DATABASE IF NOT EXISTS quan_ly_ban_hang;
USE quan_ly_ban_hang;

CREATE TABLE customer (
    customer_id INT NOT NULL PRIMARY KEY,
    customer_name VARCHAR(25),
    customer_age INT NOT NULL
);
CREATE TABLE `order` (
    order_id INT NOT NULL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME,
    order_total_price INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

CREATE TABLE product (
    product_id INT NOT NULL PRIMARY KEY,
    product_name VARCHAR(25),
    product_price INT NOT NULL
);
CREATE TABLE order_deitail (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    order_quantity VARCHAR(25),
    PRIMARY KEY (order_id , product_id),
    FOREIGN KEY (order_id) REFERENCES `order` (order_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id)
);