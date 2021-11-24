-- делаем дамп 
-- mysqldump -u root -p 'example' > example_dump.sql
-- Создаём новую базу данных
CREATE DATABASE IF NOT EXISTS example;
-- Импортируем дамп mysql -u root -p sample < example_dump.sql