-- FROM EMPLOYEES LOW SALARY TO HIGH
SELECT * FROM EMPLOYEES
ORDER BY SALARY ASC ;

SELECT * FROM EMPLOYEES
ORDER BY SALARY ;

-- FROM EMPLOYEES HIGH SALARY TO LOW
SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC ;

-- HOW CAN I USE INDEX
SELECT * FROM EMPLOYEES
ORDER BY 8 ;

SELECT EMAIL FROM EMPLOYEES
ORDER BY 1 ;

SELECT EMAIL,FIRST_NAME FROM EMPLOYEES
ORDER BY 2 ;

-- EMPLOYEE ID SMALLER THAN 120 AND (ABC)ORDER FIRST NAME
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID<120
ORDER BY FIRST_NAME;

--FR0M EMPLOYEES FIRST NAME ASC AND LAST NAME DESC
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME, LAST_NAME DESC


