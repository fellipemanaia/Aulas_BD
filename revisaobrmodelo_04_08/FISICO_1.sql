-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE revisao123;
USE revisao123;

CREATE TABLE produto (
codigo int PRIMARY KEY AUTO_INCREMENT,
nome_produto varchar(255),
cor varchar(255),
preco decimal(6,2)
);

CREATE TABLE cliente (
id_cliente int PRIMARY KEY AUTO_INCREMENT,
nome_cliente varchar(255),
email varchar(255),
estado varchar(255)
);

CREATE TABLE compra (
nota_fiscal int PRIMARY KEY AUTO_INCREMENT,
data date,
id_cliente int,
codigo int,
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY(codigo) REFERENCES produto (codigo)


);