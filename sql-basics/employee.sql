-- //problem1
SELECT last_name, first_name FROM employee WHERE city='Calgary';

-- //problem 2
SELECT MAX(birth_date) FROM employee;

-- //problem 3
SELECT MIN(birth_date) FROM employee;

-- //problem 4
SELECT * FROM employee WHERE last_name='Edwards' AND first_name='Nancy'; 
SELECT * FROM employee WHERE reports_to=2;

-- //problem 5
SELECT COUNT(employee_id) FROM employee WHERE city='Calgary';



