CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(nome_cancao) AS 'cancoes',
(SELECT COUNT(name_artista) FROM SpotifyClone.artistas) AS 'artistas',
(SELECT COUNT(nome_album) FROM SpotifyClone.albuns) AS 'albuns'
FROM SpotifyClone.cancoes;
