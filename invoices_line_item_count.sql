SELECT (SELECT COUNT(*) FROM InvoiceLine WHERE InvoiceId = i.InvoiceId) AS '# Invoice Lines', i.*
FROM Invoice i