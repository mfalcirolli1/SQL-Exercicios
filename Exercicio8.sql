USE curso_sql;
SELECT * FROM funcionarios;

SELECT COUNT(*) FROM funcionarios WHERE salario > 1500 AND departamento = 'Enfermagem';
SELECT SUM(salario) FROM funcionarios WHERE departamento = 'Petshop';
SELECT AVG(salario) FROM funcionarios;
SELECT MAX(salario) FROM funcionarios;
SELECT MIN(salario) FROM funcionarios;

SELECT departamento FROM funcionarios;
SELECT DISTINCT(departamento) FROM funcionarios;

SELECT * FROM funcionarios ORDER BY nome; /*ASC*/
SELECT * FROM funcionarios ORDER BY nome DESC;

SELECT * FROM funcionarios ORDER BY salario;
SELECT * FROM funcionarios ORDER BY departamento, salario;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios LIMIT 2;

SELECT * FROM funcionarios LIMIT 2 OFFSET 1;
SELECT * FROM funcionarios LIMIT 1, 2;

SELECT AVG(salario) FROM funcionarios WHERE departamento = 'Petshop';

SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento;
SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000;
SELECT departamento, COUNT(*) FROM funcionarios GROUP BY departamento;

SELECT nome FROM funcionarios WHERE departamento IN ('Enfermagem', 'TI');
SELECT nome FROM funcionarios WHERE departamento IN (SELECT departamento FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000);



