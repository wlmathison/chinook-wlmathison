SELECT i.Total AS 'Invoice Total', CONCAT(c.FirstName, ' ', c.LastName) AS 'Customer name', c.Country, CONCAT(e.FirstName, ' ', e.LastName) AS 'Sale Agent name'
FROM Invoice i
LEFT JOIN Customer c on c.CustomerId = i.CustomerId
LEFT JOIN Employee e on e.EmployeeId = c.SupportRepId