INSERT INTO `items` (`name`, `label`, `weight` , `rare`, `can_remove`) VALUES
	('croquettes', 'Croquettes', 1, 0, 1)
;

ALTER TABLE `users` ADD COLUMN `pet` VARCHAR(50) NOT NULL;