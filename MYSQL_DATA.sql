SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

USE `arvato`;

#
# Dumping data for table 'arvato'.'permissions'
#

INSERT INTO `arvato`.`permissions` (`permission_id`, `identifier`) VALUES (1, 'ADD_USERS');
INSERT INTO `arvato`.`permissions` (`permission_id`, `identifier`) VALUES (2, 'VIEW_USERS');
INSERT INTO `arvato`.`permissions` (`permission_id`, `identifier`) VALUES (3, 'EDIT_USERS');
INSERT INTO `arvato`.`permissions` (`permission_id`, `identifier`) VALUES (4, 'DELETE_USERS');
# 4 records

#
# Dumping data for table 'arvato'.'permission_description'
#

INSERT INTO `arvato`.`permission_description` (`permission_id`, `code`, `name`, `description`) VALUES (1, 'en', 'Add Users', '');
INSERT INTO `arvato`.`permission_description` (`permission_id`, `code`, `name`, `description`) VALUES (1, 'de', 'Benutzer erstellen', '');
INSERT INTO `arvato`.`permission_description` (`permission_id`, `code`, `name`, `description`) VALUES (2, 'en', 'View Users', '');
INSERT INTO `arvato`.`permission_description` (`permission_id`, `code`, `name`, `description`) VALUES (2, 'de', 'Benutzer einsehen', '');
INSERT INTO `arvato`.`permission_description` (`permission_id`, `code`, `name`, `description`) VALUES (3, 'en', 'Edit Users', '');
INSERT INTO `arvato`.`permission_description` (`permission_id`, `code`, `name`, `description`) VALUES (3, 'de', 'Benutzer bearbeiten', '');
INSERT INTO `arvato`.`permission_description` (`permission_id`, `code`, `name`, `description`) VALUES (4, 'en', 'Delete Users', '');
INSERT INTO `arvato`.`permission_description` (`permission_id`, `code`, `name`, `description`) VALUES (4, 'de', 'Benutzer löschen', '');
# 8 records

#
# Optional: Adds an admin user
#
#------------------------------------------------------------------
#

#
# Dumping data for table 'users'
#

INSERT INTO `arvato`.`users` (`user_id`, `username`, `display_name`, `description`, `main_fraction_id`, `password`, `salt`, `last_login`, `image`) VALUES (1, 'admin', 'Administrator', '', NULL, 'AQAAAAIAAYagAAAAECDOJwBpi0sqraVzpbiMs47xjH/gr8+/QcCClDnZ2oHzn1xA1jmU50ym+jODGjAHiQ==', '5Vjt5j4785', '2023-01-01 12:00:00', NULL);
# 1 records

#
# Dumping data for table 'arvato'.'user_permissions'
#

INSERT INTO `arvato`.`user_permissions` (`user_id`, `permission_id`) VALUES (1, 1);
INSERT INTO `arvato`.`user_permissions` (`user_id`, `permission_id`) VALUES (1, 2);
INSERT INTO `arvato`.`user_permissions` (`user_id`, `permission_id`) VALUES (1, 3);
INSERT INTO `arvato`.`user_permissions` (`user_id`, `permission_id`) VALUES (1, 4);
# 4 records

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;