CREATE TABLE departments(
	department_name VARCHAR NOT NULL,
	department_id INT PRIMARY KEY
);
-- Insert Data into Departments Table
INSERT INTO departments (department_id,department_name)
VALUES 
      (1,'Human Resources'), 
      (2,'Engineering'), 
      (3,'Marketing');

CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
    department_id INT
);
-- Insert Data into Employees Table
INSERT INTO employees (employee_id,first_name, last_name, department_id)
VALUES 
(11,'John', 'Doe', 1), 
(22,'Jane', 'Smith', 2), 
(33,'Alice', 'Johnson', 3), 
(44,'Bob', 'Brown', 2);


CREATE TABLE projects(
    project_id INT PRIMARY KEY,
	project_name VARCHAR NOT NULL 
);
-- Insert Data into Projects Table
INSERT INTO projects (project_id,project_name) VALUES 
(1,'Project Alpha'), 
(2,'Project Beta'), 
(3,'Project Gamma');

-- Insert Data into Assignments Table
CREATE TABLE assignments(
	assignment_id INT PRIMARY KEY,
	employee_id INT,
	project_id INT ,
	hours_worked INT
);

INSERT INTO assignments (assignment_id,employee_id, project_id, hours_worked) VALUES 
(1,1, 1, 20), 
(2,2, 2, 30), 
(3,3, 3, 25), 
(4,4, 1, 15), 
(5,2, 3, 10);



SELECT first_name,last_name,d.department_id,d.department_name
FROM employees e INNER JOIN departments d
ON e.department_id = d.department_id;


SELECT first_name,last_name,d.department_id,d.department_name
FROM employees e LEFT JOIN departments d
ON e.department_id = d.department_id;

SELECT e1.employee_id AS Employee_1, e1.first_name AS Employee_1_Name, 
       e2.employee_id AS Employee_2, e2.first_name AS Employee_2_Name, 
       e1.department_id
FROM employees e1 JOIN employees e2
ON e1.department_id = e2.department_id AND e1.employee_id != e2.employee_id;


SELECT first_name,last_name,d.department_id,d.department_name
FROM employees e FULL OUTER JOIN departments d
ON e.department_id = d.department_id;


SELECT e.employee_id, e.first_name, e.last_name, p.project_name
FROM employees e CROSS JOIN projects p;


SELECT employee_id, first_name, last_name, department_name
FROM employees NATURAL JOIN departments;

