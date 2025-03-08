# SQL Database Project

This project demonstrates how to create and manage a database using SQL. Through this project, I learned the following skills:

1. **Creating a Database**.
2. **Creating Tables**.
3. **Using Basic SQL Commands**:
   - `SELECT`, `INSERT`, `UPDATE`, `DELETE`.
4. **Using Advanced SQL Commands**:
   - `JOIN`, `GROUP BY`, `HAVING`, `SUBQUERIES`, `INDEXES`.

---

## Table of Contents
1. [Creating a Database](#creating-a-database)
2. [Creating Tables](#creating-tables)
3. [Basic SQL Commands](#basic-sql-commands)
   - [SELECT](#select)
   - [INSERT](#insert)
   - [UPDATE](#update)
   - [DELETE](#delete)
4. [Advanced SQL Commands](#advanced-sql-commands)
   - [JOIN](#join)
   - [GROUP BY](#group-by)
   - [HAVING](#having)
   - [SUBQUERIES](#subqueries)
   - [INDEXES](#indexes)
5. [Conclusion](#conclusion)

---

## Creating a Database
To create a database, use the `CREATE DATABASE` command:

```sql
CREATE DATABASE Company;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);
This creates a table with columns for EmployeeID, FirstName, LastName, Department, and Salary.

## Basic SQL Commands
### SELECT
The SELECT command retrieves data from a table. Here’s how to select all columns from the Employees table:
SELECT * FROM Employees;
To select specific columns, specify them:

SELECT FirstName, LastName FROM Employees;

## INSERT
The INSERT command adds new rows to a table. Here’s how to insert a new employee:
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES (1, 'John', 'Doe', 'HR', 50000.00);

##UPDATE
The UPDATE command modifies existing data. Here’s how to update an employee’s salary:
UPDATE Employees
SET Salary = 55000.00
WHERE EmployeeID = 1;

##DELETE
The DELETE command removes rows from a table. Here’s how to delete an employee:
DELETE FROM Employees
WHERE EmployeeID = 1;

## Advanced SQL Commands
JOIN
The JOIN command combines rows from two or more tables based on a related column. Here’s an example using INNER JOIN:

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

##GROUP BY
The GROUP BY command groups rows with the same values into summary rows. Here’s how to group employees by department and calculate the average salary:
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

##HAVING
The HAVING command filters groups based on a condition. Here’s how to find departments with an average salary greater than 50000:

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 50000;

##SUBQUERIES
A subquery is a query nested inside another query. Here’s how to find employees whose salary is above the average:
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

##INDEXES
Indexes improve the speed of data retrieval. Here’s how to create an index on the LastName column:


CREATE INDEX idx_lastname
ON Employees (LastName);


##Conclusion
Through this project, I learned how to create and manage a database using SQL. These skills are essential for working with relational databases and performing data analysis.

How to Use This Project
Install a SQL database system (e.g., MySQL, PostgreSQL).





