-- 1.Replace NULL price with 0.

select nvl(unit_price,0) from orders;

-- 2.Replace NULL Customer_Name with 'Unknown'.

SELECT nvl(customer_name,'unknown') from orders;

-- 3.Count NULL values in Product_Name.

select count(*) from orders where product_name is NULL;

-- 4.Find rows where Order_Date is NULL.

select * from orders wher order_date is null;

-- 5.Use COALESCE to return first non-null value.

select coalesce(customer_name,product_name,'no data') from orders;

-- 6.Use NVL to replace NULL values.

select nvl(product_name,'NA') from orders;

-- 7.Use IFNULL function.

select nvl(unit_price, 0) from orders.

-- 8.Check if column is NULL.

select * from orders where unit_price is null

-- 9.Check if column is NOT NULL.

select * from orders where unit_price is not null

-- 10.Use NULLIF between two columns.

select nullif(unit_price, quantity) from orders;

-- 11.Replace blank values with NULL.

select nullif(Trim(customer_name),'') from orders;

-- 12.Count non-null values.

select count(product_name) from orders;

-- 13.Filter records where price is NULL or 0.

select * from orders
    where unit_price is Null 
    or 
    unit_price = 0

-- 14.Use CASE to handle NULL values.

select case
    when unit_price is NULL
    Then 0
    Else unit_price
    END
from orders;

-- 15.Compare NULL values properly.

select * form orders where customer_name is NULL

-- 16.Handle NULL in aggregation.

select sum(nvl(unit_price,0)) from orders;

-- 17.Find average excluding NULL values.

select AVG(unit_price) from orders;

-- 18.Find sum ignoring NULL values.

select sum(unit_price) from orders;

-- 19.Identify columns containing NULL using metadata.

select * from orders where unit_price is NULL

-- 20.Convert NULL to default system date.

select nvl(order_date,SYSDATE) from orders;

