USE sample;
UPDATE users SET created_at = NOW(), updated_at = NOW();
SELECT * FROM users;
