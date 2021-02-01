-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Xerado en: 01 de Feb de 2021 ás 01:25
-- Versión do servidor: 5.7.24
-- Versión do PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tomaturn`
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_atencion_actual`
--

CREATE TABLE `tk_atencion_actual` (
  `ID_ATENCION` int(11) NOT NULL,
  `CODIGO_TICKET` varchar(150) COLLATE ucs2_spanish2_ci NOT NULL,
  `ESTACION` varchar(150) COLLATE ucs2_spanish2_ci NOT NULL,
  `FECHA_REG` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_bitacora_atencion`
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
-- A extraer os datos da táboa `tk_bitacora_atencion`
--

INSERT INTO `tk_bitacora_atencion` (`ID_BITACORA_ATENCION`, `ID_USUARIO`, `ID_TICKET`, `ID_ESTACION`, `FECHA_INICIO_ATENCION`, `HORA_INICIO_ATENCION`, `FECHA_FIN_ATENCION`, `HORA_FIN_ATENCION`, `ACCION`) VALUES
(1, 2, 1, 2, '2020-10-20', '23:00:43', NULL, NULL, '1'),
(2, 2, 1, 1, '2020-10-20', '23:04:45', NULL, NULL, '1'),
(3, 2, 1, 1, '2020-10-20', '23:04:48', NULL, NULL, '2'),
(4, 2, 1, 1, '2020-10-20', '23:04:51', NULL, NULL, '3'),
(5, 2, 2, 2, '2020-10-20', '23:10:49', NULL, NULL, '1'),
(6, 2, 2, 1, '2020-10-20', '23:10:57', NULL, NULL, '1'),
(7, 2, 2, 1, '2020-10-20', '23:11:00', NULL, NULL, '2'),
(8, 2, 2, 1, '2020-10-20', '23:11:09', NULL, NULL, '3'),
(9, 2, 3, 2, '2020-10-21', '03:50:13', NULL, NULL, '1'),
(10, 2, 3, 1, '2020-10-21', '03:50:20', NULL, NULL, '1'),
(11, 2, 3, 1, '2020-10-21', '03:50:24', NULL, NULL, '2'),
(12, 2, 3, 1, '2020-10-21', '03:50:28', NULL, NULL, '3'),
(13, 1, 5, 1, '2020-10-28', '15:23:29', NULL, NULL, '1'),
(14, 1, 5, 1, '2020-10-28', '15:23:48', NULL, NULL, '1'),
(15, 1, 5, 1, '2020-10-28', '15:23:50', NULL, NULL, '2'),
(16, 1, 5, 1, '2020-10-28', '15:23:51', NULL, NULL, '3');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_bitacora_categoria`
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
-- Estrutura da táboa `tk_categoria`
--

CREATE TABLE `tk_categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOMBRE` varchar(300) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` text COLLATE ucs2_spanish2_ci,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `HORA_INICIO_ATENCION` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `HORA_CIERRE` varchar(30) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_REG` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_MOD` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ESTADO_REG` enum('1','0') COLLATE ucs2_spanish2_ci DEFAULT '1',
  `CODIGO` varchar(50) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `SECUENCIAL` int(11) DEFAULT NULL,
  `PRIORIDAD` int(11) DEFAULT NULL,
  `ICONO` text COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- A extraer os datos da táboa `tk_categoria`
--

INSERT INTO `tk_categoria` (`ID_CATEGORIA`, `NOMBRE`, `DESCRIPCION`, `ESTADO`, `HORA_INICIO_ATENCION`, `HORA_CIERRE`, `USUARIO_REG`, `USUARIO_MOD`, `FECHA_REG`, `FECHA_MOD`, `ESTADO_REG`, `CODIGO`, `SECUENCIAL`, `PRIORIDAD`, `ICONO`) VALUES
(1, 'Persona', '<p>\r\n	Usuario recurrente</p>\r\n', 'activo', '08:00', '17:00', 'admin123', NULL, '2020-10-21 02:51:14', '2020-10-20 22:52:10', '1', 'AT', 1, 1, 'bed5d-05c42-iconfinder_persone_613532.png'),
(2, 'Tercera edad', '<p>\r\n	Te</p>\r\n', 'activo', '10:00', '16:00', 'admin123', NULL, '2020-10-21 02:52:13', '2020-10-20 22:52:41', '1', 'TE', 1, 1, '7d919-56b3a-iconfinder_picture14_3289578.png'),
(3, 'EMBARAZADA', '<p>\r\n	VIP</p>\r\n', 'activo', '11:00', '16:00', 'admin123', 'admin123', '2020-10-20 22:53:28', '2020-10-21 02:53:18', '1', 'EMB', 1, 1, 'ebf34-1674f-iconfinder_4_375262.png');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_categoria_zona`
--

CREATE TABLE `tk_categoria_zona` (
  `ID_CATEGORIA_ZONA` int(11) NOT NULL,
  `ID_ZONA` int(11) DEFAULT NULL,
  `ID_CATEGORIA` int(11) DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_REG` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USUARIO_MOD` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- A extraer os datos da táboa `tk_categoria_zona`
--

INSERT INTO `tk_categoria_zona` (`ID_CATEGORIA_ZONA`, `ID_ZONA`, `ID_CATEGORIA`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`, `ESTADO`) VALUES
(1, 1, 1, '2020-10-21 02:58:04', 'admin123', '2020-10-20 22:58:10', NULL, 'activo'),
(2, 1, 3, '2020-10-21 02:58:11', 'admin123', '2020-10-20 22:58:16', NULL, 'activo'),
(3, 2, 1, '2020-10-21 02:58:17', 'admin123', '2020-10-20 22:58:23', NULL, 'activo'),
(4, 2, 2, '2020-10-21 02:58:24', 'admin123', '2020-10-20 22:58:31', NULL, 'activo'),
(5, 1, 2, '2020-10-21 02:58:42', 'admin123', '2020-10-20 22:59:24', NULL, 'activo');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_categoria_zona_bitacora`
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
-- A extraer os datos da táboa `tk_categoria_zona_bitacora`
--

INSERT INTO `tk_categoria_zona_bitacora` (`ID_CATEGORIA_ZONA`, `ID_CAT_ZONA_BITACORA`, `FECHA_REG`, `HORA_INICIO_ATENCION`, `HORA_CIERRE`, `FECHA_MOD`, `SECUENCIAL_ZONA_CAT`, `CODIGO`) VALUES
(1, 1, '2020-10-20', '23:00:09', NULL, '0000-00-00 00:00:00', 2, 'CJ-AT'),
(1, 2, '2020-10-21', '03:49:41', NULL, '0000-00-00 00:00:00', 1, 'CJ-AT'),
(3, 3, '2020-10-26', '18:41:06', NULL, '0000-00-00 00:00:00', 1, 'SRV-AT'),
(1, 4, '2020-10-28', '15:22:44', NULL, '0000-00-00 00:00:00', 1, 'CJ-AT');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_estacion`
--

