CREATE DEFINER=`root`@`localhost` TRIGGER `4. Atualização Data Adesão` BEFORE UPDATE ON `tb_emprestimo` FOR EACH ROW BEGIN
 UPDATE tb_membros SET data_adesao = CURDATE() WHERE id_membro = NEW.id_membroForeign;
END