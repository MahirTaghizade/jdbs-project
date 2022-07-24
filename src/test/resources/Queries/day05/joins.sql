select * from employees;


select workers.FIRST_NAME,workers.LAST_NAME,manager.FIRST_NAME,manager.LAST_NAME from EMPLOYEES workers
inner join EMPLOYEES manager on workers.MANAGER_ID=manager.EMPLOYEE_ID