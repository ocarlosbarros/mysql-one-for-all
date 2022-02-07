SELECT 
    firstName AS usuario,
    COUNT(title) AS qtde_musicas_ouvidas,
    ROUND(SUM(seconds_duration) / 60, 2) AS total_minutos
FROM
    SpotifyClone.Users
        JOIN
    SpotifyClone.Histories AS H ON H.user_id = SpotifyClone.Users.user_id
        JOIN
    SpotifyClone.Songs AS S ON S.song_id = H.song_id
GROUP BY usuario
ORDER BY usuario;