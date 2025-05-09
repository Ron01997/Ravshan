
Create table Employees (EmpID int, name varchar (50), salary decimal(10,2)) 

Insert into Employees  Values (1, 'Ronald', 2000.00)
Insert into Employees  Values (2, 'Charlie', 1500.00)
Insert into Employees  Values (3, 'Alex', 2500.00)

Insert into Employees (EmpID, name, salary)
Values
(4, 'Rick', 950.00),
(5, 'Simon', 580.75),
(6,'Don', 400.85)

Update Employees
set salary=7000
Where EmpID=1

Delete from Employees
Where EmpID=2

-- Delete
--deletes specific rows from the table when we give a case with where. In this case table structure remains same 

--Truncate 
-- can delate all the rows from the table with saving structure

--Drop
-- we can delete all the table and date from our database. With this order whole table or information will be erased

Alter table employees
Alter column name  varchar(100)

Alter table employees Add Department varchar(50)

ALTER TABLE Employees
ALTER COLUMN salary FLOAT;

Create Table Departments (DepartmentID int primary key, DepartmentName Varchar(50))

Truncate table Employees

insert into Departments values (1, 'HR'),(2, 'Dispatch'), (3, 'Accounting'), (4,'Update'), (5, 'Safety')

ALTER TABLE Departments
ALTER COLUMN Salary int(50)

Update Employees
set department= 'Management'
Where salary>5000

Delete from Employees

 Alter table Employees
Drop column Department

EXEC sp_rename 'Employees', 'StaffMembers';
