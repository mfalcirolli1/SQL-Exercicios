USE curso_sql;
SELECT COUNT(*) FROM funcionarios;
SELECT * FROM funcionarios;
SELECT SUM(salario) FROM funcionarios WHERE salario < 2000;
SELECT AVG(salario) FROM funcionarios;
SELECT MAX(salario) FROM funcionarios;
SELECT MIN(salario) FROM funcionarios;
SELECT DISTINCT(salario) FROM funcionarios;
SELECT * FROM funcionarios ORDER BY salario;
SELECT * FROM funcionarios LIMIT 2;
SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento;
SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento HAVING AVG(salario) >= 1500;
SELECT nome FROM funcionarios WHERE departamento IN ('TI');
