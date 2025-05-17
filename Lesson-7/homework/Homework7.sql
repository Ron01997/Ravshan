--1. Write a query to find the minimum (MIN) price of a product in the Products table.
Select min(Price) from Products

--2.Write a query to find the maximum (MAX) Salary from the Employees table.
Select max(salary) from Employees

--3. Write a query to count the number of rows in the Customers table.
Select count(*) from Customers

--4. Write a query to count the number of unique product categories from the Products table.
Select count(distinct category) from Products

--5.Write a query to find the total sales amount for the product with id 7 in the Sales table.
Select Sum(saleamount) from Sales where CustomerID=7

--6. Write a query to calculate the average age of employees in the Employees table.
Select AVG(age) from Employees

--7.Write a query to count the number of employees in each department
Select departmentname, count(*) as #of_employees from Employees group by departmentname

--8. Write a query to show the minimum and maximum Price of products grouped by Category. Use products table
Select Category, min(Price), max(Price) from Products group by Category

--9.Write a query to calculate the total sales per Customer in the Sales table.
select CustomerID, sum(saleAmount) from Sales group by CustomerID

--10. Write a query to filter departments having more than 5 employees from the Employees table.(DeptID is enough, if you don't have DeptName).
Select DepartmentName, Count(*) as Employeecount from employees group by DepartmentName having count(*)>=5

--11. Write a query to calculate the total sales and average sales for each product category from the Sales table.
select ProductID, sum(saleid) as total_sale, avg(saleid) as Average_sale from Sales group by Productid

--12. Write a query to count the number of employees from the Department HR.
SELECT COUNT(*) as HR FROM Employees WHERE departmentname = 'HR'

--13. Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you don't have DeptName).
Select Departmentname, min(Salary) as Min_salary, max(Salary) as Max_salary from employees group by Departmentname

--14. Write a query to calculate the average salary per Department.(DeptID is enough, if you don't have DeptName).
Select Departmentname, avg(salary) as AVG_salary from employees group by Departmentname

--15. Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, if you don't have DeptName).
Select departmentname, avg(salary) as AVG_salary, Count(*) as Employee_count from employees group by departmentname

--16. Write a query to filter product categories with an average price greater than 400.
Select Productname, avg(price) from Products group by Productname having avg(price)>=400

--17. Write a query that calculates the total sales for each year in the Sales table
select Year(Saledate) as Saleyear, Sum(SaleAmount) as Total_sales from Sales group by Year(Saledate)

--18. Write a query to show the list of customers who placed at least 3 orders
Select CustomerID, Count(*) as Order_Count from Sales Group by CustomerID having Count(*) >= 3

--19. Write a query to filter out Departments with average salary expenses greater than 60000.(DeptID is enough, if you don't have DeptName).
Select DepartmentName, avg(salary) as AVG_salary from employees group by DepartmentName having avg(salary)>=60000

--20. Write a query that shows the average price for each product category, and then filter categories with an average price greater than 150.
select Category, avg(price) as AVG_price from Products group by Category having avg(price)>150

--21. Write a query to calculate the total sales for each Customer, then filter the results to include only Customers with total sales over 1500.
Select CustomerID, sum(Saleamount) as Total_sales from Sales group by CustomerID having sum(Saleamount)>1500

--22.Write a query to find the total and average salary of employees in each department, and filter the output to include only departments with an average salary greater than 65000.
Select Departmentname, sum(salary) as total_salary, Avg(salary) as AVG_salary from Employees group by Departmentname having Avg(salary)>65000

--23. Write a query to find total sales amount for the orders which costs more than $50 for each customer along with their least purchases.(least amount might be lower than $50).

SELECT s.CustomerID,
       SUM(s.SaleAmount) AS TotalSales,
       MIN(t.MinPurchase) AS LeastPurchase
FROM Sales s
JOIN (
    SELECT CustomerID, MIN(SaleAmount) AS MinPurchase
    FROM Sales
    GROUP BY CustomerID
) t ON s.CustomerID = t.CustomerID
WHERE s.SaleAmount > 50
GROUP BY s.CustomerID
HAVING SUM(s.SaleAmount) > 50;
