USE softblue;
INSERT INTO tipo (codigo, tipo) VALUES (1 ,'Banco de dados');
INSERT INTO tipo (tipo) VALUES ('Programação');
INSERT INTO tipo (tipo) VALUES ('Modelagem de dados');
SELECT * FROM tipo;

INSERT INTO instrutor (codigo, instrutor, telefone) VALUES (1, 'André Milani', 11111111);
INSERT INTO instrutor (instrutor, telefone) VALUES ('Carlos Tosin', 22222222);
SELECT * FROM instrutor;

INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (1, 'José', 'RUA X', 'jose@jose.com', 15/12/1994);
INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (2, 'Wagner', 'RUA Y', 'wagner@wagner.com', 02/13/1987);
INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (3, 'Emilio', 'RUA Z', 'emilio@emilio.com', 01/02/1955);
SELECT * FROM aluno;

UPDATE aluno SET endereco = 'Av. Brasil 778' WHERE codigo = 1;
UPDATE aluno SET email = 'emilio@softblue.com.br' WHERE codigo = 3;
UPDATE instrutor SET instrutor = 'Matheus Falcirolli' WHERE codigo = 2;

SELECT *, codigo FROM instrutor;


