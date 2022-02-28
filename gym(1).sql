-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-02-2022 a las 18:50:43
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

DROP TABLE IF EXISTS `ejercicio`;
CREATE TABLE IF NOT EXISTS `ejercicio` (
  `id_ejercicio` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(50) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  PRIMARY KEY (`id_ejercicio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenamiento`
--

DROP TABLE IF EXISTS `entrenamiento`;
CREATE TABLE IF NOT EXISTS `entrenamiento` (
  `id_entreno` int(11) NOT NULL AUTO_INCREMENT,
  `id_ejercicio` int(11) NOT NULL,
  `nota` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_entreno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_muscular`
--

DROP TABLE IF EXISTS `grupo_muscular`;
CREATE TABLE IF NOT EXISTS `grupo_muscular` (
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` int(11) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

DROP TABLE IF EXISTS `rutina`;
CREATE TABLE IF NOT EXISTS `rutina` (
  `id_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rutina`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

DROP TABLE IF EXISTS `serie`;
CREATE TABLE IF NOT EXISTS `serie` (
  `id_serie` int(11) NOT NULL AUTO_INCREMENT,
  `id_entrenamiento` int(11) NOT NULL,
  `num_serie` int(11) NOT NULL,
  `reps` int(11) NOT NULL,
  `peso` double NOT NULL,
  PRIMARY KEY (`id_serie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
