USE vk;

DELETE FROM `messages` WHERE  `created_at` > CURRENT_TIMESTAMP();
