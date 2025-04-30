1.--Data  is consist of several informations. Usually numbers names 
--database is the collection of the informations. Usually consist of tables lines charts etc.We can edit database with the some softwares like adding informations or changing them
--relational database consists of from tables and all the informations is related to each other 
--table is build by rows and columns. It makes easier to read information as it presents in organized way
2. --Five key features of SQL server
--- It helps to big data storage and management
---Helps to analyze and present in reporting tools like Power BI and other tools
3. --Windows Authentification--it connects to the server which already installed in the PC
-- SQL server Authentification--It can connect to the server which is not installed in the PC 


4. Create database SchoolDB
use SchoolDB
5.Create Table Students(ID int, name VARCHAR(50), Age int)
6.--SQL Server is the Database management system where it manages, stores, process the relational data. It is the bacground tool to analyze the date
--SSMS is the SQL Server Management Studio helps to write codes to make changes in the date with SQL server. It is the interface of the SQL server
--SQL is the Structured Query Language. It is the langugage used to make changes in the database in the SQL server
7. --SQL Commands
--DQL - Data query language
select -- It get's and shows the date from one or more tables


--DDL - Data Definition language
1. Create -- creates the objects in the date
2. drop  --can remove all the data in the database
3. Alter --Changes structure
4. Truncate --cleans the informations in the table but table will not get deleted

--DML - Data manipulation language
1. Insert --inserts the information to the database
2. Update -- updates the information
3. Delete --If we will not give situtaion it can delete the hole row 

--DCL Data control Language
1. grant --Gives the access to the another person to make changes in the database
2. revoke --get's back access 

--Transaction Control language
1. begin 
2. Commit
3. Rollback

8. use SchoolDB
insert into Students (ID, Name, Age) values 
 (1, 'Charlie', 23),
(2, 'Ross', 25), 
(3, 'Alex', 26)

