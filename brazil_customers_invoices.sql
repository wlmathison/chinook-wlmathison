SELECT CONCAT(c.FirstName, ' ', c.LastName) AS 'Full Name', i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Invoice i
LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil'