CREATE DEFINER=`root`@`localhost` TRIGGER `Verificar a existencia do autor` BEFORE INSERT ON `tb_autores` FOR EACH ROW BEGIN
-- Verificar se o nome do autor ja existe na base 

-- Verificar se o autor existe (SELECT) 
if exists (SELECT 1 from tb_autores where LOWER(nome) = LOWER(NEW.nome)) THEN-- o 1 é apenas simbolico ele não retorna nada em especifico , o lower deixa tudo minusculo
SIGNAL SQLSTATE '45000'
SET message_text = 'O autor já está cadastrado!!';
END IF;
-- Mensagem erro
END