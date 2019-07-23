-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2018 a las 19:18:38
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sectdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`,`pin`) VALUES
(20, 'pepito', '1243242345'),
(21, 'asdasda', '1243242345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `textcolor` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `meses` int(11) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `title`, `descripcion`, `color`, `textcolor`, `start`, `end`, `meses`, `cliente`, `material`) VALUES
(104, 'evento', 'dsfadfsd', '#80ff00', 'white', '2018-10-02 10:30:00', '2018-10-02 10:30:00', 4, 'sdafsdfsd', 'dsfdasf'),
(105, 'sdsdsad', 'sadasdsad', '#00ffff', 'white', '2018-10-03 10:30:00', '2018-10-03 10:30:00', 3, 'sadasdsa', 'asdasdas'),
(106, 'sadasdasd', 'sadasdsa', '#80ffff', 'white', '2018-10-05 10:30:00', '2018-10-05 10:30:00', 4, 'sdasdasd', 'sdasdasd'),
(107, 'sASas', 'sadasdasd', '#00ffff', 'white', '2018-10-05 10:30:00', '2018-10-05 10:30:00', 1, 'sadasdasd', 'sdasdasd'),
(108, 'ererwer', 'sdasds', '#00ffff', 'white', '2018-10-23 10:30:00', '2018-10-23 10:30:00', 3, 'asdasdas', 'werwer'),
(109, 'dfsd', 'dsfdsfsd', '#004080', 'white', '2018-10-26 17:31:00', '2018-10-26 17:31:00', 2, 'dsfdsfds', 'dsfsd'),
(110, 'qweqwe', 'wqeqwe', '#00ffff', 'white', '2018-10-24 10:30:00', '2018-10-24 10:30:00', 3, 'qweqwew', 'wqeqwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE `herramientas` (
  `id_herramienta` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`id_herramienta`, `nombre`, `cantidad`) VALUES
(7, 'h1', 4),
(8, 'h2', 2),
(9, 'herra', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `evento` varchar(255) NOT NULL,
  `accion` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `fechahoy` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_historial`, `usuario`, `evento`, `accion`, `fecha`, `fechahoy`) VALUES
