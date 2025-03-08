show databases;
use sales_db;
show tables;
SELECT CustomerName 
FROM Customers c 
WHERE EXISTS (
    SELECT 1 
    FROM Orders o 
    WHERE o.CustomerID = c.CustomerID 
    AND o.Quantity > 5
);

-- EXISTS stops searching as soon as it finds a match while IN would return all
--  matching values and check against them, which can be slower.
 