SELECT * FROM EMPLOYEES;

SELECT * FROM DEPARTMENTS;

SELECT FIRST_NAME,DEPARTMENT_NAME FROM EMPLOYEES E
    INNER JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT FIRST_NAME,DEPARTMENT_NAME FROM DEPARTMENTS D
RIGHT JOIN EMPLOYEES E on E.DEPARTMENT_ID = D.DEPARTMENT_ID;


--Display all first_name and department_name
 --   including the  employee without department
SELECT FIRST_NAME,D.DEPARTMENT_NAME FROM DEPARTMENTS D RIGHT JOIN EMPLOYEES E on D.DEPARTMENT_ID = E.DEPARTMENT_ID;

--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments

SELECT FIRST_NAME,DEPARTMENT_NAME FROM DEPARTMENTS D FULL JOIN EMPLOYEES E ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;

--5.Display All cities and related country names
SELECT CITY,COUNTRY_NAME FROM LOCATIONS L INNER JOIN COUNTRIES C2 on C2.COUNTRY_ID = L.COUNTRY_ID;


--6.Display All cities and related country names  including with countries without city
SELECT CITY,COUNTRY_NAME FROM LOCATIONS L right JOIN COUNTRIES C2 on C2.COUNTRY_ID = L.COUNTRY_ID;


--7.Display all department name and  street address
SELECT DEPARTMENT_NAME,STREET_ADDRESS FROM DEPARTMENTS D INNER JOIN LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID;



--8.Display first_name,last_name and department_name,city for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY from EMPLOYEES e
left join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
left join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID;

--9.Display first_name,last_name and department_name,city,country_name for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME from EMPLOYEES e
left join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
left join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID
left join COUNTRIES C2 on C2.COUNTRY_ID = l.COUNTRY_ID
where l.COUNTRY_ID='UK';


/*
 LEFT OUTER WITH WHERE
 -- Get me only unique for left table

 NOTE --> If there is a customer with addressID 6 , since there is no matching data
 from address table it will assing NULL value for address table address_id

 That is why we are using WHERE with address.addrees_id IS NULL to get unique for LEFT table
 */

SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer LEFT OUTER JOIN address ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL;

-- full outer with where
SELECT customer_id, first_name, last_name,customer.ADDRESS_ID,ADDRESS.ADDRESS_ID,phone
FROM customer full OUTER JOIN address ON customer.address_id = address.address_id
WHERE ADDRESS.ADDRESS_ID IS NULL or CUSTOMER_ID is null ;


--display hom many employee for each country name

select COUNTRY_NAME,count(*)from EMPLOYEES e
left join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
left join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID
left join COUNTRIES C2 on C2.COUNTRY_ID = l.COUNTRY_ID
group by COUNTRY_NAME
order by count(*) desc ;