(57, 'juanito', 'junio', 'modificado', '2018-07-06 02:29:00', '2018-07-24 19:02:22'),
(58, 'juanito', 'reunion', 'modificado', '2018-07-05 10:30:00', '2018-07-24 19:24:58'),
(59, 'juanito', 'todavia es junio', 'agregado', '2018-06-27 12:20:00', '2018-07-24 19:26:28'),
(60, 'juanito', 'todavia es junio', 'modificado', '2018-06-27 12:20:00', '2018-07-24 19:26:35'),
(61, 'juanito', 'todavia es junio', 'modificado', '2018-06-27 12:20:00', '2018-07-24 19:27:11'),
(62, 'juanito', 'todavia es junio', 'modificado', '2018-06-27 12:20:00', '2018-07-24 19:27:20'),
(63, 'bomboro', 'reunion', 'modificado', '2018-07-05 10:30:00', '2018-07-24 20:09:43'),
(64, 'bomboro', 'viernesuky', 'agregado', '2018-06-29 10:30:00', '2018-07-31 16:17:35'),
(65, 'juanito', 'viernesuky', 'modificado', '2018-06-29 10:30:00', '2018-07-31 16:17:46'),
(66, 'juanito', 'EASFDG', 'agregado', '2018-08-09 10:30:00', '2018-08-02 08:10:09'),
(67, 'juanito', 'EASFDG', 'modificado', '2018-08-09 10:30:00', '2018-08-02 08:10:16'),
(68, 'juanito', 'EASFDG', 'modificado', '2018-08-02 10:30:00', '2018-08-03 13:18:14'),
(69, 'juanito', 'EASFDG', 'modificado', '2018-08-02 10:30:00', '2018-08-06 07:27:52'),
(70, 'juanito', 'junio', 'modificado', '2018-07-06 02:29:00', '2018-08-06 07:42:01'),
(71, 'juanito', 'viernesuky', 'modificado', '2018-06-29 10:30:00', '2018-08-06 07:42:09'),
(72, 'juanito', 'renta', 'modificado', '2018-07-05 10:30:00', '2018-08-06 07:42:17'),
(73, 'juanito', 'dia primero', 'modificado', '2018-07-01 00:00:00', '2018-08-06 07:42:27'),
(74, 'juanito', 'sasd', 'modificado', '2018-07-15 00:00:00', '2018-08-06 07:42:34'),
(75, 'juanito', 'AGOSTO', 'modificado', '2018-08-01 00:00:00', '2018-08-06 07:42:50'),
(76, 'juanito', 'AGOSTO', 'modificado', '2018-08-08 00:00:00', '2018-08-06 08:03:58'),
(77, 'juanito', 'EASFDG', 'modificado', '2018-08-09 10:30:00', '2018-08-06 08:04:01'),
(78, 'juanito', 'EASFDG', 'modificado', '2018-08-02 10:30:00', '2018-08-06 08:04:54'),
(79, 'juanito', 'evento', 'agregado', '2018-08-09 00:30:00', '2018-08-06 22:01:25'),
(80, 'juanito', 'evento', 'modificado', '2018-08-17 00:30:00', '2018-08-06 22:01:28'),
(81, 'juanito', 'evento', 'modificado', '2018-08-17 00:30:00', '2018-08-06 22:01:33'),
(82, 'juanito', 'cita', 'modificado', '2018-08-17 01:45:00', '2018-08-06 22:01:50'),
(83, 'juanito', 'cita', 'modificado', '2018-08-10 01:45:00', '2018-08-06 22:01:51'),
(84, 'juanito', 'cita', 'modificado', '2018-08-03 01:45:00', '2018-08-06 22:01:52'),
(85, 'juanito', 'cita', 'eliminado', '2018-08-03 01:45:00', '2018-08-06 22:01:53'),
(86, 'bomboro', 'EASFDG', 'modificado', '2018-08-02 10:30:00', '2018-08-09 10:42:49'),
(87, 'juanito', 'todavia es junio', 'modificado', '2018-07-04 12:20:00', '2018-08-09 11:00:04'),
(88, 'juanito', 'todavia es junio', 'modificado', '2018-06-27 12:20:00', '2018-08-09 11:00:05'),
(89, 'juanito', 'hoymero', 'agregado', '2018-08-09 10:30:00', '2018-08-09 11:39:05'),
(90, 'juanito', 'hoymero', 'agregado', '2018-08-09 10:30:00', '2018-08-09 11:39:05'),
(91, 'juanito', 'hoymero', 'eliminado', '2018-08-09 10:30:00', '2018-08-09 11:41:04'),
(92, 'juanito', 'hoymero', 'eliminado', '2018-08-09 10:30:00', '2018-08-09 11:41:06'),
(93, 'juanito', 'joy', 'agregado', '2018-08-09 10:30:00', '2018-08-09 11:41:16'),
(94, 'juanito', 'cita', 'agregado', '2018-08-14 07:30:00', '2018-08-09 18:01:50'),
(95, 'juanito', 'joy', 'modificado', '2018-08-09 10:30:00', '2018-08-09 18:01:56'),
(96, 'juanito', 'cita', 'modificado', '2018-08-14 07:30:00', '2018-08-09 18:02:04'),
(97, 'juanito', 'cita', 'modificado', '2018-08-14 07:30:00', '2018-08-09 18:02:10'),
(98, 'juanito', 'EASFDG', 'eliminado', '2018-08-02 10:30:00', '2018-08-09 18:55:13'),
(99, 'juanito', 'venta', 'agregado', '2018-08-01 12:00:00', '2018-08-09 18:56:11'),
(100, 'juanito', 'venta', 'agregado', '2018-08-01 12:00:00', '2018-08-09 18:56:19'),
(101, 'juanito', 'venta', 'eliminado', '2018-08-01 12:00:00', '2018-08-09 18:57:57'),
(102, 'juanito', 'venta', 'eliminado', '2018-08-01 12:00:00', '2018-08-09 18:57:59'),
(103, 'juanito', 'venta', 'agregado', '2018-08-01 12:00:00', '2018-08-09 18:59:07'),
(104, 'juanito', 'venta', 'eliminado', '2018-08-01 12:00:00', '2018-08-09 19:00:24'),
(105, 'juanito', 'venta', 'agregado', '2018-08-01 10:30:00', '2018-08-09 19:01:16'),
(106, 'juanito', 'venta', 'eliminado', '2018-08-01 10:30:00', '2018-08-09 19:01:58'),
(107, 'juanito', 'venta', 'agregado', '2018-08-01 10:30:00', '2018-08-09 19:02:11'),
(108, 'juanito', 'venta', 'eliminado', '2018-08-01 10:30:00', '2018-08-09 19:02:55'),
(109, 'juanito', 'venta', 'agregado', '2018-08-01 10:30:00', '2018-08-09 19:03:45'),
(110, 'juanito', 'venta', 'modificado', '2018-08-01 10:30:00', '2018-08-09 19:04:16'),
(111, 'juanito', 'otra venta', 'agregado', '2018-08-02 10:30:00', '2018-08-09 19:04:33'),
(112, 'juanito', 'venta', 'agregado', '2018-08-03 10:30:00', '2018-08-09 19:05:02'),
(113, 'juanito', 'otra venta', 'eliminado', '2018-08-02 10:30:00', '2018-08-09 19:05:23'),
(114, 'juanito', 'venta', 'eliminado', '2018-08-03 10:30:00', '2018-08-09 19:05:25'),
(115, 'juanito', 'venta', 'eliminado', '2018-08-01 10:30:00', '2018-08-09 19:05:28'),
(116, 'juanito', 'venta', 'eliminado', '2018-07-09 10:30:00', '2018-08-09 19:15:11'),
(117, 'juanito', 'renta', 'agregado', '2018-08-01 10:30:00', '2018-08-09 19:17:05'),
(118, 'juanito', 'renta', 'agregado', '2018-08-01 10:30:00', '2018-08-09 19:18:14'),
(119, 'juanito', 'renta', 'modificado', '2018-08-01 10:30:00', '2018-08-09 19:18:20'),
(120, 'juanito', 'renta', 'agregado', '2018-08-09 10:30:00', '2018-08-09 19:18:40'),
(121, 'juanito', 'renta', 'agregado', '2018-08-09 10:30:00', '2018-08-09 19:19:26'),
(122, 'juanito', 'renta', 'agregado', '2018-08-10 10:30:00', '2018-08-09 19:19:35'),
(123, 'juanito', 'renta', 'modificado', '2018-08-09 10:30:00', '2018-08-09 19:19:41'),
(124, 'juanito', 'renta', 'modificado', '2018-08-09 10:30:00', '2018-08-09 19:19:46'),
(125, 'juanito', 'renta', 'modificado', '2018-08-10 10:30:00', '2018-08-09 19:19:55'),
(126, 'juanito', 'joy', 'modificado', '2018-08-09 10:30:00', '2018-08-09 19:20:05'),
(127, 'juanito', 'ultimo pago', 'agregado', '2018-08-18 10:30:00', '2018-08-09 19:24:08'),
(128, 'juanito', 'ultimo pago', 'modificado', '2018-09-02 10:30:00', '2018-08-09 19:24:12'),
(129, 'juanito', 'ultimo pago', 'modificado', '2018-09-13 10:30:00', '2018-08-09 19:24:16'),
(130, 'juanito', 'renta', 'modificado', '2018-07-05 10:30:00', '2018-08-09 19:28:47'),
(131, 'juanito', 'junio', 'modificado', '2018-07-06 02:29:00', '2018-08-09 19:29:40'),
(132, 'juanito', 'reunion', 'modificado', '2018-07-05 10:30:00', '2018-08-09 19:29:59'),
(133, 'juanito', 'reunion', 'modificado', '2018-07-05 10:30:00', '2018-08-09 19:31:28'),
(134, 'juanito', 'renta', 'modificado', '2018-08-22 10:30:00', '2018-08-09 19:31:58'),
(135, 'juanito', 'renta', 'modificado', '2018-08-22 10:30:00', '2018-08-09 19:31:59'),
(136, 'juanito', 'cita', 'agregado', '2018-07-30 10:30:00', '2018-08-09 19:32:59'),
(137, 'juanito', 'renta', 'agregado', '2018-07-31 10:30:00', '2018-08-09 19:34:34'),
(138, 'juanito', 'joy', 'modificado', '2018-08-16 10:30:00', '2018-08-09 19:34:39'),
(139, 'juanito', 'renta', 'modificado', '2018-08-16 10:30:00', '2018-08-09 19:34:40'),
(140, 'juanito', 'renta', 'modificado', '2018-08-16 10:30:00', '2018-08-09 19:34:41'),
(141, 'juanito', 'AGOSTO', 'modificado', '2018-08-15 00:00:00', '2018-08-09 19:34:42'),
(142, 'juanito', 'renta', 'modificado', '2018-08-17 10:30:00', '2018-08-09 19:34:45'),
(143, 'juanito', 'venta', 'agregado', '2018-08-01 00:00:00', '2018-08-09 19:35:55'),
(144, 'juanito', 'Reunion', 'agregado', '2018-08-02 09:40:00', '2018-08-09 19:37:20'),
(145, 'juanito', 'pago', 'agregado', '2018-08-03 09:40:00', '2018-08-09 19:37:48'),
(146, 'juanito', 'ultimo pago', 'modificado', '2018-08-30 10:30:00', '2018-08-09 19:38:05'),
(147, 'juanito', 'ultimo pago', 'modificado', '2018-08-04 10:30:00', '2018-08-09 19:38:08'),
(148, 'juanito', 'ultimo pago', 'modificado', '2018-08-04 10:30:00', '2018-08-09 19:38:22'),
(149, 'juanito', 'ultimo pago', 'modificado', '2018-08-03 10:30:00', '2018-08-09 19:38:26'),
(150, 'juanito', 'cita', 'modificado', '2018-08-04 07:30:00', '2018-08-09 19:39:00'),
(151, 'juanito', 'Reunion URGENTE!', 'modificado', '2018-08-04 07:30:00', '2018-08-09 19:39:19'),
(152, 'juanito', 'AGOSTO', 'modificado', '2018-08-23 00:00:00', '2018-08-09 19:39:27'),
(153, 'juanito', 'ultimo pago', 'modificado', '2018-08-03 10:30:00', '2018-08-09 19:39:49'),
(154, 'juanito', 'Reunion URGENTE!', 'modificado', '2018-08-04 07:30:00', '2018-08-09 19:39:58'),
(155, 'juanito', 'Reunion URGENTE!', 'modificado', '2018-08-05 07:30:00', '2018-08-09 19:44:17'),
(156, 'juanito', 'ultimo pago', 'modificado', '2018-08-04 10:30:00', '2018-08-09 19:44:18'),
(157, 'juanito', 'joy', 'modificado', '2018-08-17 10:30:00', '2018-08-09 19:44:22'),
(158, 'juanito', 'joy', 'modificado', '2018-08-24 10:30:00', '2018-08-09 19:44:27'),
(159, 'juanito', 'joy', 'modificado', '2018-08-17 10:30:00', '2018-08-09 19:44:30'),
(160, 'juanito', 'joy', 'modificado', '2018-08-24 10:30:00', '2018-08-09 19:44:33'),
(161, 'juanito', 'joy', 'modificado', '2018-08-17 10:30:00', '2018-08-09 19:44:34'),
(162, 'juanito', 'renta', 'modificado', '2018-08-23 10:30:00', '2018-08-09 19:44:41'),
(163, 'juanito', 'joy', 'modificado', '2018-08-23 10:30:00', '2018-08-09 19:44:42'),
(164, 'juanito', 'renta', 'modificado', '2018-08-17 10:30:00', '2018-08-09 19:44:44'),
(165, 'juanito', 'joy', 'modificado', '2018-08-17 10:30:00', '2018-08-09 19:44:45'),
(166, 'juanito', 'AGOSTO', 'modificado', '2018-08-17 00:00:00', '2018-08-09 19:44:46'),
(167, 'juanito', 'AGOSTO', 'modificado', '2018-08-23 00:00:00', '2018-08-09 19:44:48'),
(168, 'juanito', 'aver', 'agregado', '2018-08-09 10:30:00', '2018-08-09 21:29:38'),
(169, 'juanito', 'aver', 'modificado', '2018-08-09 10:30:00', '2018-08-09 21:29:53'),
(170, 'juanito', 'aver', 'modificado', '2018-08-09 10:30:00', '2018-08-09 21:30:20'),
(171, 'juanito', 'renta', 'agregado', '2018-08-09 10:30:00', '2018-08-09 21:45:33'),
(172, 'juanito', 'renta', 'agregado', '2018-08-09 10:30:00', '2018-08-09 21:45:37'),
(173, 'juanito', 'renta', 'eliminado', '2018-08-09 10:30:00', '2018-08-09 21:56:24'),
(174, 'juanito', 'renta', 'modificado', '2018-07-05 10:30:00', '2018-08-09 22:32:38'),
(175, 'juanito', 'joy', 'modificado', '2018-08-17 10:30:00', '2018-08-09 22:35:07'),
(176, 'juanito', 'renta', 'agregado', '2018-09-07 10:30:00', '2018-08-09 22:41:47'),
(177, 'juanito', 'renta', 'modificado', '2018-09-07 10:30:00', '2018-08-09 22:41:53'),
(178, 'juanito', 'venta', 'agregado', '2018-09-14 10:30:00', '2018-08-09 22:42:19'),
(179, 'juanito', 'venta', 'modificado', '2018-09-07 10:30:00', '2018-08-09 22:42:22'),
(180, 'juanito', 'aver', 'modificado', '2018-08-09 10:30:00', '2018-08-09 22:43:47'),
(181, 'juanito', 'AGOSTO', 'modificado', '2018-08-23 00:00:00', '2018-08-09 22:43:55'),
(182, 'juanito', 'joy', 'eliminado', '2018-08-17 10:30:00', '2018-08-09 22:43:58'),
(183, 'bomboro', 'aver', 'modificado', '2018-08-10 10:30:00', '2018-08-10 09:28:25'),
(184, 'bomboro', 'renta', 'modificado', '2018-08-10 10:30:00', '2018-08-10 09:28:27'),
(185, 'bomboro', 'renta', 'agregado', '2018-08-08 10:30:00', '2018-08-10 09:32:20'),
(186, 'bomboro', 'venta', 'agregado', '2018-08-08 10:30:00', '2018-08-10 09:33:06'),
(187, 'bomboro', 'cualquiera', 'agregado', '2018-08-09 10:30:00', '2018-08-10 09:34:54'),
(188, 'juanito', 'renta', 'modificado', '2018-08-14 10:30:00', '2018-08-10 10:30:33'),
(189, 'juanito', 'venta', 'modificado', '2018-08-14 10:30:00', '2018-08-10 10:30:34'),
(190, 'juanito', 'cualquiera', 'modificado', '2018-08-16 10:30:00', '2018-08-10 10:30:36'),
(191, 'juanito', 'aver', 'modificado', '2018-08-17 10:30:00', '2018-08-10 10:30:37'),
(192, 'juanito', 'renta', 'modificado', '2018-08-17 10:30:00', '2018-08-10 10:30:39'),
(193, 'juanito', 'AGOSTO', 'modificado', '2018-08-15 00:00:00', '2018-08-10 10:30:42'),
(194, 'juanito', 'AGOSTO', 'modificado', '2018-08-22 00:00:00', '2018-08-10 10:30:43'),
(195, 'juanito', 'renta', 'modificado', '2018-08-30 10:30:00', '2018-08-10 10:30:48'),
(196, 'juanito', 'venta', 'modificado', '2018-08-31 10:30:00', '2018-08-10 10:30:48'),
(197, 'juanito', 'renta', 'modificado', '2018-08-31 10:30:00', '2018-08-10 10:30:50'),
(198, 'juanito', 'renta ', 'agregado', '2018-08-08 10:30:00', '2018-08-10 11:57:44'),
(199, 'juanito', 'renta ', 'eliminado', '2018-08-08 10:30:00', '2018-08-10 11:58:02'),
(200, 'juanito', 'renta', 'agregado', '2018-08-08 10:30:00', '2018-08-10 11:59:59'),
(201, 'juanito', 'renta', 'agregado', '2018-08-08 10:30:00', '2018-08-10 11:59:59'),
(202, 'juanito', 'venta', 'agregado', '2018-08-09 10:30:00', '2018-08-10 12:01:07'),
(203, 'juanito', 'cita dentista', 'modificado', '2018-07-10 16:30:00', '2018-08-12 17:27:26'),
(204, 'juanito', 'minimamente', 'modificado', '2018-07-17 12:30:00', '2018-08-12 17:27:30'),
(205, 'juanito', 'minimamente', 'modificado', '2018-07-17 12:30:00', '2018-08-12 17:27:30'),
(206, 'juanito', 'minimamente', 'modificado', '2018-07-10 12:30:00', '2018-08-12 17:27:31'),
(207, 'juanito', 'Reunion', 'modificado', '2018-07-10 09:40:00', '2018-08-12 17:27:46'),
(208, 'juanito', 'Reunion', 'modificado', '2018-08-02 09:40:00', '2018-08-12 17:27:54'),
(209, 'juanito', 'cita', 'modificado', '2018-09-03 10:30:00', '2018-09-22 14:48:22'),
(210, 'juanito', 'renta', 'modificado', '2018-09-04 10:30:00', '2018-09-22 14:48:24'),
(211, 'juanito', 'venta', 'modificado', '2018-09-05 00:00:00', '2018-09-22 14:48:26'),
(212, 'juanito', 'Reunion', 'modificado', '2018-09-06 09:40:00', '2018-09-22 14:48:27'),
(213, 'juanito', 'pago', 'modificado', '2018-09-07 09:40:00', '2018-09-22 14:48:29'),
(214, 'juanito', 'ultimo pago', 'modificado', '2018-09-08 10:30:00', '2018-09-22 14:48:32'),
(215, 'juanito', 'Reunion URGENTE!', 'modificado', '2018-09-09 07:30:00', '2018-09-22 14:48:35'),
(216, 'juanito', 'renta', 'modificado', '2018-09-01 10:30:00', '2018-09-22 14:48:44'),
(217, 'juanito', 'venta', 'modificado', '2018-09-01 10:30:00', '2018-09-22 14:48:45'),
(218, 'juanito', 'aver', 'modificado', '2018-09-02 10:30:00', '2018-09-22 14:48:47'),
(219, 'juanito', 'renta', 'modificado', '2018-09-02 10:30:00', '2018-09-22 14:48:49'),
(220, 'juanito', 'renta', 'modificado', '2018-09-02 10:30:00', '2018-09-22 14:48:50'),
(221, 'juanito', 'cualquiera', 'modificado', '2018-09-01 10:30:00', '2018-09-22 14:48:52'),
(222, 'juanito', 'renta', 'modificado', '2018-09-01 10:30:00', '2018-09-22 14:48:54'),
(223, 'juanito', 'renta', 'modificado', '2018-09-02 10:30:00', '2018-09-22 14:48:56'),
(224, 'juanito', 'venta', 'modificado', '2018-08-31 10:30:00', '2018-09-22 14:48:59'),
(225, 'juanito', 'renta', 'modificado', '2018-08-31 10:30:00', '2018-09-22 14:49:00'),
(226, 'juanito', 'renta', 'modificado', '2018-08-29 10:30:00', '2018-09-22 14:49:07'),
(227, 'juanito', 'renta', 'modificado', '2018-08-29 10:30:00', '2018-09-22 14:49:08'),
(228, 'juanito', 'AGOSTO', 'modificado', '2018-08-29 00:00:00', '2018-09-22 14:49:09'),
(229, 'juanito', 'renta', 'modificado', '2018-08-28 10:30:00', '2018-09-22 14:49:10'),
(230, 'juanito', 'venta', 'modificado', '2018-08-28 10:30:00', '2018-09-22 14:49:12'),
(231, 'juanito', 'renta', 'modificado', '2018-08-30 10:30:00', '2018-09-22 14:49:14'),
(232, 'bomboro', 'adsasd', 'agregado', '2018-10-04 10:30:00', '2018-10-08 09:06:11'),
(233, 'juanito', 'asdv', 'agregado', '2018-10-08 10:30:00', '2018-10-08 09:13:40'),
(234, 'bomboro', 'pago', 'modificado', '2018-10-05 09:40:00', '2018-10-10 18:27:35'),
(235, 'bomboro', 'Reunion', 'modificado', '2018-10-04 09:40:00', '2018-10-10 18:27:37'),
(236, 'bomboro', 'venta', 'modificado', '2018-10-03 00:00:00', '2018-10-10 18:27:38'),
(237, 'bomboro', 'renta', 'modificado', '2018-10-03 10:30:00', '2018-10-10 18:27:40'),
(238, 'bomboro', 'cita', 'modificado', '2018-10-02 10:30:00', '2018-10-10 18:27:43'),
(239, 'bomboro', 'ultimo pago', 'modificado', '2018-10-06 10:30:00', '2018-10-10 18:27:44'),
(240, 'bomboro', 'Reunion URGENTE!', 'modificado', '2018-10-01 07:30:00', '2018-10-10 18:27:46'),
(241, 'bomboro', 'adsasd', 'modificado', '2018-10-10 10:30:00', '2018-10-10 18:27:51'),
(242, 'bomboro', 'venta', 'modificado', '2018-09-01 10:30:00', '2018-10-15 13:19:07'),
(243, 'bomboro', 'cualquiera', 'modificado', '2018-09-07 10:30:00', '2018-10-15 13:19:16'),
(244, 'bomboro', 'venta', 'modificado', '2018-09-14 10:30:00', '2018-10-15 13:19:17'),
(245, 'bomboro', 'venta', 'modificado', '2018-09-07 10:30:00', '2018-10-15 13:19:18'),
(246, 'bomboro', 'cita', 'eliminado', '2018-10-02 10:30:00', '2018-10-17 21:00:07'),
(247, 'bomboro', 'Reunion URGENTE!', 'eliminado', '2018-10-01 07:30:00', '2018-10-17 21:01:08'),
(248, 'bomboro', 'asdv', 'eliminado', '2018-10-08 10:30:00', '2018-10-17 21:01:11'),
(249, 'bomboro', 'adsasd', 'eliminado', '2018-10-10 10:30:00', '2018-10-17 21:01:13'),
(250, 'bomboro', 'venta', 'eliminado', '2018-10-03 00:00:00', '2018-10-17 21:01:14'),
(251, 'bomboro', 'renta', 'eliminado', '2018-10-03 10:30:00', '2018-10-17 21:01:16'),
(252, 'bomboro', 'Reunion', 'eliminado', '2018-10-04 09:40:00', '2018-10-17 21:01:21'),
(253, 'bomboro', 'pago', 'eliminado', '2018-10-05 09:40:00', '2018-10-17 21:01:24'),
(254, 'bomboro', 'ultimo pago', 'eliminado', '2018-10-06 10:30:00', '2018-10-17 21:01:26'),
(255, 'german', 'sdasdasd', 'agregado', '2018-10-04 10:30:00', '2018-10-22 14:12:30'),
(256, 'german', 'sdasdasd', 'eliminado', '2018-10-04 10:30:00', '2018-10-22 14:12:33'),
(257, 'german', 'evento', 'agregado', '2018-10-02 10:30:00', '2018-10-22 14:14:22'),
(258, 'german', 'sdsdsad', 'agregado', '2018-10-03 10:30:00', '2018-10-22 14:21:51'),
(259, 'german', 'sadasdasd', 'agregado', '2018-10-05 10:30:00', '2018-10-22 14:22:16'),
(260, 'german', 'sASas', 'agregado', '2018-10-05 10:30:00', '2018-10-22 14:22:41'),
(261, 'german', 'ererwer', 'agregado', '2018-10-23 10:30:00', '2018-10-22 14:26:38'),
(262, 'german', 'dfsd', 'agregado', '2018-10-26 17:31:00', '2018-10-22 14:27:02'),
(263, 'german', 'qweqwe', 'agregado', '2018-10-24 10:30:00', '2018-10-22 14:32:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `id_material` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,  
  `categoria` varchar(255) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`id_material`, `nombre`, `cantidad`, `precio`, `categoria`) VALUES
(12, 'camara phantom', 5, 5, 'cerveza'),
(13, 'camara bz320', 6, 6, 'vinos'),
(14, 'asd', 0, 0, 'cerveza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `contrasenia`) VALUES
(3, 'german', 'german');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  ADD PRIMARY KEY (`id_herramienta`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`id_material`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  MODIFY `id_herramienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
