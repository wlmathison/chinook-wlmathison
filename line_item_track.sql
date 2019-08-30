SELECT i.InvoiceLineId, i.InvoiceId, i.Quantity, i.UnitPrice, t.Name AS 'Track Name'
FROM InvoiceLine i
LEFT JOIN Track t ON t.TrackId = i.TrackId
ORDER BY i.InvoiceId