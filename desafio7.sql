CREATE VIEW perfil_artistas AS 
SELECT
A.name_artista AS 'artista', 
AL.nome_album AS 'album',
COUNT(S.artista_id) AS 'seguidores'
FROM artistas A
INNER JOIN albuns AL
ON AL.artista_id = A.artista_id
INNER JOIN seguidores S
ON S.artista_id = A.artista_id
GROUP BY AL.album_id
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
