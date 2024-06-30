-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2024 a las 03:48:01
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
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`ID`, `nombre`, `descripcion`) VALUES
(1, 'Los Acuarelas Eléctricas', 'Una banda que fusiona sonidos étnicos con electrónicos, llevando a sus oyentes en un viaje introspectivo hacia lo más profundo del ser.'),
(2, 'Sonidos Celestiales', 'Un músico solista que combina letras poéticas con riffs de guitarra contundentes, creando un sonido que despierta la conciencia y la pasión.'),
(3, 'Fusión Cibernética', 'Una cantante cuyas melodías evocan la belleza y el misterio del océano, con una voz que cautiva como el canto de una sirena.'),
(4, 'Ritmo de Neón', 'Una agrupación que mezcla elementos de funk, soul y hip-hop, creando una energía contagiosa que hace vibrar a sus seguidores.'),
(5, 'Luz de Lunas', 'Un productor musical que experimenta con una variedad de géneros, fusionando elementos electrónicos con instrumentación orgánica para crear composiciones sonoras únicas que trascienden las fronteras musicales tradicionales.'),
(6, 'Vibraciones Cósmicas', 'Un dúo acústico que encuentra inspiración en la naturaleza, creando melodías serenas y armonías etéreas que evocan la calma y la belleza de los paisajes boscosos.'),
(7, 'Alquimia Musical', 'Una cantante con una voz poderosa y letras que reflejan la vida urbana, cautivando a su audiencia con su presencia escénica y su carisma.'),
(8, 'Ecos del Horizonte', 'Un grupo de músicos que revitaliza y reinterpreta las tradiciones folclóricas de diversas culturas, fusionando sonidos ancestrales con arreglos contemporáneos.'),
(9, 'El Escultor del Sonido', 'Un músico y productor que moldea meticulosamente cada nota y ritmo, creando composiciones que son verdaderas obras de arte auditivas.'),
(10 'Sinfonía Estelar', 'Una artista solista cuya música refleja la melancolía y la belleza efímera del atardecer, con letras poéticas y arreglos musicales envolventes que transportan a sus oyentes a otro mundo.')

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `ID` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO canciones (id, titulo, categoria_id, duracion, fecha_toma, activa, ruta) VALUES
(1, 'The Lemon Tree', 5, '03:55:00', '2023-10-10', 1, '/ruta/foto1.jpg'),
(2, 'We Will Rock You', 7, '02:00:00', '2024-03-12', 1, '/ruta/foto2.jpg'),
(3, 'Welcome To The Jungle', 4, '04:00:00', '2023-10-10', 1, '/ruta/foto3.jpg'),
(4, 'Smooth Criminal', 1, '04:30:00', '2024-04-20', 1, '/ruta/foto4.jpg'),
(5, 'Careless Whisper', 6, '03:15:00', '2022-08-20', 1, '/ruta/foto5.jpg'),
(6, 'Never Gonna Give You Up', 3, '03:20:00', '2023-01-05', 1, '/ruta/foto6.jpg'),
(7, 'Take On Me', 5, '03:50:00', '2023-12-15', 1, '/ruta/foto7.jpg'),
(8, 'Stand By Me', 7, '02:51:00', '2022-10-25', 1, '/ruta/foto8.jpg'),
(9, 'Hotel California', 4, '06:30:00', '2022-12-01', 1, '/ruta/foto9.jpg'),
(10, 'Imagine', 1, '03:14:00', '2023-02-18', 1, '/ruta/foto10.jpg'),
(11, 'Africa', 5, '04:15:00', '2023-06-10', 1, '/ruta/foto11.jpg'),
(12, 'Take On Me', 6, '03:50:00', '2022-11-25', 1, '/ruta/foto12.jpg'),
(13, 'The Lemon Tree', 2, '03:55:00', '2023-09-20', 1, '/ruta/foto13.jpg'),
(14, 'We Will Rock You', 3, '02:00:00', '2024-04-12', 1, '/ruta/foto14.jpg'),
(15, 'Welcome To The Jungle', 7, '04:00:00', '2023-10-10', 1, '/ruta/foto15.jpg'),
(16, 'Smooth Criminal', 4, '04:30:00', '2024-03-20', 1, '/ruta/foto16.jpg'),
(17, 'Careless Whisper', 1, '03:15:00', '2022-08-10', 1, '/ruta/foto17.jpg'),
(18, 'Never Gonna Give You Up', 2, '03:20:00', '2023-01-25', 1, '/ruta/foto18.jpg'),
(19, 'Take On Me', 3, '03:50:00', '2023-12-10', 1, '/ruta/foto19.jpg'),
(20, 'Stand By Me', 5, '02:51:00', '2022-10-30', 1, '/ruta/foto20.jpg'),
(21, 'Hotel California', 6, '06:30:00', '2022-12-20', 1, '/ruta/foto21.jpg'),
(22, 'Imagine', 7, '03:14:00', '2023-02-28', 1, '/ruta/foto22.jpg'),
(23, 'Africa', 4, '04:15:00', '2023-06-15', 1, '/ruta/foto23.jpg'),
(24, 'Take On Me', 1, '03:50:00', '2022-11-10', 1, '/ruta/foto24.jpg'),
(25, 'The Lemon Tree', 2, '03:55:00', '2023-09-25', 1, '/ruta/foto25.jpg'),
(26, 'We Will Rock You', 3, '02:00:00', '2024-05-12', 1, '/ruta/foto26.jpg'),
(27, 'Welcome To The Jungle', 5, '04:00:00', '2023-11-10', 1, '/ruta/foto27.jpg'),
(28, 'Smooth Criminal', 7, '04:30:00', '2024-03-25', 1, '/ruta/foto28.jpg'),
(29, 'Careless Whisper', 4, '03:15:00', '2022-08-20', 1, '/ruta/foto29.jpg'),
(30, 'Never Gonna Give You Up', 1, '03:20:00', '2023-02-05', 1, '/ruta/foto30.jpg'),
(31, 'Take On Me', 2, '03:50:00', '2023-12-20', 1, '/ruta/foto31.jpg'),
(32, 'Stand By Me', 3, '02:51:00', '2022-11-05', 1, '/ruta/foto32.jpg'),
(33, 'Hotel California', 5, '06:30:00', '2023-01-01', 1, '/ruta/foto33.jpg'),
(34, 'Imagine', 6, '03:14:00', '2023-03-18', 1, '/ruta/foto34.jpg'),
(35, 'Africa', 7, '04:15:00', '2023-07-10', 1, '/ruta/foto35.jpg'),
(36, 'Take On Me', 4, '03:50:00', '2022-11-25', 1, '/ruta/foto36.jpg'),
(37, 'The Lemon Tree', 5, '03:55:00', '2023-09-30', 1, '/ruta/foto37.jpg'),
(38, 'We Will Rock You', 6, '02:00:00', '2024-05-12', 1, '/ruta/foto38.jpg'),
(39, 'Welcome To The Jungle', 1, '04:00:00', '2023-11-20', 1, '/ruta/foto39.jpg'),
(40, 'Smooth Criminal', 2, '04:30:00', '2024-03-30', 1, '/ruta/foto40.jpg'),
(41, 'Careless Whisper', 3, '03:15:00', '2022-09-10', 1, '/ruta/foto41.jpg'),
(42, 'Never Gonna Give You Up', 4, '03:20:00', '2023-02-15', 1, '/ruta/foto42.jpg'),
(43, 'Take On Me', 5, '03:50:00', '2023-12-25', 1, '/ruta/foto43.jpg'),
(44, 'Stand By Me', 6, '02:51:00', '2022-11-10', 1, '/ruta/foto44.jpg'),
(45, 'Hotel California', 7, '06:30:00', '2023-01-10', 1, '/ruta/foto45.jpg'),
(46, 'Imagine', 1, '03:14:00', '2023-03-25', 1, '/ruta/foto46.jpg'),
(47, 'Africa', 2, '04:15:00', '2023-07-20', 1, '/ruta/foto47.jpg'),
(48, 'Take On Me', 3, '03:50:00', '2022-12-05', 1, '/ruta/foto48.jpg'),
(49, 'The Lemon Tree', 4, '03:55:00', '2023-10-01', 1, '/ruta/foto49.jpg'),
(50, 'We Will Rock You', 5, '02:00:00', '2024-05-20', 1, '/ruta/foto50.jpg'),
(51, 'Welcome To The Jungle', 6, '04:00:00', '2023-11-30', 1, '/ruta/foto51.jpg'),
(52, 'Smooth Criminal', 7, '04:30:00', '2024-04-01', 1, '/ruta/foto52.jpg'),
(53, 'Careless Whisper', 1, '03:15:00', '2022-09-20', 1, '/ruta/foto53.jpg'),
(54, 'Never Gonna Give You Up', 2, '03:20:00', '2023-02-25', 1, '/ruta/foto54.jpg'),
(55, 'Take On Me', 3, '03:50:00', '2023-12-30', 1, '/ruta/foto55.jpg'),
(56, 'Stand By Me', 4, '02:51:00', '2022-11-15', 1, '/ruta/foto56.jpg'),
(57, 'Hotel California', 5, '06:30:00', '2023-01-20', 1, '/ruta/foto57.jpg'),
(58, 'Imagine', 6, '03:14:00', '2023-04-05', 1, '/ruta/foto58.jpg'),
(59, 'Africa', 7, '04:15:00', '2023-08-10', 1, '/ruta/foto59.jpg'),
(60, 'Take On Me', 1, '03:50:00', '2022-12-15', 1, '/ruta/foto60.jpg'),
(61, 'The Lemon Tree', 2, '03:55:00', '2023-10-05', 1, '/ruta/foto61.jpg'),
(62, 'We Will Rock You', 3, '02:00:00', '2024-06-12', 1, '/ruta/foto62.jpg'),
(63, 'Welcome To The Jungle', 4, '04:00:00', '2023-12-10', 1, '/ruta/foto63.jpg'),
(64, 'Smooth Criminal', 5, '04:30:00', '2024-04-10', 1, '/ruta/foto64.jpg'),
(65, 'Careless Whisper', 6, '03:15:00', '2022-10-30', 1, '/ruta/foto65.jpg'),
(66, 'Never Gonna Give You Up', 7, '03:20:00', '2023-03-05', 1, '/ruta/foto66.jpg'),
(67, 'Take On Me', 1, '03:50:00', '2023-01-10', 1, '/ruta/foto67.jpg'),
(68, 'Stand By Me', 2, '02:51:00', '2022-11-25', 1, '/ruta/foto68.jpg'),
(69, 'Hotel California', 3, '06:30:00', '2023-01-15', 1, '/ruta/foto69.jpg'),
(70, 'Imagine', 5, '03:14:00', '2023-04-20', 1, '/ruta/foto70.jpg'),
(71, 'Africa', 6, '04:15:00', '2023-08-25', 1, '/ruta/foto71.jpg'),
(72, 'Take On Me', 7, '03:50:00', '2022-12-20', 1, '/ruta/foto72.jpg'),
(73, 'The Lemon Tree', 1, '03:55:00', '2023-10-10', 1, '/ruta/foto73.jpg'),
(74, 'We Will Rock You', 2, '02:00:00', '2024-06-20', 1, '/ruta/foto74.jpg'),
(75, 'Welcome To The Jungle', 3, '04:00:00', '2023-12-20', 1, '/ruta/foto75.jpg'),
(76, 'Smooth Criminal', 4, '04:30:00', '2024-04-20', 1, '/ruta/foto76.jpg'),
(77, 'Careless Whisper', 5, '03:15:00', '2022-11-10', 1, '/ruta/foto77.jpg'),
(78, 'Never Gonna Give You Up', 6, '03:20:00', '2023-03-15', 1, '/ruta/foto78.jpg'),
(79, 'Take On Me', 7, '03:50:00', '2023-01-20', 1, '/ruta/foto79.jpg'),
(80, 'Stand By Me', 1, '02:51:00', '2022-12-05', 1, '/ruta/foto80.jpg'),
(81, 'Hotel California', 2, '06:30:00', '2023-01-20', 1, '/ruta/foto81.jpg'),
(82, 'Imagine', 3, '03:14:00', '2023-05-05', 1, '/ruta/foto82.jpg'),
(83, 'Africa', 5, '04:15:00', '2023-09-10', 1, '/ruta/foto83.jpg'),
(84, 'Take On Me', 6, '03:50:00', '2022-12-25', 1, '/ruta/foto84.jpg'),
(85, 'The Lemon Tree', 7, '03:55:00', '2023-10-15', 1, '/ruta/foto85.jpg'),
(86, 'We Will Rock You', 1, '02:00:00', '2024-07-12', 1, '/ruta/foto86.jpg'),
(87, 'Welcome To The Jungle', 2, '04:00:00', '2024-01-10', 1, '/ruta/foto87.jpg'),
(88, 'Smooth Criminal', 3, '04:30:00', '2024-05-20', 1, '/ruta/foto88.jpg'),
(89, 'Careless Whisper', 4, '03:15:00', '2022-11-20', 1, '/ruta/foto89.jpg'),
(90, 'Never Gonna Give You Up', 5, '03:20:00', '2023-03-25', 1, '/ruta/foto90.jpg'),
(91, 'Take On Me', 6, '03:50:00', '2023-01-30', 1, '/ruta/foto91.jpg'),
(92, 'Stand By Me', 7, '02:51:00', '2022-12-15', 1, '/ruta/foto92.jpg'),
(93, 'Hotel California', 1, '06:30:00', '2023-02-01', 1, '/ruta/foto93.jpg'),
(94, 'Imagine', 2, '03:14:00', '2023-05-15', 1, '/ruta/foto94.jpg'),
(95, 'Africa', 3, '04:15:00', '2023-09-20', 1, '/ruta/foto95.jpg'),
(96, 'Take On Me', 4, '03:50:00', '2022-12-25', 1, '/ruta/foto96.jpg'),
(97, 'The Lemon Tree', 5, '03:55:00', '2023-10-20', 1, '/ruta/foto97.jpg'),
(98, 'We Will Rock You', 6, '02:00:00', '2024-07-20', 1, '/ruta/foto98.jpg'),
(99, 'Welcome To The Jungle', 7, '04:00:00', '2024-01-20', 1, '/ruta/foto99.jpg'),
(100, 'Smooth Criminal', 1, '04:30:00', '2024-05-25', 1, '/ruta/foto100.jpg'),
(101, 'Careless Whisper', 2, '03:15:00', '2022-11-30', 1, '/ruta/foto101.jpg'),
(102, 'Never Gonna Give You Up', 3, '03:20:00', '2023-04-05', 1, '/ruta/foto102.jpg'),
(103, 'Take On Me', 5, '03:50:00', '2023-02-10', 1, '/ruta/foto103.jpg'),
(104, 'Stand By Me', 6, '02:51:00', '2022-12-20', 1, '/ruta/foto104.jpg'),
(105, 'Hotel California', 7, '06:30:00', '2023-02-05', 1, '/ruta/foto105.jpg'),
(106, 'Imagine', 1, '03:14:00', '2023-05-20', 1, '/ruta/foto106.jpg'),
(107, 'Africa', 2, '04:15:00', '2023-10-10', 1, '/ruta/foto107.jpg'),
(108, 'Take On Me', 3, '03:50:00', '2022-12-15', 1, '/ruta/foto108.jpg'),
(109, 'The Lemon Tree', 4, '03:55:00', '2023-10-25', 1, '/ruta/foto109.jpg'),
(110, 'We Will Rock You', 5, '02:00:00', '2024-08-12', 1, '/ruta/foto110.jpg'),
(111, 'Welcome To The Jungle', 6, '04:00:00', '2024-02-10', 1, '/ruta/foto111.jpg'),
(112, 'Smooth Criminal', 7, '04:30:00', '2024-06-20', 1, '/ruta/foto112.jpg'),
(113, 'Careless Whisper', 1, '03:15:00', '2022-12-10', 1, '/ruta/foto113.jpg'),
(114, 'Never Gonna Give You Up', 2, '03:20:00', '2023-04-15', 1, '/ruta/foto114.jpg'),
(115, 'Take On Me', 3, '03:50:00', '2023-02-20', 1, '/ruta/foto115.jpg'),
(116, 'Stand By Me', 4, '02:51:00', '2022-12-25', 1, '/ruta/foto116.jpg'),
(117, 'Hotel California', 5, '06:30:00', '2023-02-10', 1, '/ruta/foto117.jpg'),
(118, 'Imagine', 6, '03:14:00', '2023-06-05', 1, '/ruta/foto118.jpg'),
(119, 'Africa', 7, '04:15:00', '2023-10-20', 1, '/ruta/foto119.jpg'),
(120, 'Take On Me', 1, '03:50:00', '2022-12-25', 1, '/ruta/foto120.jpg'),
(121, 'The Lemon Tree', 2, '03:55:00', '2023-11-01', 1, '/ruta/foto121.jpg'),
(122, 'We Will Rock You', 3, '02:00:00', '2024-08-20', 1, '/ruta/foto122.jpg'),
(123, 'Welcome To The Jungle', 4, '04:00:00', '2024-02-20', 1, '/ruta/foto123.jpg'),
(124, 'Smooth Criminal', 5, '04:30:00', '2024-06-25', 1, '/ruta/foto124.jpg'),
(125, 'Careless Whisper', 6, '03:15:00', '2023-01-10', 1, '/ruta/foto125.jpg'),
(126, 'Never Gonna Give You Up', 7, '03:20:00', '2023-05-15', 1, '/ruta/foto126.jpg'),
(127, 'Take On Me', 1, '03:50:00', '2023-03-20', 1, '/ruta/foto127.jpg'),
(128, 'Stand By Me', 2, '02:51:00', '2023-01-05', 1, '/ruta/foto128.jpg'),
(129, 'Hotel California', 3, '06:30:00', '2023-02-20', 1, '/ruta/foto129.jpg'),
(130, 'Imagine', 4, '03:14:00', '2023-06-15', 1, '/ruta/foto130.jpg'),
(131, 'Africa', 5, '04:15:00', '2023-11-10', 1, '/ruta/foto131.jpg'),
(132, 'Take On Me', 6, '03:50:00', '2023-03-25', 1, '/ruta/foto132.jpg'),
(133, 'The Lemon Tree', 7, '03:55:00', '2023-11-10', 1, '/ruta/foto133.jpg'),
(134, 'We Will Rock You', 1, '02:00:00', '2024-09-12', 1, '/ruta/foto134.jpg'),
(135, 'Welcome To The Jungle', 2, '04:00:00', '2024-03-20', 1, '/ruta/foto135.jpg'),
(136, 'Smooth Criminal', 3, '04:30:00', '2024-07-25', 1, '/ruta/foto136.jpg'),
(137, 'Careless Whisper', 4, '03:15:00', '2023-01-20', 1, '/ruta/foto137.jpg'),
(138, 'Never Gonna Give You Up', 5, '03:20:00', '2023-06-25', 1, '/ruta/foto138.jpg'),
(139, 'Take On Me', 6, '03:50:00', '2023-04-01', 1, '/ruta/foto139.jpg'),
(140, 'Stand By Me', 7, '02:51:00', '2023-01-15', 1, '/ruta/foto140.jpg'),
(141, 'Hotel California', 1, '06:30:00', '2023-03-01', 1, '/ruta/foto141.jpg'),
(142, 'Imagine', 2, '03:14:00', '2023-06-20', 1, '/ruta/foto142.jpg'),
(143, 'Africa', 3, '04:15:00', '2023-11-15', 1, '/ruta/foto143.jpg'),
(144, 'Take On Me', 4, '03:50:00', '2023-04-20', 1, '/ruta/foto144.jpg'),
(145, 'The Lemon Tree', 5, '03:55:00', '2023-11-15', 1, '/ruta/foto145.jpg'),
(146, 'We Will Rock You', 6, '02:00:00', '2024-09-20', 1, '/ruta/foto146.jpg'),
(147, 'Welcome To The Jungle', 7, '04:00:00', '2024-03-20', 1, '/ruta/foto147.jpg'),
(148, 'Smooth Criminal', 1, '04:30:00', '2024-07-30', 1, '/ruta/foto148.jpg'),
(149, 'Careless Whisper', 2, '03:15:00', '2023-02-10', 1, '/ruta/foto149.jpg'),
(150, 'Never Gonna Give You Up', 3, '03:20:00', '2023-06-20', 1, '/ruta/foto150.jpg');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `ID` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`ID`, `nombre`) VALUES
(1, 'Heavy Metal'),
(2, 'Classical'),
(3, 'Punk'),
(4, 'Electronic'),
(5, 'Pop'),
(6, 'Rock');
(7, 'Hip Hop'),
(8, 'Jazz'),

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`ID`, `Nombre`, `precio`) VALUES
(1, 'Premium', 9.99),
(2, 'Family Unlimited', 14.99),
(3, 'Ultimate', 19.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO Canciones (id, nombre, duracion, reproducciones, descripcion, id_playlist) VALUES
(1, 'Sesión de Jazz Utah', '02:10:00', 0, 'Una mezcla ecléctica de jazz, funk y rock para una experiencia auditiva única.', 1),
(2, 'Banda Sonora Dinamita', '03:20:00', 0, 'Sumérgete en el mundo de la fantasía con esta selección de grandes éxitos de bandas sonoras de películas.', 1),
(3, 'Música Indie Jones', '02:45:00', 0, 'Descubre las últimas joyas musicales de la escena indie y alternativa.', 1),
(4, 'Ritmos Turbulentos', '02:00:00', 0, '¡Viaja a las playas tropicales con esta selección de ritmos caribeños!', 1),
(5, 'Canciones para el Corazon', '03:15:00', 0, 'Déjate llevar por las melodías que tocan tu corazón y elevan el espíritu.', 1),
(6, 'Clásicos del Pop', '02:30:00', 0, 'Revive la era dorada del hip hop con esta colección de clásicos atemporales.', 1),
(7, 'Sesión de In N Out', '02:20:00', 0, 'Relájate y desconecta con esta selección de música chill out perfecta para cualquier momento.', 1),
(8, 'Éxitos del Red Bull', '02:45:00', 0, 'Disfruta de los mejores éxitos del rhythm and blues que te harán mover el cuerpo.', 1),
(9, 'Melodías Acuaticas', '02:15:00', 0, 'Déjate envolver por la calidez de las melodías acústicas en esta sesión íntima.', 1),
(10, 'Música para Dormir', '03:00:00', 0, 'La banda sonora perfecta para darlo todo en el gimnasio y alcanzar tus metas fitness.', 1),
(11, 'Sesión de Reggae Relagiento', '02:40:00', 0, 'Sumérgete en la vibración positiva del reggae con esta selección relajante y uplifting.', 1),
(12, 'Canciones de Bom Bom', '02:55:00', 0, 'Revive los momentos más románticos con esta colección de canciones que celebran el amor en todas sus formas.', 1);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `ID` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Carlos Alberto', 'eduardo.gastelum@example.com', 2),
(2, 'Didier Drogba', 'maria.garza@example.com', 3),
(3, 'Julian Alvarez', 'carlos.garcia@example.com', 1),
(4, 'Fernando Torres', 'christian.ramirez@example.com', 2),
(5, 'Palma Salazar', 'pedro.salasar@example.com', 3),
(6, 'Juan Escutia', 'Juan.sanchez@example.com', 1),
(7, 'Luis Figo', 'luis.gonzales@example.com', 1),
(8, 'Emmanuel Adebayor', 'pablo.gonzalez@example.com', 2),
(9, 'Pierre Emerick Aubameyang', 'kevin.ramirez@example.com', 3),
(10, 'Camila Sodi', 'lucia.gomez@example.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`ID`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`ID`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`ID`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`ID`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
