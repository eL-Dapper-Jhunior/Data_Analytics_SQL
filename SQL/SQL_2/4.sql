SELECT OrderDate, COUNT(ORDERID) AS OrderCount
FROM Orders
GROUP BY OrderDate
ORDER BY OrderDate;