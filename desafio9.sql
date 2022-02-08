SELECT 
    COUNT(song_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.Users AS U
        JOIN
    SpotifyClone.Histories AS H ON H.user_id = U.user_id
        AND firstName = 'Bill';