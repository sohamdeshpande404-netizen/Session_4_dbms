# Employee Management Database Module

A SQL script setup for managing employee profiles, work hours tracking (`attendance`), and compensation records (`salary`).

---

##  Overview

This directory contains the database definition and initial data population script for an employee record management system. It maintains relational integrity using **Primary Keys** and **Foreign Keys** linked back to the core `employees` table.

---

## 🛠️ Database Schema

+-------------------+
|     employees     |
+-------------------+
   ^             ^
   |             |
+--------------+  +--------------+
|  attendance  |  |    salary    |
+--------------+  +--------------+


### Entity Details

| Table Name | Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **employees** | `employee_id` | `INT` | `PRIMARY KEY` | Unique identifier for each employee |
| | `first_name` | `VARCHAR(50)` | — | First name of the employee |
| | `last_name` | `VARCHAR(50)` | — | Last name of the employee |
| **attendance** | `attendance_id` | `INT` | `PRIMARY KEY` | Unique attendance record entry |
| | `employee_id` | `INT` | `FOREIGN KEY` | References `employees(employee_id)` |
| | `total_hours` | `FLOAT` | — | Recorded work hours |
| **salary** | `salary_id` | `INT` | `PRIMARY KEY` | Unique salary record entry |
| | `employee_id` | `INT` | `FOREIGN KEY` | References `employees(employee_id)` |
| | `amount` | `INT` | — | Compensation amount |

---

##  Execution Script

Run the following SQL commands to build the tables and insert initial sample data. *(Note: Syntax error from `1.` in the original insert draft has been corrected to standard tuple notation `1`)*.

```sql
-- Step 1: Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Seed Employees
INSERT INTO employees (employee_id, first_name, last_name) VALUES
    (1, 'Jhon', 'Doe'),
    (2, 'Dinesh', 'Rao'),
    (3, 'Allen', 'Solley');

-- Step 2: Create Attendance Table
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    total_hours FLOAT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Seed Attendance Records
INSERT INTO attendance (attendance_id, employee_id, total_hours) VALUES
    (101, 1, 8.0),
    (102, 2, 9.0),
    (103, 3, 8.5);

-- Step 3: Create Salary Table
CREATE TABLE salary (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    amount INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Seed Salary Records
INSERT INTO salary (salary_id, employee_id, amount) VALUES
    (1001, 1, 100000),
    (1002, 2, 1500000),
    (1003, 3, 85000);
