USE tienda;
SELECT
contact_last_name AS apellidos FROM customers
UNION 
SELECT 
last_name AS apellidos FROM employees;

SELECT 
contact_first_name AS nombre,
contact_last_name AS apellido FROM customers
UNION 
SELECT
first_name AS nombre,
last_name AS apellido FROM employees;
 

SELECT
employee_number AS numero_empleado,
first_name AS nombre_empleado,
last_name AS apellido_empleado FROM employees
WHERE employee_number IN (1002, 1076, 1088, 1612);

SELECT
city AS ciudad,
customer_name AS 'nombre empresa' FROM customers 
WHERE country NOT IN ('Ireland', 'France', 'German');

SELECT
contact_first_name,
city FROM customers
WHERE city like '%ON';

SELECT
contact_first_name,
city FROM customers
WHERE city like '__ON';

SELECT
customer_name,
city, 
address_line1 
FROM customers
WHERE address_line1 like '%3%';

SELECT
customer_name,
city, 
address_line1 
FROM customers
WHERE address_line1 like '%3%' AND city LIKE 't%';

SELECT
customer_name,
city, 
address_line1 
FROM customers
WHERE postal_code REGEXP '[0-9]';


