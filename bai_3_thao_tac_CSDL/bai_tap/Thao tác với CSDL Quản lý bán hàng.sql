USE quan_ly_ban_hang;
INSERT INTO customer (customer_id,customer_name,customer_age)
VALUES	(1,'Minh Quan',10),
		(2,'Ngoc Oanh',20),
		(3,'Hong Ha',50);
INSERT INTO `order`(order_id,customer_id,order_date,order_total_price)
VALUES	(1,1,'2006-3-21 00:00:00',Null),
		(2,2,'2006-3-23 00:00:00',Null),
		(3,1,'2006-3-16 00:00:00',Null);
INSERT INTO product(product_id,product_name,product_price)
VALUES	(1,'May Giat',3),
		(2,'Tu Lanh',5),
		(3,'Dieu Hoa',7),
		(4,'Quat',1),
		(5,'Bep Dien',2);
INSERT INTO order_deitail(order_id,product_id,order_quantity)
VALUES	(1,1,3),
		(1,3,7),
		(1,4,2),
		(2,1,1),
		(3,1,8),
		(2,5,4),
		(2,3,3);
SELECT order_id, order_date, order_total_price
FROM `order`;
SELECT C.customer_name, P.product_name
FROM customer C join `order` O on C.customer_id = O.customer_id join order_deitail D on O.order_id=D.order_id join product P on P.product_id=D.product_id;
SELECT C.customer_name
 FROM customer C 
 WHERE C.customer_id NOT IN ( SELECT C.customer_id FROM `order`);
