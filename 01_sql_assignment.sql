CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);

INSERT INTO Orders VALUES (1, 'Rahul', 'Laptop', 60000, 1);
INSERT INTO Orders VALUES (2, 'Sneha', 'Mobile', 25000, 2);
INSERT INTO Orders VALUES (3, 'Arjun', 'Headphones', 2000, 3);
INSERT INTO Orders VALUES (4, 'Meera', 'Smart Watch', 5000, 1);
INSERT INTO Orders VALUES (5, 'Vikram', 'Keyboard', 1500, 2);


select * from orders;

insert into orders values(6,'Ravi','Laptop',50000,1);

-- 3 Insert multiple rows

insert into orders VALUES
(7,'Kiran','Headphones',2000,3),
(8,'Sneha','Tablet',15000,1),
(9,'Arjun','Mouse',500,4);


-- 4 Update price of a product


update orders SET price = 75000
where order_id = 6;
select * from orders;


-- 5 Update quantity

update orders SET QUANTITY = 3
where product_name = 'Smart Watch';
select * from orders;


-- 6 Update multiple columns


update orders SET price = 60000, quantity = 2
where order_id = 2;
select * from orders;


-- 7 Delete a specific order


DELETE from orders 
where order_id = 3;
select * from orders;


-- 8 Delete orders with price less than 1000


DELETE from ORDERS
where price < 2000;
select * from orders;


-- 10 Delete all rows


DELETE from orders;
select * from orders;