CREATE TABLE `tk_estacion` (
  `ID_ZONA` int(11) NOT NULL,
  `ID_ESTACION` int(11) NOT NULL,
  `DESCRIPCION` text COLLATE ucs2_spanish2_ci,
  `CODIGO` varchar(50) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `NOMBRE_DISPLAY` char(10) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_REG` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci DEFAULT 'activo',
  `ESTADO_REG` enum('1','0') COLLATE ucs2_spanish2_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- A extraer os datos da táboa `tk_estacion`
--

INSERT INTO `tk_estacion` (`ID_ZONA`, `ID_ESTACION`, `DESCRIPCION`, `CODIGO`, `NOMBRE_DISPLAY`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`, `ESTADO`, `ESTADO_REG`) VALUES
(1, 1, '<p>\r\n	Caja 01</p>\r\n', 'CJ1', 'Caja1', 'admin123', '2020-10-21 02:53:43', NULL, '2020-10-20 22:54:02', 'activo', '1'),
(1, 2, '<p>\r\n	Caja 02</p>\r\n', 'CJ2', 'Caja2', 'admin123', '2020-10-21 02:54:03', NULL, '2020-10-20 22:54:17', 'activo', '1'),
(2, 3, '<p>\r\n	Servicios 01</p>\r\n', 'SRV11', 'SERVICIO 1', 'admin123', '2020-10-21 02:54:22', NULL, '2020-10-20 22:54:44', 'activo', '1');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_menu`
--

CREATE TABLE `tk_menu` (
  `ID_MENU` int(11) NOT NULL,
  `MENU` varchar(400) NOT NULL,
  `ORDEN` int(11) NOT NULL,
  `ESTADO` enum('activo','inactivo') NOT NULL DEFAULT 'activo',
  `ESTADO_REG` enum('1','0') NOT NULL DEFAULT '1',
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USUARIO_REG` varchar(200) NOT NULL,
  `FECHA_MOD` timestamp NOT NULL,
  `USUARIO_MOD` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A extraer os datos da táboa `tk_menu`
