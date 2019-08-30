SELECT i.InvoiceLineId, i.InvoiceId, i.Quantity, i.UnitPrice, t.Name AS 'Track Name', art.Name AS 'Artist Name'
FROM InvoiceLine i
LEFT JOIN Track t ON t.TrackId = i.TrackId
LEFT JOIN Album a ON a.AlbumId = t.AlbumId
LEFT JOIN Artist art ON art.ArtistId = a.ArtistId
ORDER BY i.InvoiceId