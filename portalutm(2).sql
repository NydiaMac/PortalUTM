-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2017 a las 07:14:07
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portalutm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `nombre` varchar(50) DEFAULT NULL,
  `paterno` varchar(50) DEFAULT NULL,
  `materno` varchar(50) DEFAULT NULL,
  `curp` varchar(20) DEFAULT NULL,
  `ss` varchar(20) DEFAULT NULL,
  `control` varchar(20) NOT NULL,
  `grado` varchar(20) DEFAULT NULL,
  `instituto` varchar(50) DEFAULT NULL,
  `cedula` varchar(30) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `contrasena` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`nombre`, `paterno`, `materno`, `curp`, `ss`, `control`, `grado`, `instituto`, `cedula`, `cargo`, `contrasena`) VALUES
('hdsfh', 'sdfgh', 'sdghg', 'ghhth', 'gthhh', 'administradores', 'ff', 'frwrgrg', 'gqeggrwr', 'ggdsd', 'utm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `nombre` varchar(50) DEFAULT NULL,
  `paterno` varchar(50) DEFAULT NULL,
  `materno` varchar(50) DEFAULT NULL,
  `curp` varchar(20) DEFAULT NULL,
  `ss` varchar(20) DEFAULT NULL,
  `matricula` int(20) UNSIGNED NOT NULL,
  `grupo` varchar(10) DEFAULT NULL,
  `carrera` varchar(50) DEFAULT NULL,
  `tutor` varchar(100) DEFAULT NULL,
  `beca` varchar(20) DEFAULT NULL,
  `contrasena` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`nombre`, `paterno`, `materno`, `curp`, `ss`, `matricula`, `grupo`, `carrera`, `tutor`, `beca`, `contrasena`) VALUES
('ghhdhdthg', 'ggsfthth', 'ehjvgg', 'gfhhhwh', 'hwrhthg', 1264, 'dffgg', 'sfhdhjjg', 'fhhghh', 'sfhshtth', 'utm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `ruta` varchar(200) NOT NULL,
  `texto` text NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`ruta`, `texto`, `id`) VALUES
('Imagenes/japon.jpg', 'Uno de los iconos mas emblematicos de Japon, es el monte Fuji, con 3.776 metros de altitud, es el pico mÃ¡s alto de la isla de Honshu.', 165),
('Imagenes/1.png', 'anuncio 1 png', 166),
('Imagenes/', '', 167);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `clave` varchar(20) NOT NULL,
  `matricula` int(20) DEFAULT NULL,
  `control` varchar(20) DEFAULT NULL,
  `parcial1` float NOT NULL,
  `asistencia1` float NOT NULL,
  `parcial2` float NOT NULL,
  `asistencia2` float NOT NULL,
  `parcial3` float NOT NULL,
  `asistencia3` float NOT NULL,
  `final` float NOT NULL,
  `extra1` float NOT NULL,
  `extra2` float NOT NULL,
  `especial` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `nombre` varchar(50) DEFAULT NULL,
  `paterno` varchar(50) DEFAULT NULL,
  `materno` varchar(50) DEFAULT NULL,
  `curp` varchar(20) DEFAULT NULL,
  `ss` varchar(20) DEFAULT NULL,
  `control` varchar(20) NOT NULL,
  `grado` varchar(30) DEFAULT NULL,
  `instituto` varchar(50) DEFAULT NULL,
  `cubo` varchar(20) DEFAULT NULL,
  `contrasena` varchar(20) DEFAULT NULL,
  `cedula` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`nombre`, `paterno`, `materno`, `curp`, `ss`, `control`, `grado`, `instituto`, `cubo`, `contrasena`, `cedula`) VALUES
('uno', 'aaaa', 'dfngng', 'gfgfgfgfgfg', 'gfhdhgngn', 'docentes', 'f', 'fdfdf', 'dggf', 'utm', 'fdvzx'),
('dfdkdfdkff', 'fghhff', 'dffggg', 'dfhjkom', 'xxcfvgvf', 'docentes2', 'ddfdf', 'ddsddd', '12', 'utm2', 'dsdsff');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `clave` int(10) NOT NULL,
  `control` varchar(20) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `descripcion` mediumtext,
  `tamanio` int(10) DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL,
  `ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`clave`, `control`, `ruta`, `titulo`, `descripcion`, `tamanio`, `tipo`, `nombre_archivo`, `ID`) VALUES
(29, 'docentes2\r\n', 'C:xampp	mpphp6E38.tmp', 'prueba5', 'crear fichero y tomar clave de control', 420776, 'application/pdf', 'Tema-7.pdf', '4'),
(30, 'docentes\r\n', 'C:xampp	mpphp38A4.tmp', 'prueba1', 'probar con otro usuario', 138436, 'application/pdf', '3C-Relaciones.pdf', '2'),
(31, 'docentes\r\n', 'C:xampp	mpphp284B.tmp', 'prueba3', 'agregar otro documento', 407399, 'application/pdf', 'apuntesPHP.pdf', '2'),
(32, 'docentes\r\n', 'C:xampp	mpphpAD86.tmp', 'prueba4', 'no es pdf', 170249, 'image/jpeg', 'Yanet De Los Ãngeles VÃ¡squez Cruz.jpg', '4'),
(33, 'docentes\r\n', 'C:xampp	mpphp99E4.tmp', 'prueba5', 'archivo', 117993, 'application/pdf', 'ApunteGRyER.pdf', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregas`
--

