CREATE VIEW top_2_hits_do_momento AS 
SELECT C.nome_cancao AS 'cancao',
(SELECT COUNT(H.cancoes_id) FROM historico H
WHERE H.cancoes_id = C.cancoes_id) AS 'reproducoes'
FROM cancoes C
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;