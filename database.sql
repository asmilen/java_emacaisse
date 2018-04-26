# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.21)
# Database: ema-caisse
# Generation Time: 2018-03-19 22:00:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE ema_caisse DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

# Dump of table ride
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ride`;

CREATE TABLE `ride` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `created_on` date NOT NULL,
  `travel_start_time` time NOT NULL,
  `travel_start_date` date NOT NULL,
  `travel_return_time` time NOT NULL,
  `travel_return_date` date NOT NULL,
  `source_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats_offered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contribution_per_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luggage_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` tinyint(1) DEFAULT NULL,
  `driving_license_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_license_valid_from` date DEFAULT NULL,
  `car_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`, `phone`, `date_of_birth`, `description`, `gender`, `driving_license_number`, `driving_license_valid_from`, `car_description`)
VALUES
	(1, 'namvu1210@gmail.com', '123456', NULL, NULL, 'Nam', 'Vu', NULL, NULL, '0412342123', NULL, NULL, 1, NULL, NULL, NULL),
	(2, 'haidang@gmail.com', '123456', NULL, NULL, 'Dang', 'Nguyen', NULL, NULL, '242123123', NULL, NULL, 1, NULL, NULL, NULL);


INSERT INTO `ride` (`id`, `user_id`,`create_on`, `travel_start_time`, `travel_start_date`, `travel_return_time`, `travel_return_date`, `source_city`, `destination_city`, `seats_offered`, `price`, `contribution_per_head`, `luggage_size`)
VALUES
	(1, 1,'2018-04-28', '12:09:00', '2018-04-28', '12:09:00', '2018-04-29', 'Montpellier', 'Paris', '4', '5', '5', '3'),
       (2, 2,'2018-04-28', '15:15:00', '2018-04-28', '12:15:00', '2018-04-29', 'Montpellier', 'Paris', '4', '8', '2', '1');



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
