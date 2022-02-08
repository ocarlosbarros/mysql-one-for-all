SELECT 
    ROUND(MIN(price), 2) AS faturamento_minimo,
    ROUND(MAX(price), 2) AS faturamento_maximo,
    ROUND(AVG(price), 2) AS faturamento_medio,
    ROUND(SUM(price), 2) AS faturamento_total
FROM
    SpotifyClone.Users AS U
        JOIN
    SpotifyClone.Plans AS P ON U.plan_id = P.plan_id;
