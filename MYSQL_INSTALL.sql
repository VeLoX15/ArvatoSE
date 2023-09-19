DROP SCHEMA IF EXISTS `arvato`;
CREATE SCHEMA IF NOT EXISTS `arvato` DEFAULT CHARACTER SET latin2;
USE `arvato`;

-- -----------------------------------------------------
-- Table `arvato`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arvato`.`users` (
	`user_id` INTEGER NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(50) NOT NULL,
	`display_name` VARCHAR(100) NOT NULL,
	`description` TEXT NOT NULL,
	`main_fraction_id` INT NULL, 
	`password` VARCHAR(255) NOT NULL,
	`salt` VARCHAR(255) NOT NULL,
    `last_login` DATETIME,
	`image` MEDIUMBLOB NULL,

	PRIMARY KEY(`user_id`),
	FOREIGN KEY (`main_fraction_id`) REFERENCES `arvato`.`fractions`(`fraction_id`)
);

-- -----------------------------------------------------
-- Table `arvato`.`permissions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arvato`.`permissions` (
	`permission_id` INTEGER NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(50) NOT NULL,

	PRIMARY KEY (`permission_id`)
);

-- -----------------------------------------------------
-- Table `arvato`.`permission_description`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arvato`.`permission_description` (
	`permission_id` INTEGER NOT NULL,
	`code` VARCHAR(5) NOT NULL DEFAULT '',
	`name` VARCHAR(50) NOT NULL,
	`description` TEXT NOT NULL,

	PRIMARY KEY (`permission_id`, `code`),
	FOREIGN KEY (`permission_id`) REFERENCES `arvato`.`permissions`(`permission_id`) ON DELETE CASCADE ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Table `arvato`.`user_permissions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arvato`.`user_permissions` (
	`user_id` INTEGER NOT NULL,
	`permission_id` INTEGER NOT NULL,

	PRIMARY KEY(`user_id`, `permission_id`),
	FOREIGN KEY (`user_id`) REFERENCES `arvato`.`users`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (`permission_id`) REFERENCES `arvato`.`permissions`(`permission_id`) ON DELETE CASCADE ON UPDATE CASCADE
);