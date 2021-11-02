CREATE VIEW cancoes_premium AS
SELECT
C.nome_cancao AS 'nome',
COUNT(H.cancoes_id) AS 'reproducoes'
FROM cancoes C
INNER JOIN historico H
ON C.cancoes_id = H.cancoes_id
INNER JOIN users U
ON U.user_id = H.user_id
WHERE U.plano_id BETWEEN 2 AND 3
GROUP BY H.cancoes_id
ORDER BY nome;