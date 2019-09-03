SELECT SUM(i.Total) AS 'Total Sales', CONCAT(e.FirstName, ' ', e.LastName) AS 'Sales Agent'
FROM Invoice i
LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)