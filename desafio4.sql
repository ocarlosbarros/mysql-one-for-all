SELECT 
    firstName AS usuario,
    IF(MAX(YEAR(playback_date)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.Users AS U
        JOIN
    SpotifyClone.Histories AS H ON H.user_id = U.user_id
GROUP BY usuario
ORDER BY usuario
    
    

