-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2024 a las 15:55:41
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_de_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `apellidoCliente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `apellidoCliente`) VALUES
(1, 'Ranirez'),
(2, 'Sanchez'),
(3, 'Zabaleta'),
(4, 'Microcontrolador'),
(5, 'Zaeta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigobarras`
--

CREATE TABLE `codigobarras` (
  `dni` varchar(20) NOT NULL,
  `codigo_barra` text NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `codigobarras`
--

INSERT INTO `codigobarras` (`dni`, `codigo_barra`, `tipo`) VALUES
('10890123', 'MTA4OTAxMjM=', 'C128');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `IDPermiso` int(2) NOT NULL,
  `Descripcion_Permiso` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`IDPermiso`, `Descripcion_Permiso`) VALUES
(1, 'Administrador'),
(2, 'Super Usuario'),
(3, 'Invitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `DNI` int(8) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `edad` int(2) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `Contrasenia` varchar(20) NOT NULL,
  `Permiso` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`DNI`, `apellido`, `nombre`, `edad`, `Usuario`, `Contrasenia`, `Permiso`) VALUES
(45324162, 'Beldaño', 'Mabel', 23, 'MBeldaño', '1234', 1),
(46987629, 'Romero', 'Micaela', 32, 'RMicaela', '1234', 2),
(47342729, 'Infante', 'Benjamin', 17, 'admin', 'admin', 1),
(10789012, 'Rodriguez', 'Elena', 27, 'erodriguez', 'elenapass', 1),
(10890123, 'Sanchez', 'Miguel', 33, 'msanchez', 'miguelpass', 2),
(10901234, 'Romero', 'Laura', 29, 'lromero', 'romero123', 3),
(11345678, 'Alvarez', 'Victoria', 32, 'valvarez', 'victoriapass', 1),
(11456789, 'Gutierrez', 'Mariano', 37, 'mgutierrez', 'marpass', 2),
(11567890, 'Silva', 'Luciana', 23, 'lsilva', 'lucypass', 3),
(11678901, 'Molina', 'Sebastian', 34, 'smolina', 'sebas123', 1),
(11789012, 'Castro', 'Florencia', 26, 'fcastro', 'florpwd', 2),
(11890123, 'Ortega', 'Jorge', 29, 'jortega', 'ortega123', 3),
(12012345, 'Navarro', 'Lucio', 25, 'lnavarro', 'lucio987', 2),
(12123456, 'Rojas', 'Marta', 36, 'mrojas', 'martarojas', 3),
(12234567, 'Reyes', 'Pablo', 30, 'preyes', 'pablo2023', 1),
(12345678, 'Escobar', 'Clara', 32, 'cescobar', 'escobar123', 2),
(12456789, 'Vega', 'Francisco', 28, 'fvega', 'franpass', 3),
(12567890, 'Sosa', 'Delfina', 29, 'dsosa', 'delfi123', 1),
(12678901, 'Mendez', 'Gonzalo', 27, 'gmendez', 'mendezpass', 2),
(12789012, 'Pereira', 'Mauro', 34, 'mpereira', 'mauropwd', 3),
(12890123, 'Herrera', 'Juliana', 31, 'jherrera', 'juli123', 1),
(12901234, 'Aguero', 'Ricardo', 33, 'raguerro', 'ricardo123', 2),
(13012345, 'Paz', 'Daniela', 29, 'dpaz', 'dani5678', 3),
(34524321, 'seee', 'merentiel', 19, 'marado', 'marado', 2),
(12357232, 'marin', 'kmf', 12, 'afas', 'adminasdf', 1),
(12526365, 'dñlf', 'klñmfgh', 31, 'nagf', 'admina´pomf', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `codigobarras`
--
ALTER TABLE `codigobarras`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`IDPermiso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `IDPermiso` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
