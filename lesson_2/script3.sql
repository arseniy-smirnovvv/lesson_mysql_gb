DROP DATABASE IF EXISTS school;
CREATE DATABASE school;
USE school;

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
	id SERIAL,
	name VARCHAR(255),
	surname VARCHAR(255),
	email VARCHAR(255) UNIQUE
);


DROP TABLE IF EXISTS courses;
CREATE  TABLE courses (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) UNIQUE
);

DROP TABLE IF EXISTS streams;
CREATE  TABLE streams (
	id SERIAL,
	course_id INT UNSIGNED NOT NULL, 
	numbers INT UNSIGNED,
	started_at DATE,
	students_amount INT UNSIGNED
);

DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
	teacher_id INT UNSIGNED,
	stream_id INT UNSIGNED,
	perfomance FLOAT UNSIGNED
);

INSERT INTO teachers (name, surname, email) VALUES
	('Николай', 'Савельев', 'saveliev.n@mai.ru'),
	('Наталья', 'Петрова', 'petrova.n@yandex.ru'),
	('Елена', 'Малышева', 'malisheva.e@google.com');
--
INSERT INTO courses (name) VALUES
	('Базы данных'),
	('Основы Python'),
	('Linux. Рабочая станция');

INSERT INTO streams (course_id, numbers, started_at, students_amount) VALUES
	(3, 165, '18.08.2020', 34),
	(2, 178, '02.10.2020', 37),
	(1, 203, '12.11.2020', 35),
	(1, 210, '03.12.2020', 41);

INSERT INTO grades (teacher_id, stream_id, perfomance) VALUES
	(3, 1, 4.7),
	(2, 2, 4.9),
	(1, 3, 4.8),
	(1, 4, 4.9);

