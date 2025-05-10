--1. The main purpose of the Bulk insert is getting data from another files to SQL database or table. We use this for getting large amount of data to SQL without entering it one by one. To summarize it helps to get large amount of date to SQL without wasting time.
--2. CSV-most used format and every column will be devided with ,.  TXT- This is the text file and will be devided with special keys as \t,\...  XLS, XlSX-excel file, Can be imported using special engines like SSIS and others. XML-- Will be used special engines for this one also. 
--3.
Create table Products (ProductID int primary key, Productname varchar(50), Price Decimal (10,2))
--4.
Insert into Products values (1, 'Apple', 15.2)
Insert into Products values (2, 'Banana', 20.1)
Insert into Products values (3, 'Orange', 25.5)
--5. WE must provide a value forthe column when column is defined with NOT NULL, Because we can not leave column empty with NOTT NULL condition. However we can use NULL constraint for leaving column without any value and it will show Null in the table
--6.
Alter Table Products 
add constraint unique_productname unique (Productname)
--7. Purpose is to avoid duplicating same product name here like entering two apples or bananas. It will help us to ensure each product name is unique in the table.
--8. 
create table Categories (CategoryID int primary key, Productname varchar(50) unique)
--9. Identity Column helps us to get unique keys without it entering. IT will be syntaxed like (1,1), Here is the first 1 is the beginning and second one shows how many numbers added for second row. In This way all values will be unique. 
--10.
--11. 
ALTER TABLE Products
ADD CategoryID int;

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);
--12. When we use primary key we can not enter the NUll values and it will help to make values unique. Howevere we can use the one NULL value when we use Unique Key and it also get's unique values to the table. The main difference is the primary key not allows any Null values but unique key allows only one null value.
--13.
Alter table Products
add constraint CHK_Price_Positive
Check (price>0)

 --14. 
 Alter Table Products
 Add Stock int
 UPDATE Products
SET Stock = 0 
--
ALTER TABLE Products
ALTER COLUMN Stock int NOT NULL;
--15.
UPDATE Products
SET Price = 0
WHERE Price IS NULL;
--16. We use foreign key to connect row in the table to primary key. IT will provide the data integrity in the both tables with showing same data in the both table. 
--17. 
Create table Customer (age int check(age>=18))
--18.
Create table Prices (price int identity (100, 10))


