SELECT * FROM EMPLOYEES;
--  Display all information  where job title President ,Sales Manager, Finance manager
SELECT * FROM JOBS
--WHERE JOB_TITLE='President' or JOB_TITLE='Sales Manager' or JOB_TITLE='Finance Manager'
WHERE JOB_TITLE IN ('President','Sales Manager','Finance Manager')

-- Display all Department that does not have manager_id in departments table
SELECT * FROM DEPARTMENTS
WHERE MANAGER_ID IS NULL ;

--  Display all Locations in US or UK from Locations table
SELECT  * FROM  LOCATIONS
WHERE COUNTRY_ID IN ('US', 'UK');

--  Display all Locations except US or UK from Locations table
SELECT * FROM LOCATIONS
WHERE COUNTRY_ID NOT IN ('US','UK');

--  Display all Countries where Region_ID is 1 and Country_Name not Belgium
SELECT * FROM COUNTRIES
WHERE REGION_ID=1 AND COUNTRY_NAME NOT IN ('Belgium')
