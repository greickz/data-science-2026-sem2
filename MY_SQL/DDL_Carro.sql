/* CRIAÇÃO BASE DE DADOS */
CREATE DATABASE db_carro;

/*ACESSO AO BANCO DE DADOS*/
USE db_carro;

/*CRIAÇÃO TABELA*/
CREATE TABLE tb_carro(
id_carro int(10) not null, /* int(10) serve para falar que o max que vai usar serão 10 num e o not null significa que o campo não será vazio*/
marca VARCHAR(100), /*VARCHAR É TEXTO COMO A STRING NO PYTHON*/
modelo VARCHAR(100),
ano int(4),
valor DECIMAL(10,2), /*o primeiro número no paranteses é quantos num serão antes da virgula e o outro quantos depois*/
cor VARCHAR(100),
numero_Vendas int(10),
PRIMARY KEY (id_carro) /*CHAVE PRIMARIA*/
); /*O PONTO E VÍRGULA É O FINAL DO CÓDIGO QUE SERÁ RODADO ENTÃO PARA RODAR A TABELA É NECESSÁRIO CLICAR NA LINA DO PONTO E VÍRGULA E RODAR, É COMO SE ELE LESSE ENTRE O ÚLTIMO PONTO E VIRGULA E O SELECIONADO*/

CREATE TABLE tb_proprietario(
id_proprietario int(10) not null,
nome VARCHAR(255),
id_carroForeign int(10) not null, /*PARA DECLARAR A CHAVE ESTRANGEIRA É NECESSARIO colocar as mesmas caracteristicas do id que esta sendo chamado o nome esta diferente pois é como se fosse uma variavel que esta sendo atribuida ao id da outra tabela*/
PRIMARY KEY (id_proprietario),
FOREIGN KEY (id_carroForeign) REFERENCES tb_carro(id_carro) /*CHAVE ESTANGEIRA, É CHAMADO A "VARIAVEL" DO ID NO CASO CHAMADA id_carroForeign, DEPOIS O REFERENCE É O CAMINHO DA OUTRA TABELA QUE ESTA SENDO CHAMADO A CHAVE ESTRANGEIRA E PARA FINALIZAR É SÓ COLOCAR A TABELA DE ONDE TA VINDO A INFORMAÇÃO E DEPOIS O ATRIBUTO QUE ESTA SENDO CHAMADO*/
);


CREATE TABLE tb_historico(
id_historico INT(10) NOT NULL auto_increment,
data_modificacao DATETIME,
id_carroForeignHistorico INT(10) NOT NULL,
valor_anterior DECIMAL(10,2),
valor_novo DECIMAL(10,2),
PRIMARY KEY(id_historico),
FOREIGN KEY(id_carroForeignHistorico) REFERENCES tb_carro(id_carro)
);

DROP TABLE tb_historico;

/*SELECIONAR TUDO DA TABELA CARRO*/
SELECT * FROM tb_carro;

/*SELECIONAR ALGUMAS COLUNAS DA TABELA CARRO*/
SELECT marca, modelo FROM tb_carro;

/*SELECIONAR TUDO DA TABELA PROPRIETARIO*/
SELECT * FROM tb_proprietario;


/*ALTERAÇÃO DA TABELA PÓS CRIAÇÃO DELA*/
ALTER TABLE tb_proprietario ADD idade INT(3); /*PARA ALTERAR É NECESSARIO INSERIR O NOME DA TABELA QUE SERA ALTERADA DEPOIS O QUE VAI SER ALTERADO NESSE CASO ESTA SENDO ADICIONADO, E POR FIM ADICIONE O NOME DA COLUNA E O TIPO DELA*/
ALTER TABLE tb_proprietario RENAME TO tb_proprietarios;/*RENOMEAR O NOME DA TABELA*/
ALTER TABLE tb_proprietario DROP idade; /*excluir coluna*/
ALTER TABLE tb_proprietario RENAME COLUMN nome TO name; /* Renomear Coluna*/ 

/*SELECIONAR TUDO DA TABELA HISTORICO*/
SELECT * FROM tb_historico;