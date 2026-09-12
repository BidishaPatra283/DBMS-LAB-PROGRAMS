-- 3. SELECT AND UPDATE QUERIES

SELECT * FROM Employee;
SELECT first_name, last_name, email FROM Employee;
SELECT first_name, last_name, salary + 300 FROM Employee;
SELECT first_name, salary, salary + 300 AS Updated_salary FROM Employee;

SELECT first_name || ' ' || last_name FROM Employee;
SELECT first_name || ' ' || last_name AS Full_Name FROM Employee;
SELECT first_name || ' ' || ' ' || ' ' || email || ' ' || salary AS Full_Details
FROM Employee;

UPDATE Employee
SET last_name = NULL
WHERE emp_id = 103;

SELECT * FROM Employee;

SELECT * FROM Employee
WHERE last_name IS NULL;

UPDATE Employee
SET salary = NULL
WHERE emp_id = 103;

SELECT * FROM Employee;

UPDATE Employee
SET salary = 56900
WHERE emp_id = 103;

SELECT * FROM Employee;

SELECT DISTINCT Last_Name
FROM Employee;
