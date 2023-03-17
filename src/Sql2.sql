/* Задание 1 */
-- 1
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Ksenia', 'Popova', 'Female', 35);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Sergey', 'Popov', 'Male', 50);

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Mary', 'Dudnik', 'Female', 22);

--2
SELECT first_name AS Имя, last_name AS Фамилия
FROM employee;

--3
SELECT  * FROM employee
WHERE age < 30 OR age > 50;
--4
SELECT  * FROM employee
WHERE age BETWEEN 30 AND 50;
--5
SELECT * FROM employee
ORDER BY last_name DESC;
--6
SELECT * FROM employee
WHERE first_name LIKE '_____%';
-- или так
SELECT * FROM employee
WHERE LENGTH(first_name) > 4;


/* Задание 2 */
--1
UPDATE employee
SET first_name = 'Mary'
WHERE id = 3;

UPDATE employee
SET first_name = 'Ivan'
WHERE id = 5;

--2
SELECT first_name Имя, SUM(age) Суммарный_возраст
FROM employee
GROUP BY first_name;
--3
SELECT  first_name Имя, age as Возраст
FROM employee
WHERE age IN (SELECT MIN(age) FROM employee);
-- или так
SELECT first_name Имя, MIN(age) Возраст
FROM employee
GROUP BY first_name;
-- или так
SELECT  first_name, age
FROM employee
ORDER BY age
LIMIT 1;
--4
SELECT first_name, MAX(age) age
FROM employee
GROUP BY first_name
HAVING COUNT(*) > 1
ORDER BY age;



