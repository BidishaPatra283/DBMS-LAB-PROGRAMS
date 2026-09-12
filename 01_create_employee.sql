-- DBMS Lab - Employee Table
-- 1. CREATE EMPLOYEE TABLE

CREATE TABLE Employee (
    emp_id NUMBER(10),
    First_Name VARCHAR2(50),
    Last_Name VARCHAR2(50),
    Email VARCHAR2(100),
    Phone_number NUMBER(10),
    Salary NUMBER(18,2),
    PRIMARY KEY (emp_id)
);
