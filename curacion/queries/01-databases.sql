SELECT TrackId,
       Name,
       AlbumId
FROM tracks
WHERE AlbumId ==(
      SELECT AlbumId
      FROM albums
      WHERE ArtistId == (
            SELECT ArtistId
            FROM artists
            WHERE name LIKE '%iron%'
      )
)
