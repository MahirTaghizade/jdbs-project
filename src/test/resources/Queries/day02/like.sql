SELECT * FROM EMPLOYEES;
/*
 LIKE
Percent ( %)      -->  for matching any sequence of characters.
Underscore ( _ )  -->  for matching any single character.

  - contains
  - startwith
  - endswith

 */

 -- EMPLOYEES FIRST NAME STARTS WITH B
select * from EMPLOYEES
where FIRST_NAME  like 'B%';

-- EMPLOYEES FIRST NAME STARTS WITH B AND HAS 5 LETTER
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'B____';

-- EMPLOYEES FIRST NAME HAS 5 LETTER AND MIDDLE ONE IS Z
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';

--get first name where second char is a
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_a%';

-- get me all info who;s first namr ends with r
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%r';

--get job title ends with manager
SELECT * FROM JOBS
WHERE JOB_TITLE LIKE '% Manager'


--how many employees we have(get job title ends with manager)
SELECT count(*) FROM JOBS
WHERE JOB_TITLE LIKE '% Manager'