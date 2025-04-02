USE tienda;

SELECT
employees.employee_number,
employees.first_name,
employees.last_name,
customers.customer_number
FROM employees
CROSS JOIN customers;
-- SEGUIR INTENTANDO (EJ. 2) 
SELECT DISTINCT
employees.employee_number,
employees.first_name,
employees.last_name,
COUNT(DISTINCT customers.sales_rep_employee_number)
FROM employees
CROSS JOIN customers
GROUP BY employees.employee_number, employees.first_name, employees.last_name
HAVING COUNT(DISTINCT sales_rep_employee_number) > 8;

SELECT DISTINCT
employees.first_name,
employees.last_name,
COUNT(DISTINCT customers.country)
FROM employees
CROSS JOIN customers
WHERE employees.employee_number = customers.sales_rep_employee_number
GROUP BY employees.first_name, 
employees.last_name
HAVING COUNT(DISTINCT customers.country) > 1;


SELECT 
employees.employee_number,
employees.first_name,
employees.last_name,
customers.customer_number
FROM employees
INNER JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number;

SELECT 
employees.employee_number,
employees.first_name,
employees.last_name,
customers.customer_number
FROM employees
INNER JOIN customers
ON employees.employee_number = customers.sales_rep_employee_number;

