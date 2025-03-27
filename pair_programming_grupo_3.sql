CREATE SCHEMA ejercicio_leccion_5;
USE ejercicio_leccion_5;
CREATE TABLE tabla_1 (
a INT,
b CHAR(10)
);

RENAME TABLE tabla_1 TO tabla_2
ALTER TABLE tabla_2
MODIFY COLUMN a TINYINT NOT NULL;

ALTER TABLE tabla_2
MODIFY COLUMN b CHAR(20);

ALTER TABLE tabla_2
RENAME COLUMN b TO c;

ALTER TABLE tabla_2
ADD COLUMN d TIMESTAMP;

ALTER TABLE tabla_2
DROP COLUMN c;

CREATE TABLE tabla_3 AS
	SELECT *
    FROM tabla_2
    
SELECT * FROM tabla_3;

DROP TABLE IF EXISTS tabla_2;


RENAME TABLE tabla_3 TO tabla_1

USE tienda

CREATE TABLE IF NOT EXISTS customers_mod
SELECT * 
FROM customers;


SELECT * 
FROM customers;
INSERT INTO customers (customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_Number, credit_limit)
VALUES ('Adalab', 'Rodriguez', 'Julia', '672986373', 'Calle Falsa 123', 'Puerta 42', 'Madrid', 'España', '28000', 'España', 15, 20000000);







