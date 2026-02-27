-- Write a query to convert all customer names to uppercase.

select UPPER(Customer_Name) from orders;

-- Extract the first 5 characters from Product_Name.

select substr(product_name, 1, 5) from orders;

-- Find the length of each Customer_Name.

select length(customer_name) from orders;

-- Replace the word "Rice" with "Premium Rice" in Product_Name.

select replace(product_name, 'Rice', 'Premium Rice') from orders;

-- Remove leading and trailing spaces from Customer_Name.

select trim(customer_name) from orders;

-- Concatenate First_Name and Last_Name as Full_Name.

select (first_name || ' ' || last_name) as full_name from orders;

-- Find customers whose names start with 'A'.

select * from orders
where customer_name like 'A%';

-- Extract the domain name from Email_ID.

select substr(Email_ID, instr(Email_ID,'@')+1)
from orders;

-- Find the position of '@' in Email_ID.

select instr(Email_ID, '@') from orders;

-- Reverse the Product_Name.

select reverse(Product_Name) from orders;

-- Convert the first letter of each word in Product_Name to uppercase.

select initcap(Product_Name) from orders;

-- Extract the last 3 characters from Order_ID.

select substr(to_char(Order_ID),-3), Order_ID from orders;

-- Count how many times letter 'a' appears in Customer_Name.

select length(Customer_Name) - length(replace(lower(Customer_Name),'a','')) as custom_name, customer_name from orders;

-- Mask the last 4 digits of a phone number.Phone_Number is not there in orders.

select SUBSTR(phone_number,1,LENGTH(phone_number)-4) || '* * * *' AS Masked_number from orders;

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

SELECT SUBSTR(Email_ID,INSRT(Email_ID,'@')+1) from ORDERS;

-- Find the position of '@' in Email_ID.

select INSTR(Email_ID,'@') FROM ORDERS;

-- Reverse the Product_Name.

select REVERSE(Product_Name) FROM ORDERS;