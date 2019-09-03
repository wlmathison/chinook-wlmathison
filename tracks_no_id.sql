SELECT t.Name AS 'Album Name', m.Name AS 'Media Type', g.Name AS 'Genre'
FROM Track t
LEFT JOIN MediaType m on m.MediaTypeId = t.MediaTypeId
LEFT JOIN Genre g on g.GenreId = t.GenreId