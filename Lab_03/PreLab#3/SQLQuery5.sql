CREATE TABLE departments(
department_id int NOT NULL,
department_name varchar(255) NULL,

);
ALTER TABLE departments ADD PRIMARY KEY (department_id) ;

CREATE TABLE jobs(
job_id int NOT NULL,
job_title varchar(255) NULL,
min_salary int NULL,
max_salary int NULL
);
ALTER TABLE jobs ADD PRIMARY KEY(job_id);

CREATE TABLE employees(
employee_id varchar(255) NOT NULL,
first_name varchar(255) NULL,
last_name varchar(255) NULL,
email varchar(255) NULL,
phone_number varchar(11) NULL,
salary int NULL,
fk_job_id int NOT NULL,
fk_department_id int NOT NULL,
fk_employee_id varchar(255) NULL,

);
ALTER TABLE employees ADD PRIMARY KEY(employee_id);
ALTER TABLE employees ADD FOREIGN KEY(fk_job_id) REFERENCES jobs(job_id) ON DELETE CASCADE  ON UPDATE CASCADE;
ALTER TABLE employees ADD FOREIGN KEY(fk_department_id) REFERENCES departments(department_id) ON DELETE CASCADE  ON UPDATE CASCADE;
ALTER TABLE employees ADD FOREIGN KEY(fk_employee_id) REFERENCES employees(employee_id);
----------------INSERT---------------------
INSERT INTO departments(department_id,department_name) 
	VALUES (101,'Department_A');
INSERT INTO departments(department_id,department_name) 
	VALUES (102,'Department_B');
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
	VALUES ('1','Executive','2500','3000');
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) 
	VALUES ('2','Executive Assistant','2000','2500');
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number, salary,fk_job_id,fk_department_id) 
	VALUES ('E1001','Ayse','Ayaz','aa@mail.net','1011','3000','1','101');
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number, salary,fk_job_id,fk_department_id) 
	VALUES ('E1002','Burak','Bilir','bb@mail.net','2022','2750','1','102');
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number, salary,fk_job_id,fk_department_id) 
	VALUES ('E1003','Canan','Can','cc@mail.net','3033','2500','2','101');
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number, salary,fk_job_id,fk_department_id) 
	VALUES ('E1004','Delil','Doðru','dd@mail.net','4044','2250','2','102');


---------- DELETE / UPDATE -------
DELETE jobs WHERE job_id='1';
UPDATE employees SET last_name='Abc' WHERE last_name='Can';

-------SELECT DISTINCT-------------
SELECT DISTINCT fk_job_id FROM employees;

-- ---SELECT WHERE -----
SELECT * FROM employees E WHERE E.salary>2500;

-- ---------SELECT * FROM ORDER BY (*DESC)-----------
SELECT * FROM employees E ORDER BY E.salary DESC

SELECT * FROM employees E ORDER BY E.email

