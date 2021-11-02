DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantia_de_musicas INT;
SELECT
COUNT(*)
FROM historico
WHERE user_id = id
INTO quantia_de_musicas;
RETURN quantia_de_musicas;
END $$
DELIMITER ;