-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2015 at 06:15 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ubook`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isbn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `author`, `created_at`, `updated_at`) VALUES
(1, '123456', 'My first book', 'alan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '456123', 'Raras', 'alan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '1222456', 'infrecuentes', 'alan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '1234456', 'comunes', 'alan', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_09_29_124808_book', 2),
('2015_09_29_134053_book', 3),
('2015_10_13_133659_valde', 4),
('2015_10_16_141444_noticias', 5),
('2015_10_19_144638_create_noticias_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resumen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenido` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `autor` int(11) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `resumen`, `contenido`, `autor`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Gp Buenos Aires', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you ', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you should be able to run away with the game.', 1, '', '2015-10-19 03:00:00', '2015-10-19 03:00:00'),
(2, 'Tenemos nuevo campeon', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you ', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you should be able to run away with the game.', 2, '', '2015-10-20 03:00:00', '0000-00-00 00:00:00'),
(3, 'Top 8 mejores jugadas', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you ', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you should be able to run away with the game.', 3, '', '2015-10-20 03:00:00', '0000-00-00 00:00:00'),
(4, 'Se cancela Gp Buenos Aires', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you ', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you should be able to run away with the game.', 1, '', '2015-10-20 03:00:00', '0000-00-00 00:00:00'),
(5, 'Nuevos titulos para la entrega', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you ', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you should be able to run away with the game.', 2, '', '2015-10-20 03:00:00', '0000-00-00 00:00:00'),
(6, 'Nuevo spoiler revelado', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you ', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you should be able to run away with the game.', 1, '', '2015-10-20 03:00:00', '0000-00-00 00:00:00'),
(7, 'Revelacion de la temporada', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you ', 'If G/W Megamorph is a good deck, then Dragons are a fantastic answer. Planeswalkers are pretty good there too, especially those with high loyalty. They have no way to remove them outside of creature combat, so if you have enough removal or blockers you should be able to run away with the game.', 3, '', '2015-10-20 03:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `nombre`) VALUES
(1, 'usuario'),
(2, 'autor'),
(3, 'administrador'),
(4, 'super administrador');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rol_id` int(20) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `rol_id`, `name`, `nombre`, `apellido`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 4, 'Alancitox', 'Eliezer', 'Arza', 'arzapersonal@gmail.com', '$2y$10$QIi9221CRlykiAbImbi4rOGPDZf0.MP3fOZs/G/e6G148645TPIxS', 'B2Y3LkTElg2hAVUSl4XsrU6TZVernMSsHAeTYO7hreuHnQJLfsD1aNRio3X7', '2015-10-19 03:00:00', '2015-11-06 22:25:53'),
(2, 1, 'martincho', '', '', 'martinpentucci@gmail.com', '$2y$10$.vFsj7hWAWKCKYi.YooQkudK7d5pYM5dvvjzmM3Z1u.8noXoyxRsK', 'yQxgP12Tc7NB6Kjv4PobB2Wz5NEOmlS0y0LePqt4dGstXZSEQMUZsfmpLXle', '2015-11-06 22:31:38', '2015-11-06 22:33:10'),
(3, 1, 'valdesoft', '', '', 'fervaldex01@gmail.com', '$2y$10$SGmMUUOowH6njM.c77jJeO1Jjjraw8cuVilj3Qva7Dp9ZFCEuy5OG', 'FuKSy1rFPJc58NHfyDNS1Xmv2pnE0LSzkublACUgHjpxZSVCLU8jpbSTMofS', '2015-11-06 23:08:45', '2015-11-06 23:09:30'),
(6, 1, 'porras', '', '', 'algo@gmail.com', '$2y$10$RxED7hIkGtARYkZslZx92.swytFwPwEGbydDRPQY877yThDWzUBp.', NULL, '2015-11-07 00:03:56', '2015-11-07 00:03:56');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
