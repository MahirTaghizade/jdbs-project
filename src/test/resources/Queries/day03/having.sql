SELECT * FROM EMPLOYEES;

-- display job id where avg salary is more than 5k

SELECT JOB_ID, AVG(SALARY),COUNT(*) FROM EMPLOYEES
GROUP BY JOB_ID
having AVG(SALARY) > 5000
ORDER BY AVG(SALARY) DESC;


-- display DEPARTMENT id where EMPLOYEES COUNT is more than 5
SELECT DEPARTMENT_ID,COUNT(*) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*)>5;


--DISPLAY DUPLICATE NAMES FROM EMPLOYEES TABLE
SELECT FIRST_NAME,COUNT(*) FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*)>1;

