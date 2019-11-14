USE softblue;
SELECT * FROM instrutor;
INSERT INTO instrutor (codigo, instrutor, telefone) VALUES (3, 'Samuel', 0000000);
INSERT INTO instrutor (codigo, instrutor, telefone) VALUES (4, 'Fábio', 0000000);

CREATE TABLE cursos
(
	id int unsigned not null auto_increment,
    INS int unsigned,
    TITULO varchar(15) not null,
    PRIMARY KEY (id)
);

INSERT INTO cursos (INS, TITULO) VALUES (1, 'Java');
INSERT INTO cursos (INS, TITULO) VALUES (null, 'PHP');
INSERT INTO cursos (INS, TITULO) VALUES (1, 'MySQL');
INSERT INTO cursos (INS, TITULO) VALUES (3, 'SQL');
INSERT INTO cursos (INS, TITULO) VALUES (2, 'C++');

SELECT * FROM cursos;

SELECT * FROM instrutor INNER JOIN cursos ON instrutor.codigo = cursos.INS; /*1*/
SELECT * FROM instrutor RIGHT JOIN cursos ON instrutor.instrutor = cursos.TITULO; /*2*/
SELECT * FROM instrutor RIGHT JOIN cursos ON instrutor.codigo = cursos.INS; /*5*/
/*3 = 4 & 4 = 3*/ 

