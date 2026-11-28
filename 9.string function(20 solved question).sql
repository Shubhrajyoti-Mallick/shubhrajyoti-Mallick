/*In SSMS, create a table named Employees with these columns: EmployeeID (integer), FirstName (text), LastName (text), and Email (text). Add a few rows of your choice

Question 1: Display every employee’s FirstName in uppercase.*/


create table Employees
(EmployeeID int, FirstName varchar(20), LastName varchar(24), email varchar(30))
insert  into Employees values
(1,'shubhra','jyoti','shubhra@gmail.com'),
(2,'shubhashree','subhasmita','shubhashree@gmail.com'),
(3,'divya','shree','divya@gmail.com');


select upper(FirstName) as firstname from Employees;

--Question 2: Display each employee’s LastName in lowercase.

select lower(LastName) as LastName  from Employees;

--Question 3: Display each employee’s first name and the number of characters in it.
select FirstName,len(FirstName) as length from Employees;

--Question 4: Display the first 3 characters of each employee’s Email.
select substring(Email,1,3) from Employees;

--Question 5: Display each employee’s first and last name joined together with a single space between them.
select FirstName+' '+lastname as  name from employees;

--Question 6: Display each employee’s email with gmail.com replaced by outlook.com.
select replace(email,'gmail.com','outlook.com') as outlookid from employees;

--Question 7: Display the position of the @ character in each employee’s email.
select charindex('@',email)  from employees;

--Question 8: Display each employee’s email domain—the part after the @. Use SUBSTRING and CHARINDEX.
select substring(email, (CHARINDEX('@',email)+1),len(email))as emaildomain from   employees;

--Question 9: Display each employee’s first name padded on the left with * so the result is 15 characters long. Use REPLICATE and LEN.
SELECT (REPLICATE('*',15-LEN(firstname)) + firstname) from  employees

--Question 10: Display each employee’s email in reverse order using a SQL Server string function.
select reverse(email) as [reverse mail] from employees;
--Question 11: Display the first name after removing any leading and trailing spaces. Use a SQL Server string function.
select trim(firstname) from employees;

--Question 12: Display the first 4 characters of each employee’s last name. Use LEFT.
select left(lastname,4) from employees;

--Question 13: Display the part of each email address before the @ symbol. Use LEFT and CHARINDEX.
select left(email,charindex('@',email)-1) from employees;

--Question 14: Display each first name with the first letter in uppercase and the remaining letters in lowercase. For example, SHUBHRA should become Shubhra. Use UPPER, LOWER, LEFT, SUBSTRING, and LEN.
select upper(left(firstname,1))+lower(substring(firstname,2,len(firstname)-1)) from employees;

--Question 15: Display each employee’s last name first, followed by a comma and a space, then their first name. For example: jyoti, shubhra.
select lastname+','+' '+firstname from employees;

--Question 16: Display each employee’s email with all periods (.) removed. Use REPLACE.
select replace(email,'.','') from employees;

--Question 17: Display the last 4 characters of each email address. Use RIGHT.
select right(email,4) from employees;
--Question 18: Display each employee’s first name with all lowercase a characters replaced by @. Use REPLACE.
select replace(lower(firstname),'a','@') from employees;

--Question 19: Display each employee’s first name and last name joined together with no spaces between them. Use CONCAT.
select concat(firstname,lastname) from employees;
--Question 20: Display the first name, then a hyphen (-), then the last name. Use CONCAT.
select concat(firstname,'-',lastname) from employees;




