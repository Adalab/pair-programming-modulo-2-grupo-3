USE tienda;
SELECT 
MIN(customer_number) AS min_customer
FROM customers;

SELECT
AVG(credit_limit) AS avg_credit
FROM customers 
WHERE country = 'Spain';

SELECT
COUNT(country) AS francia_customers
FROM customers 
WHERE country = 'France';

SELECT
MAX(credit_limit) AS max_1323
FROM customers 
WHERE sales_rep_employee_number = 1323;

SELECT
MAX(sales_rep_employee_number) AS max_employee
FROM customers;


SELECT
sales_rep_employee_number,
COUNT(DISTINCT customer_number) AS total_customers
FROM customers
GROUP BY sales_rep_employee_number;


SELECT
sales_rep_employee_number,
COUNT(DISTINCT customer_number) AS total_customers
FROM customers
WHERE sales_rep_employee_number IS NOT NULL
GROUP BY sales_rep_employee_number
HAVING total_customers > 7;


SELECT
sales_rep_employee_number,
CASE
	WHEN COUNT(DISTINCT customer_number) > 7 THEN 'AltoRendimiento'
    END AS 'rendimiento'
FROM customers
WHERE sales_rep_employee_number IS NOT NULL
GROUP BY sales_rep_employee_number;

SELECT
country, 
COUNT(customer_name) AS total_customers
FROM customers
GROUP BY 
country; 

SELECT
country,
COUNT(city) AS total_number_city
FROM customers
GROUP BY country
HAVING total_number_city > 3;











