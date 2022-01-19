USE vk;

UPDATE `profiles` SET `is_active` = false WHERE (YEAR(CURRENT_DATE()) - YEAR(`birthday`)) < 18; 
