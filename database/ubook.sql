-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2015 a las 12:44:50
-- Versión del servidor: 5.5.44
-- Versión de PHP: 5.6.12-1+deb.sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ubook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `autor` int(10) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `autor` (`autor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `titulo`, `autor`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'My first book', 1, 'hola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'My second book', 1, 'hola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'another book', 1, 'hola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'really another', 1, 'hola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Comunes', 12, 'Carpeta de comunes', '2015-11-20 03:00:00', '2015-11-20 03:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book_item`
--

CREATE TABLE IF NOT EXISTS `book_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `book_item`
--

INSERT INTO `book_item` (`id`, `book_id`, `item_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 5, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `ruta` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`id`, `nombre`, `ruta`) VALUES
(1, 'Justice', 'One day shriooot... one day');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
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
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resumen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenido` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `autor` int(11) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `autor` (`autor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `noticias`
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
-- Estructura de tabla para la tabla `password_resets`
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
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`) VALUES
(1, 'usuario'),
(2, 'autor'),
(3, 'administrador'),
(4, 'super administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no-avatar.png',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `rol_id` (`rol_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `rol_id`, `name`, `nombre`, `apellido`, `foto`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 4, 'Alancitox', 'Eliezer', 'Arza', 'Teemo-Time.jpg', 'arzapersonal@gmail.com', '$2y$10$QIi9221CRlykiAbImbi4rOGPDZf0.MP3fOZs/G/e6G148645TPIxS', 'lamqtkYigqLIfNdETTAL8jPEO8DJixDXj5o37zU6vHjRV8U0z8LfCkLzuyyY', '2015-10-19 03:00:00', '2015-11-20 18:43:34'),
(2, 1, 'martincho', '', '', 'no-avatar', 'martinpentucci@gmail.com', '$2y$10$.vFsj7hWAWKCKYi.YooQkudK7d5pYM5dvvjzmM3Z1u.8noXoyxRsK', 'yQxgP12Tc7NB6Kjv4PobB2Wz5NEOmlS0y0LePqt4dGstXZSEQMUZsfmpLXle', '2015-11-06 22:31:38', '2015-11-06 22:33:10'),
(3, 1, 'valdesoft', '', '', 'no-avatar', 'fervaldex01@gmail.com', '$2y$10$SGmMUUOowH6njM.c77jJeO1Jjjraw8cuVilj3Qva7Dp9ZFCEuy5OG', 'FuKSy1rFPJc58NHfyDNS1Xmv2pnE0LSzkublACUgHjpxZSVCLU8jpbSTMofS', '2015-11-06 23:08:45', '2015-11-06 23:09:30'),
(6, 1, 'porras', '', '', 'no-avatar', 'algo@gmail.com', '$2y$10$RxED7hIkGtARYkZslZx92.swytFwPwEGbydDRPQY877yThDWzUBp.', NULL, '2015-11-07 00:03:56', '2015-11-07 00:03:56'),
(7, 1, 'Mario', '', '', 'no-avatar', 'marioseba@gmail.com', '$2y$10$T.kf5joXzZhBHxGoItZB1.TfTpH16TqYALZuf.NnEWxoukHjC1LU.', 'TO85cYK06RcMIPEDNKRqVU7aEGxWQTaEu1mtlspGjoNXAM2Gh739mgp4cNON', '2015-11-09 14:54:48', '2015-11-09 15:42:25'),
(8, 1, 'Grimrock', '', '', 'no-avatar', 'piscomarce@gmail.com', '$2y$10$4Cb2G0lGgQe4PYGWM6YrKeZjTIyJRJUYujayzV9Pf6ojkHX.PUKwy', 'aqSvytED7mqQZsrkU1WXD4iA4CywWZ6K4TYgInBThh8D8vGZwwVQm9utCnFc', '2015-11-09 15:48:18', '2015-11-09 15:50:02'),
(9, 1, 'Fafa', '', '', 'no-avatar', 'difafa@gmail.com', '$2y$10$rVWETb8TQv8m/KBqWb3A4uTv91so3gxF59WedkCOkk2HN0w52afyu', '4qDem9lYdHb6n2AIfZM4rRGe8ZxDMOUkUchwFitcTl7TpNpxSoe7pwdr7Tai', '2015-11-09 15:51:02', '2015-11-09 15:54:13'),
(10, 1, 'condor', '', '', 'no-avatar', 'sebacondor@gmail.com', '$2y$10$CgsCT7nAuUPhH1IdQe.eEOwufAqFzhnP6CLXgCLClgre5l8P15a/.', '4KBVfMNC51AIwQ1XVdwJ82zEZaOesU7JNujB1yH48OoEjxmjXHBrQEgZg7L5', '2015-11-09 15:54:47', '2015-11-09 16:29:22'),
(11, 1, 'destro', 'martin', 'alpha', 'no-avatar', 'destro@gmail.com', '$2y$10$EDtny1LIX10YU0WE9AcGHekBKyyGSb/eA/Ms0eV99SmKGrFB/49r6', 'Pbq8DqUGkyAo4Mqa6198i1Yyg316A2FpSWewQIcHSmcgstdUvkz4JLOqy5Dk', '2015-11-09 15:55:52', '2015-11-09 17:22:39'),
(12, 1, 'Delver', 'Agustin', 'Riveros', 'no-avatar', 'agusriver@gmail.com', '$2y$10$SdzEWfMBsJZvmq4L4/M/xuA6QVYmYBeELyGV1cbWIWmfkP.y0wp7.', NULL, '2015-11-13 23:36:12', '2015-11-13 23:36:12'),
(13, 1, 'Teemo', 'Alfredo', 'Costa', 'no-avatar.png', 'temoalfredo@gmail.com', '$2y$10$gR8cuKBF./SQvW26Vr2VmeM20WinDNt/w3mKDhSKO6N5.bXaq.ZQS', '4MIbYCttR78XMDe8SOocNW7TXocj2jvLaOJJ3KrUk5COWgkjrLcKDRhGyXHU', '2015-11-20 18:42:05', '2015-11-20 18:44:27');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`autor`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `book_item`
--
ALTER TABLE `book_item`
  ADD CONSTRAINT `book_item_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_item_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`autor`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
