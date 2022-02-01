SELECT WEEKDAY(DATE_FORMAT(birthday_at, CONCAT(YEAR(NOW()), '-%m-%d' ))) AS idx_day, COUNT(*) FROM users u GROUP BY idx_day ORDER BY idx_day;
