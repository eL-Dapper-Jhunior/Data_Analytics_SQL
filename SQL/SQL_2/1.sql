SELECT c.CustomerName, SUM(o.Total) AS TotalSales
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;