-- 12. DISPLAY EMPLOYEE DETAILS USING UPPER() AND LOWER()

SELECT emp_id || ' ' || UPPER(last_name) || ' ' || LOWER(first_name)
AS Employee_Details
FROM Employee;

-- 13. LENGTH() AND INSTR() FUNCTIONS

SELECT first_name, last_name,
       emp_id || ' ' || (first_name || ' ' || last_name) AS "Name",
       LENGTH(last_name),
       INSTR(first_name, 'A', 1) AS "Position of a"
FROM Employee;

SELECT EMAIL, INSTR(EMAIL, '@') AS "Position of @"
FROM Employee;

-- 14. SUBSTR() FUNCTIONS

SELECT emp_id, last_name, SUBSTR(last_name, -1, 1) FROM Employee;
SELECT emp_id, last_name, SUBSTR(last_name, -2, 2) FROM Employee;
SELECT emp_id, last_name, SUBSTR(last_name, -3, 2) FROM Employee;

-- 15. EXTRACT THE USERNAME PORTION FROM EACH EMAIL ADDRESS

SELECT SUBSTR(email, 1, INSTR(email, '@') - 1) AS username
FROM Employee;

-- 16. EXTRACT THE DOMAIN PORTION FROM EACH EMAIL ADDRESS

SELECT SUBSTR(email, INSTR(email, '@') + 1) AS domain
FROM Employee;
