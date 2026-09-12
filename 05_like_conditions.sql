-- 6. LIKE CONDITION QUERIES

SELECT first_name FROM Employee
WHERE first_name LIKE 'S%';

SELECT first_name FROM Employee
WHERE first_name LIKE '%A';

SELECT first_name FROM Employee
WHERE first_name LIKE 'S_____';

SELECT first_name, last_name, emp_id FROM Employee
WHERE salary > 20000 AND first_name LIKE 'S%';

SELECT first_name, last_name, emp_id FROM Employee
WHERE salary < 20000 OR first_name LIKE 'S%';

SELECT last_name FROM Employee
WHERE last_name LIKE '%S%' AND last_name LIKE '%L%';

-- 7. DISPLAY THE LAST_NAME, SALARY, AND COMMISSION OF ALL
-- THE EMPLOYEES WHO ARE COMMISSIONED, SORTED BY SALARY DESCENDING

SELECT last_name, salary, commission
FROM Employee
WHERE commission IS NOT NULL
ORDER BY salary DESC;

-- 8. FIND THE POSITION OF 'A' IN LAST_NAME

SELECT first_name, last_name,
       INSTR(last_name, 'A') AS "Position of a"
FROM Employee;

-- 9. FIND EMPLOYEES WHOSE NAME CONTAINS SUBSTRING 'SH'

SELECT first_name, last_name FROM Employee
WHERE first_name LIKE '%SH%';

-- 10. FIND EMPLOYEES WHOSE NAME DOES NOT START WITH 'S'

SELECT first_name, last_name FROM Employee
WHERE first_name NOT LIKE 'S%';

-- 11. FIND EMPLOYEES WHOSE EMAIL CONTAINS '@GMAIL.COM'

SELECT first_name, last_name, email FROM Employee
WHERE email LIKE '%@gmail.com';
