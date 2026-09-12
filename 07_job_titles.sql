-- 17. ADD THE JOB TITLE COLUMN AND UPDATE IT

ALTER TABLE Employee
ADD Job_Titles VARCHAR2(50);

UPDATE Employee SET Job_Titles = 'Senior' WHERE emp_id = 102;
UPDATE Employee SET Job_Titles = 'Senior' WHERE emp_id = 107;
UPDATE Employee SET Job_Titles = 'Senior' WHERE emp_id = 104;
UPDATE Employee SET Job_Titles = 'HR' WHERE emp_id = 101;
UPDATE Employee SET Job_Titles = 'Junior' WHERE emp_id = 103;
UPDATE Employee SET Job_Titles = 'HR' WHERE emp_id = 106;
UPDATE Employee SET Job_Titles = 'HD' WHERE emp_id = 105;

SELECT * FROM Employee;

-- 18. RETRIEVE EMPLOYEES WHOSE JOB TITLES CONTAINS 'SENIOR'

SELECT first_name, last_name, Job_Titles
FROM Employee
WHERE Job_Titles LIKE 'Senior%';

-- 19. FIND THE POSITION OF THE FIRST SPACE IN EACH EMPLOYEE NAME

SELECT first_name || ' ' || last_name,
       INSTR(first_name || ' ' || last_name, ' ') AS Space_Position
FROM Employee;
