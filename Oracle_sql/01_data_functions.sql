-- Write a query to convert all customer names to upper case,

select UPPER(Customer_name) From ORDERS;

-- Find the length of each customer_Name.

select LENGTH(customer_name) from ORDERS;

-- Replace the words "Rice" with "Premium Rice" in product_Name.

select REPLACE(Product_name, 'Basmati Rice 5kg','Basmati Rice 6kg') from ORDERS;

-- Remove leading and trailing spaces from Customer_name.

select TRIM(customer_name) from ORDERS;


-- Concatenate First_name and Last_name as Full_Name.

SELECT First_name || ' '|| Last_name as Full_Name from ORDERS;

-- Find customer name whose name starts with 'A'.

select * from ORDERS where CUSTOMER_NAME LIKE 'A%';

-- Extract the domain name from Email_ID.

SELECT SUBSTR(Email_ID,INSERT(Email_ID,'@')+1) from ORDERS;

-- Find the position of '@' in Email_ID.

select INSTR(Email_ID,'@') FROM ORDERS;

-- Reverse the Product_Name.

select REVERSE(Product_Name) FROM ORDERS;