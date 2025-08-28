CREATE DEFINER=`root`@`localhost` TRIGGER `1 - Idade Pets` BEFORE INSERT ON `tb_pets` FOR EACH ROW BEGIN
SET NEW.idade = TIMESTAMPDIFF(YEAR, NEW.data_nascimento, CURDATE()); 
END