SELECT p.ProductName, SUM(o.Total) AS TotalRevenue
FROM Products p 
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY p.ProductName ASC;