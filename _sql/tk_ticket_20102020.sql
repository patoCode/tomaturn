-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2020 at 10:49 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tomaturn`
--

-- --------------------------------------------------------

--
-- Table structure for table `tk_atencion_actual`
--

CREATE TABLE `tk_atencion_actual` (
  `ID_ATENCION` int(11) NOT NULL,
  `CODIGO_TICKET` varchar(150) COLLATE ucs2_spanish2_ci NOT NULL,
  `ESTACION` varchar(150) COLLATE ucs2_spanish2_ci NOT NULL,
  `FECHA_REG` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tk_bitacora_atencion`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_bitacora_categoria`
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
-- Table structure for table `tk_categoria`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_categoria_zona`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_categoria_zona_bitacora`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_estacion`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_multimedia`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_persona`
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
-- Dumping data for table `tk_persona`
--

INSERT INTO `tk_persona` (`ID_PERSONA`, `ID_USUARIO`, `NOMBRE`, `APELLIDOS`, `FECHA_NAC`, `ESTADO`, `FECHA_MOD`, `USUARIO_MOD`, `FECHA_REG`, `USUARIO_REG`) VALUES
(1, NULL, 'Administrador', 'Ticket', '2020-10-01', 'activo', '2020-10-20 22:48:06', '', '2020-10-20 22:48:06', '');

-- --------------------------------------------------------

--
-- Table structure for table `tk_solicitud_ticket`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_ticket`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_usuario`
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
-- Dumping data for table `tk_usuario`
--

INSERT INTO `tk_usuario` (`ID_USUARIO`, `ID_PERSONA`, `NOMBRE_USUARIO`, `PASSWORD`, `ESTADO`, `USUARIO_REG`, `FECHA_REG`, `USUARIO_MOD`, `FECHA_MOD`, `ESTADO_REG`, `FECHA_EXPIRACION`) VALUES
(1, 1, 'admin123', 'admin123', 'activo', NULL, '2020-10-20 22:48:29', NULL, '2020-10-20 22:48:29', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tk_usuario_bitacora`
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
-- Table structure for table `tk_usuario_estacion`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_usuario_zona`
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

-- --------------------------------------------------------

--
-- Table structure for table `tk_zona_atencion`
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
  MODIFY `ID_BITACORA_ATENCION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_bitacora_categoria`
--
ALTER TABLE `tk_bitacora_categoria`
  MODIFY `ID_BITACORA_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_categoria`
--
ALTER TABLE `tk_categoria`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_categoria_zona`
--
ALTER TABLE `tk_categoria_zona`
  MODIFY `ID_CATEGORIA_ZONA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_categoria_zona_bitacora`
--
ALTER TABLE `tk_categoria_zona_bitacora`
  MODIFY `ID_CAT_ZONA_BITACORA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_estacion`
--
ALTER TABLE `tk_estacion`
  MODIFY `ID_ESTACION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_multimedia`
--
ALTER TABLE `tk_multimedia`
  MODIFY `ID_MULTIMEDIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_persona`
--
ALTER TABLE `tk_persona`
  MODIFY `ID_PERSONA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tk_solicitud_ticket`
--
ALTER TABLE `tk_solicitud_ticket`
  MODIFY `ID_SOLICITUD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_ticket`
--
ALTER TABLE `tk_ticket`
  MODIFY `ID_TICKET` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_usuario`
--
ALTER TABLE `tk_usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tk_usuario_bitacora`
--
ALTER TABLE `tk_usuario_bitacora`
  MODIFY `id_usuario_bitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_usuario_estacion`
--
ALTER TABLE `tk_usuario_estacion`
  MODIFY `ID_USUARIO_ESTACION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_usuario_zona`
--
ALTER TABLE `tk_usuario_zona`
  MODIFY `ID_USUARIO_ZONA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_zona_atencion`
--
ALTER TABLE `tk_zona_atencion`
  MODIFY `ID_ZONA` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tk_bitacora_atencion`
--
ALTER TABLE `tk_bitacora_atencion`
  ADD CONSTRAINT `FK_R1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `FK_R2` FOREIGN KEY (`ID_TICKET`) REFERENCES `tk_ticket` (`ID_TICKET`);

--
-- Constraints for table `tk_bitacora_categoria`
--
ALTER TABLE `tk_bitacora_categoria`
  ADD CONSTRAINT `FK_R9` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Constraints for table `tk_categoria_zona`
--
ALTER TABLE `tk_categoria_zona`
  ADD CONSTRAINT `FK_R11` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`),
  ADD CONSTRAINT `FK_R12` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Constraints for table `tk_categoria_zona_bitacora`
--
ALTER TABLE `tk_categoria_zona_bitacora`
  ADD CONSTRAINT `FK_R16` FOREIGN KEY (`ID_CATEGORIA_ZONA`) REFERENCES `tk_categoria_zona` (`ID_CATEGORIA_ZONA`);

--
-- Constraints for table `tk_estacion`
--
ALTER TABLE `tk_estacion`
  ADD CONSTRAINT `FK_R20` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`);

--
-- Constraints for table `tk_persona`
--
ALTER TABLE `tk_persona`
  ADD CONSTRAINT `FK_R6` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`);

--
-- Constraints for table `tk_solicitud_ticket`
--
ALTER TABLE `tk_solicitud_ticket`
  ADD CONSTRAINT `FK_R5` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `FK_R8` FOREIGN KEY (`ID_TICKET`) REFERENCES `tk_ticket` (`ID_TICKET`);

--
-- Constraints for table `tk_ticket`
--
ALTER TABLE `tk_ticket`
  ADD CONSTRAINT `FK_R3` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `tk_categoria` (`ID_CATEGORIA`);

--
-- Constraints for table `tk_usuario`
--
ALTER TABLE `tk_usuario`
  ADD CONSTRAINT `FK_R7` FOREIGN KEY (`ID_PERSONA`) REFERENCES `tk_persona` (`ID_PERSONA`);

--
-- Constraints for table `tk_usuario_zona`
--
ALTER TABLE `tk_usuario_zona`
  ADD CONSTRAINT `FK_R10` FOREIGN KEY (`ID_ZONA`) REFERENCES `tk_zona_atencion` (`ID_ZONA`),
  ADD CONSTRAINT `FK_R4` FOREIGN KEY (`ID_USUARIO`) REFERENCES `tk_usuario` (`ID_USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
