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

-- Volcando datos para la tabla mds.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando datos para la tabla mds.migrations: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(22, '2014_10_12_000000_create_users_table', 1),
	(23, '2014_10_12_100000_create_password_resets_table', 1),
	(24, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando datos para la tabla mds.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando datos para la tabla mds.users: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `type_cc`, `document`, `address`, `how_did_you_find_us`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Dr. Nicolas Windler IV', 'kiel44@example.org', '+1 (893) 540-1072', 'ce', 'a7bPDlnv9s', '77240 Casper Forges Suite 177\nKundeshire, ID 73088', 'Similique omnis molestias totam.', '2020-08-19 03:36:11', NULL, 'OMOphSQoTx', '2020-08-19 03:36:12', '2020-08-19 03:36:12'),
	(2, 'Hailie Glover', 'jrau@example.org', '880.555.9061', 'pa', '3RVp0Vubb1', '108 Noah Plains Apt. 966\nEast Syblestad, NH 77088-0351', 'Doloribus animi id doloremque est excepturi iure.', '2020-08-19 03:36:11', NULL, 'JOl9QtylDM', '2020-08-19 03:36:12', '2020-08-19 03:36:12'),
	(3, 'Chaim Abernathy', 'earnest.greenfelder@example.com', '(304) 432-8551 x8842', 'cc', 'IfD7cEIToa', '90299 Lemke Turnpike Apt. 635\nSchaeferbury, MT 75865-2502', 'Qui ipsa velit corporis rem dolore.', '2020-08-19 03:36:11', NULL, 'CeeNQ6Uyaw', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(4, 'Mr. Jarrett Lubowitz', 'jennifer.hyatt@example.com', '+18102841748', 'ce', 'vHwGOKUr75', '6914 Gleason Branch\nNorth Ashleighton, AZ 12155', 'Quo ut sit non sit officia voluptates nostrum.', '2020-08-19 03:36:11', NULL, 'WclxPC9UHN', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(5, 'Mr. German Gleichner', 'winston38@example.com', '523-773-9569', 'cc', 'MQvQIhTDeS', '88064 Altenwerth Courts\nJustenbury, TN 96615', 'Quisquam ut error aut dolores.', '2020-08-19 03:36:11', NULL, '9WRvdw0YBf', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(6, 'Dr. Heath Kihn Sr.', 'edmond88@example.com', '1-889-838-0060 x9315', 'cc', 'MFZwY2YcpP', '1548 Ashton Forest Suite 863\nSouth Khalilmouth, MI 89910-3472', 'Pariatur enim inventore mollitia fugiat nesciunt.', '2020-08-19 03:36:11', NULL, 'KrcQFDNidF', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(7, 'Mrs. Melyna Balistreri', 'ward.ressie@example.org', '548-469-0560', 'pa', 'G062A05Uuv', '5235 Josianne Mills Suite 358\nDrewport, VT 84687', 'Et maxime libero suscipit nostrum et sed.', '2020-08-19 03:36:11', NULL, '33xYVvGx85', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(8, 'Olen Simonis', 'kelsie.lakin@example.net', '(338) 602-6296 x3896', 'pa', 'Vj6CiPZFXR', '552 Goodwin Knoll Suite 920\nAlysafurt, UT 65968', 'Aut ipsa velit qui quidem iste odit aperiam.', '2020-08-19 03:36:11', NULL, 'VsI6ya0RIA', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(9, 'Emily Bailey', 'hdurgan@example.org', '1-594-665-0243 x1165', 'pa', 'L7ov4cwL35', '696 Chadd Gateway Apt. 056\nEast Irvingfort, NE 98821', 'Vitae consequatur odio vitae error.', '2020-08-19 03:36:11', NULL, 'UH0DuPRvr5', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(10, 'Miss Kamille Reilly', 'carter05@example.com', '1-540-824-4581 x321', 'cc', 'OFPurjzIGb', '79651 Douglas Island\nDarbyburgh, AR 52474', 'Maiores minima ipsum laboriosam eum voluptatum magnam.', '2020-08-19 03:36:11', NULL, 'KJgx8TAGz9', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(11, 'Catharine Watsica IV', 'heaven.rath@example.com', '1-225-480-4167 x4004', 'pa', 'nc8GPuUQYQ', '6096 Bernard Heights\nAnselbury, AZ 70087-4402', 'Illo et eaque qui totam explicabo nemo.', '2020-08-19 03:36:11', NULL, 'xG3wR0oPc9', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(12, 'Jamey Feest', 'bechtelar.addison@example.com', '879-365-9582', 'ce', 'UsR6U9ODlZ', '9162 Halvorson Stream Suite 176\nCrystalland, OH 96924', 'Et consequatur voluptate reprehenderit perferendis nam distinctio quia.', '2020-08-19 03:36:11', NULL, 'fW01Y1Axe6', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(13, 'Prof. Raegan Raynor V', 'fkonopelski@example.net', '414-344-5235 x781', 'ce', 'bg9Pfgz7kt', '94549 Andreane Trail\nWest Dakotaton, RI 65579-7514', 'Maiores omnis facere qui et velit aspernatur ipsam debitis.', '2020-08-19 03:36:11', NULL, 'eB9LWrB12s', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(14, 'Leland Schoen', 'wpfannerstill@example.com', '+1-214-278-9287', 'ce', 'XsfoVg2R9z', '2263 Johathan Plaza Suite 578\nEast Jean, WY 40195', 'Tempora est sit exercitationem omnis voluptatem fugiat provident.', '2020-08-19 03:36:11', NULL, 'IfFey98SVS', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(15, 'Elouise Kling', 'csteuber@example.org', '1-926-759-8401', 'cc', 'KVWiK4sXf2', '535 Bahringer Lodge Apt. 976\nGregport, ID 39601-1012', 'Ut nam deleniti rerum quam nisi.', '2020-08-19 03:36:11', NULL, 'mAILtj1OCe', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(16, 'Eladio Streich', 'josie49@example.com', '+1.440.318.2726', 'cc', 'qmUFDaBsuM', '52178 Ondricka Neck\nBoyerland, IA 27904', 'At temporibus omnis at aliquam et.', '2020-08-19 03:36:11', NULL, 'HPZqliVBx0', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(17, 'Monique Spencer', 'giovanny.sipes@example.com', '1-309-513-6193 x94686', 'pa', 'CN9dnn20Gh', '656 Markus Manors Suite 983\nHopeberg, SC 33627', 'Dolorum repudiandae repellendus ut consequatur et qui dolorem.', '2020-08-19 03:36:11', NULL, 'sNeKGhv0PB', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(18, 'Clay Okuneva', 'shayne.damore@example.org', '+1 (750) 681-4986', 'cc', 'B3Nr7GimuT', '1753 Collier Shoal\nIvaville, DC 70126', 'Nam ut id explicabo sunt.', '2020-08-19 03:36:11', NULL, 'ksMVNhHqq7', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(19, 'Harvey Denesik', 'gudrun.hauck@example.org', '1-219-735-6705 x2917', 'cc', 'y5eVqoT2Xd', '8103 Lockman Islands Suite 862\nMorissettefurt, MI 04288-8502', 'Non dolor quis unde tenetur rem labore voluptatem.', '2020-08-19 03:36:11', NULL, '5cCMlaQbee', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(20, 'Makayla Adams', 'reichert.florence@example.net', '+1.609.235.2433', 'ce', 'FZAPsRPGu9', '5458 Rex Plains\nO\'Keefestad, TN 06720', 'Quia quo enim illo in.', '2020-08-19 03:36:11', NULL, 'Lba6wpxLUG', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(21, 'Nayeli Stroman', 'kilback.jacynthe@example.org', '627.256.0204 x175', 'cc', 'HaRnfNyI05', '4208 Haylie Cove Apt. 865\nSouth Noblefort, AK 79774-3932', 'Iste facilis quidem aut eaque.', '2020-08-19 03:36:11', NULL, 'rsFg93xBBN', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(22, 'Miss Ova Hermann V', 'bogisich.gus@example.net', '1-216-588-0543', 'pa', 'IgLDY65aUn', '8057 Mya Walks\nWest Abdullah, IA 79019-6394', 'Quod atque minus laudantium.', '2020-08-19 03:36:11', NULL, 'SD5MlQgOii', '2020-08-19 03:36:13', '2020-08-19 03:36:13'),
	(23, 'Brendon Walker', 'mitchell.jordyn@example.org', '1-583-860-2786', 'ce', 'vNsQFOiyCk', '387 Ernesto Flat\nFredericside, VT 56084', 'Modi nihil tempora debitis.', '2020-08-19 03:36:11', NULL, 'PCUiBc4WqN', '2020-08-19 03:36:14', '2020-08-19 03:36:14'),
	(24, 'Luisa Osinski I', 'eswift@example.org', '+19639571522', 'cc', 'eWODqzeqgF', '23530 Michel Gardens\nSyblebury, NM 72428-8913', 'Neque nesciunt rem praesentium vero nostrum omnis.', '2020-08-19 03:36:11', NULL, 'fHX9XwAV9u', '2020-08-19 03:36:14', '2020-08-19 03:36:14'),
	(25, 'Ivory Huel', 'peter.rippin@example.com', '694-428-6020 x14839', 'ce', 'TrkQxVTYAL', '9044 Goodwin Trail\nEast Lenore, MI 99783-0682', 'Dolore illo magnam ducimus culpa tenetur.', '2020-08-19 03:36:11', NULL, 'SWoCwmD4uD', '2020-08-19 03:36:14', '2020-08-19 03:36:14'),
	(26, 'Hoyt Kovacek', 'lacy92@example.org', '992-280-7489', 'ce', 'GZIeo0yXBj', '44804 Toney Glen\nSouth Jonatan, MS 11659-9223', 'Eius possimus quo est excepturi officiis animi.', '2020-08-19 03:36:11', NULL, 'FBQFWlCXIQ', '2020-08-19 03:36:14', '2020-08-19 03:36:14'),
	(27, 'Buster Schoen', 'dkertzmann@example.com', '486-248-1194', 'ce', 'ozgeLGoSVm', '578 Walker Track\nDenesiktown, KY 46474-7285', 'Provident odit optio perspiciatis nisi omnis est sit.', '2020-08-19 03:36:11', NULL, 'VWbDoxDdYK', '2020-08-19 03:36:14', '2020-08-19 03:36:14'),
	(28, 'Ms. Lonie Windler', 'xgoodwin@example.net', '(968) 890-5432', 'ce', 'z2WAioQZh3', '963 Paucek Field\nWest Aftonfurt, HI 58513', 'Maxime itaque laudantium dolorem quis facere.', '2020-08-19 03:36:11', NULL, 'VYgIEtRezN', '2020-08-19 03:36:14', '2020-08-19 03:36:14'),
	(29, 'Dr. Alfonso Barton', 'felicia.watsica@example.com', '1-541-753-0134', 'ce', 'Eo2iBRbZI9', '21266 Lubowitz Mews Apt. 311\nSouth Valerie, CA 02897-5748', 'Voluptas facilis recusandae pariatur enim autem.', '2020-08-19 03:36:11', NULL, 'EQxznUo8Wv', '2020-08-19 03:36:14', '2020-08-19 03:36:14'),
	(30, 'Bernadine Daugherty', 'hermann37@example.net', '+1-806-747-3820', 'ce', 'soMh9enimC', '3946 Stuart Cliffs Suite 617\nNorth Odell, DC 17222', 'Sed rerum ea quis maiores provident.', '2020-08-19 03:36:11', NULL, 'PmkwGrtcIC', '2020-08-19 03:36:14', '2020-08-19 03:36:14'),
	(31, 'Administrador', 'admin@admin.com', '3123036763', 'cc', '1093770319', 'CLL 7 AN#13E77 acacios', 'Un anuncio en linkedin', '2020-08-19 03:36:14', '$2y$10$ikTBflrx69f32xDI1xmGtOMzUyIHj6dLw74tEuMFYeed/hZVKsRZi', 'YGK38Afgf2', '2020-08-19 03:36:14', '2020-08-19 03:36:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
