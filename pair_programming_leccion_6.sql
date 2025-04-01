USE tienda;

SELECT 
customer_name,
phone,
address_line1,
address_line2
FROM customers;

SELECT
phone,
address_line1,
address_line2
FROM customers
WHERE country = 'USA';

SELECT
contact_last_name,
contact_first_name
FROM customers
WHERE address_line2 IS NULL;

SELECT *
FROM customers
WHERE country = 'USA' AND state IS NOT NULL;

SELECT 
DISTINCT
country
FROM customers
WHERE credit_limit > 10000;
 


