SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Sales Agent', COUNT(c.CustomerId) AS 'Assigned Customers' FROM Employee e
LEFT JOIN Customer c on c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent'
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)