-- 1. Create CUSTOMERS Table

CREATE TABLE CUSTOMERS (
    CUSTOMER_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    CITY VARCHAR2(50),
    PHONE_NUMBER VARCHAR2(20),
    LOYALTY_POINTS NUMBER
);


-- 2. Create ORDERS Table


CREATE TABLE ORDERS (
    ORDER_ID NUMBER PRIMARY KEY,
    CUSTOMER_ID NUMBER,
    ORDER_DATE DATE,
    TOTAL_AMOUNT NUMBER(10, 2),
    DISCOUNT_AMT NUMBER(10, 2), -- Can be NULL if no discount
    SHIPPING_DATE DATE          -- Can be NULL if not shipped yet
);


-- 3. Insert Data with intentional NULL values
-- Customers


INSERT INTO CUSTOMERS VALUES (101, 'John', 'Doe', 'New York', '555-0100', 500);
INSERT INTO CUSTOMERS VALUES (102, 'Jane', 'Smith', NULL, '555-0101', 120);
INSERT INTO CUSTOMERS VALUES (103, 'Robert', 'Brown', 'Chicago', NULL, 0);
INSERT INTO CUSTOMERS VALUES (104, 'Emily', 'Davis', NULL, NULL, NULL); -- Lots of NULLs
INSERT INTO CUSTOMERS VALUES (105, 'Michael', 'Wilson', 'Miami', '555-0105', NULL);

--- ORDERS

INSERT INTO ORDERS VALUES (5001, 101, DATE '2023-10-01', 150.00, 10.00, DATE '2023-10-03');
INSERT INTO ORDERS VALUES (5002, 102, DATE '2023-10-02', 200.50, NULL, DATE '2023-10-05'); -- No discount
INSERT INTO ORDERS VALUES (5003, 101, DATE '2023-10-05', 75.00, 5.00, NULL); -- Not shipped
INSERT INTO ORDERS VALUES (5004, 104, DATE '2023-10-06', 300.00, NULL, NULL); -- No discount, Not shipped
INSERT INTO ORDERS VALUES (5005, 105, DATE '2023-10-07', 50.00, 0.00, DATE '2023-10-08');
INSERT INTO ORDERS VALUES (5006, NULL, DATE '2023-10-08', 20.00, NULL, DATE '2023-10-09'); -- Orphan order


COMMIT;



-- 1. (Inner Join) Retrieve a list of customers who have placed at least one order.Display Name and Order ID. 
-- Note: This excludes customers with no orders and orders with NULL Customer IDs.


select c.first_name,c.last_name,o.order_id
    from customers c
    INNER JOIN orders o
    ON c.customer_id = o.customer_id;



-- 2.(Left Join) List all customers and their Order IDs. Include customers who have not placed any orders. 
-- Note: Returns NULL in the Order column for customers like 'Robert' or 'Emily'.



select c.first_name,c.last_name,o.order_id 
    from customers c
    LEFT JOIN orders o
    ON c.customer_id = o.customer_id;



-- 3. (Left Join - Finding Non-Matches) Find customers who have NEVER placed an order. 
-- Note: We join, then filter for where the "Right" table is NULL.


select c.first_name,c.last_name,o.order_id 
    from customers c
    LEFT JOIN orders o
    ON c.customer_id = o.customer_id 
    where order_id is null;




-- 4. (Right Join) List all orders and the associated customer name. Include orders that do not have a linked Customer ID.
--  Note: This will show Order 5006, which has a NULL Customer_ID.



select (c.first_name || c.last_name) AS Full_name,o.order_id ,o.TOTAL_AMOUNT
    from customers c
    RIGHT JOIN orders o
    ON o.customer_id = c.customer_id 



-- 5. (Full Outer Join) List ALL customers and ALL orders. If a customer has no order, show NULLs for order info.
-- If an order has no customer, show NULLs for customer info.


select c.first_name,c.last_name,o.order_id 
    from customers c 
    FULL OUTER JOIN orders o 
    ON c.customer_id = o.customer_id;



-- 6. (Left Join with NVL) Calculate the total amount spent by each customer. 
-- If they haven't bought anything, display 0 instead of NULL.


select c.first_name,NVL(SUM(o.TOTAL_AMOUNT),0) AS TOTAL_SPENT
    from customers c
    LEFT JOIN orders o
    ON c.customer_id = o.customer_id 
    GROUP BY c.first_name;



-- 7. (Self Join) Find pairs of customers who live in the same City. 
-- Note: We must exclude NULL cities and ensure we don't match a customer to themselves.


select a.first_name as customer_name,b.first_name as first_name,a.city as city_name
    from customers  a
    JOIN customers b 
    ON a.city = b.city
    where a.customer_id < b.customer_id;


-- 8. (Cross Join) Generate a theoretical list of every customer buying every order (Cartesian Product).


select c.first_name,o.order_id
    from customers c
    CROSS JOIN orders o;



-- 9. (Natural Join) Join Customers and Orders automatically based on the common column (CUSTOMER_ID).
--  Note: Oracle does not require table aliases on the common column in a Natural Join.


SELECT FIRST_NAME, ORDER_ID
FROM CUSTOMERS
NATURAL JOIN ORDERS;



-- 10. (Left Join & Filtering) List all Customers and their Order Dates, but only for orders placed after October 5th. Keep customers with NO orders in the list.
--  Note: The condition must be in the ON clause, not WHERE, to preserve the Left Join behavior for non-matching rows.


SELECT C.FIRST_NAME, O.ORDER_DATE
FROM CUSTOMERS C
LEFT JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID AND O.ORDER_DATE > DATE '2023-10-05';