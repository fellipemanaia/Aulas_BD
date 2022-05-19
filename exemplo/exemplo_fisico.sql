-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE exemplo;

USE exemplo; 

CREATE TABLE Jogadores (
Num_Jogadores int PRIMARY KEY AUTO_INCREMENT,
Nome_Jogador varchar(255),
cod_equipe int
);

CREATE TABLE Equipes (
cod_equipe int PRIMARY KEY AUTO_INCREMENT,
Nome_equipe varchar(255)
);

ALTER TABLE Jogadores ADD FOREIGN KEY(cod_equipe) REFERENCES Equipes (cod_equipe);
