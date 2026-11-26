/*Question 1 of 10 — Create the source table
Create a table named Copy_Source with these columns:
- ID — integer, primary key
- Name — text up to 50 characters
- City — text up to 50 characters
- Salary — integer
Then insert these three rows:
- (1, 'Asha', 'Delhi', 40000)
- (2, 'Ravi', 'Mumbai', 45000)
- (3, 'Meena', 'Delhi', 50000)
Write the SQL to create the table and insert the rows.*/

CREATE TABLE Copy_Source
( ID INT  primary key,
Name VARCHAR (50),
City VARCHAR (50),
Salary int);
INSERT INTO Copy_Source VALUES (1,'Asha','Delhi',40000),
(2,'Ravi','Mumbai',45000),
 (3,'Meena','Delhi',50000);



 /*Question 2 of 10 — Copy all rows into an existing table
Create an empty table named Copy_Target with the same columns and data types as Copy_Source. Then copy all rows from Copy_Source into Copy_Target using INSERT ... SELECT.*/

CREATE TABLE Copy_Target
( ID INT  primary key,
Name VARCHAR (50),
City VARCHAR (50),
Salary int);

INSERT INTO Copy_Target
SELECT ID,NAME,CITY ,SALARY FROM Copy_Source;


SELECT * FROM COPY_TARGET
SELECT * FROM COPY_SOURCE

/*Question 3 of 10 — Copy selected rows
Create an empty table named Delhi_Copy with the same columns and data types as Copy_Source. Then use INSERT ... SELECT to copy only rows where City is 'Delhi'.*/


CREATE TABLE Delhi_Copy
( ID INT  primary key,
Name VARCHAR (50),
City VARCHAR (50),
Salary int);


INSERT INTO Delhi_Copy
SELECT  ID,NAME,CITY ,SALARY  FROM Copy_Source  WHERE CITY='DELHI';


SELECT * FROM Delhi_Copy


/*Question 4 of 10 — Create and copy with SELECT INTO
Use SELECT ... INTO to create a new table named Copy_Archive and copy all rows and columns from Copy_Source into it. Write the query. (You don’t need to create Copy_Archive first.)*/
SELECT  ID,NAME,CITY ,SALARY INTO Copy_Archive
FROM Copy_Source;

SELECT * FROM Copy_Archive


/*Question 5 of 10 — Create a table from filtered rows
Use SELECT ... INTO to create a new table named HighSalary_Copy containing rows from Copy_Source where Salary is at least 45000. Include all four columns. Write the query.*/


SELECT  ID,NAME,CITY ,SALARY INTO HighSalary_Copy FROM Copy_Source WHERE SALARY>=45000;

/*Question 6 of 10 — Copy selected columns with SELECT INTO
Create a new table named Name_City_Copy from Copy_Source, containing only the Name and City columns. Copy all rows. Write the query. Notice that the new table will contain only those two columns.*/

SELECT NAME,CITY INTO Name_City_Copy FROM Copy_Source;
SELECT * FROM Name_City_Copy


/*Question 7 of 10 — Insert selected rows into an existing table
Create an empty table named Mumbai_Copy with the same four columns and data types as Copy_Source. Then use INSERT ... SELECT to copy only rows where City is 'Mumbai'.*/


CREATE TABLE Mumbai_Copy
( ID INT  primary key,
Name VARCHAR (50),
City VARCHAR (50),
Salary int);

INSERT  INTO  Mumbai_Copy (ID,NAME,CITY,SALARY )
SELECT ID,NAME,CITY, SALARY FROM Copy_Source  WHERE CITY='MUMBAI';

SELECT * FROM Mumbai_Copy


/*Question 8 of 10 — Choose the right form
You need to copy all rows from Copy_Source into a brand-new table named Source_Backup. Which form should you use: INSERT ... SELECT or SELECT ... INTO? Write the query.*/

 IT  CAN BE DNE USING SELECT INTO COMMAND AS FOLLOWING--
 SELECT ID,NAME,CITY, SALARY INTO Source_Backup FROM Copy_Source;
 SELECT * FROM Source_Backup;

 /*Question 9 of 10 — Copy into an existing table
Copy_Target already exists. Write an INSERT ... SELECT query to copy only rows from Copy_Source where City is 'Delhi' into Copy_Target.
Note: Copy_Target already contains IDs 1, 2, and 3, so think about what may happen if you try to insert those same IDs again. Write the query, then explain the likely result.*/



INSERT INTO Copy_Target(ID,NAME,CITY,SALARY)
SELECT ID,NAME,CITY,SALARY  FROM COPY_SOURCE WHERE CITY='DELHI';
SELECT * FROM COPY_TARGET
SELECT * FROM COPY_SOURCE

AS COPY TARGET ALREADY CONTAIN THE SAME ID AS COPY SOURCE SO EXECUTION WILL FAIL AS IT RAISE AN EROR DUE TO PRIMERY KEY VIOLATION. PRIMARY  KEY CANNOT HOLD DUPLICATE VALUES



/*Question 10 of 10 — Final practice
Create a new table named Delhi_Salary_Report using SELECT ... INTO. Include only the ID and Salary columns, and copy only rows from Copy_Source where City is 'Delhi'. Write the query. Explain whether you need to create Delhi_Salary_Report first.*/

SELECT ID ,SALARY  INTO Delhi_Salary_Report FROM COPY_SOURCE WHERE CITY='DELHI'
NO WE NO NEED CREATE THE TABLE DELHEI_SALARY_REPORT FIRST IT WILL BE AUTOMATICAL CREATED  WHILE COPYING THE ROWS USING SELECT INTO QUERY




 







