-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2020 a las 06:11:21
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_creadores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creadores`
--

CREATE TABLE `creadores` (
  `id_creador` int(11) NOT NULL,
  `creador` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `creadores`
--

INSERT INTO `creadores` (`id_creador`, `creador`, `email`) VALUES
(1, 'Romina Dehesa', 'rominadehesa@gmail.com'),
(2, 'Joaquin Loiza', 'loiza.joaquin@gmail.com'),
(3, 'Marcela Aguirre', 'aguirremarcela@hotmail.com.ar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `creadores`
--
ALTER TABLE `creadores`
  ADD PRIMARY KEY (`id_creador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `creadores`
--
ALTER TABLE `creadores`
  MODIFY `id_creador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
