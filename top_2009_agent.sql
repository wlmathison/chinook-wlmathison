SELECT *
FROM (
SELECT SUM(i.Total) AS 'Total Sales', CONCAT(e.FirstName, ' ', e.LastName) AS 'Sales Agent'
FROM Invoice i
LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e ON e.EmployeeId = c.SupportRepId
WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)) s
WHERE [Total Sales] = (SELECT MAX([Total Sales]) 
FROM (
SELECT SUM(i.Total) AS 'Total Sales', c.SupportRepId
FROM Invoice i
LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
GROUP BY c.SupportRepId) t)