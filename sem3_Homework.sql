CREATE DATABASE IF NOT EXISTS homework3;

USE homework3;

CREATE TABLE IF NOT EXISTS staff
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    post VARCHAR(45),
    seniority INT,
    salary INT,
    age INT
);

TRUNCATE TABLE staff;

INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
	('Вася', 'Петров', 'Начальник', 40, 100000, 60),
	('Петр', 'Власов', 'Начальник', 8, 70000, 30),
	('Катя', 'Катина', 'Инженер', 2, 70000, 25),
	('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
	('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
	('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
	('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
	('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
	('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
	('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
	('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
	('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
    
SELECT * FROM staff;

-- Задание 1
SELECT *
FROM staff
ORDER BY salary; -- По возрастанию

SELECT *
FROM staff
ORDER BY salary DESC; -- По убыванию

-- Задание 2
SELECT salary
FROM staff
ORDER BY salary DESC
LIMIT 5;


-- Задание 3
SELECT post,
SUM(salary) AS "Суммарная зарплата"
FROM staff
GROUP BY post;


-- Задание 4
SELECT COUNT(*) AS "Количество работников от 24 до 49 лет"
FROM staff
WHERE post = "Рабочий" AND age BETWEEN 24 AND 49;


-- Задание 5
SELECT COUNT(DISTINCT post) AS "Количество  специальностей"
FROM staff;


-- Задание 6 (Позволю себе поменять немножко задание. не до 30, а до 40, чтобы что-нибудь вывелось)
SELECT post, AVG(age) AS "Средний возраст" FROM staff 
GROUP BY post
HAVING AVG(age) < 40;


