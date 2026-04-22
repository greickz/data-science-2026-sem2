CREATE DEFINER=`root`@`localhost` TRIGGER `1 - Idade Autores` BEFORE INSERT ON `tb_autores` FOR EACH ROW BEGIN
SET NEW.idade = TIMESTAMPDIFF(YEAR, NEW.data_nascimento, CURDATE());
if NEW.idade <=18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Autor menor de idade!!';
END IF;
END