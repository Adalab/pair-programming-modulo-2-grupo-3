USE tienda;

SELECT 
employees.employee_number, employees.first_name, employees.last_name, customers.customer_number
FROM employees
LEFT JOIN customers 
ON employees.employee_number = customers.sales_rep_employee_number;

--

SELECT 
employees.employee_number, employees.first_name, employees.last_name, customers.customer_number
FROM employees
RIGHT JOIN customers 
ON employees.employee_number = customers.sales_rep_employee_number;

SELECT 
customers.customer_number, employees.employee_number, employees.first_name, employees.last_name 
FROM customers
LEFT JOIN employees
ON employees.employee_number = customers.sales_rep_employee_number;

--


SELECT 
employees.employee_number, employees.first_name, employees.last_name, 
COUNT(customers.customer_number) AS total_customer
FROM employees
LEFT JOIN customers 
ON employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.employee_number, employees.first_name, employees.last_name
HAVING total_customer > 8; 

--

SELECT 
employees.employee_number, employees.first_name, employees.last_name,
COUNT(customers.customer_number) AS total_customer
FROM employees
RIGHT JOIN customers 
ON employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.employee_number, employees.first_name, employees.last_name
HAVING total_customer > 8; 

--

SELECT
employees.first_name, employees.last_name,
COUNT(distinct customers.country) AS total_country
FROM employees
LEFT JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.first_name, employees.last_name
HAVING total_country > 1;

-- EXTRAS

USE northwind;
SELECT 
empleadas.City, 
empleadas.FirstName AS nombre_empleado, 
empleadas.LastName AS apellido_empleado, 
jefas.City, 
jefas.FirstName AS nombre_jefa, 
jefas.LastName AS apellido_jefa
FROM employees AS empleadas, employees AS jefas
WHERE empleadas.EmployeeID <> empleadas.ReportsTo
AND empleadas.City = jefas.City;








