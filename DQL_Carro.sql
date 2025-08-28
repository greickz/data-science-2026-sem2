USE db_carro;

/*CONSULTA NO BANCO DE DADOS*/
SELECT * FROM tb_carro;
SELECT modelo, cor FROM tb_carro; /*Filtar por coluna*/ 
SELECT * FROM tb_carro WHERE cor = 'branco'; /*Filtrar por característica*/
SELECT * FROM tb_carro WHERE modelo = 'lancer';/*Filtrar por característica*/
SELECT MIN(valor) FROM tb_carro; /*Filtrar por minímo*/
SELECT MAX(ano) FROM tb_carro;/*Filtrar por maxímo*/
SELECT COUNT(id_carro) FROM tb_carro; /*Verificar quantos registros tem*/
SELECT SUM(valor) FROM tb_carro; /*verificar a quantidade armazenada no estoque no caso foi a soma do valor de todos os carros*/
SELECT * FROM tb_carro ORDER BY modelo ASC;/*Ordenar modelo por ordem Crescente*/
SELECT * FROM tb_carro ORDER BY modelo DESC;/*Ordenar modelo por ordem Decrescente*/

SELECT COUNT(id_carro) AS 'Total Registros', marca FROM tb_carro WHERE ano BETWEEN '1990' and '2000' GROUP BY marca; /*Filtrar por marca e períoddo, o AS foi para renomear a coluna*/

SELECT COUNT(id_carro) AS 'Registros 1999', marca FROM tb_carro WHERE ano = '1999' GROUP BY marca; /*Filtrar por marca e ano expecifico/

