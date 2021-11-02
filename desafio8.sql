DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN 
DELETE FROM seguidores
WHERE OLD.user_id = user_id;
DELETE FROM historico
WHERE OLD.user_id = user_id;
END $$
DELIMITER ;