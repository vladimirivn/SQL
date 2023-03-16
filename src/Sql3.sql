/* Задание 1 */
-- 1

CREATE TABLE city
(
    city_id   BIGSERIAL NOT NULL PRIMARY KEY,
    city_name VARCHAR(60) NOT NULL
);
-- 2 и 3
ALTER TABLE employee
ADD COLUMN city_id BIGINT REFERENCES city(city_id);
-- 4
INSERT INTO city (city_name)
VALUES ('Волгоград'),
       ('Москва'),
       ('Санкт-Петербург'),
       ('Владивосток'),
       ('Новосибирск'),
       ('Калининград');

UPDATE employee
SET city_id = 1
WHERE id = 1;
UPDATE employee
SET city_id = 2
WHERE id = 3;
UPDATE employee
SET city_id = 3
WHERE id = 4;
UPDATE employee
SET city_id = 4
WHERE id = 5;
UPDATE employee
SET city_id = 5
WHERE id = 6;

/* Задание 2 */
-- 1
SELECT first_name, last_name, city_name
FROM employee e
JOIN city c ON e.city_id = c.city_id;

-- или сокращенная запись

SELECT first_name, last_name, city_name
FROM employee
JOIN city USING(city_id);

--2
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Vladimir', 'Kuznetsov', 'Female', 45);

SELECT first_name, last_name, city_name
FROM employee
LEFT JOIN city USING(city_id);

--3
SELECT first_name, last_name, city_name
FROM employee
FULL JOIN city USING(city_id);

--4
SELECT first_name, last_name, city_name
FROM employee
CROSS JOIN city;