CREATE DATABASE SOFTBLUE DEFAULT CHARSET=latin1;
USE SOFTBLUE;

CREATE TABLE tipo
(
	codigo int unsigned not null auto_increment,
    tipo varchar(30) not null,
    PRIMARY KEY (codigo)
);

CREATE TABLE instrutor
(
	codigo int unsigned not null auto_increment,
    instrutor varchar(64) not null,
    telefone varchar(10) null,
    PRIMARY KEY (codigo)
);

CREATE TABLE aluno
(
	codigo int unsigned not null auto_increment,
    aluno varchar(30) not null,
    endereco varchar(230) not null,
    email varchar(40) not null,
    PRIMARY KEY (codigo)
);

ALTER TABLE aluno ADD data_nascimento varchar(15);
ALTER TABLE aluno CHANGE COLUMN data_nascimento nascimento date not null;
ALTER TABLE aluno ADD INDEX index_aluno(aluno);
ALTER TABLE instrutor ADD email varchar(100);
ALTER TABLE instrutor DROP email;