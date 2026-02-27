-- ALTER and UPDATE Table

ALTER TABLE ORDERS
ADD Phone_Number VARCHAR2(13)
COMMIT;

UPDATE orders
SET phone_number =
CASE order_id
    WHEN 1001 THEN '9849373924'
    WHEN 1002 THEN '9843456754'
    WHEN 1003 THEN '6348454236'
    WHEN 1004 THEN '7834767458'
    WHEN 1005 THEN '6347856389'
    WHEN 1006 THEN '9476569567'
    WHEN 1007 THEN '9849373924'
    WHEN 1008 THEN '8456457364'
    WHEN 1009 THEN '9237927334'
    WHEN 1010 THEN '9232836945'
END
WHERE order_id IN (1001,1002,1003,1004,1005,
                   1006,1007,1008,1009,1010);-- Extract year from Order_Date.


SELECT * FROM ORDERS;


ALTER TABLE ORDERS
ADD EMAIL_ID VARCHAR2(100)
COMMIT;

UPDATE ORDERS
SET EMAIL_ID = 
CASE ORDER_ID
    WHEN 1001 THEN 'charanshama@gmail.com'
    WHEN 1002 THEN 'rameshumae@gmail.com'
    WHEN 1003 THEN 'priyasharma086@gmail.com'
    WHEN 1004 THEN 'google012.enm@gmail.com'
    WHEN 1005 THEN 'raleuk4444@gmail.com'
    WHEN 1006 THEN 'gurumaheswar@gmail.com'
    WHEN 1007 THEN 'kiransing@gmail.com'
    WHEN 1008 THEN 'rahul.kl@gmail.com'
    WHEN 1009 THEN 'aklrgh@gmail.com'
    WHEN 1010 THEN 'kasnik@gmail.com'
END;

SELECT * FROM ORDERS;