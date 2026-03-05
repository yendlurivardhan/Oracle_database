-- 1. Show all products with their warehouse and stock quantity.

SELECT P.PRODUCT_NAME , I.warehouse, I.stock_quantity
    from PRODUCTS p
    JOIN INVENTORY i
    ON p.product_id = i.product_id;


-- 2. Show all products even if they do not exist in inventory.

select p.PRODUCT_NAME,i.warehouse,i.stock_quantity
    from products p
    LEFT JOIN inventory i
    ON p.product_id = i.product_id;


-- 3. Show all inventory records even if product details are missing.


select p.product_name,i.warehouse,i.stock_quantity
    from PRODUCTS p
    RIGHT JOIN inventory i
    ON p.product_id = i.product_id;


-- 4. Show all records from both tables (matched and unmatched).


select p.product_name,i.warehouse,i.stock_quantity
    from products p
    FULL OUTER JOIN INVENTORY i
    ON p.product_id = i.product_id;



-- 5. Find products available in Warehouse_A.


select p.product_name,i.warehouse,i.stock_quantity
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id
    where i.warehouse = 'Warehouse_A';



-- 6. Find products available in Warehouse_B.


select p.product_name,i.warehouse,i.stock_quantity
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id
    where i.warehouse = 'Warehouse_B';



-- 7. Find products with stock greater than 100.


select p.product_name,i.stock_quantity
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id 
    where i.STOCK_QUANTITY > 100;



-- 8. Find total stock for each product.


select p.product_name,SUM(i.stock_quantity) as total_stocks
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id 
    GROUP BY p.product_name;



-- 9. Find the total inventory value for each product.


select p.product_name,SUM(p.price * i.stock_quantity) as total_inventory
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id 
    GRoUP BY p.product_name;



-- 10. Find products that do not exist in inventory.


select p.product_name
    from products p
    LEFT JOIN inventory i
    ON p.product_id = i.product_id
    where i.product_id is null;



-- 11. Find inventory records with no matching product.


select i.inventory_id,i.product_id
    from inventory i
    LEFT JOIN products p
    ON p.product_id = i.product_id 
    where p.product_id is null;


-- 12. Find product names and categories stored in Warehouse_A.


select p.product_name,p.category
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id 
    where i.warehouse = 'warehouse_A';



-- 13. Find the number of warehouses storing each product.


select p.product_name,COUNT(i.warehouse) as warehouse_stored
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id 
    GROUP BY p.product_name;



-- 14. Find the highest stock quantity for each product.


select p.product_name,MAX(i.stock_quantity) as Highest_stock
    from products p
    JOIN inventory i 
    ON p.product_id = i.product_id
    GROUP BY p.product_name;



-- 15. Find the lowest stock quantity for each product.


select p.product_name,MIN(i.stock_quantity) AS Lowest_Stock
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id 
    GROUP BY p.product_name;



-- 16. Find products and their price along with stock quantity.


select p.product_name,p.price,i.stock_quantity
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id;



-- 17. Find total stock available in each warehouse.


select i.warehouse,SUM(i.stock_quantity) AS Stock_Available
    from inventory i
    GROUP BY i.WAREHOUSE;



-- 18. Find products whose total stock is greater than 200.


select p.product_name,SUM(i.stock_quantity) AS total_stocks
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id 
    GROUP BY p.PRODUCT_NAME
    HAVING SUM(i.STOCK_QUANTITY)>200;



-- 19. Find all combinations of products and warehouses.


select p.product_name,i.warehouse
    from products p 
    CROSS JOIN inventory i;


-- 20. Find products that exist in both tables (semi join concept).


select DISTINCT p.product_name
    from products p
    JOIN inventory i
    ON p.product_id = i.product_id;