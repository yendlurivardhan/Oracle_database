-- 1.Round Unit_Price to 2 decimal places.

SELECT round(unit_price,2) from orders;

-- 2.Find total sales per order.

SELECT quantity * unit_price As Sales from orders;

-- 3.Calculate average order value.

select AVG(quantity * unit_price) As Average_orders from orders;

-- 4.Find highest product price.

SELECT max(unit_price) from orders;

-- 5.Find lowest product price.

SELECT min(unit_price) from orders;

-- 6.Calculate percentage discount applied.

SELECT unit_price,discount_price,
    round(((unit_price*discount_price)/unit_price)*100,2)
    As Discount_price
    from orders;

-- 7.Find modulus of Quantity divided by 2.

SELECT mod(quantity,2) from orders;

-- 8.Convert negative values to positive.

SELECT abs(-3) from dual;

-- 9.Truncate price without rounding.

select TRUNC(unit_price,0) from orders;

-- 10.Find square root of total sales.

SELECT sqrt(quantity * unit_price) from orders;

-- 11.Calculate exponential value of a number.

SELECT power(3,4) from dual;

-- 12.Calculate power of 2^5.

SELECT power(2,5) from dual;

-- 13.Find absolute difference between two prices.

SELECT abs(max(unit_price)-min(unit_price)) As Absolute_difference from orders;

-- 14.Calculate sales growth percentage.

SELECT Quantity * unit_price AS sales from orders;

-- 15.Find random number between 1 and 100.

seelct round(dbms_random.values(1,100)) AS random_numbers from dual;

-- 16.Divide total sales by number of orders.

select sum(qunatity * unit_price) / cout(*) AS Total_sales from orders;

-- 17.Find ceiling value of price.

select ceil(unit_price) from orders;

-- 18.Find floor value of price.

select floor(unit_price) from orders;

-- 19.Convert decimal to integer.

select round(unit_price) as Integer_value from orders;

-- 20.Calculate compound interest.

select 10000 * power((1+(0.08/1)), (1*2)) as compound_amount from dual;