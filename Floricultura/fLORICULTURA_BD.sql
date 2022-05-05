-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE FLORICULTURA;
USE FLORICULTURA;

CREATE TABLE Cliente (
rg varchar(12),
registro Int PRIMARY KEY AUTO_INCREMENT,
nome varchar(255),
telefone varchar(14),
endereco varchar(255)
);

CREATE TABLE produto (
codproduto int PRIMARY KEY AUTO_INCREMENT,
tipo varchar(255),
quantidade int,
preço decimal(10,2),
nomeproduto varchar(255)
);

CREATE TABLE compra (
notafiscal Texto(1) PRIMARY KEY AUTO_INCREMENT,
valor_total decimal(2,2),
registro Int,
FOREIGN KEY(registro) REFERENCES Cliente (registro)
);

CREATE TABLE Compra-Produto (
data_compra date,
quantidade_itens int,
codproduto int,
notafiscal Texto(1),
FOREIGN KEY(codproduto) REFERENCES produto (codproduto),
FOREIGN KEY(notafiscal) REFERENCES compra (notafiscal)
);

