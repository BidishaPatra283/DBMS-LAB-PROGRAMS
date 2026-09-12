-- 20. CREATE A COLUMN HIRE_DATE AND UPDATE

ALTER TABLE Employee
ADD Hire_Date DATE;

UPDATE Employee SET Hire_Date = '9/7/2026' WHERE Emp_id = 101;
UPDATE Employee SET Hire_Date = '9/3/2026' WHERE Emp_id = 102;
UPDATE Employee SET Hire_Date = '5/14/2025' WHERE Emp_id = 103;
UPDATE Employee SET Hire_Date = '10/22/2024' WHERE Emp_id = 104;
UPDATE Employee SET Hire_Date = '12/12/2023' WHERE Emp_id = 105;
UPDATE Employee SET Hire_Date = '9/6/2022' WHERE Emp_id = 106;
UPDATE Employee SET Hire_Date = '10/8/2021' WHERE Emp_id = 107;

SELECT * FROM Employee;

-- 21. DATE FUNCTIONS

SELECT SYSDATE FROM Employee;
SELECT SYSDATE FROM dual;

SELECT emp_id, hire_date,
       MONTHS_BETWEEN(SYSDATE, Hire_Date) AS "TENURE"
FROM Employee;

SELECT emp_id, hire_date,
       ROUND(MONTHS_BETWEEN(SYSDATE, Hire_Date)) AS "TENURE"
FROM Employee;

SELECT emp_id, first_name, last_name, hire_date,
       ADD_MONTHS(Hire_Date, 6) AS "Review"
FROM Employee;

SELECT emp_id, first_name, last_name, hire_date,
       NEXT_DAY(Hire_Date, 'FRIDAY') AS "NextDay"
FROM Employee;

SELECT emp_id, first_name, last_name, hire_date,
       LAST_DAY(Hire_Date) AS "LastDay"
FROM Employee;

-- 22. DISPLAY EMP_ID, HIRE_DATE, NUMBER OF MONTHS EMPLOYED,
-- SIX MONTH REVIEW DATE, FIRST MONDAY AFTER HIRE DATE
-- FOR EMPLOYEES EMPLOYED FOR LESS THAN 36 MONTHS

SELECT emp_id, hire_date,
       ROUND(MONTHS_BETWEEN(SYSDATE, Hire_Date)) AS "Number of Months Employeed",
       ADD_MONTHS(Hire_Date, 6) AS "Six Month Review Date",
       NEXT_DAY(Hire_Date, 'MONDAY') AS "First Monday After Hire Date"
FROM Employee
WHERE MONTHS_BETWEEN(SYSDATE, Hire_Date) < 36;
