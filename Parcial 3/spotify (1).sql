-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2024 a las 04:19:10
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'The weekend', ''),
(2, 'Taylor Swift', ''),
(3, 'Ariana Grande', ''),
(4, 'justin Bieber', ''),
(5, 'Drake', ''),
(6, 'Dua lipa', ''),
(7, 'Shakira', ''),
(8, 'Bruno Mars', ''),
(9, 'Eminem', ''),
(10, 'Six Nine', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Dark horse', 4, '00:03:47', '2014-04-09', 1, 'la cara de katy perry'),
(2, 'rather be', 4, '00:03:24', '2014-04-09', 1, 'una piedra esmeralda'),
(3, 'timber', 4, '00:03:24', '2014-04-09', 1, 'luna azul'),
(4, 'counting stars', 4, '00:04:17', '2019-04-09', 1, 'la banda'),
(5, 'pompeii', 4, '00:03:34', '2015-03-30', 1, 'bastille'),
(6, 'safe and sound', 4, '00:03:12', '2017-06-12', 1, 'jaguar'),
(7, 'la la la', 4, '00:03:41', '2016-04-26', 1, 'cabeza de un señor'),
(8, 'ho hey', 4, '00:02:43', '2014-05-21', 1, 'album'),
(9, 'mirrors', 4, '00:08:04', '2011-02-20', 1, 'J-T'),
(10, 'animals', 4, '00:05:03', '2021-04-30', 1, 'animales'),
(11, 'latch', 4, '00:04:15', '2000-01-17', 1, 'dos niños'),
(12, 'diamonds', 4, '00:03:45', '2011-06-13', 1, 'rihanna'),
(13, 'my love', 4, '00:04:22', '2015-04-15', 1, '94'),
(14, 'little talks', 4, '00:04:22', '2013-05-27', 1, 'gris'),
(15, 'titanium', 4, '00:04:05', '2021-01-12', 1, 'señor sentado'),
(16, 'chocolate', 4, '00:03:44', '2014-05-30', 1, 'chocolate'),
(17, 'all night', 4, '00:03:07', '2021-11-29', 1, 'mujer y niño'),
(18, 'liar liar', 4, '00:03:33', '2020-12-25', 1, 'negro'),
(19, 'budapest', 4, '00:03:22', '2021-11-15', 1, 'pescado'),
(20, 'wings', 4, '00:04:12', '2000-04-12', 1, 'muchacho zombie'),
(21, 'paradise', 4, '00:04:38', '2011-12-19', 1, 'escultura'),
(22, 'ten feet tall', 4, '00:03:53', '2016-11-24', 1, 'sombra'),
(23, 'tsunami', 4, '00:03:56', '2024-03-28', 1, 'TSUNAMI'),
(24, 'waves', 4, '00:03:28', '2023-05-14', 1, 'concierto'),
(25, 'don\'t you worry child', 4, '00:03:00', '2020-11-04', 1, 'burbujas'),
(26, 'work', 2, '00:02:52', '2021-11-25', 1, 'cuadrado verde'),
(27, 'armaggedon', 2, '00:03:16', '1998-12-05', 1, 'mariposa pintada'),
(28, 'king kong', 2, '00:03:16', '2021-04-08', 1, 'king kong'),
(29, 'supernova', 2, '00:02:58', '2021-12-04', 1, 'mariposa rosa'),
(30, 'spring snow', 2, '00:03:21', '0000-00-00', 1, 'muchachos enamorados'),
(31, 'spot', 2, '00:02:47', '2012-05-24', 1, 'fiesta'),
(32, 'SHEESH', 2, '00:02:50', '2024-11-15', 1, 'babymonster'),
(33, 'lost', 2, '00:03:53', '2024-12-15', 1, 'multitud perdida'),
(34, 'maestro', 2, '00:03:18', '2016-06-26', 1, 'colores'),
(35, '200', 2, '00:02:44', '0000-00-00', 1, 'personaje de anime'),
(36, 'FREAK', 2, '00:02:51', '2021-05-27', 1, 'YOO!'),
(37, 'HEYA', 2, '00:03:09', '2021-11-24', 1, 'SAIC'),
(38, 'MARS', 2, '00:03:07', '2016-07-03', 1, 'valle'),
(39, 'smart', 2, '00:02:46', '2010-02-20', 0, 'Texto negro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'Jazz'),
(2, 'K-POP'),
(3, 'Rock and roll'),
(4, 'Pop'),
(5, 'Rap'),
(6, 'Funk'),
(7, 'Reggae'),
(8, 'Salsa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id`, `descripcion`, `precio`) VALUES
(4, 'Individual', 129),
(5, 'Duo', 169),
(6, 'Familiar', 199),
(7, 'Estudiantes', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_can` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(1000) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Jaime Fernando Hernández Mendoza', 'JFHM@gmail.com', 6),
(2, 'Marco Uriel Aguiluz Ibarra', 'MUAI@gmail.com', 4),
(3, 'Bejarano Félix Larissa', 'Larissabf07@gmail.com', 5),
(4, 'Coronel López Jeyli Johana', 'CLJJ@gmail.com', 7),
(5, 'Reyes Aguilar Axel', 'RAA@gmail.com', 7),
(6, 'Julio Isaac López Hernández', 'JILH@gmail.com', 4),
(7, 'Mario Hernández Ramírez', 'MHR@gmail.com', 7),
(8, 'Juan Fernández Urías', 'JFU@gmail.com', 6),
(9, 'Juan Ernesto López Castro', 'JELC@gmail.com', 7),
(10, 'María López Torres', 'MLT@gmail.com', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`,`cancion_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`,`cancion_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`,`cancion_id`,`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
