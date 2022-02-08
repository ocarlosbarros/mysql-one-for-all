SELECT 
    Ar.fullName AS artista,
    Al.albumName AS album,
    COUNT(Ua.user_id) AS seguidores
FROM
    SpotifyClone.Albums AS Al
        JOIN
    SpotifyClone.Artists AS Ar ON Ar.artist_id = Al.artist_id
        JOIN
    SpotifyClone.Users_Artists AS Ua ON Ua.artist_id = Ar.artist_id
GROUP BY fullName , albumName
ORDER BY seguidores DESC , artista , Album;
