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
  `contribution_per_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,,
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

# Dump of table car
# ------------------------------------------------------------

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `make_year` int(11) NOT NULL,
  `comfort_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table luggage_size
# ------------------------------------------------------------

DROP TABLE IF EXISTS `luggage_size`;

CREATE TABLE `luggage_size` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table music_preference
# ------------------------------------------------------------

DROP TABLE IF EXISTS `music_preference`;

CREATE TABLE `music_preference` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table request
# ------------------------------------------------------------

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `requester_id` int(10) unsigned NOT NULL,
  `ride_id` int(10) unsigned NOT NULL,
  `enroute_city_id` int(10) unsigned DEFAULT NULL,
  `created_on` date NOT NULL,
  `request_status_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `request_enroute_city` (`enroute_city_id`),
  KEY `request_request_status` (`request_status_id`),
  KEY `request_ride` (`ride_id`),
  CONSTRAINT `request_enroute_city` FOREIGN KEY (`enroute_city_id`) REFERENCES `enroute_city` (`id`),
  CONSTRAINT `request_request_status` FOREIGN KEY (`request_status_id`) REFERENCES `request_status` (`id`),
  CONSTRAINT `request_ride` FOREIGN KEY (`ride_id`) REFERENCES `ride` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table request_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `request_status`;

CREATE TABLE `request_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
