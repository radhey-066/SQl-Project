# Employee Database Management System using MySQL

## Project Overview

This project demonstrates the implementation of a relational database using **MySQL**. It covers the complete lifecycle of database management, including creating tables, inserting records, modifying table structures, updating existing data, deleting records, and retrieving information using SQL queries.

The project contains an **Employee** table with **1,000 sample employee records** and additional SQL practice queries to strengthen database concepts. It is designed for beginners, college practicals, interview preparation, and SQL practice.

## Database Schema

**Table Name:** `employee`

| Column       | Data Type         |
| ------------ | ----------------- |
| id           | INT (Primary Key) |
| name         | VARCHAR(100)      |
| department   | VARCHAR(50)       |
| age          | INT               |
| salary       | DECIMAL(12,2)     |
| email        | VARCHAR(100)      |
| phone_no     | VARCHAR(15)       |
| company_name | VARCHAR(100)      |

## Dataset

* 1,000 Employee Records
* Multiple Departments
* Different Companies
* Salary Distribution
* Employee Age Records
* Email Addresses
* Phone Numbers

## SQL Concepts Covered

### DDL (Data Definition Language)

* CREATE DATABASE
* CREATE TABLE
* ALTER TABLE
* ADD COLUMN
* MODIFY COLUMN
* DROP COLUMN
* RENAME TABLE
* PRIMARY KEY
* AUTO_INCREMENT

### DML (Data Manipulation Language)

* INSERT INTO
* UPDATE
* DELETE
* TRUNCATE

### DQL (Data Query Language)

* SELECT
* SELECT *
* DISTINCT
* WHERE
* BETWEEN
* IN
* LIKE
* ORDER BY
* LIMIT

### Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

### Grouping

* GROUP BY
* HAVING

### String Functions

* UPPER()
* LOWER()
* LENGTH()

### Numeric Functions

* ROUND()
* SQRT()

### Date Functions

* CURDATE()
* CURTIME()
* NOW()

### Subqueries

* Average Salary
* Maximum Salary
* Second Highest Salary
* Third Highest Salary

## SQL Queries Practiced

* Create Employee Table
* Insert Single Record
* Insert Multiple Records
* Insert 1,000 Employee Records
* Update Employee Details
* Update Salary
* Update Department
* Delete Specific Records
* Delete Records Using Conditions
* Delete All Records
* Display All Employees
* Display Selected Columns
* Filter Records using WHERE
* Pattern Matching using LIKE
* Sorting using ORDER BY
* Retrieve Top Records using LIMIT
* Calculate Total Employees
* Find Maximum Salary
* Find Minimum Salary
* Calculate Average Salary
* Calculate Total Salary
* Group Employees by Department
* Apply HAVING Clause
* Perform Subqueries
* Find Highest, Second Highest and Third Highest Salary
* Use Aggregate Functions
* Use String Functions
* Use Numeric Functions
* Use Date Functions
* use like operator
* groupby
* orderby
* alter

## Files Included

* `collage data record.sql` – SQL scripts for table creation, insert, update, delete, alter, and practice queries.
* `Employee Table Record.csv` – Employee dataset containing 1,000 records.
* Employee SQL scripts for database creation and manipulation.

## Tools & Technologies

* MySQL 8.x
* MySQL Workbench
* SQL
* CSV Dataset

## Learning Outcomes

After completing this project, you will understand:

* Database creation and management
* Table creation and schema design
* Data insertion and modification
* Data retrieval using SQL queries
* Aggregate functions
* Sorting and filtering
* Grouping and subqueries
* CRUD Operations (Create, Read, Update, Delete)
* Practical SQL for academic and interview preparation

## Project Purpose

This project was developed for learning and practicing SQL concepts, improving database management skills, preparing for college practical examinations, and strengthening interview readiness through hands-on experience with real-world employee data.
