-- Reescribir la siguiente consulta con JOIN
/*
SELECT trackid,
       name
FROM tracks
WHERE albumid = (
      SELECT albumid
      FROM albums
      WHERE title = 'Let There Be Rock'
      );
*/

SELECT trackid,
       name
FROM tracks
INNER JOIN albums
      ON albums.albumid = tracks.albumid
WHERE albums.title = 'Let There Be Rock'