CREATE TABLE `entregas` (
  `matricula` int(20) UNSIGNED NOT NULL,
  `nombre_libro` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `numero_paginas` int(10) UNSIGNED DEFAULT NULL,
  `numero_reporte` varchar(30) DEFAULT NULL,
  `tamanio` int(10) UNSIGNED DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entregas`
--

INSERT INTO `entregas` (`matricula`, `nombre_libro`, `autor`, `numero_paginas`, `numero_reporte`, `tamanio`, `tipo`, `nombre_archivo`) VALUES
(1264, 'ggfg', 'frggrg', 0, 'Tercera Lectura', 138436, 'application/pdf', '3C-Relaciones.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_402a`
--

CREATE TABLE `horario_402a` (
  `Hora` varchar(20) NOT NULL,
  `Lunes` varchar(50) NOT NULL,
  `Martes` varchar(50) NOT NULL,
  `Miercoles` varchar(50) NOT NULL,
  `Jueves` varchar(50) NOT NULL,
  `Viernes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_402a`
--

INSERT INTO `horario_402a` (`Hora`, `Lunes`, `Martes`, `Miercoles`, `Jueves`, `Viernes`) VALUES
('8:00 - 9:00', '', '', '', '', ''),
('9:00 - 10:00', 'Ingenieria de Software', 'Ingenieria de Software', 'Ingenieria de Software', 'Ingenieria de Software', 'Ingenieria de Software'),
('10:00 - 11:00', 'Circuitos electricos 1', 'Circuitos electricos 1', 'Circuitos electricos 1', 'Circuitos electricos 1', 'Circuitos electricos 1'),
('11:00 - 12:00', '', '', '', '', ''),
('12:00 - 1:00', '', '', '', '', ''),
('1:00 - 2:00', '', '', '', '', ''),
('4:00 - 5:00', 'Metodos Numericos', 'Metodos Numericos', 'Metodos Numericos', 'Metodos Numericos', 'Metodos Numericos'),
('5:00 - 6:00', 'Programacion Orientada a Obejteos II', 'Programacion Orientada a Obejteos II', 'Programacion Orientada a Obejteos II', 'Programacion Orientada a Obejteos II', 'Programacion Orientada a Obejteos II'),
('6:00 - 7:00', 'Automatas y lenguajes formales', 'Automatas y lenguajes formales', 'Automatas y lenguajes formales', 'Automatas y lenguajes formales', 'Automatas y lenguajes formales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_611a`
--

CREATE TABLE `horario_611a` (
  `Hora` varchar(30) NOT NULL,
  `Lunes` varchar(30) NOT NULL,
  `Martes` varchar(30) NOT NULL,
  `Miercoles` varchar(30) NOT NULL,
  `Jueves` varchar(30) NOT NULL,
  `Viernes` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_611a`
--

INSERT INTO `horario_611a` (`Hora`, `Lunes`, `Martes`, `Miercoles`, `Jueves`, `Viernes`) VALUES
('7:00 - 8:00', '', '', '', '', ''),
('8:00 - 9:00', 'Ergonomia', 'Ergonomia', 'Ergonomia', 'Ergonomia', 'Ergonomia'),
('9:00 - 10:00', 'Derecho laboral y propiedad ', 'Derecho laboral y propiedad ', 'Derecho laboral y propiedad ', 'Derecho laboral y propiedad ', 'Derecho laboral y propiedad '),
('10:00 - 11:00', 'Proceso de manufactura 1', '', '', 'Proceso de manufactura 1', 'Proceso de manufactura 1'),
('11:00 - 12:00', '', '', '', '', ''),
('12:00 -1:00', 'Mercadotecnia', 'Mercadotecnia', 'Mercadotecnia', 'Mercadotecnia', 'Mercadotecnia'),
('1:00 - 2:00', '', '', '', '', ''),
('4:00 - 5:00', 'Termodinamica', 'Termodinamica', 'Termodinamica', 'Termodinamica', 'Termodinamica'),
('5:00 - 6:00', 'Transferencia de calor', 'Transferencia de calor', 'Transferencia de calor', 'Transferencia de calor', 'Transferencia de calor'),
('6:00 - 7:00', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`clave`, `nombre`) VALUES
('1', 'ingenieria de software'),
('2', 'circuitos electricos'),
('3', 'metodos numericos'),
('4', 'programacion OO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `clave` int(10) UNSIGNED NOT NULL,
  `matricula` int(20) UNSIGNED DEFAULT NULL,
  `control` varchar(20) DEFAULT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `descripcion` mediumtext,
  `tamanio` int(10) UNSIGNED DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`clave`, `matricula`, `control`, `ruta`, `titulo`, `descripcion`, `tamanio`, `tipo`, `nombre_archivo`) VALUES
(8, NULL, NULL, NULL, 'trabajo', 'envio', 144277, 'application/pdf', 'euler.pdf'),
(9, NULL, NULL, NULL, 'programa', 'problemas resueltos ', 138014, 'application/pdf', 'alge.pdf');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`control`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`control`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `entregas`
--
ALTER TABLE `entregas`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`clave`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `clave` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `clave` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
