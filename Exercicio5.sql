USE curso_sql;
SELECT * FROM funcionarios;
SELECT * FROM veiculos;

SELECT * FROM funcionarios INNER JOIN veiculos ON funcionario_id = funcionarios.id;
/* Com apelidos */
SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id /* Full Join */
UNION
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (null, 'CrossFox', 'LKI-8541');

CREATE TABLE cpf
(
	id int unsigned not null,
    cpf varchar(14) not null,
    PRIMARY KEY(id),
    CONSTRAINT fk_cpf FOREIGN KEY (id) REFERENCES funcionarios (id)
);

INSERT INTO cpf (id, cpf) VALUES (1, '111.111.111-11');
INSERT INTO cpf (id, cpf) VALUES (2, '222.222.222-22');
INSERT INTO cpf (id, cpf) VALUES (3, '333.333.333-33');
INSERT INTO cpf (id, cpf) VALUES (5, '555.555.555-55');

SELECT * FROM cpf;

SELECT * FROM funcionarios f INNER JOIN cpf c ON f.id = c.id;
SELECT * FROM funcionarios f INNER JOIN cpf USING(id);  /* Equi Join */

CREATE TABLE clientes
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    quem_indicou int unsigned,
    PRIMARY KEY(id),
    CONSTRAINT fk_quemindicou FOREIGN KEY (quem_indicou) REFERENCES clientes(id)
);

INSERT INTO clientes (id, nome, quem_indicou) VALUES (1, 'Matheus', NULL);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (2, 'Joice', 1);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (3, 'Toby', 2);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (4, 'Luke', 1);

SELECT * FROM clientes;

/* Self Join */
SELECT a.nome AS CLIENTE, b.nome AS INDICAÇÂO FROM clientes a JOIN clientes b ON a.quem_indicou = b.id;

/* Relacionamento triplo */
SELECT * FROM funcionarios f            
INNER JOIN veiculos v ON v.funcionario_id = f.id
INNER JOIN cpf ON cpf.id = f.id;

/* Criar visões */
CREATE VIEW funcionarios_view AS SELECT * FROM funcionarios WHERE salario >= 1700;
SELECT * FROM funcionarios_view;

UPDATE funcionarios SET salario = 1500 WHERE id = 1;

/* Excluir visão = DROP VIEW funcionarios_view */
