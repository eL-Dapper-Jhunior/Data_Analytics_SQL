SELECT p.ProductName, SUM(o.Quantity) AS TotalQuantity
FROM Products p 
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY TotalQuantity DESC
LIMIT 1;