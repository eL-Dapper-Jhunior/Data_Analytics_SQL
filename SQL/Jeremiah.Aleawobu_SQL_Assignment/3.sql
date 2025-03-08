SELECT CustomerID, Total
FROM Orders 
WHERE Total > ALL (
    SELECT Total 
    FROM Orders 
    WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE CustomerName = 'John Doe')
    );

SELECT CustomerName, Total
FROM Orders
JOIN customers ON customers.CustomerID = orders.CustomerID 
WHERE Total > ALL (
    SELECT Total 
    FROM Orders 
    WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE CustomerName = 'John Doe')
    );
   -- If ANY is used instead of ALL, the results will show CustomerIDs whose total amount exceeds at least one of 
--    John's order totals.
