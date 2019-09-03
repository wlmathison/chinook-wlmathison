SELECT COUNT(BillingCountry) AS '# Invoices', BillingCountry 
FROM Invoice
GROUP BY BillingCountry