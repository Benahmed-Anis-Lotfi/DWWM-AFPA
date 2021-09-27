START TRANSACTION;
INSERT INTO posts (`pos_id`, `pos_libelle`)
VALUES (28, "Retraité/e");
UPDATE employees
SET emp_pos_id = 36, emp_salary = 0, emp_superior_id = NULL
WHERE emp_lastname = "HANNAH";
UPDATE employees
SET emp_pos_id = 2, emp_salary = (emp_salary*1.05)
WHERE emp_pos_id = 14 AND emp_enter_date = (SELECT MIN(emp_enter_date) FROM employees WHERE emp_pos_id =14);
COMMIT;
