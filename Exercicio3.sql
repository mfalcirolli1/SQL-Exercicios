USE curso_sql;
INSERT INTO funcionarios (id, nome, salario, departamento) VALUES (1, 'Matheus', 1400, 'TI');
INSERT INTO funcionarios (id, nome, salario, departamento) VALUES (2, 'Joice', 3300, 'Enfermagem');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Luke', 500, 'Petshop');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Noelza', 9000, 'Cozinha');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Wendy', 500, 'Petshop');

SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE id = 4;

UPDATE funcionarios SET salario = salario * 1.1 WHERE id = 1;

SET SQL_SAFE_UPDATES = 0;
/* SET SQL_SAFE_UPDATES = 1; */
UPDATE funcionarios SET salario = salario * 1.1;
UPDATE funcionarios SET salario = ROUND(salario * 1.1, 2);

DELETE FROM funcionarios WHERE id = 4;

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (1, 'Sandero', 'HBS-5520');
INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (1, 'Corsa', 'KHD-8752');

SELECT * FROM veiculos;

UPDATE veiculos SET funcionario_id = 5 WHERE id = 2;

INSERT INTO salarios (faixa, inicio, fim) VALUES ('Analista JR', 1000, 2000);
INSERT INTO salarios (faixa, inicio, fim) VALUES ('Analista PL', 2000, 4000);

SELECT * FROM salarios;
SELECT * FROM funcionarios f WHERE f.salario > 2000;
SELECT nome, salario FROM funcionarios;
SELECT nome AS 'Funcionário', salario FROM funcionarios;

SELECT * FROM funcionarios WHERE nome = 'Matheus' UNION SELECT * FROM funcionarios WHERE id = 5;


