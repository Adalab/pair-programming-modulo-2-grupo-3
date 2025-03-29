USE northwind;

SELECT
EmployeeID,
LastName,
FirstName
FROM employees;

SELECT
ProductName
FROM products
WHERE UnitPrice BETWEEN 0 AND 5;

SELECT
ProductName
FROM products
WHERE UnitPrice IS NULL;

SELECT *
FROM products
WHERE UnitPrice < 15 AND ProductID < 20;

SELECT *
FROM products
WHERE NOT (UnitPrice < 15 AND ProductID < 20);

