SELECT p.Name AS 'Playlist Name', COUNT(t.TrackId) AS '# Tracks'
FROM PlaylistTrack pt
INNER JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
INNER JOIN Track t on t.TrackId = pt.PlaylistId
GROUP BY p.Name