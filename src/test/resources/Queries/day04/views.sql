SELECT * FROM EMPLOYEES;

create view EmployeesInfo  as
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials,
FIRST_NAME||' makes ' || salary as Employees_salary  from EMPLOYEES;

SELECT * FROM EMPLOYEESINFO;
SELECT INITIALS FROM EMPLOYEESINFO;
SELECT Employees_salary FROM EMPLOYEESINFO;

DROP VIEW EMPLOYEESINFO;