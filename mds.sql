-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para mds
CREATE DATABASE IF NOT EXISTS `mds` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mds`;

-- Volcando estructura para tabla mds.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mds.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla mds.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mds.migrations: ~3 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla mds.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mds.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla mds.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_cc` enum('cc','ce','pa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_did_you_find_us` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla mds.users: ~31 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `type_cc`, `document`, `address`, `how_did_you_find_us`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Kattie Fisher', 'akuhlman@example.org', '(356) 771-2307 x61430', 'cc', 'NDxuXGCC1X', '27972 Amalia Forest Suite 290\nKianaberg, NM 07325', 'Et perferendis et provident ex soluta.', '2020-08-19 09:34:46', NULL, 'lps3sjEIlh', '2020-08-19 09:34:46', '2020-08-19 09:34:46'),
	(2, 'Francesca Bradtke', 'shanna.powlowski@example.com', '397-783-4701', 'ce', 'yKYe6r4puA', '7111 Hahn Well\nFarrellchester, AR 87194', 'Ut ex repudiandae cumque eos debitis magnam.', '2020-08-19 09:34:46', NULL, 'VLmWl9kvbm', '2020-08-19 09:34:46', '2020-08-19 09:34:46'),
	(3, 'Arno Murphy', 'wbauch@example.org', '(802) 562-2253', 'ce', 'S08iD79vUx', '2510 Maia Spurs\nLake Loganview, VA 28055', 'Sit at porro accusantium.', '2020-08-19 09:34:46', NULL, 'pdAuVOqhnh', '2020-08-19 09:34:46', '2020-08-19 09:34:46'),
	(4, 'Dr. Grayce Rowe V', 'kozey.danny@example.com', '(660) 766-9837 x49627', 'pa', 'MfgqLShUBE', '559 Sauer Lock Suite 839\nKhalidview, WA 46633', 'Doloremque voluptas at est beatae officiis non.', '2020-08-19 09:34:46', NULL, 'L4MzFip0QS', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(5, 'Trent Spencer', 'moen.georgianna@example.com', '+1.619.613.9542', 'cc', 'LV7auZIgB5', '117 Raynor Lake Apt. 847\nLake Madieville, NH 67507', 'Et voluptas laudantium ut quis.', '2020-08-19 09:34:46', NULL, 'JYnjVswRwA', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(6, 'Kirsten Erdman', 'baylee.mante@example.net', '637-541-6637 x60456', 'pa', '4DrgiaLwoP', '408 Gislason Ramp Suite 030\nSouth Mariettaborough, NY 51424', 'Consectetur beatae dolore veniam recusandae occaecati aut.', '2020-08-19 09:34:46', NULL, 'kM4mmAkgUo', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(7, 'Dr. Golden Hartmann', 'loyce62@example.org', '+12716047598', 'ce', 'm61CsPgqK1', '580 Erdman Wall Suite 105\nBlockfort, CT 15573', 'Sit corporis voluptatem est voluptatem omnis ut.', '2020-08-19 09:34:46', NULL, 'QQbqsrJunN', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(8, 'Marjory Kassulke IV', 'howell.kaia@example.net', '682-506-4440 x0101', 'ce', 'aSgWAvKYwy', '9723 Kerluke Roads\nPort Orahaven, PA 83515-6804', 'Deserunt quisquam earum et qui culpa ut id.', '2020-08-19 09:34:46', NULL, 'UTfNhS2Nc1', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(9, 'Mr. Zane Kerluke DDS', 'kassulke.hilario@example.net', '234-330-4466 x06950', 'cc', '2sREQnZTHv', '84117 Doyle Roads Apt. 112\nRusselland, WI 78808', 'Necessitatibus sed enim corrupti ut ea.', '2020-08-19 09:34:46', NULL, 'e3tQtAsdjU', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(10, 'Justen Weber', 'sofia66@example.org', '1-661-295-1953 x6575', 'pa', 'hjIoW1aLIo', '3122 Irwin Ridges\nLake Rod, TN 57706-4224', 'Qui eius dolorem tempora nam.', '2020-08-19 09:34:46', NULL, 'XWpMUDq5R5', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(11, 'Mrs. Freda Shanahan DDS', 'gilberto03@example.org', '(952) 983-9122 x2287', 'pa', 'pUCXCpPqlw', '982 Hilma Village\nNew Everettemouth, MD 38113-3018', 'Accusantium maiores eos sunt.', '2020-08-19 09:34:46', NULL, 'tDJCXprPfr', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(12, 'Ms. Britney Daugherty', 'briana.block@example.net', '610-796-4728 x578', 'ce', 'PQjNLulpPV', '48946 Frami Turnpike Suite 796\nMichaelstad, RI 06367-2382', 'Iste laudantium est sed beatae corrupti labore amet.', '2020-08-19 09:34:46', NULL, 'Yb4pylg6sH', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(13, 'Candace Glover', 'blarson@example.net', '213-285-6384 x152', 'ce', 'GE28ySTAXx', '125 Arlie Rapid Suite 727\nSouth Orvalview, FL 23721-1014', 'Quos ea ut eligendi ut.', '2020-08-19 09:34:46', NULL, 'JqNDUc9VaO', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(14, 'Prof. Antoinette Kemmer', 'qanderson@example.net', '471-800-1743 x189', 'pa', '2vbHrNJ3tz', '627 Bridie Fort\nCrystalton, AZ 74781-1748', 'Illo quasi magni amet mollitia voluptates vel ipsum.', '2020-08-19 09:34:46', NULL, '0wjmlAZyaL', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(15, 'Ahmed Predovic', 'kirsten67@example.com', '694-270-8118 x4369', 'cc', 'Nouu8G1Oq0', '76408 Harris Ford\nJanytown, OK 57629', 'A vel optio nisi ipsum est rerum dicta.', '2020-08-19 09:34:46', NULL, 'DnXNznTyV1', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(16, 'German Dooley', 'nasir22@example.org', '+1-317-664-9105', 'ce', 'AxfAkZ4xAC', '656 Autumn Junctions\nNew Patrick, PA 03449', 'Necessitatibus eos sed ad saepe sit.', '2020-08-19 09:34:46', NULL, 'e1TRv5eB8x', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(17, 'Mabelle Flatley', 'greenholt.dominique@example.net', '1-907-835-7037', 'cc', 'pXJ6E3S8BY', '8857 Burdette Curve Suite 333\nBergnaumfurt, IL 38645', 'Delectus in omnis dolor et.', '2020-08-19 09:34:46', NULL, 'vHTmL4MopD', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(18, 'Mr. Marshall West', 'raoul65@example.org', '(445) 864-0954 x14739', 'cc', 'tu1WfwHGwx', '83577 Katelin Forge Apt. 830\nKunzestad, LA 29870', 'Repellat quo eum eveniet laudantium in sequi saepe.', '2020-08-19 09:34:46', NULL, 'CbWnvbBKrM', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(19, 'Jace Nienow', 'richie.mann@example.org', '+1-287-950-8828', 'cc', 'FJ0mxpXn16', '10376 Brandt Neck Apt. 438\nNorth Norma, MT 15922-4348', 'Est voluptatibus quidem sit distinctio nihil iusto ducimus.', '2020-08-19 09:34:46', NULL, 'cosLYLQnxz', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(20, 'Gracie Kassulke', 'cbergnaum@example.com', '930.844.6193 x75044', 'cc', 'NfI6fkpZno', '50186 Melissa Rue\nBradtkeburgh, LA 70955-9931', 'Rerum quis amet hic animi non nam.', '2020-08-19 09:34:46', NULL, 'Xvq44y1FN4', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(21, 'Brayan Luettgen', 'lockman.freda@example.org', '+1 (702) 340-1664', 'cc', '5pbgKxQFGA', '959 Beaulah Mountain Suite 865\nJacintoton, OR 71421', 'Quasi hic est beatae quidem.', '2020-08-19 09:34:46', NULL, 'wftuDK9f7a', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(22, 'Libbie Pfannerstill III', 'fflatley@example.net', '347-744-3406 x1605', 'cc', 'WXV2qcIQYv', '96380 Wilkinson Highway\nWolffort, TN 21247-8655', 'Tenetur soluta in doloribus eum.', '2020-08-19 09:34:46', NULL, 'Za1Jky1sRU', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(23, 'Hoyt Mosciski', 'reilly.lenore@example.org', '+1-982-306-0926', 'pa', '42WBNqfRis', '280 Gerlach Junction\nLake Margaritaland, MS 10041-4294', 'Rerum atque assumenda ut ratione officia sunt.', '2020-08-19 09:34:46', NULL, 'Y11vYWAjlO', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(24, 'Gina Sipes', 'stevie.doyle@example.com', '1-209-554-9538 x81532', 'cc', 'YjpZXghbdl', '98794 Ayla Mountains\nSouth Barton, MS 18167-3023', 'Voluptatibus itaque facilis nam illum debitis nihil officia.', '2020-08-19 09:34:46', NULL, 'oF331Ummrb', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(25, 'Edison Ryan', 'rglover@example.net', '718-994-1762', 'cc', '3xuDGt9HEz', '2397 Raynor Mountains Suite 215\nNorth Efrain, NM 96240-8540', 'Ut incidunt voluptatem quibusdam sunt ad distinctio.', '2020-08-19 09:34:46', NULL, '8ETNvJ9nyT', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(26, 'Cyrus Quitzon', 'emile.pacocha@example.com', '1-425-516-0556', 'pa', 'Z7Bh9yVGeF', '9551 Branson Lodge Apt. 776\nWest Phoebe, CA 05276', 'Veritatis vitae et necessitatibus eius ad.', '2020-08-19 09:34:46', NULL, 'WddRD3xC4o', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(27, 'Sandy Toy', 'felicita.vandervort@example.net', '+1 (362) 460-1973', 'cc', '0mPmUeJEvY', '4601 Erna Course Apt. 061\nSouth Svenstad, WI 48144', 'Dolor quis et magni tempore quia.', '2020-08-19 09:34:46', NULL, 'hvPeto5mou', '2020-08-19 09:34:47', '2020-08-19 09:34:47'),
	(28, 'Muriel Stoltenberg', 'oschoen@example.net', '1-701-203-9247 x99003', 'ce', 'ys1x9Eyazu', '36323 Laurine Springs\nDockchester, AK 28398-6838', 'Voluptas mollitia similique minus et suscipit aliquid.', '2020-08-19 09:34:46', NULL, '4rETH9Fo5g', '2020-08-19 09:34:48', '2020-08-19 09:34:48'),
	(29, 'Keenan Grimes', 'drussel@example.com', '716.744.2792 x22366', 'pa', '3P08ST5l4r', '36744 Ron Trafficway Suite 512\nAmparochester, MT 29685', 'Sint voluptatem et ut sint.', '2020-08-19 09:34:46', NULL, 'wtmYaXs7OU', '2020-08-19 09:34:48', '2020-08-19 09:34:48'),
	(30, 'Emmie Cormier', 'carmella99@example.net', '(301) 448-5420', 'ce', 'kXE0qXu0py', '8344 Shawna Trace\nBarryfurt, KY 77641-1551', 'Labore est voluptas dolores vitae quia voluptatem.', '2020-08-19 09:34:46', NULL, 'VIDAeRmZPh', '2020-08-19 09:34:48', '2020-08-19 09:34:48'),
	(31, 'Administrador', 'admin@admin.com', '3123036763', 'cc', '1093770319', 'CLL 7 AN#13E77 acacios', 'Un anuncio en linkedin', '2020-08-19 09:34:48', '$2y$10$lWq9yP9/j8yIpQgZi5CUUO7BpL.EA/ETIRFyQfnCu4LBO/BuPYiHq', '2MJT8yXl7k', '2020-08-19 09:34:48', '2020-08-19 09:34:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
