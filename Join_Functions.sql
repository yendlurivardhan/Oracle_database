CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 70000),
(2, 'Mouse', 'Electronics', 500),
(3, 'Keyboard', 'Electronics', 1500),
(4, 'Office Chair', 'Furniture', 8000),
(5, 'Desk', 'Furniture', 12000);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    warehouse VARCHAR(50),
    stock_quantity INT
);


INSERT INTO inventory VALUES
(101, 1, 'Warehouse_A', 50),
(102, 1, 'Warehouse_B', 30),
(103, 2, 'Warehouse_A', 200),
(104, 3, 'Warehouse_A', 150),
(105, 6, 'Warehouse_B', 40);


SELECT 
p.product_name,
i.warehouse,
i.stock_quantity
FROM products p
INNER JOIN inventory i
ON p.product_id = i.product_id;

SELECT 
p.product_name,
i.warehouse,
i.stock_quantity
FROM products p
LEFT JOIN inventory i
ON p.product_id = i.product_id;




SELECT 
p.product_name,
i.warehouse,
i.stock_quantity
FROM products p
RIGHT JOIN inventory i
ON p.product_id = i.product_id;


SELECT 
p.product_name,
i.warehouse,
i.stock_quantity
FROM products p
FULL OUTER JOIN inventory i
ON p.product_id = i.product_id;



SELECT 
p.product_name,
i.warehouse
FROM products p
CROSS JOIN inventory i;