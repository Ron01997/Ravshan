--1. 
Select top(5) * from Employees 
--2.
Select distinct Category from Products
--3.
Select * from Products Where price>100
--4. 
Select * from Customers Where Firstname like 'A%'
--5. 
Select * from Products order by Price
--6. 
Select * from Employees Where Salary>=6000 and Department='HR'
--7.
Update Employees 
set Email='noemail@example.com'
Where email is null 
--8. 
Select * from Products Where Price between 50 and 100
--9.
SELECT DISTINCT Category, ProductName
FROM Products
--10. 
SELECT DISTINCT Category, ProductName
FROM Products
ORDER BY ProductName DESC
--11. 
SELECT TOP 10 ProductName
FROM Products
ORDER BY Price DESC
--12.
SELECT COALESCE(FirstName, LastName) AS DisplayName
FROM Employees
--13. 
Select Distinct Category, Price from Products
--14. 
SELECT * 
FROM Employees
WHERE Age BETWEEN 30 AND 40
   OR Department = 'Marketing'
