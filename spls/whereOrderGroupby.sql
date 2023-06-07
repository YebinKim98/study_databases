SELECT COUNT(*), EmployeeID
FROM Orders
WHERE EmployeeID IN (7,9)
GROUP BY EmployeeID;