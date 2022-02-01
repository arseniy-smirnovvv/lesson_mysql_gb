USE sample;

UPDATE users SET created_at = STR_TO_DATE(created_at, "%d.%m.%Y %h:%i");
UPDATE users SET updated_at = STR_TO_DATE(updated_at, "%d.%m.%Y %h:%i");
ALTER TABLE users CHANGE `created_at` `created_at` DATETIME, CHANGE `updated_at` `updated_at` DATETIME;

