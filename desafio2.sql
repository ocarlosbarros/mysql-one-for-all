SELECT COUNT( DISTINCT S.song_id) AS cancoes, COUNT( DISTINCT Ar.artist_id) AS artistas, COUNT( DISTINCT Al.album_id) as albuns
	FROM SpotifyClone.Songs AS S
    JOIN SpotifyClone.Albums AS Al ON S.album_id = Al.album_id
    JOIN SpotifyClone.Artists AS Ar ON Ar.artist_id = Al.artist_id
	