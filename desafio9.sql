DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN name_artist VARCHAR(60))
BEGIN 
	SELECT
    A.name_artista AS 'artista',
    AL.nome_album AS 'album' 
    FROM albuns AL
    INNER JOIN artistas A
    ON AL.artista_id = A.artista_id
    HAVING `artista`= name_artist;
END $$
DELIMITER ;


CALL albuns_do_artista('Walter Phoenix');