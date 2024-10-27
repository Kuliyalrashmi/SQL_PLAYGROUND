
-- DATE_SUB() : REMOVE DAYS INTERVAL FROM GIVEN DATE
SELECT DATE_SUB('2024-05-24' , INTERVAL 31 DAY) AS "1 MONTH AGO FROM MY DAY"


-- DATEDIFF() : DEFFERENCE BETWEEN TWO DATES 
SELECT DATEDIFF('2003-08-24' , '2003-05-24') AS "DIFFERENCE BETWEEN DATES" 


-- DAYOFMONTH() : RETURN DAY OF THE MONTH : 1 TO 31
SELECT DAYOFMONTH('2003-04-27') AS "DAY"

-- DAYNAME() : WEEKDAY OF DATE
SELECT DAYNAME('2003-04-27') AS "DAY"

-- EXTRACT()  : TO EXTRACT SPECIFIC PART FROM A GLOABAL VALUE
SELECT EXTRACT(DAY FROM '24-08-2003') AS " EXTRACT EXAMPLE " 
SELECT EXTRACT(YEAR FROM '2003-04-12') AS " EXTRACT EXAMPLE " 
SELECT EXTRACT(MONTH FROM '2003-04-12') AS " EXTRACT EXAMPLE " 



-- GROUP_CONCAT() : CONCAT ALL THE VALUES 
CREATE TABLE STRINGS(
  STR VARCHAR(15)
);
INSERT INTO STRINGS VALUES('ABDBS'),('JDAWKJW'),('RLKWREKN'),('LKSNEAKNADW'), ('AWJKBDWA');
SELECT GROUP_CONCAT(STR) FROM STRINGS;


-- EXISTS() : CHECK WHETHER ANY RECORD IS FOLLOWING GIVEN CONDITION OR NOT  : (1 OR 0)
CREATE TABLE STRINGS(
  STR VARCHAR(15)
);
INSERT INTO STRINGS VALUES('ABDBS'),('JDAWKJW'),('RLKWREKN'),('LKSNEAKNADW'), ('AWJKBDWA');
SELECT EXISTS (SELECT * FROM STRINGS WHERE STR LIKE 'A%');

-- IF() : TO CHECK A SPECIFIC CONDITION
SELECT IF( 1 > 4 , "TRUE" , 'FALSE')

-- IFNULL() : FOLLOW GIVEN RIGHT VALUE IF NULL FOUND
SELECT IFNULL(NULL , 5)
SELECT IFNULL(3 , 5) 


-- IN() : FIND IN SPECIFIC SET
SELECT "VAL" IN ("TEMP" , "VAL" , "RES") AS "RESULT"

-- LOWER() : TO MAKE LOWERCASE
SELECT LOWER("TEMP") AS RESULT;

-- UPPER() : TO MAKE UPPERCASE
SELECT UPPER("cat") AS RESULT;

-- LENGTH() : RETRUN LENGTH OF STRING
SELECT LENGTH("WORKING FOR DREAMS") AS "LENGTH"



-- PATTERN MATCHING
CREATE TABLE NAMES(
  NAME VARCHAR(20)
);

INSERT INTO NAMES VALUES('RAM') , ('MOHAN') , ('SITA') , ('RAMESH') , ('AKSHAY') , ('TAIMUR');

-- STARTS WITH 'A'
SELECT NAME AS 'STARTS WITH A' FROM NAMES WHERE NAME LIKE 'A%';

-- SECOND LETTER IS 'T' 
SELECT NAME AS 'SECOND LETTER IS T' FROM NAMES WHERE NAME LIKE '__T%';

-- NAMES WITH 6 LETTERS
SELECT NAME AS '6-LEETER NAMES'  FROM NAMES WHERE NAME LIKE '______';

-- NAMES END WITH 'N'
SELECT NAME AS 'ENDS WITH N' FROM NAMES WHERE NAME LIKE '%N' 



-- MAX() : RETURN MAX VALUE
SELECT MAX(VALUE) FROM TABLE_NAME

-- MIN() : RETURN MIN VALUE
SELECT MIN(VALUE) FROM TABLE_NAME

-- POW() : POWER() FUNCTION
SELECT POW(2,2) AS " 2 POWER 2"


-- REVERSE() : REVERSE CHARACTERS
SELECT REVERSE("HELLO")


-- SQRT() : SQUARE ROOT OF VALUE
SELECT SQRT(24) AS "SQUARE ROOT OF 24"