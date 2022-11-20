SELECT * FROM jobs

SELECT * FROM employees E, departments D WHERE  E.fk_department_id=D.department_id AND department_name='Department_A'
SELECT * FROM employees E,jobs J WHERE E.fk_job_id=J.job_id AND job_title='Executive'
SELECT E.first_name,E.last_name,E.salary FROM employees E,jobs J,departments D WHERE E.fk_job_id=J.job_id AND E.fk_department_id=D.department_id AND 
J.job_title='Executive' AND D.department_name='Department_A'

SELECT E.first_name,E.last_name,E.salary FROM employees E, departments D 
WHERE  E.fk_department_id=D.department_id AND D.department_name='Department_A' ORDER BY E.salary ASC