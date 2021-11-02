CREATE VIEW historico_reproducao_usuarios AS
SELECT
U.name usuario,
C.nome_cancao nome
FROM users U
-- usando a tabela de conexão
INNER JOIN historico H
ON U.user_id = H.user_id
--
INNER JOIN cancoes C
ON H.cancoes_id = C.cancoes_id
ORDER BY usuario, nome;