-- Discos con más de 25 canciones

SELECT tracks.AlbumId,
       Title,
       count(tracks.AlbumId)
FROM albums
INNER JOIN tracks
      ON tracks.AlbumId = albums.AlbumId
GROUP BY  tracks.AlbumId
HAVING COUNT(*) > 25
