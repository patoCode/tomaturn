-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2018 a las 04:56:41
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tk_ticket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_atencion_actual`
--

CREATE TABLE `tk_atencion_actual` (
  `ID_ATENCION` int(11) NOT NULL,
  `CODIGO_TICKET` varchar(150) COLLATE ucs2_spanish2_ci NOT NULL,
  `ESTACION` varchar(150) COLLATE ucs2_spanish2_ci NOT NULL,
  `FECHA_REG` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_bitacora_atencion`
--

CREATE TABLE `tk_bitacora_atencion` (
  `ID_BITACORA_ATENCION` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_TICKET` int(11) NOT NULL,
  `ID_ESTACION` int(11) NOT NULL,
  `FECHA_INICIO_ATENCION` date DEFAULT NULL,
  `HORA_INICIO_ATENCION` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_FIN_ATENCION` date DEFAULT NULL,
  `HORA_FIN_ATENCION` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `ACCION` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_bitacora_atencion`
--

INSERT INTO `tk_bitacora_atencion` (`ID_BITACORA_ATENCION`, `ID_USUARIO`, `ID_TICKET`, `ID_ESTACION`, `FECHA_INICIO_ATENCION`, `HORA_INICIO_ATENCION`, `FECHA_FIN_ATENCION`, `HORA_FIN_ATENCION`, `ACCION`) VALUES
(1, 1, 7, 1, '2018-09-14', '22:00:32', NULL, NULL, '1'),
(2, 2, 4, 2, '2018-09-14', '22:00:42', NULL, NULL, '1'),
(3, 1, 7, 1, '2018-09-14', '22:01:02', NULL, NULL, '2'),
(4, 1, 7, 1, '2018-09-14', '22:03:31', NULL, NULL, '3'),
(5, 2, 4, 1, '2018-09-14', '22:03:42', NULL, NULL, '2'),
(6, 1, 8, 1, '2018-09-14', '22:03:45', NULL, NULL, '1'),
(7, 2, 4, 1, '2018-09-14', '22:03:51', NULL, NULL, '3'),
(8, 2, 5, 2, '2018-09-14', '22:03:55', NULL, NULL, '1'),
(9, 1, 8, 1, '2018-09-14', '22:05:12', NULL, NULL, '2'),
(10, 3, 6, 3, '2018-09-14', '22:07:41', NULL, NULL, '1'),
(11, 2, 5, 1, '2018-09-14', '22:08:16', NULL, NULL, '2'),
(12, 2, 5, 1, '2018-09-14', '22:08:25', NULL, NULL, '3'),
(13, 3, 6, 1, '2018-09-14', '22:08:34', NULL, NULL, '2'),
(14, 2, 1, 2, '2018-09-14', '22:08:40', NULL, NULL, '1'),
(15, 3, 6, 1, '2018-09-14', '22:08:48', NULL, NULL, '3'),
(16, 3, 2, 3, '2018-09-14', '22:08:51', NULL, NULL, '1'),
(17, 3, 2, 1, '2018-09-14', '22:09:00', NULL, NULL, '1'),
(18, 3, 2, 1, '2018-09-14', '22:09:01', NULL, NULL, '1'),
(19, 3, 2, 1, '2018-09-14', '22:09:02', NULL, NULL, '5'),
(20, 3, 3, 3, '2018-09-14', '22:09:04', NULL, NULL, '1'),
(21, 3, 3, 1, '2018-09-14', '22:09:14', NULL, NULL, '2'),
(22, 3, 3, 1, '2018-09-14', '22:09:17', NULL, NULL, '3'),
(23, 1, 8, 1, '2018-09-14', '22:09:22', NULL, NULL, '3'),
(24, 2, 1, 1, '2018-09-14', '22:09:30', NULL, NULL, '1'),
(25, 2, 1, 1, '2018-09-14', '22:09:30', NULL, NULL, '1'),
(26, 2, 1, 1, '2018-09-14', '22:09:31', NULL, NULL, '5'),
(27, 1, 10, 1, '2018-09-17', '22:16:13', NULL, NULL, '1'),
(28, 2, 17, 2, '2018-09-17', '22:19:42', NULL, NULL, '1'),
(29, 1, 10, 1, '2018-09-17', '22:20:09', NULL, NULL, '2'),
(30, 2, 17, 1, '2018-09-17', '22:20:22', NULL, NULL, '2'),
(31, 2, 17, 1, '2018-09-17', '22:20:27', NULL, NULL, '3'),
(32, 1, 10, 1, '2018-09-17', '22:20:37', NULL, NULL, '3'),
(33, 1, 24, 1, '2018-09-23', '18:33:15', NULL, NULL, '1'),
(34, 1, 24, 1, '2018-09-23', '18:33:20', NULL, NULL, '1'),
(35, 1, 24, 1, '2018-09-23', '18:33:21', NULL, NULL, '1'),
(36, 1, 24, 1, '2018-09-23', '18:33:22', NULL, NULL, '5'),
(37, 1, 25, 1, '2018-09-23', '18:36:50', NULL, NULL, '1'),
(38, 1, 25, 1, '2018-09-23', '18:36:54', NULL, NULL, '1'),
(39, 1, 25, 1, '2018-09-23', '18:36:56', NULL, NULL, '1'),
(40, 1, 25, 1, '2018-09-23', '18:36:57', NULL, NULL, '5'),
(41, 1, 25, 1, '2018-09-23', '18:36:59', NULL, NULL, '5'),
(42, 1, 26, 1, '2018-09-23', '18:39:29', NULL, NULL, '1'),
(43, 1, 26, 1, '2018-09-23', '18:39:35', NULL, NULL, '1'),
(44, 1, 26, 1, '2018-09-23', '18:39:36', NULL, NULL, '1'),
(45, 1, 26, 1, '2018-09-23', '18:39:37', NULL, NULL, '5'),
(46, 1, 27, 1, '2018-09-23', '18:39:53', NULL, NULL, '1'),
(47, 1, 27, 1, '2018-09-23', '18:40:03', NULL, NULL, '1'),
(48, 1, 27, 1, '2018-09-23', '18:40:04', NULL, NULL, '1'),
(49, 1, 27, 1, '2018-09-23', '18:40:06', NULL, NULL, '5'),
(50, 1, 28, 1, '2018-09-23', '18:40:21', NULL, NULL, '1'),
(51, 1, 28, 1, '2018-09-23', '18:40:26', NULL, NULL, '1'),
(52, 1, 28, 1, '2018-09-23', '18:40:28', NULL, NULL, '1'),
(53, 1, 28, 1, '2018-09-23', '18:40:29', NULL, NULL, '5'),
(54, 1, 29, 1, '2018-09-23', '18:46:07', NULL, NULL, '1'),
(55, 1, 29, 1, '2018-09-23', '18:46:40', NULL, NULL, '1'),
(56, 1, 29, 1, '2018-09-23', '18:46:46', NULL, NULL, '1'),
(57, 1, 29, 1, '2018-09-23', '18:46:47', NULL, NULL, '5'),
(58, 1, 30, 1, '2018-09-23', '18:52:22', NULL, NULL, '1'),
(59, 1, 30, 1, '2018-09-23', '18:52:29', NULL, NULL, '1'),
(60, 1, 30, 1, '2018-09-23', '18:52:32', NULL, NULL, '1'),
(61, 1, 30, 1, '2018-09-23', '18:52:34', NULL, NULL, '5'),
(62, 1, 31, 1, '2018-09-23', '18:52:49', NULL, NULL, '1'),
(63, 1, 31, 1, '2018-09-23', '18:52:55', NULL, NULL, '2'),
(64, 1, 31, 1, '2018-09-23', '18:53:01', NULL, NULL, '3'),
(65, 1, 32, 1, '2018-09-23', '18:53:17', NULL, NULL, '1'),
(66, 1, 32, 1, '2018-09-23', '18:53:24', NULL, NULL, '1'),
(67, 1, 32, 1, '2018-09-23', '18:53:25', NULL, NULL, '1'),
(68, 1, 32, 1, '2018-09-23', '18:53:25', NULL, NULL, '5'),
(69, 1, 33, 1, '2018-09-23', '19:22:03', NULL, NULL, '1'),
(70, 1, 33, 1, '2018-09-23', '19:22:13', NULL, NULL, '1'),
(71, 1, 33, 1, '2018-09-23', '19:22:16', NULL, NULL, '2'),
(72, 1, 33, 1, '2018-09-23', '19:22:20', NULL, NULL, '3'),
(73, 1, 34, 1, '2018-09-23', '19:22:39', NULL, NULL, '1'),
(74, 1, 34, 1, '2018-09-23', '19:22:41', NULL, NULL, '2'),
(75, 1, 34, 1, '2018-09-23', '19:22:42', NULL, NULL, '3'),
(76, 1, 35, 1, '2018-09-23', '19:23:18', NULL, NULL, '1'),
(77, 1, 35, 1, '2018-09-23', '19:23:23', NULL, NULL, '1'),
(78, 1, 35, 1, '2018-09-23', '19:23:26', NULL, NULL, '1'),
(79, 1, 35, 1, '2018-09-23', '19:23:30', NULL, NULL, '5'),
(80, 1, 36, 1, '2018-09-23', '19:45:22', NULL, NULL, '1'),
(81, 1, 36, 1, '2018-09-23', '19:45:55', NULL, NULL, '2'),
(82, 1, 36, 1, '2018-09-23', '19:45:56', NULL, NULL, '3'),
(83, 1, 37, 1, '2018-09-23', '19:47:32', NULL, NULL, '1'),
(84, 1, 37, 1, '2018-09-23', '19:47:59', NULL, NULL, '2'),
(85, 1, 37, 1, '2018-09-23', '19:48:00', NULL, NULL, '3'),
(86, 1, 38, 1, '2018-09-23', '20:03:17', NULL, NULL, '1'),
(87, 1, 38, 1, '2018-09-23', '20:03:36', NULL, NULL, '2'),
(88, 1, 38, 1, '2018-09-23', '20:04:02', NULL, NULL, '3'),
(89, 1, 39, 1, '2018-09-23', '20:04:19', NULL, NULL, '1'),
(90, 1, 39, 1, '2018-09-23', '20:25:28', NULL, NULL, '2'),
(91, 1, 39, 1, '2018-09-23', '20:25:30', NULL, NULL, '3'),
(92, 1, 40, 1, '2018-09-23', '20:57:04', NULL, NULL, '1'),
(93, 1, 40, 1, '2018-09-23', '20:57:19', NULL, NULL, '2'),
(94, 1, 40, 1, '2018-09-23', '20:57:28', NULL, NULL, '3'),
(95, 1, 41, 1, '2018-09-23', '20:57:43', NULL, NULL, '1'),
(96, 1, 41, 1, '2018-09-23', '20:58:10', NULL, NULL, '2'),
(97, 1, 41, 1, '2018-09-23', '20:58:18', NULL, NULL, '3'),
(98, 1, 42, 1, '2018-09-23', '20:58:34', NULL, NULL, '1'),
(99, 1, 42, 1, '2018-09-23', '21:09:01', NULL, NULL, '2'),
(100, 1, 42, 1, '2018-09-23', '21:09:02', NULL, NULL, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_bitacora_categoria`
--

CREATE TABLE `tk_bitacora_categoria` (
  `ID_BITACORA_CATEGORIA` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `FECHA_CIERRE` date DEFAULT NULL,
  `HORA_CIERRE` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `SECUENCIAL_CIERRE` int(11) DEFAULT NULL,
  `CANT_ATENDIDOS` int(11) DEFAULT NULL,
  `CANT_EN_COLA` int(11) DEFAULT NULL,
  `PRIMER_NUMERO` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `ULTIMO_NUMERO` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CANT_PERDIDOS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_categoria`
--

CREATE TABLE `tk_categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOMBRE` varchar(300) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` text COLLATE ucs2_spanish2_ci,
  `ESTADO` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `HORA_INICIO_ATENCION` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `HORA_CIERRE` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ESTADO_REG` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `CODIGO` varchar(50) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `SECUENCIAL` int(11) DEFAULT NULL,
  `PRIORIDAD` int(11) DEFAULT NULL,
  `ICONO` text COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_categoria`
--

INSERT INTO `tk_categoria` (`ID_CATEGORIA`, `NOMBRE`, `DESCRIPCION`, `ESTADO`, `HORA_INICIO_ATENCION`, `HORA_CIERRE`, `USUARIO_REG`, `USUARIO_MOD`, `FECHA_REG`, `FECHA_MOD`, `ESTADO_REG`, `CODIGO`, `SECUENCIAL`, `PRIORIDAD`, `ICONO`) VALUES
(2, 'Normal', 'a', 'activo', '15:30', NULL, NULL, NULL, '2018-09-12 22:16:57', '0000-00-00 00:00:00', 'activo', 'N1', 2, 1, ''),
(4, 'TERCERA EDAD', 'b', 'activo', NULL, NULL, NULL, NULL, '2018-09-12 22:17:06', '0000-00-00 00:00:00', 'activo', 'TE', 2, 3, ''),
(6, 'EMBARAZADAS', 'd', 'activo', NULL, NULL, NULL, NULL, '2018-09-12 22:17:08', '0000-00-00 00:00:00', 'activo', 'EM', 1, 2, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_categoria_zona`
--

CREATE TABLE `tk_categoria_zona` (
  `ID_CATEGORIA_ZONA` int(11) NOT NULL,
  `ID_ZONA` int(11) DEFAULT NULL,
  `ID_CATEGORIA` int(11) DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `ESTADO` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_categoria_zona`
--

INSERT INTO `tk_categoria_zona` (`ID_CATEGORIA_ZONA`, `ID_ZONA`, `ID_CATEGORIA`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`, `ESTADO`) VALUES
(1, 1, 2, '2018-09-12 15:12:29', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(2, 4, 4, '2018-09-12 15:12:33', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(3, 4, 2, '2018-09-12 15:22:23', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(4, 3, 6, '2018-09-12 21:24:17', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(5, 2, 6, '2018-09-12 21:22:23', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(6, 2, 4, '2018-09-12 21:22:26', NULL, '0000-00-00 00:00:00', NULL, 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_categoria_zona_bitacora`
--

CREATE TABLE `tk_categoria_zona_bitacora` (
  `ID_CATEGORIA_ZONA` int(11) NOT NULL,
  `ID_CAT_ZONA_BITACORA` int(11) NOT NULL,
  `FECHA_REG` date DEFAULT NULL,
  `HORA_INICIO_ATENCION` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `HORA_CIERRE` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SECUENCIAL_ZONA_CAT` int(11) DEFAULT NULL,
  `CODIGO` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_categoria_zona_bitacora`
--

INSERT INTO `tk_categoria_zona_bitacora` (`ID_CATEGORIA_ZONA`, `ID_CAT_ZONA_BITACORA`, `FECHA_REG`, `HORA_INICIO_ATENCION`, `HORA_CIERRE`, `FECHA_MOD`, `SECUENCIAL_ZONA_CAT`, `CODIGO`) VALUES
(3, 1, '2018-09-14', '21:59:43', NULL, '0000-00-00 00:00:00', 3, 'OC-N1'),
(2, 2, '2018-09-14', '21:59:50', NULL, '0000-00-00 00:00:00', 3, 'OC-TE'),
(1, 3, '2018-09-14', '22:00:03', NULL, '0000-00-00 00:00:00', 3, 'CJ-N1'),
(1, 4, '2018-09-17', '22:10:25', NULL, '0000-00-00 00:00:00', 4, 'CJ-N1'),
(6, 5, '2018-09-17', '22:10:47', NULL, '0000-00-00 00:00:00', 2, 'P-TE'),
(5, 6, '2018-09-17', '22:10:51', NULL, '0000-00-00 00:00:00', 3, 'P-EM'),
(4, 7, '2018-09-17', '22:18:18', NULL, '0000-00-00 00:00:00', 1, 'SRV-EM'),
(2, 8, '2018-09-17', '22:18:31', NULL, '0000-00-00 00:00:00', 2, 'OC-TE'),
(3, 9, '2018-09-17', '22:18:33', NULL, '0000-00-00 00:00:00', 2, 'OC-N1'),
(1, 10, '2018-09-23', '03:56:02', NULL, '0000-00-00 00:00:00', 19, 'CJ-N1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_estacion`
--

CREATE TABLE `tk_estacion` (
  `ID_ZONA` int(11) NOT NULL,
  `ID_ESTACION` int(11) NOT NULL,
  `DESCRIPCION` text COLLATE ucs2_spanish2_ci,
  `CODIGO` varchar(50) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `NOMBRE_DISPLAY` char(10) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ESTADO` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_estacion`
--

INSERT INTO `tk_estacion` (`ID_ZONA`, `ID_ESTACION`, `DESCRIPCION`, `CODIGO`, `NOMBRE_DISPLAY`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`, `ESTADO`) VALUES
(1, 1, '<p>\r\n	CJ-DRM</p>\r\n', 'CJ-DRM', 'CJ-DRM', 1, '2018-09-14 19:26:46', NULL, '0000-00-00 00:00:00', 'activo'),
(2, 2, '<p>\r\n	Caja Nata</p>\r\n', 'Caja Nata', 'Caja Nata', NULL, '2018-09-14 19:26:30', NULL, '0000-00-00 00:00:00', 'activo'),
(4, 3, '<p>\n	LOLA</p>\n', 'LOLA CAJA', 'LLCJ', NULL, '2018-09-14 20:06:42', NULL, '0000-00-00 00:00:00', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_multimedia`
--

CREATE TABLE `tk_multimedia` (
  `ID_MULTIMEDIA` int(11) NOT NULL,
  `PATH` text COLLATE utf8_spanish2_ci NOT NULL,
  `DESCRIPCION` text COLLATE utf8_spanish2_ci NOT NULL,
  `DURACION` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `ORDEN` int(11) NOT NULL,
  `ESTADO` enum('activo','inactivo') COLLATE utf8_spanish2_ci NOT NULL,
  `REPRODUCIDO` int(11) NOT NULL,
  `USUARIO_REG` int(11) NOT NULL,
  `FECHA_REG` date NOT NULL,
  `USUARIO_MOD` int(11) NOT NULL,
  `FECHA_MOD` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_multimedia`
--

INSERT INTO `tk_multimedia` (`ID_MULTIMEDIA`, `PATH`, `DESCRIPCION`, `DURACION`, `ORDEN`, `ESTADO`, `REPRODUCIDO`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`) VALUES
(1, '3df93-13.-making-our-app-dynamic-handlebars.js-part-2_3-.mp4', '<p>\n	Prueba de Video</p>\n', '75', 1, 'activo', 143, 0, '0000-00-00', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_persona`
--

CREATE TABLE `tk_persona` (
  `ID_PERSONA` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `NOMBRE` varchar(300) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `APELLIDOS` varchar(300) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci NOT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` int(11) NOT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `USUARIO_REG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_persona`
--

INSERT INTO `tk_persona` (`ID_PERSONA`, `ID_USUARIO`, `NOMBRE`, `APELLIDOS`, `FECHA_NAC`, `ESTADO`, `FECHA_MOD`, `USUARIO_MOD`, `FECHA_REG`, `USUARIO_REG`) VALUES
(1, NULL, 'Denis', 'Rodriguez Mendoza', '2018-09-01', 'activo', '2018-09-14 19:25:14', 0, '0000-00-00 00:00:00', 0),
(2, NULL, 'Nata', 'Medrano', '2018-09-01', 'activo', '2018-09-15 01:25:45', 1, '0000-00-00 00:00:00', 0),
(3, NULL, 'Lola', 'Meras', '2018-09-05', 'activo', '2018-09-14 20:05:37', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_solicitud_ticket`
--

CREATE TABLE `tk_solicitud_ticket` (
  `ID_SOLICITUD` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_TICKET` int(11) NOT NULL,
  `ID_ESTACION` int(11) NOT NULL,
  `FECHA_LLAMADA` date DEFAULT NULL,
  `HORA_LLAMADA` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `ESTADO_LLAMADA` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `NRO_LLAMADA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_solicitud_ticket`
--

INSERT INTO `tk_solicitud_ticket` (`ID_SOLICITUD`, `ID_USUARIO`, `ID_TICKET`, `ID_ESTACION`, `FECHA_LLAMADA`, `HORA_LLAMADA`, `ESTADO_LLAMADA`, `NRO_LLAMADA`) VALUES
(1, 1, 7, 1, '2018-09-14', '22:00:32', '2', 1),
(2, 2, 4, 2, '2018-09-14', '22:00:42', '2', 1),
(3, 1, 8, 1, '2018-09-14', '22:03:45', '2', 1),
(4, 2, 5, 2, '2018-09-14', '22:03:55', '2', 1),
(5, 3, 6, 3, '2018-09-14', '22:07:41', '2', 1),
(6, 2, 1, 2, '2018-09-14', '22:08:40', '2', 1),
(7, 3, 2, 3, '2018-09-14', '22:08:51', '2', 1),
(8, 3, 2, 1, '2018-09-14', '22:09:00', '2', 2),
(9, 3, 2, 1, '2018-09-14', '22:09:01', '2', 3),
(10, 3, 2, 1, '2018-09-14', '22:09:02', '6', 4),
(11, 3, 3, 3, '2018-09-14', '22:09:04', '2', 1),
(12, 2, 1, 1, '2018-09-14', '22:09:30', '2', 2),
(13, 2, 1, 1, '2018-09-14', '22:09:30', '2', 3),
(14, 2, 1, 1, '2018-09-14', '22:09:31', '6', 4),
(15, 1, 10, 1, '2018-09-17', '22:16:13', '2', 1),
(16, 2, 17, 2, '2018-09-17', '22:19:42', '2', 1),
(17, 1, 24, 1, '2018-09-23', '18:33:15', '2', 1),
(18, 1, 24, 1, '2018-09-23', '18:33:20', '2', 2),
(19, 1, 24, 1, '2018-09-23', '18:33:21', '2', 3),
(20, 1, 24, 1, '2018-09-23', '18:33:22', '6', 4),
(21, 1, 25, 1, '2018-09-23', '18:36:50', '2', 1),
(22, 1, 25, 1, '2018-09-23', '18:36:54', '2', 2),
(23, 1, 25, 1, '2018-09-23', '18:36:56', '2', 3),
(24, 1, 25, 1, '2018-09-23', '18:36:57', '6', 4),
(25, 1, 25, 1, '2018-09-23', '18:36:59', '6', 5),
(26, 1, 26, 1, '2018-09-23', '18:39:29', '2', 1),
(27, 1, 26, 1, '2018-09-23', '18:39:35', '2', 2),
(28, 1, 26, 1, '2018-09-23', '18:39:36', '2', 3),
(29, 1, 26, 1, '2018-09-23', '18:39:37', '6', 4),
(30, 1, 27, 1, '2018-09-23', '18:39:53', '2', 1),
(31, 1, 27, 1, '2018-09-23', '18:40:03', '2', 2),
(32, 1, 27, 1, '2018-09-23', '18:40:04', '2', 3),
(33, 1, 27, 1, '2018-09-23', '18:40:06', '6', 4),
(34, 1, 28, 1, '2018-09-23', '18:40:21', '2', 1),
(35, 1, 28, 1, '2018-09-23', '18:40:26', '2', 2),
(36, 1, 28, 1, '2018-09-23', '18:40:28', '2', 3),
(37, 1, 28, 1, '2018-09-23', '18:40:29', '6', 4),
(38, 1, 29, 1, '2018-09-23', '18:46:07', '2', 1),
(39, 1, 29, 1, '2018-09-23', '18:46:40', '2', 2),
(40, 1, 29, 1, '2018-09-23', '18:46:46', '2', 3),
(41, 1, 29, 1, '2018-09-23', '18:46:47', '6', 4),
(42, 1, 30, 1, '2018-09-23', '18:52:22', '2', 1),
(43, 1, 30, 1, '2018-09-23', '18:52:29', '2', 2),
(44, 1, 30, 1, '2018-09-23', '18:52:32', '2', 3),
(45, 1, 30, 1, '2018-09-23', '18:52:34', '6', 4),
(46, 1, 31, 1, '2018-09-23', '18:52:49', '2', 1),
(47, 1, 32, 1, '2018-09-23', '18:53:17', '2', 1),
(48, 1, 32, 1, '2018-09-23', '18:53:24', '2', 2),
(49, 1, 32, 1, '2018-09-23', '18:53:25', '2', 3),
(50, 1, 32, 1, '2018-09-23', '18:53:25', '6', 4),
(51, 1, 33, 1, '2018-09-23', '19:22:03', '2', 1),
(52, 1, 33, 1, '2018-09-23', '19:22:13', '2', 2),
(53, 1, 34, 1, '2018-09-23', '19:22:39', '2', 1),
(54, 1, 35, 1, '2018-09-23', '19:23:18', '2', 1),
(55, 1, 35, 1, '2018-09-23', '19:23:23', '2', 2),
(56, 1, 35, 1, '2018-09-23', '19:23:26', '2', 3),
(57, 1, 35, 1, '2018-09-23', '19:23:30', '6', 4),
(58, 1, 36, 1, '2018-09-23', '19:45:22', '2', 1),
(59, 1, 37, 1, '2018-09-23', '19:47:32', '2', 1),
(60, 1, 38, 1, '2018-09-23', '20:03:17', '2', 1),
(61, 1, 39, 1, '2018-09-23', '20:04:19', '2', 1),
(62, 1, 40, 1, '2018-09-23', '20:57:04', '2', 1),
(63, 1, 41, 1, '2018-09-23', '20:57:43', '2', 1),
(64, 1, 42, 1, '2018-09-23', '20:58:34', '2', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_ticket`
--

CREATE TABLE `tk_ticket` (
  `ID_TICKET` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `ID_ZONA` int(11) NOT NULL,
  `NUMERO` varchar(50) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `CODIGO` varchar(50) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `PRIORIDAD` int(11) NOT NULL,
  `QR` text COLLATE ucs2_spanish2_ci,
  `ON_DISPLAY` int(11) NOT NULL,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `ESTADO_REG` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `ESTADO` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FECHA_REG` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `HORA_IMPRESION` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_IMPRESION` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_ticket`
--

INSERT INTO `tk_ticket` (`ID_TICKET`, `ID_CATEGORIA`, `ID_ZONA`, `NUMERO`, `CODIGO`, `PRIORIDAD`, `QR`, `ON_DISPLAY`, `USUARIO_REG`, `USUARIO_MOD`, `ESTADO_REG`, `ESTADO`, `FECHA_MOD`, `FECHA_REG`, `HORA_IMPRESION`, `FECHA_IMPRESION`) VALUES
(1, 2, 4, '1', 'OC-N1-1', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-14 20:09:31', '2018-09-14 04:00:00', '21:59:43', '2018-09-14'),
(2, 2, 4, '2', 'OC-N1-2', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-14 20:09:02', '2018-09-14 04:00:00', '21:59:46', '2018-09-14'),
(3, 2, 4, '3', 'OC-N1-3', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-14 20:09:17', '2018-09-14 04:00:00', '21:59:48', '2018-09-14'),
(4, 4, 4, '1', 'OC-TE-1', 3, '...', 2, 0, NULL, NULL, '4', '2018-09-14 20:03:51', '2018-09-14 04:00:00', '21:59:50', '2018-09-14'),
(5, 4, 4, '2', 'OC-TE-2', 3, '...', 2, 0, NULL, NULL, '4', '2018-09-14 20:08:25', '2018-09-14 04:00:00', '21:59:52', '2018-09-14'),
(6, 4, 4, '3', 'OC-TE-3', 3, '...', 2, 0, NULL, NULL, '4', '2018-09-14 20:08:48', '2018-09-14 04:00:00', '21:59:54', '2018-09-14'),
(7, 2, 1, '1', 'CJ-N1-1', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-14 20:03:31', '2018-09-14 04:00:00', '22:00:03', '2018-09-14'),
(8, 2, 1, '2', 'CJ-N1-2', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-14 20:09:23', '2018-09-14 04:00:00', '22:00:05', '2018-09-14'),
(9, 2, 1, '3', 'CJ-N1-3', 1, '...', 0, 0, NULL, NULL, '1', '2018-09-14 20:00:07', '2018-09-14 04:00:00', '22:00:07', '2018-09-14'),
(10, 2, 1, '1', 'CJ-N1-1', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-17 20:20:37', '2018-09-17 04:00:00', '22:10:25', '2018-09-17'),
(11, 4, 2, '1', 'P-TE-1', 3, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:10:47', '2018-09-17 04:00:00', '22:10:47', '2018-09-17'),
(12, 6, 2, '1', 'P-EM-1', 2, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:10:51', '2018-09-17 04:00:00', '22:10:51', '2018-09-17'),
(13, 2, 1, '2', 'CJ-N1-2', 1, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:13:59', '2018-09-17 04:00:00', '22:13:59', '2018-09-17'),
(14, 6, 2, '2', 'P-EM-2', 2, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:14:05', '2018-09-17 04:00:00', '22:14:05', '2018-09-17'),
(15, 4, 2, '2', 'P-TE-2', 3, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:14:07', '2018-09-17 04:00:00', '22:14:07', '2018-09-17'),
(16, 6, 3, '1', 'SRV-EM-1', 2, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:18:18', '2018-09-17 04:00:00', '22:18:18', '2018-09-17'),
(17, 4, 4, '1', 'OC-TE-1', 3, '...', 2, 0, NULL, NULL, '4', '2018-09-17 20:20:27', '2018-09-17 04:00:00', '22:18:31', '2018-09-17'),
(18, 2, 4, '1', 'OC-N1-1', 1, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:18:34', '2018-09-17 04:00:00', '22:18:33', '2018-09-17'),
(19, 2, 1, '3', 'CJ-N1-3', 1, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:18:41', '2018-09-17 04:00:00', '22:18:41', '2018-09-17'),
(20, 2, 1, '4', 'CJ-N1-4', 1, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:18:43', '2018-09-17 04:00:00', '22:18:43', '2018-09-17'),
(21, 6, 2, '3', 'P-EM-3', 2, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:18:47', '2018-09-17 04:00:00', '22:18:47', '2018-09-17'),
(22, 2, 4, '2', 'OC-N1-2', 1, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:19:30', '2018-09-17 04:00:00', '22:19:30', '2018-09-17'),
(23, 4, 4, '2', 'OC-TE-2', 3, '...', 0, 0, NULL, NULL, '1', '2018-09-17 20:19:33', '2018-09-17 04:00:00', '22:19:33', '2018-09-17'),
(24, 2, 1, '1', 'CJ-N1-1', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 16:33:22', '2018-09-23 04:00:00', '03:56:02', '2018-09-23'),
(25, 2, 1, '2', 'CJ-N1-2', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 16:36:57', '2018-09-23 04:00:00', '03:56:05', '2018-09-23'),
(26, 2, 1, '3', 'CJ-N1-3', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 16:39:37', '2018-09-23 04:00:00', '18:39:04', '2018-09-23'),
(27, 2, 1, '4', 'CJ-N1-4', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 16:40:06', '2018-09-23 04:00:00', '18:39:06', '2018-09-23'),
(28, 2, 1, '5', 'CJ-N1-5', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 16:40:29', '2018-09-23 04:00:00', '18:39:07', '2018-09-23'),
(29, 2, 1, '6', 'CJ-N1-6', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 16:46:47', '2018-09-23 04:00:00', '18:39:09', '2018-09-23'),
(30, 2, 1, '7', 'CJ-N1-7', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 16:52:34', '2018-09-23 04:00:00', '18:52:08', '2018-09-23'),
(31, 2, 1, '8', 'CJ-N1-8', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 16:53:02', '2018-09-23 04:00:00', '18:52:10', '2018-09-23'),
(32, 2, 1, '9', 'CJ-N1-9', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 16:53:25', '2018-09-23 04:00:00', '18:52:11', '2018-09-23'),
(33, 2, 1, '10', 'CJ-N1-10', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 17:22:20', '2018-09-23 04:00:00', '19:21:54', '2018-09-23'),
(34, 2, 1, '11', 'CJ-N1-11', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 17:22:42', '2018-09-23 04:00:00', '19:21:56', '2018-09-23'),
(35, 2, 1, '12', 'CJ-N1-12', 1, '...', 2, 0, NULL, NULL, '6', '2018-09-23 17:23:30', '2018-09-23 04:00:00', '19:21:57', '2018-09-23'),
(36, 2, 1, '13', 'CJ-N1-13', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 17:45:56', '2018-09-23 04:00:00', '19:21:59', '2018-09-23'),
(37, 2, 1, '14', 'CJ-N1-14', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 17:48:00', '2018-09-23 04:00:00', '19:23:06', '2018-09-23'),
(38, 2, 1, '15', 'CJ-N1-15', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 18:04:02', '2018-09-23 04:00:00', '19:23:07', '2018-09-23'),
(39, 2, 1, '16', 'CJ-N1-16', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 18:25:30', '2018-09-23 04:00:00', '19:23:09', '2018-09-23'),
(40, 2, 1, '17', 'CJ-N1-17', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 18:57:28', '2018-09-23 04:00:00', '20:56:56', '2018-09-23'),
(41, 2, 1, '18', 'CJ-N1-18', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 18:58:19', '2018-09-23 04:00:00', '20:56:57', '2018-09-23'),
(42, 2, 1, '19', 'CJ-N1-19', 1, '...', 2, 0, NULL, NULL, '4', '2018-09-23 19:09:02', '2018-09-23 04:00:00', '20:56:59', '2018-09-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_usuario`
--

CREATE TABLE `tk_usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_PERSONA` int(11) DEFAULT NULL,
  `NOMBRE_USUARIO` varchar(150) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `PASSWORD` text COLLATE ucs2_spanish2_ci,
  `ESTADO` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ESTADO_REG` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_EXPIRACION` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_usuario`
--

INSERT INTO `tk_usuario` (`ID_USUARIO`, `ID_PERSONA`, `NOMBRE_USUARIO`, `PASSWORD`, `ESTADO`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`, `ESTADO_REG`, `FECHA_EXPIRACION`) VALUES
(1, 1, 'denis.rodriguez', 'denis.rodriguez', 'activo', NULL, '2018-09-12 21:50:29', NULL, '0000-00-00 00:00:00', NULL, '2018-09-30'),
(2, 2, 'nata.medrano', 'nata.medrano', 'activo', NULL, '2018-09-14 19:34:00', NULL, '0000-00-00 00:00:00', NULL, '2018-09-30'),
(3, 3, 'lola.meras', 'lola.meras', 'activo', NULL, '2018-09-14 20:07:28', NULL, '0000-00-00 00:00:00', NULL, '2018-09-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_usuario_bitacora`
--

CREATE TABLE `tk_usuario_bitacora` (
  `id_usuario_bitacora` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_zona` int(11) NOT NULL,
  `id_estacion` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usuario_reg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_usuario_bitacora`
--

INSERT INTO `tk_usuario_bitacora` (`id_usuario_bitacora`, `id_usuario`, `id_zona`, `id_estacion`, `estado`, `fecha_reg`, `usuario_reg`) VALUES
(1, 1, 1, 1, 3, '0000-00-00 00:00:00', 1),
(2, 1, 1, 1, 1, '0000-00-00 00:00:00', 1),
(3, 1, 1, 1, 3, '0000-00-00 00:00:00', 1),
(4, 1, 1, 1, 1, '2018-09-23 23:47:16', 1),
(5, 1, 1, 1, 3, '2018-09-23 23:48:02', 1),
(6, 1, 1, 1, 1, '2018-09-24 00:03:01', 1),
(7, 1, 1, 1, 1, '2018-09-24 00:56:18', 1),
(8, 1, 1, 1, 3, '2018-09-24 01:09:05', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_usuario_estacion`
--

CREATE TABLE `tk_usuario_estacion` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ESTACION` int(11) NOT NULL,
  `ID_ZONA` int(11) NOT NULL,
  `ID_USUARIO_ESTACION` int(11) NOT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `ESTADO` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_usuario_estacion`
--

INSERT INTO `tk_usuario_estacion` (`ID_USUARIO`, `ID_ESTACION`, `ID_ZONA`, `ID_USUARIO_ESTACION`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`, `ESTADO`) VALUES
(1, 1, 1, 1, '2018-09-13 23:30:30', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(1, 1, 4, 2, '2018-09-14 16:02:25', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(2, 2, 4, 3, '2018-09-14 19:27:08', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(3, 3, 4, 4, '2018-09-14 20:06:59', NULL, '0000-00-00 00:00:00', NULL, 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_usuario_zona`
--

CREATE TABLE `tk_usuario_zona` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ZONA` int(11) NOT NULL,
  `ID_USUARIO_ZONA` int(11) NOT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `ESTADO` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_usuario_zona`
--

INSERT INTO `tk_usuario_zona` (`ID_USUARIO`, `ID_ZONA`, `ID_USUARIO_ZONA`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`, `ESTADO`) VALUES
(1, 1, 1, '2018-09-12 21:50:57', NULL, '0000-00-00 00:00:00', NULL, 'activo'),
(1, 4, 2, '2018-09-12 21:50:57', NULL, '0000-00-00 00:00:00', NULL, 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tk_zona_atencion`
--

CREATE TABLE `tk_zona_atencion` (
  `ID_ZONA` int(11) NOT NULL,
  `NOMBRE` varchar(300) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` text COLLATE ucs2_spanish2_ci,
  `CODIGO` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  `ESTADO` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_REG` int(11) DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` int(11) DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ESTADO_REG` varchar(20) COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- Volcado de datos para la tabla `tk_zona_atencion`
--

INSERT INTO `tk_zona_atencion` (`ID_ZONA`, `NOMBRE`, `DESCRIPCION`, `CODIGO`, `ESTADO`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`, `ESTADO_REG`) VALUES
(1, 'Cajas', '<p>\r\n	Cajas</p>\r\n', 'CJ', 'activo', NULL, '2018-09-12 21:23:32', NULL, '0000-00-00 00:00:00', 'activo'),
(2, 'Plataforma', '<p>\r\n	Plataforma</p>\r\n', 'P', 'activo', NULL, '2018-09-12 21:23:47', NULL, '0000-00-00 00:00:00', 'activo'),
(3, 'Servicios', '<p>\r\n	Servicios</p>\r\n', 'SRV', 'activo', NULL, '2018-09-12 21:23:44', NULL, '0000-00-00 00:00:00', 'activo'),
(4, 'ODECO', '<p>\r\n	ODECO</p>\r\n', 'OC', 'activo', NULL, '2018-09-12 21:23:40', NULL, '0000-00-00 00:00:00', 'activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tk_atencion_actual`
--
ALTER TABLE `tk_atencion_actual`
  ADD PRIMARY KEY (`ID_ATENCION`);

--
-- Indices de la tabla `tk_bitacora_atencion`
--
ALTER TABLE `tk_bitacora_atencion`
  ADD PRIMARY KEY (`ID_BITACORA_ATENCION`),
  ADD KEY `FK_R1` (`ID_USUARIO`),
  ADD KEY `FK_R2` (`ID_TICKET`);

--
-- Indices de la tabla `tk_bitacora_categoria`
--
ALTER TABLE `tk_bitacora_categoria`
  ADD PRIMARY KEY (`ID_BITACORA_CATEGORIA`),
  ADD KEY `FK_R9` (`ID_CATEGORIA`);

--
-- Indices de la tabla `tk_categoria`
--
ALTER TABLE `tk_categoria`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Indices de la tabla `tk_categoria_zona`
--
ALTER TABLE `tk_categoria_zona`
  ADD PRIMARY KEY (`ID_CATEGORIA_ZONA`),
  ADD KEY `FK_R11` (`ID_ZONA`),
  ADD KEY `FK_R12` (`ID_CATEGORIA`);

--
-- Indices de la tabla `tk_categoria_zona_bitacora`
--
ALTER TABLE `tk_categoria_zona_bitacora`
  ADD PRIMARY KEY (`ID_CAT_ZONA_BITACORA`),
  ADD KEY `FK_R16` (`ID_CATEGORIA_ZONA`);

--
-- Indices de la tabla `tk_estacion`
--
ALTER TABLE `tk_estacion`
  ADD PRIMARY KEY (`ID_ESTACION`),
  ADD KEY `FK_R20` (`ID_ZONA`);

--
-- Indices de la tabla `tk_multimedia`
--
ALTER TABLE `tk_multimedia`
  ADD PRIMARY KEY (`ID_MULTIMEDIA`);

--
-- Indices de la tabla `tk_persona`
--
ALTER TABLE `tk_persona`
  ADD PRIMARY KEY (`ID_PERSONA`),
  ADD KEY `FK_R6` (`ID_USUARIO`);

--
-- Indices de la tabla `tk_solicitud_ticket`
--
ALTER TABLE `tk_solicitud_ticket`
  ADD PRIMARY KEY (`ID_SOLICITUD`),
  ADD KEY `FK_R5` (`ID_USUARIO`),
  ADD KEY `FK_R8` (`ID_TICKET`);

--
-- Indices de la tabla `tk_ticket`
--
ALTER TABLE `tk_ticket`
  ADD PRIMARY KEY (`ID_TICKET`),
  ADD KEY `FK_R3` (`ID_CATEGORIA`);

--
-- Indices de la tabla `tk_usuario`
--
ALTER TABLE `tk_usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `FK_R7` (`ID_PERSONA`);

--
-- Indices de la tabla `tk_usuario_bitacora`
--
ALTER TABLE `tk_usuario_bitacora`
  ADD PRIMARY KEY (`id_usuario_bitacora`);

--
-- Indices de la tabla `tk_usuario_estacion`
--
ALTER TABLE `tk_usuario_estacion`
  ADD PRIMARY KEY (`ID_USUARIO_ESTACION`);

--
-- Indices de la tabla `tk_usuario_zona`
--
ALTER TABLE `tk_usuario_zona`
  ADD PRIMARY KEY (`ID_USUARIO_ZONA`),
  ADD KEY `FK_R10` (`ID_ZONA`),
  ADD KEY `FK_R4` (`ID_USUARIO`);

--
-- Indices de la tabla `tk_zona_atencion`
--
ALTER TABLE `tk_zona_atencion`
  ADD PRIMARY KEY (`ID_ZONA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tk_atencion_actual`
--
ALTER TABLE `tk_atencion_actual`
  MODIFY `ID_ATENCION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tk_bitacora_atencion`
--
ALTER TABLE `tk_bitacora_atencion`
  MODIFY `ID_BITACORA_ATENCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `tk_bitacora_categoria`
--
ALTER TABLE `tk_bitacora_categoria`
  MODIFY `ID_BITACORA_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tk_categoria`
--
ALTER TABLE `tk_categoria`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tk_categoria_zona`
--
ALTER TABLE `tk_categoria_zona`
  MODIFY `ID_CATEGORIA_ZONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tk_categoria_zona_bitacora`
--
ALTER TABLE `tk_categoria_zona_bitacora`
  MODIFY `ID_CAT_ZONA_BITACORA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tk_estacion`
--
ALTER TABLE `tk_estacion`
  MODIFY `ID_ESTACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tk_multimedia`
--
ALTER TABLE `tk_multimedia`
  MODIFY `ID_MULTIMEDIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tk_persona`
--
ALTER TABLE `tk_persona`
  MODIFY `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tk_solicitud_ticket`
--
ALTER TABLE `tk_solicitud_ticket`
  MODIFY `ID_SOLICITUD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `tk_ticket`
--
ALTER TABLE `tk_ticket`
  MODIFY `ID_TICKET` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `tk_usuario`
--
ALTER TABLE `tk_usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tk_usuario_bitacora`
--
ALTER TABLE `tk_usuario_bitacora`
  MODIFY `id_usuario_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tk_usuario_estacion`
--
ALTER TABLE `tk_usuario_estacion`
  MODIFY `ID_USUARIO_ESTACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tk_usuario_zona`
--
ALTER TABLE `tk_usuario_zona`
  MODIFY `ID_USUARIO_ZONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tk_zona_atencion`
--
ALTER TABLE `tk_zona_atencion`
  MODIFY `ID_ZONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tk_bitacora_atencion`
--
ALTER TABLE `tk_bitacora_atencion`
  ADD CONSTRAINT `FK_R1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `FK_R2` FOREIGN KEY (`ID_TICKET`) REFERENCES `tk_ticket` (`ID_TICKET`);

--
-- Filtros para la tabla `tk_bitacora_categoria`
--
ALTER TABLE `tk_bitacora_categoria`
  ADD CONSTRAINT `FK_R9` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Filtros para la tabla `tk_categoria_zona`
--
ALTER TABLE `tk_categoria_zona`
  ADD CONSTRAINT `FK_R11` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`),
  ADD CONSTRAINT `FK_R12` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Filtros para la tabla `tk_categoria_zona_bitacora`
--
ALTER TABLE `tk_categoria_zona_bitacora`
  ADD CONSTRAINT `FK_R16` FOREIGN KEY (`ID_CATEGORIA_ZONA`) REFERENCES `tk_categoria_zona` (`ID_CATEGORIA_ZONA`);

--
-- Filtros para la tabla `tk_estacion`
--
ALTER TABLE `tk_estacion`
  ADD CONSTRAINT `FK_R20` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`);

--
-- Filtros para la tabla `tk_persona`
--
ALTER TABLE `tk_persona`
  ADD CONSTRAINT `FK_R6` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`);

--
-- Filtros para la tabla `tk_solicitud_ticket`
--
ALTER TABLE `tk_solicitud_ticket`
  ADD CONSTRAINT `FK_R5` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `FK_R8` FOREIGN KEY (`ID_TICKET`) REFERENCES `tk_ticket` (`ID_TICKET`);

--
-- Filtros para la tabla `tk_ticket`
--
ALTER TABLE `tk_ticket`
  ADD CONSTRAINT `FK_R3` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Filtros para la tabla `tk_usuario`
--
ALTER TABLE `tk_usuario`
  ADD CONSTRAINT `FK_R7` FOREIGN KEY (`ID_PERSONA`) REFERENCES `tk_persona` (`ID_PERSONA`);

--
-- Filtros para la tabla `tk_usuario_zona`
--
ALTER TABLE `tk_usuario_zona`
  ADD CONSTRAINT `FK_R10` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`),
  ADD CONSTRAINT `FK_R4` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
