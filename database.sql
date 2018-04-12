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



# Dump of table city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enroute_city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enroute_city`;

CREATE TABLE `enroute_city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ride_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `order_from_source` int(10) NOT NULL,
  `prorated_contribution` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enroute_city_city` (`city_id`),
  KEY `enroute_city_ride` (`ride_id`),
  CONSTRAINT `enroute_city_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `enroute_city_ride` FOREIGN KEY (`ride_id`) REFERENCES `ride` (`id`)
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



# Dump of table ride
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ride`;

CREATE TABLE `ride` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_car_id` int(10) unsigned NOT NULL,
  `created_on` date NOT NULL,
  `travel_start_time` time NOT NULL,
  `travel_start_date` date NOT NULL,
  `travel_return_time` time NOT NULL,
  `travel_return_date` date NOT NULL,
  `source_city_id` int(10) unsigned NOT NULL,
  `destination_city_id` int(10) unsigned NOT NULL,
  `seats_offered` int(10) NOT NULL,
  `price` int(10)NOT NULL,
  `contribution_per_head` int(10) NOT NULL,
  `luggage_size_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `destination_ride_city` (`destination_city_id`),
  KEY `ride_luggage_size` (`luggage_size_id`),
  KEY `ride_user_car` (`user_car_id`),
  KEY `source_ride_city` (`source_city_id`),
  CONSTRAINT `destination_ride_city` FOREIGN KEY (`destination_city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `ride_luggage_size` FOREIGN KEY (`luggage_size_id`) REFERENCES `luggage_size` (`id`),
  CONSTRAINT `ride_user_car` FOREIGN KEY (`user_car_id`) REFERENCES `user_car` (`id`),
  CONSTRAINT `source_ride_city` FOREIGN KEY (`source_city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table user_car
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_car`;

CREATE TABLE `user_car` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `car_id` int(10) unsigned NOT NULL,
  `car_registration_number` varchar(50) NOT NULL,
  `car_color` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_car_car` (`car_id`),
  CONSTRAINT `user_car_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table user_preference
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_preference`;

CREATE TABLE `user_preference` (
  `user_id` int(10) unsigned NOT NULL,
  `is_smoking_allowed` tinyint(1) NOT NULL,
  `is_pet_allowed` tinyint(1) NOT NULL,
  `music_preference_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_pref_music_pref` (`music_preference_id`),
  CONSTRAINT `user_pref_music_pref` FOREIGN KEY (`music_preference_id`) REFERENCES `music_preference` (`id`)
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
  `phone` int(11) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` tinyint(1) DEFAULT NULL,
  `driving_license_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_license_valid_from` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
