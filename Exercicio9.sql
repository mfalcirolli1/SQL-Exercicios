CREATE USER 'matheus'@'555.555.555.555' IDENTIFIED BY 'm123456'; /* IP de máquina especificada */
CREATE USER 'matheus'@'localhost' IDENTIFIED BY 'm123456'; /* IP da própria máquina */
CREATE USER 'matheus'@'%' IDENTIFIED BY 'm123456'; /* Qualquer endereço IP */

CREATE USER 'matheus'@'localhost' IDENTIFIED BY 'm123456';
GRANT ALL ON curso_sql.* TO 'matheus'@'localhost';

CREATE USER 'matheus'@'%' IDENTIFIED BY 'mviagem';
GRANT SELECT ON curso_sql.* TO 'matheus'@'%';
GRANT INSERT ON curso_sql.funcionarios TO 'matheus'@'%';

REVOKE INSERT ON curso_sql.funcionarios FROM 'matheus'@'%';
REVOKE SELECT ON curso_sql.* FROM 'matheus'@'%';

GRANT SELECT ON curso_sql.funcionarios TO 'matheus'@'%';
GRANT SELECT ON curso_sql.veiculos TO 'matheus'@'%';

REVOKE SELECT ON curso_sql.funcionarios FROM 'matheus'@'%';
REVOKE SELECT ON curso_sql.veiculos FROM 'matheus'@'%';

REVOKE ALL ON curso_sql.* FROM 'matheus'@'localhost';

DROP USER 'matheus'@'%';
DROP USER 'matheus'@'localhost';

SELECT USER FROM mysql.USER;
SHOW GRANTS FOR 'matheus'@'%';
