SELECT 
    Ar.fullName AS artista, Al.albumName AS album
FROM
    SpotifyClone.Albums AS Al
        JOIN
    SpotifyClone.Artists AS Ar ON Ar.artist_id = Al.artist_id
        AND fullName = 'Walter Phoenix'
ORDER BY album;