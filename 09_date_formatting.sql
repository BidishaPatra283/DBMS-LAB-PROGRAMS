-- 23. FORMATTING DATE USING TO_CHAR()

SELECT last_name, Hire_date,
       TO_CHAR(HIRE_DATE, 'fmDD Month YYYY') AS FORMAT_DATE
FROM Employee;

-- 24. FORMATTING DATE AND CHAR USING TO_CHAR()

SELECT last_name, Hire_date,
       TO_CHAR(HIRE_DATE, 'FMDdspth "of" Month YYYY fmHH:MM:SS') AS FORMAT_DATE
FROM Employee;

-- 25. DATE FUNCTIONS

-- a. Display Employee name and hire_date formatted as DD-MM-YYYY
SELECT first_name, last_name,
       TO_CHAR(HIRE_DATE, 'fmDD Month YYYY') AS FORMAT_DATE
FROM Employee;

-- b. Display the hire_date with a day name
SELECT first_name, last_name,
       TO_CHAR(HIRE_DATE, 'Day') AS hire_date
FROM Employee;

-- c. Display Employees hired in the month of September of any year
SELECT first_name, last_name
FROM Employee
WHERE TO_CHAR(HIRE_DATE, 'MM') = '09';

-- d. Display Employees hired in the year 2026
SELECT first_name, last_name
FROM Employee
WHERE TO_CHAR(HIRE_DATE, 'YYYY') = '2026';

-- e. Find Employees who have completed more than 3 years
SELECT first_name, last_name
FROM Employee
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) > 36;

-- f. Find employees whose work anniversary falls in the current month
SELECT first_name, last_name
FROM Employee
WHERE EXTRACT(MONTH FROM hire_date) = EXTRACT(MONTH FROM SYSDATE);

SELECT first_name, last_name,
       TO_CHAR(ADD_MONTHS(HIRE_DATE, 12), 'MM') AS Anniversary_Month
FROM Employee
WHERE TO_CHAR(ADD_MONTHS(HIRE_DATE, 12), 'MM') = TO_CHAR(SYSDATE, 'MM');
