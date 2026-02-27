-- -- Extract year from Order_Date.

select EXTRACT (YEAR FROM ORDER_DATE) AS ORDERED_DATE FROM ORDERS;

-- -- Extract month from Order_Date.

SELECT EXTRACT (MONTH FROM ORDER_DATE) AS OREDERD_MONTH FROM ORDERS;

-- -- Extract day from Order_Date.

SELECT EXTRACT (DAY FROM ORDER_DATE) AS ORDERED_DAY FROM ORDERS;

-- -- Find current date.

SELECT SYSDATE FROM DUAL;

-- -- Find current date.

SELECT SYSDATE FROM ORDERS;

-- -- Add 7 days to Order_Date.

SELECT ORDER_DATE + 7 AS NEW_DATE FROM ORDERS;

-- -- Subtract 30 days from Order_Date.

SELECT ORDER_DATE - 30 AS NEW_DATE FROM ORDERS;

-- -- Find difference between two dates.

SELECT LAST_DAY(ORDER_DATE) - ORDER_DATE AS DIFFERENCE_DATE FROM ORDERS;

-- --Find number of months between two dates.

SELECT MONTHS_BETWEEN(SYSDATE,ORDER_DATE) AS MONTHS_DIFFERENCE FROM ORDERS;

-- --Find last day of the month.

SELECT LAST_DAY (ORDER_DATE) FROM ORDERS;

-- -- Get first day of the year.

SELECT TRUNC(ORDER_DATE,'YEAR') AS DAY_1 FROM ORDERS;

-- -- Format date as 'DD-MM-YYYY'.

SELECT TO_CHAR(ORDER_DATE,'DD-MM-YYYY') AS FORMATED_DATE FROM ORDERS;

-- -- Convert string to date.

SELECT TO_DATE('24-01-2005','DD-MM-YYYY') AS SET_DATE FROM DUAL;

-- -- Convert date to string.

SELECT TO_CHAR(ORDER_DATE,'YYYY-DD-MM') AS ORDERED_DATE FROM ORDERS;

-- -- Find week number of the year.

SELECT TO_CHAR(ORDER_DATE,'WW') AS WEEK_NUMBER FROM ORDERS;

-- -- Find day name from date.

SELECT TO_CHAR(ORDER_DATE,'DAY') AS DAY_NAME FROM ORDERS;

-- -- Find quarter of the year.

SELECT TO_CHAR(ORDER_DATE,'Q') AS quarter FROM ORDERS;

-- -- Calculate age from DOB.

SELECT FLOOR(MONTHS_BETWEEN(SYSDATE,TO_DATE('2005-24-01','YYYY-DD-MM'))/12) AS AGE FROM ORDERS;

-- Check if date is weekend.

SELECT CASE
WHEN TO_CHAR(ORDER_DATE,'D') IN (1,7) THEN 'WEEKEND'
ELSE 'WEEKDAY' END AS DAY_TYPE 
FROM ORDERS;    

-- Find next Monday after a given date.

SELECT ORDER_DATE,
    NEXT_DAY(ORDER_DATE,'MONDAY') AS NEXT_MONDAY 
FROM ORDERS;