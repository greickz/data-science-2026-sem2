CREATE DEFINER=`root`@`localhost` TRIGGER `3. Limite Emprestimo` BEFORE INSERT ON `tb_emprestimo` FOR EACH ROW BEGIN
DECLARE qtdEmprestimos INT;
SELECT COUNT(*) INTO qtdEmprestimos FROM tb_emprestimo
WHERE id_membroForeign = NEW.id_membroForeign AND (data_devolucao IS NULL OR data_devolucao > CURDATE());
IF qtdEmprestimos >= 3 THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Membro já possui 3 empréstimos ativos!!';
END IF;
END