CREATE VIEW top_3_artistas AS 
SELECT A.name_artista AS 'artista',
(SELECT COUNT(artista_id) FROM seguidores S
WHERE A.artista_id = S.artista_id) AS 'seguidores'
FROM artistas A
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;