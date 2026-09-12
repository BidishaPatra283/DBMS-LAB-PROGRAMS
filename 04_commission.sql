-- 4. ADD THE COMMISSION COLUMN

ALTER TABLE Employee
ADD Commission NUMBER(20,2);

-- 5. ADD COMMISSION TO ALL EMPLOYEES

UPDATE Employee
SET Commission =
    CASE
        WHEN emp_id IN (101, 102, 104, 106, 107) THEN Salary * 10 / 100
        ELSE NULL
    END;

SELECT * FROM Employee;
