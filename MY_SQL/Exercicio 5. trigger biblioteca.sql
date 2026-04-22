CREATE DEFINER=`root`@`localhost` TRIGGER `5. Nome Duplicado` BEFORE INSERT ON `tb_autores` FOR EACH ROW BEGIN
DECLARE qtdAutores INT;
SELECT COUNT(*) INTO qtdAutores FROM tb_autores WHERE nome = NEW.nome;
IF qtdAutores > 0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nome duplicado!!';
end if;
END