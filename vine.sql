-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               8.0.19 - MySQL Community Server - GPL
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных vine
CREATE DATABASE IF NOT EXISTS `vine` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vine`;

-- Дамп структуры для таблица vine.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salary` int NOT NULL,
  `bonus` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы vine.payments: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
REPLACE INTO `payments` (`id`, `date`, `salary`, `bonus`, `user_id`) VALUES
	(1, '2021-10-18 18:20:30', 15000, 1500, 1),
	(2, '2021-10-18 18:20:55', 10000, 250, 2),
	(3, '2021-10-18 18:20:58', 20000, NULL, 3),
	(4, '2021-10-18 18:21:38', 5000, NULL, 4),
	(5, '2021-10-18 18:21:47', 7000, NULL, 5),
	(6, '2021-09-18 18:22:07', 2000, 1500, 1),
	(7, '2021-09-18 18:22:37', 1000, 250, 2),
	(8, '2021-09-18 18:22:58', 500, NULL, 3),
	(9, '2021-09-18 18:23:55', 700, NULL, 4),
	(10, '2021-09-18 18:26:15', 200, NULL, 5);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Дамп структуры для таблица vine.professions
CREATE TABLE IF NOT EXISTS `professions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы vine.professions: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
REPLACE INTO `professions` (`id`, `name`) VALUES
	(1, 'Уборщик'),
	(2, 'Повар'),
	(3, 'Директор');
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;

-- Дамп структуры для таблица vine.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `profession_id` int NOT NULL,
  `salary` int NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы vine.users: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `profession_id`, `salary`, `link_image`) VALUES
	(1, 'Попов Андрей Дмитриевич', 2, 15000, 'https://static5.stcont.com/datas/photos/240x160/f1/9f/f2a362abf604e2b169ef593062e2.jpg?1'),
	(2, 'Нечаев Юрий Гургеныч', 1, 7000, 'https://www.vevioz.com/upload/photos/2020/11/pSUZoEkZEFNG2BlDKMUj_avatar.jpg?cache=0'),
	(3, 'Олоев Виталий Павлович', 3, 50000, 'https://jdm-expo.com/modules/xenforum/views/img/users/20297.jpg'),
	(4, 'Михалков Сергей Сергеевич', 2, 25000, 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/ad/ad0400448bbabddc4889ab1b842be9e277874e68_full.jpg'),
	(5, 'Вивальдин Дмитрий Юрьевич', 1, 10000, 'https://static.wikia.nocookie.net/residentevil/images/8/8a/Icon_uss05.jpg/revision/latest/scale-to-width-down/128?cb=20210325124323&path-prefix=ru');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
