-- Las 10 canciones más populares

SELECT tracks.TrackId,
       Name,
       composer,
       count(playlist_track.PlaylistId)
FROM playlist_track
INNER JOIN tracks
      ON tracks.TrackId = playlist_track.TrackId
GROUP BY  tracks.TrackId
ORDER BY  count(playlist_track.PlaylistId) DESC LIMIT 10
