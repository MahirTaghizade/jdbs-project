select * from employees;

--find the 3th maximum salary from the employees table (do not include duplicates)
select Distinct SALARY from employees order by SALARY desc;

SELECT MIN(SALARY)FROM (select Distinct SALARY from employees order by SALARY desc)
WHERE ROWNUM<4;

SELECT * FROM EMPLOYEES
WHERE SALARY=(SELECT MIN(SALARY)FROM (select Distinct SALARY from employees order by SALARY desc)
              WHERE ROWNUM<4);


--find the 3rd minimum salary from the employees table (do not  include duplicates)
--FIRST SORT SALARIES IN ASC ORDER
select Distinct SALARY from employees order by SALARY ASC;

SELECT MAX(SALARY) FROM (select Distinct SALARY from employees order by SALARY ASC)
WHERE ROWNUM<4;

SELECT * FROM EMPLOYEES
WHERE SALARY=(SELECT MAX(SALARY) FROM (select Distinct SALARY from employees order by SALARY ASC)
              WHERE ROWNUM<4);
