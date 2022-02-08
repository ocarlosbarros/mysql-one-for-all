SELECT S.title AS cancao, COUNT(H.user_id) AS reproducoes
FROM SpotifyClone.Histories AS H
JOIN SpotifyClone.Songs AS S ON H.song_id = S.song_id
GROUP BY title
ORDER BY reproducoes DESC, title ASC LIMIT 2;