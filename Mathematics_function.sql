-- Find sine value of an angle.

SELECT sin(30 * (ACOS(-1)/180)) from orders;

-- Find cosine value of an angle.

select cos(60 * (ACOS(-1)/180)) from orders;

-- Find tangent value.

select tan(45 * (ACOS(-1)/180)) from orders;

-- Convert degrees to radians.

select 90 * (ACOS(-1)/180) from orders;

-- Find logarithm (base 10) of a number.

select log(10,100) from dual;

-- Find natural log of a number.

select LN(10) from dual;

-- Find square of a number.

select power(5,2) from dual;

-- Find cube of a number.

select power(5,3) from dual;

-- Calculate factorial of a number.

select fact(5) from dual;

-- Find greatest value among three numbers.

SELECT GREATEST(10,20,30) from orders;

-- Find least value among three numbers.

SELECT LEAST(20,30,10) from dual;

-- Calculate variance of sales.

select VARIANCE(quantity * unit_price) from orders;

-- Calculate standard deviation of sales.

select stddev(quantity * unit_price) From orders;

-- Find average deviation.

SELECT AVG(unit_price * quantity) from orders;

-- Find sum of squares.

select sum(power(5,2)) from dual;

