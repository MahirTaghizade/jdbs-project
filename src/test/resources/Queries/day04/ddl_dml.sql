SELECT *
FROM EMPLOYEES;
/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
CREATE TABLE SCRUMTEAM
(
    EMPID     INTEGER PRIMARY KEY, --NOT NULL AND UNIQUE
    FIRSTNAME VARCHAR(30) NOT NULL,-- CANT BE NULL
    JOBTITLE  VARCHAR(20) NOT NULL,
    AGE       INTEGER,-- THERE IS NO CONTRAINS
    SALARY    INTEGER
);

SELECT *FROM SCRUMTEAM;

/*
INSERT
INTO tableName (column1, column2,...)
 VALUES (value1, value2 ... );
 */

INSERT INTO SCRUMTEAM(EMPID, FIRSTNAME, JOBTITLE, AGE, SALARY)
VALUES (1, 'Mahir', 'SDET', 26, 15000);

INSERT INTO SCRUMTEAM(EMPID, FIRSTNAME, JOBTITLE, AGE, SALARY)
VALUES (2, 'Mike', 'SDET', 27, 14000);

INSERT INTO SCRUMTEAM(EMPID, FIRSTNAME, JOBTITLE)
VALUES (3, 'John', 'SDET');

INSERT INTO SCRUMTEAM
VALUES (4, 'Henry', 'SM',45,11000);

SELECT *FROM SCRUMTEAM;


/*
 UPDATE
 UPDATE scrumteam
SET firstname = 'Jack'
WHERE
employeeId = 3;
 */
UPDATE SCRUMTEAM
SET FIRSTNAME='Maho'
WHERE EMPID=1;

UPDATE SCRUMTEAM
SET AGE=28,SALARY=SALARY+2000,JOBTITLE='PM'
WHERE EMPID=3;

UPDATE SCRUMTEAM
SET SALARY=SALARY+4000
WHERE JOBTITLE='SDET';

UPDATE SCRUMTEAM
SET SALARY=SALARY+4000
WHERE JOBTITLE='SDET';


SELECT *FROM SCRUMTEAM;

/*
DELETE FROM table_name
WHERE condition;
 */
 DELETE FROM SCRUMTEAM
WHERE FIRSTNAME='Henry';

SELECT *FROM SCRUMTEAM;

COMMIT ;


/*
 ALTER--UPDATE TABLE STRUCTURE
 ADD NEW COLUM
 */
 ALTER TABLE SCRUMTEAM
ADD GENDER VARCHAR(20);

SELECT *FROM SCRUMTEAM;

-- UPDATE ALL SCRUM TEAM GENDER AS MALE
UPDATE SCRUMTEAM
SET GENDER='Male';

--rename column
ALTER TABLE SCRUMTEAM
RENAME COLUMN SALARY TO ANNUAL_SALARY;

--DROP COLUMN
ALTER TABLE SCRUMTEAM
DROP COLUMN GENDER;

--RENAME TABLE
ALTER TABLE SCRUMTEAM
RENAME TO AGILTEAM;

SELECT * FROM SCRUMTEAM;
SELECT * FROM AGILTEAM;

--TRUNCATE
TRUNCATE TABLE AGILTEAM;-- DELETES ALL DATA INSIDE TABLE
--DROP
DROP TABLE AGILTEAM;-- DELETES THE TABLE

COMMIT;


