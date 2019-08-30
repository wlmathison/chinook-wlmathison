SELECT COUNT(InvoiceLineId) AS '# Line Items', InvoiceId
FROM InvoiceLine
GROUP BY InvoiceId