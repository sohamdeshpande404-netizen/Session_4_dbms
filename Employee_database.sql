CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
INSERT INTO employees(employee_id,first_name,last_name)
VALUES(1.'Jhon','Doe');

INSERT INTO employees(employee_id,first_name,last_name)
VALUES(2,'Dinesh','Rao');

INSERT INTO employees(employee_id,first_name,last_name)
VALUES(3,'Allen','Solley');

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    total_hours float,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
INSERT INTO attendance(attendance_id,employee_id,total_hours)
VALUES(101,1,8);

INSERT INTO attendance(attendance_id,employee_id,total_hours)
VALUES(102,2,9);

INSERT INTO attendance(attendance_id,employee_id,total_hours)
VALUES(103,3,8.5);

CREATE TABLE salary (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    amount INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
INSERT INTO salary(salary_id,employee_id,amount)
VALUES(1001,1,100000);

INSERT INTO salary(salary_id,employee_id,amount)
VALUES(1002,2,1500000);

INSERT INTO salary(salary_id,employee_id,amount)
VALUES(1003,3,85000);
