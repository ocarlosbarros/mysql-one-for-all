SELECT 
    title AS nome, COUNT(H.user_id) AS reproducoes
FROM
    SpotifyClone.Users AS U
        JOIN
    SpotifyClone.Histories AS H ON H.user_id = U.user_id
        JOIN
    SpotifyClone.Songs AS S ON S.song_id = H.song_id
        JOIN
    SpotifyClone.Plans AS P ON (P.planName = 'gratuito'
        OR planName = 'pessoal')
        AND P.plan_id = U.plan_id
GROUP BY nome
ORDER BY nome;