--

INSERT INTO `tk_menu` (`ID_MENU`, `MENU`, `ORDEN`, `ESTADO`, `ESTADO_REG`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`) VALUES
(1, 'Usuarios', 1, 'activo', '1', '2020-10-23 00:10:43', 'nmedrano', '2020-10-23 00:12:44', 'nmedrano'),
(2, 'Accesos', 2, 'activo', '1', '2020-10-23 02:09:01', 'nmedrano', '2020-10-23 02:37:28', 'nmedrano'),
(3, 'Configuración', 3, 'activo', '1', '2020-10-23 02:27:14', 'nmedrano', '0000-00-00 00:00:00', ''),
(4, 'Multimedia', 4, 'activo', '1', '2020-10-23 02:36:02', 'nmedrano', '0000-00-00 00:00:00', ''),
(5, 'Asignaciones', 5, 'activo', '1', '2020-10-23 02:37:10', 'nmedrano', '0000-00-00 00:00:00', ''),
(6, 'Atencion', 6, 'activo', '1', '2020-10-23 02:48:28', 'nmedrano', '2020-10-23 02:49:45', 'nmedrano'),
(7, 'Reportes', 7, 'activo', '1', '2020-10-30 22:52:27', 'nmedrano', '2020-10-30 22:52:42', 'nmedrano');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_multimedia`
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
-- A extraer os datos da táboa `tk_multimedia`
--

INSERT INTO `tk_multimedia` (`ID_MULTIMEDIA`, `PATH`, `DESCRIPCION`, `DURACION`, `ORDEN`, `ESTADO`, `REPRODUCIDO`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`) VALUES
(1, 'b9c29-video.mp4', '', '100', 1, 'activo', 0, 0, '0000-00-00', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_persona`
--

CREATE TABLE `tk_persona` (
  `ID_PERSONA` int(11) NOT NULL,
  `ID_USUARIO` int(11) DEFAULT NULL,
  `NOMBRE` varchar(300) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `APELLIDOS` varchar(300) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci NOT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` varchar(200) COLLATE ucs2_spanish2_ci NOT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USUARIO_REG` varchar(200) COLLATE ucs2_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- A extraer os datos da táboa `tk_persona`
--

INSERT INTO `tk_persona` (`ID_PERSONA`, `ID_USUARIO`, `NOMBRE`, `APELLIDOS`, `FECHA_NAC`, `ESTADO`, `FECHA_MOD`, `USUARIO_MOD`, `FECHA_REG`, `USUARIO_REG`) VALUES
(1, NULL, 'Administrador', 'Ticket', '2020-10-01', 'activo', '2020-10-20 22:48:06', '', '2020-10-20 22:48:06', ''),
(2, NULL, 'Natalia', 'Medrano', '1989-05-18', 'activo', '2020-10-20 22:50:23', '', '2020-10-21 02:48:57', 'admin123'),
(3, NULL, 'Operador1', 'OP1', '2020-10-01', 'activo', '2020-10-22 22:46:04', '', '2020-10-23 02:45:54', 'nmedrano');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_privilegio`
--

CREATE TABLE `tk_privilegio` (
  `ID_PRIVILEGIO` int(11) NOT NULL,
  `PRIVILEGIO` varchar(200) NOT NULL,
  `URI` varchar(500) NOT NULL,
  `DESCRIPCION` varchar(500) NOT NULL,
  `ORDEN` int(11) NOT NULL DEFAULT '0',
  `ID_MENU` int(11) NOT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USUARIO_REG` varchar(200) NOT NULL,
  `FECHA_MOD` timestamp NULL DEFAULT NULL,
  `USUARIO_MOD` varchar(200) NOT NULL,
  `ESTADO_REG` enum('1','0') NOT NULL DEFAULT '1',
  `ESTADO` enum('activo','inactivo') NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A extraer os datos da táboa `tk_privilegio`
--

INSERT INTO `tk_privilegio` (`ID_PRIVILEGIO`, `PRIVILEGIO`, `URI`, `DESCRIPCION`, `ORDEN`, `ID_MENU`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`, `ESTADO_REG`, `ESTADO`) VALUES
(1, 'Persona', 'administrar/administrarPersona', 'Agregar usuarios', 1, 1, '2020-10-22 19:41:52', '', '2020-10-23 02:07:10', 'nmedrano', '1', 'activo'),
(2, 'Usuarios', 'administrar/administrarUsuario', 'Administrar usuarios', 2, 1, '2020-10-22 19:41:52', '', '2020-10-23 02:07:54', 'nmedrano', '1', 'activo'),
(3, 'Roles', 'administrar/administrarRol', 'creacion de roles de sistema', 2, 2, '2020-10-23 02:09:16', 'nmedrano', NULL, '', '1', 'activo'),
(4, 'Privilegios/Accesos', 'administrar/administrarPrivilegios', 'Administracion de privilegios', 3, 2, '2020-10-23 02:09:16', 'nmedrano', NULL, '', '1', 'activo'),
(5, 'Menus', 'administrar/administrarMenu', 'Administracion de bloques para el menu', 1, 2, '2020-10-23 02:19:14', 'nmedrano', NULL, '', '1', 'activo'),
(6, 'Estación', 'administrar/administrarEstacion', 'Administracion de estaciones de servicio', 1, 3, '2020-10-23 02:27:35', 'nmedrano', '2020-10-23 02:33:11', 'nmedrano', '1', 'activo'),
(7, 'Zona de atencion', 'administrarZonaAtencion', 'configracion de zonas de atencion', 3, 3, '2020-10-23 02:33:32', 'nmedrano', '2020-10-23 02:35:40', 'nmedrano', '1', 'activo'),
(8, 'Categorias', 'administrar/administrarCategoria', 'Configracion de categorias para Zonas', 2, 3, '2020-10-23 02:34:31', 'nmedrano', NULL, '', '1', 'activo'),
(9, 'Videos', 'administrar/administrarMultimedia', 'Carga de videos', 1, 4, '2020-10-23 02:36:17', 'nmedrano', NULL, '', '1', 'activo'),
(10, 'Usuario a Estacion', 'administrar/administrarUsuarioEstacion', 'Configuracion de usuarios y estaciones de servicio', 1, 5, '2020-10-23 02:38:03', 'nmedrano', NULL, '', '1', 'activo'),
(11, 'Usuarios a zona', 'administrar/administrarUsuarioZona', 'Configuracion de usuarios a zonas de atencion', 2, 5, '2020-10-23 02:39:12', 'nmedrano', NULL, '', '1', 'activo'),
(12, 'Categoria Zonas', 'administrar/administrarCategoriaZona', '..', 3, 5, '2020-10-23 02:39:12', 'nmedrano', NULL, '', '1', 'activo'),
(13, 'Mis zonas', 'Usuario/zona', 'Zonas de atencion asignadas', 1, 6, '2020-10-23 02:48:43', 'nmedrano', NULL, '', '1', 'activo'),
(14, 'Reportes', 'Reporte', 'reportes', 1, 7, '2020-10-30 22:52:52', 'nmedrano', NULL, '', '1', 'activo');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_privilegio_rol`
--

CREATE TABLE `tk_privilegio_rol` (
  `ID_PRIV_ROL` int(11) NOT NULL,
  `ID_ROL` int(11) NOT NULL,
  `ID_PRIVILEGIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A extraer os datos da táboa `tk_privilegio_rol`
--

INSERT INTO `tk_privilegio_rol` (`ID_PRIV_ROL`, `ID_ROL`, `ID_PRIVILEGIO`) VALUES
(3, 1, 1),
(4, 1, 2),
(6, 1, 4),
(7, 1, 3),
(8, 1, 5),
(9, 1, 6),
(10, 1, 7),
(11, 1, 8),
(12, 1, 9),
(13, 1, 12),
(14, 1, 10),
(15, 1, 11),
(17, 2, 13),
(18, 1, 14);

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_rol`
--

CREATE TABLE `tk_rol` (
  `ID_ROL` int(11) NOT NULL,
  `ROL` varchar(200) NOT NULL,
  `DESCRIPCION` varchar(500) NOT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USUARIO_REG` varchar(200) NOT NULL,
  `FECHA_MOD` timestamp NOT NULL,
  `USUARIO_MOD` varchar(200) NOT NULL,
  `ESTADO_REG` enum('1','0') NOT NULL DEFAULT '1',
  `ESTADO` enum('activo','inactivo') NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A extraer os datos da táboa `tk_rol`
--

INSERT INTO `tk_rol` (`ID_ROL`, `ROL`, `DESCRIPCION`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`, `ESTADO_REG`, `ESTADO`) VALUES
(1, 'administrador', 'Rol de administracion del sistema', '2020-10-22 22:48:40', 'nmedrano', '2020-10-30 22:53:18', 'nmedrano', '1', 'activo'),
(2, 'OPERADOR', 'OP', '2020-10-22 23:41:57', 'nmedrano', '2020-10-23 02:49:36', 'nmedrano', '1', 'activo');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_rol_usuario`
--

CREATE TABLE `tk_rol_usuario` (
  `ID_ROL_USR` int(11) NOT NULL,
  `ID_ROL` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A extraer os datos da táboa `tk_rol_usuario`
--

INSERT INTO `tk_rol_usuario` (`ID_ROL_USR`, `ID_ROL`, `ID_USUARIO`) VALUES
(4, 1, 2),
(6, 2, 3),
(7, 1, 1),
(9, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_solicitud_ticket`
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
-- A extraer os datos da táboa `tk_solicitud_ticket`
--

INSERT INTO `tk_solicitud_ticket` (`ID_SOLICITUD`, `ID_USUARIO`, `ID_TICKET`, `ID_ESTACION`, `FECHA_LLAMADA`, `HORA_LLAMADA`, `ESTADO_LLAMADA`, `NRO_LLAMADA`) VALUES
(1, 2, 1, 2, '2020-10-20', '23:00:43', '2', 1),
(2, 2, 1, 1, '2020-10-20', '23:04:45', '2', 2),
(3, 2, 2, 2, '2020-10-20', '23:10:49', '2', 1),
(4, 2, 2, 1, '2020-10-20', '23:10:57', '2', 2),
(5, 2, 3, 2, '2020-10-21', '03:50:13', '2', 1),
(6, 2, 3, 1, '2020-10-21', '03:50:20', '2', 2),
(7, 1, 5, 1, '2020-10-28', '15:23:29', '2', 1),
(8, 1, 5, 1, '2020-10-28', '15:23:48', '2', 2);

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_ticket`
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
-- A extraer os datos da táboa `tk_ticket`
--

INSERT INTO `tk_ticket` (`ID_TICKET`, `ID_CATEGORIA`, `ID_ZONA`, `NUMERO`, `CODIGO`, `PRIORIDAD`, `QR`, `ON_DISPLAY`, `USUARIO_REG`, `USUARIO_MOD`, `ESTADO_REG`, `ESTADO`, `FECHA_MOD`, `FECHA_REG`, `HORA_IMPRESION`, `FECHA_IMPRESION`) VALUES
(1, 1, 1, '1', 'CJ-AT-1', 1, '...', 2, 0, NULL, NULL, '4', '2020-10-20 23:04:51', '2020-10-20 04:00:00', '23:00:09', '2020-10-20'),
(2, 1, 1, '2', 'CJ-AT-2', 1, '...', 2, 0, NULL, NULL, '4', '2020-10-20 23:11:09', '2020-10-20 04:00:00', '23:10:05', '2020-10-20'),
(3, 1, 1, '1', 'CJ-AT-1', 1, '...', 2, 0, NULL, NULL, '4', '2020-10-21 03:50:28', '2020-10-21 04:00:00', '03:49:41', '2020-10-21'),
(4, 1, 2, '1', 'SRV-AT-1', 1, '...', 0, 0, NULL, NULL, '1', '2020-10-26 18:41:06', '2020-10-26 04:00:00', '18:41:06', '2020-10-26'),
(5, 1, 1, '1', 'CJ-AT-1', 1, '...', 2, 0, NULL, NULL, '4', '2020-10-28 19:23:51', '2020-10-28 04:00:00', '15:22:44', '2020-10-28');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_usuario`
--

CREATE TABLE `tk_usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_PERSONA` int(11) DEFAULT NULL,
  `NOMBRE_USUARIO` varchar(150) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `PASSWORD` varchar(400) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci DEFAULT 'activo',
  `USUARIO_REG` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_MOD` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ESTADO_REG` enum('1','0') COLLATE ucs2_spanish2_ci DEFAULT '1',
  `FECHA_EXPIRACION` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- A extraer os datos da táboa `tk_usuario`
--

INSERT INTO `tk_usuario` (`ID_USUARIO`, `ID_PERSONA`, `NOMBRE_USUARIO`, `PASSWORD`, `ESTADO`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`, `ESTADO_REG`, `FECHA_EXPIRACION`) VALUES
(1, 1, 'admin123', 'admin123', 'activo', NULL, '2020-10-22 23:12:45', 'nmedrano', '2020-10-23 03:12:42', '1', NULL),
(2, 2, 'nmedrano', 'nmedrano', 'activo', 'admin123', '2020-10-22 22:59:43', 'nmedrano', '2020-10-23 02:59:40', '1', NULL),
(3, 3, 'op1', 'op1', 'activo', 'nmedrano', '2020-10-23 02:46:07', NULL, '2020-10-22 22:46:16', '1', NULL);

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_usuario_bitacora`
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

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_usuario_estacion`
--

CREATE TABLE `tk_usuario_estacion` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ESTACION` int(11) NOT NULL,
  `ID_ZONA` int(11) NOT NULL,
  `ID_USUARIO_ESTACION` int(11) NOT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_REG` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USUARIO_MOD` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- A extraer os datos da táboa `tk_usuario_estacion`
--

INSERT INTO `tk_usuario_estacion` (`ID_USUARIO`, `ID_ESTACION`, `ID_ZONA`, `ID_USUARIO_ESTACION`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`, `ESTADO`) VALUES
(2, 2, 1, 1, '2020-10-21 02:54:48', 'admin123', '2020-10-20 22:55:16', NULL, 'activo'),
(2, 3, 2, 2, '2020-10-21 02:55:18', 'admin123', '2020-10-20 22:57:35', NULL, 'activo'),
(1, 1, 1, 5, '2020-10-28 03:50:35', 'admin123', '2020-10-28 03:50:42', NULL, 'activo');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_usuario_zona`
--

CREATE TABLE `tk_usuario_zona` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_ZONA` int(11) NOT NULL,
  `ID_USUARIO_ZONA` int(11) NOT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_REG` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USUARIO_MOD` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- A extraer os datos da táboa `tk_usuario_zona`
--

INSERT INTO `tk_usuario_zona` (`ID_USUARIO`, `ID_ZONA`, `ID_USUARIO_ZONA`, `FECHA_REG`, `USUARIO_REG`, `FECHA_MOD`, `USUARIO_MOD`, `ESTADO`) VALUES
(2, 1, 1, '2020-10-21 02:57:40', 'admin123', '2020-10-20 22:57:46', NULL, 'activo'),
(2, 2, 2, '2020-10-21 02:57:49', 'admin123', '2020-10-20 22:57:58', NULL, 'activo'),
(3, 1, 3, '2020-10-23 02:52:40', 'nmedrano', '2020-10-22 22:52:45', NULL, 'activo'),
(1, 1, 4, '2020-10-23 03:13:14', 'nmedrano', '2020-10-22 23:13:19', NULL, 'activo');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tk_zona_atencion`
--

CREATE TABLE `tk_zona_atencion` (
  `ID_ZONA` int(11) NOT NULL,
  `NOMBRE` varchar(300) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` text COLLATE ucs2_spanish2_ci,
  `CODIGO` varchar(50) COLLATE ucs2_spanish2_ci NOT NULL,
  `ESTADO` enum('activo','inactivo') COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `USUARIO_REG` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_REG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USUARIO_MOD` varchar(200) COLLATE ucs2_spanish2_ci DEFAULT NULL,
  `FECHA_MOD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ESTADO_REG` enum('1','0') COLLATE ucs2_spanish2_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

--
-- A extraer os datos da táboa `tk_zona_atencion`
--

INSERT INTO `tk_zona_atencion` (`ID_ZONA`, `NOMBRE`, `DESCRIPCION`, `CODIGO`, `ESTADO`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`, `ESTADO_REG`) VALUES
(1, 'Cajas', '<p>\r\n	Cajas</p>\r\n', 'CJ', 'activo', 'admin123', '2020-10-21 02:50:46', NULL, '2020-10-20 22:50:57', '1'),
(2, 'Servicios', '<p>\r\n	SRV</p>\r\n', 'SRV', 'activo', 'admin123', '2020-10-21 02:51:00', NULL, '2020-10-20 22:51:10', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tk_atencion_actual`
--
ALTER TABLE `tk_atencion_actual`
  ADD PRIMARY KEY (`ID_ATENCION`);

--
-- Indexes for table `tk_bitacora_atencion`
--
ALTER TABLE `tk_bitacora_atencion`
  ADD PRIMARY KEY (`ID_BITACORA_ATENCION`),
  ADD KEY `FK_R1` (`ID_USUARIO`),
  ADD KEY `FK_R2` (`ID_TICKET`);

--
-- Indexes for table `tk_bitacora_categoria`
--
ALTER TABLE `tk_bitacora_categoria`
  ADD PRIMARY KEY (`ID_BITACORA_CATEGORIA`),
  ADD KEY `FK_R9` (`ID_CATEGORIA`);

--
-- Indexes for table `tk_categoria`
--
ALTER TABLE `tk_categoria`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Indexes for table `tk_categoria_zona`
--
ALTER TABLE `tk_categoria_zona`
  ADD PRIMARY KEY (`ID_CATEGORIA_ZONA`),
  ADD KEY `FK_R11` (`ID_ZONA`),
  ADD KEY `FK_R12` (`ID_CATEGORIA`);

--
-- Indexes for table `tk_categoria_zona_bitacora`
--
ALTER TABLE `tk_categoria_zona_bitacora`
  ADD PRIMARY KEY (`ID_CAT_ZONA_BITACORA`),
  ADD KEY `FK_R16` (`ID_CATEGORIA_ZONA`);

--
-- Indexes for table `tk_estacion`
--
ALTER TABLE `tk_estacion`
  ADD PRIMARY KEY (`ID_ESTACION`),
  ADD KEY `FK_R20` (`ID_ZONA`);

--
-- Indexes for table `tk_menu`
--
ALTER TABLE `tk_menu`
  ADD PRIMARY KEY (`ID_MENU`);

--
-- Indexes for table `tk_multimedia`
--
ALTER TABLE `tk_multimedia`
  ADD PRIMARY KEY (`ID_MULTIMEDIA`);

--
-- Indexes for table `tk_persona`
--
ALTER TABLE `tk_persona`
  ADD PRIMARY KEY (`ID_PERSONA`),
  ADD KEY `FK_R6` (`ID_USUARIO`);

--
-- Indexes for table `tk_privilegio`
--
ALTER TABLE `tk_privilegio`
  ADD PRIMARY KEY (`ID_PRIVILEGIO`);

--
-- Indexes for table `tk_privilegio_rol`
--
ALTER TABLE `tk_privilegio_rol`
  ADD PRIMARY KEY (`ID_PRIV_ROL`);

--
-- Indexes for table `tk_rol`
--
ALTER TABLE `tk_rol`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- Indexes for table `tk_rol_usuario`
--
ALTER TABLE `tk_rol_usuario`
  ADD PRIMARY KEY (`ID_ROL_USR`);

--
-- Indexes for table `tk_solicitud_ticket`
--
ALTER TABLE `tk_solicitud_ticket`
  ADD PRIMARY KEY (`ID_SOLICITUD`),
  ADD KEY `FK_R5` (`ID_USUARIO`),
  ADD KEY `FK_R8` (`ID_TICKET`);

--
-- Indexes for table `tk_ticket`
--
ALTER TABLE `tk_ticket`
  ADD PRIMARY KEY (`ID_TICKET`),
  ADD KEY `FK_R3` (`ID_CATEGORIA`);

--
-- Indexes for table `tk_usuario`
--
ALTER TABLE `tk_usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `FK_R7` (`ID_PERSONA`);

--
-- Indexes for table `tk_usuario_bitacora`
--
ALTER TABLE `tk_usuario_bitacora`
  ADD PRIMARY KEY (`id_usuario_bitacora`);

--
-- Indexes for table `tk_usuario_estacion`
--
ALTER TABLE `tk_usuario_estacion`
  ADD PRIMARY KEY (`ID_USUARIO_ESTACION`);

--
-- Indexes for table `tk_usuario_zona`
--
ALTER TABLE `tk_usuario_zona`
  ADD PRIMARY KEY (`ID_USUARIO_ZONA`),
  ADD KEY `FK_R10` (`ID_ZONA`),
  ADD KEY `FK_R4` (`ID_USUARIO`);

--
-- Indexes for table `tk_zona_atencion`
--
ALTER TABLE `tk_zona_atencion`
  ADD PRIMARY KEY (`ID_ZONA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tk_atencion_actual`
--
ALTER TABLE `tk_atencion_actual`
  MODIFY `ID_ATENCION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_bitacora_atencion`
--
ALTER TABLE `tk_bitacora_atencion`
  MODIFY `ID_BITACORA_ATENCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tk_bitacora_categoria`
--
ALTER TABLE `tk_bitacora_categoria`
  MODIFY `ID_BITACORA_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_categoria`
--
ALTER TABLE `tk_categoria`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tk_categoria_zona`
--
ALTER TABLE `tk_categoria_zona`
  MODIFY `ID_CATEGORIA_ZONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tk_categoria_zona_bitacora`
--
ALTER TABLE `tk_categoria_zona_bitacora`
  MODIFY `ID_CAT_ZONA_BITACORA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tk_estacion`
--
ALTER TABLE `tk_estacion`
  MODIFY `ID_ESTACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tk_menu`
--
ALTER TABLE `tk_menu`
  MODIFY `ID_MENU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tk_multimedia`
--
ALTER TABLE `tk_multimedia`
  MODIFY `ID_MULTIMEDIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tk_persona`
--
ALTER TABLE `tk_persona`
  MODIFY `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tk_privilegio`
--
ALTER TABLE `tk_privilegio`
  MODIFY `ID_PRIVILEGIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tk_privilegio_rol`
--
ALTER TABLE `tk_privilegio_rol`
  MODIFY `ID_PRIV_ROL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tk_rol`
--
ALTER TABLE `tk_rol`
  MODIFY `ID_ROL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tk_rol_usuario`
--
ALTER TABLE `tk_rol_usuario`
  MODIFY `ID_ROL_USR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tk_solicitud_ticket`
--
ALTER TABLE `tk_solicitud_ticket`
  MODIFY `ID_SOLICITUD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tk_ticket`
--
ALTER TABLE `tk_ticket`
  MODIFY `ID_TICKET` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tk_usuario`
--
ALTER TABLE `tk_usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tk_usuario_bitacora`
--
ALTER TABLE `tk_usuario_bitacora`
  MODIFY `id_usuario_bitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_usuario_estacion`
--
ALTER TABLE `tk_usuario_estacion`
  MODIFY `ID_USUARIO_ESTACION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tk_usuario_zona`
--
ALTER TABLE `tk_usuario_zona`
  MODIFY `ID_USUARIO_ZONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tk_zona_atencion`
--
ALTER TABLE `tk_zona_atencion`
  MODIFY `ID_ZONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricións para os envorcados das táboas
--

--
-- Restricións para a táboa `tk_bitacora_atencion`
--
ALTER TABLE `tk_bitacora_atencion`
  ADD CONSTRAINT `FK_R1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `FK_R2` FOREIGN KEY (`ID_TICKET`) REFERENCES `tk_ticket` (`ID_TICKET`);

--
-- Restricións para a táboa `tk_bitacora_categoria`
--
ALTER TABLE `tk_bitacora_categoria`
  ADD CONSTRAINT `FK_R9` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Restricións para a táboa `tk_categoria_zona`
--
ALTER TABLE `tk_categoria_zona`
  ADD CONSTRAINT `FK_R11` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`),
  ADD CONSTRAINT `FK_R12` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Restricións para a táboa `tk_categoria_zona_bitacora`
--
ALTER TABLE `tk_categoria_zona_bitacora`
  ADD CONSTRAINT `FK_R16` FOREIGN KEY (`ID_CATEGORIA_ZONA`) REFERENCES `tk_categoria_zona` (`ID_CATEGORIA_ZONA`);

--
-- Restricións para a táboa `tk_estacion`
--
ALTER TABLE `tk_estacion`
  ADD CONSTRAINT `FK_R20` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`);

--
-- Restricións para a táboa `tk_persona`
--
ALTER TABLE `tk_persona`
  ADD CONSTRAINT `FK_R6` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`);

--
-- Restricións para a táboa `tk_solicitud_ticket`
--
ALTER TABLE `tk_solicitud_ticket`
  ADD CONSTRAINT `FK_R5` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `FK_R8` FOREIGN KEY (`ID_TICKET`) REFERENCES `tk_ticket` (`ID_TICKET`);

--
-- Restricións para a táboa `tk_ticket`
--
ALTER TABLE `tk_ticket`
  ADD CONSTRAINT `FK_R3` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Restricións para a táboa `tk_usuario`
--
ALTER TABLE `tk_usuario`
  ADD CONSTRAINT `FK_R7` FOREIGN KEY (`ID_PERSONA`) REFERENCES `tk_persona` (`ID_PERSONA`);

--
-- Restricións para a táboa `tk_usuario_zona`
--
ALTER TABLE `tk_usuario_zona`
  ADD CONSTRAINT `FK_R10` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`),
  ADD CONSTRAINT `FK_R4` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
