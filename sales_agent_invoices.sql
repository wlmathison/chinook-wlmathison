SELECT i.InvoiceId, i.InvoiceDate, i.Total, CONCAT(e.FirstName, ' ', e.LastName) AS 'Employee Name' FROM Invoice i
LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e ON e.EmployeeId = c.SupportRepId
ORDER BY e.EmployeeId