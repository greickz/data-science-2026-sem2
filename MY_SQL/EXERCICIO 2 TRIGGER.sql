CREATE DEFINER=`root`@`localhost` TRIGGER `2. Atualização data_devolucao` BEFORE INSERT ON `tb_emprestimo` FOR EACH ROW BEGIN
    SET NEW.data_devolucao = DATE_ADD(NEW.data_emprestimo, INTERVAL 15 DAY);
END