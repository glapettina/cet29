-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-08-2022 a las 16:03:52
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbcet29`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `kilometros` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `nombre`, `kilometros`, `estado`, `id_usuario`, `fecha`) VALUES
(1, 'Darwin', 10, 1, 0, '2022-03-31 14:49:00'),
(2, 'Luis Beltrán', 12, 1, 0, '2022-03-31 14:52:50'),
(3, 'Lamarque', 20, 1, 0, '2022-04-04 18:22:16'),
(4, 'Pomona', 35, 1, 0, '2022-04-11 17:01:43'),
(5, 'Chelforó', 50, 1, 0, '2022-04-11 17:19:36'),
(6, 'Coronel Belisle', 30, 1, 0, '2022-04-11 17:22:19'),
(7, 'Choele Choel', 0, 1, 0, '2022-05-09 21:50:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movilidad`
--

CREATE TABLE `movilidad` (
  `id_movilidad` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `turno` text COLLATE utf8_spanish_ci NOT NULL,
  `numero` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movilidad`
--

INSERT INTO `movilidad` (`id_movilidad`, `id_usuario`, `fecha`, `turno`, `numero`) VALUES
(1, 93, '2022-06-28', 'Vespertino', 1),
(2, 92, '2022-06-28', 'Vespertino', 1),
(3, 88, '2022-06-27', 'Mañana', 1),
(4, 88, '2022-06-28', 'Mañana', 1),
(5, 88, '2022-06-29', 'Mañana', 1),
(6, 72, '2022-06-29', 'Tarde', 1),
(7, 68, '2022-06-29', 'Mañana', 1),
(8, 68, '2022-06-29', 'Tarde', 1),
(9, 68, '2022-06-28', 'Mañana', 1),
(10, 68, '2022-06-28', 'Tarde', 1),
(11, 70, '2022-06-29', 'Tarde', 1),
(12, 92, '2022-06-29', 'Vespertino', 1),
(15, 86, '2022-06-27', 'Mañana', 1),
(16, 86, '2022-06-28', 'Tarde', 1),
(17, 86, '2022-06-28', 'Vespertino', 1),
(18, 86, '2022-06-29', 'Tarde', 1),
(19, 86, '2022-06-29', 'Vespertino', 1),
(20, 68, '2022-06-30', 'Mañana', 1),
(21, 68, '2022-06-30', 'Tarde', 1),
(22, 86, '2022-06-30', 'Tarde', 1),
(23, 86, '2022-06-30', 'Vespertino', 1),
(24, 70, '2022-06-30', 'Tarde', 1),
(25, 73, '2022-06-29', 'Tarde', 1),
(28, 73, '2022-06-30', 'Tarde', 1),
(29, 73, '2022-07-01', 'Tarde', 1),
(30, 68, '2022-07-01', 'Mañana', 1),
(31, 68, '2022-07-01', 'Tarde', 1),
(32, 78, '2022-07-01', 'Tarde', 1),
(33, 78, '2022-07-01', 'Vespertino', 1),
(34, 86, '2022-07-01', 'Tarde', 1),
(35, 86, '2022-07-01', 'Vespertino', 1),
(39, 71, '2022-06-27', 'Mañana', 1),
(40, 71, '2022-06-27', 'Vespertino', 1),
(41, 71, '2022-06-28', 'Mañana', 1),
(43, 71, '2022-06-28', 'Vespertino', 1),
(44, 71, '2022-06-29', 'Mañana', 1),
(45, 71, '2022-06-29', 'Vespertino', 1),
(46, 71, '2022-06-30', 'Mañana', 1),
(47, 71, '2022-06-30', 'Vespertino', 1),
(48, 71, '2022-07-01', 'Mañana', 1),
(49, 71, '2022-07-01', 'Vespertino', 1),
(50, 85, '2022-06-20', 'Vespertino', 1),
(51, 85, '2022-06-28', 'Vespertino', 1),
(52, 85, '2022-06-29', 'Vespertino', 1),
(53, 85, '2022-06-30', 'Vespertino', 1),
(54, 85, '2022-07-01', 'Vespertino', 1),
(55, 92, '2022-06-30', 'Vespertino', 1),
(56, 92, '2022-07-01', 'Vespertino', 1),
(57, 78, '2022-07-04', 'Vespertino', 1),
(58, 85, '2022-07-05', 'Vespertino', 1),
(59, 85, '2022-07-06', 'Vespertino', 1),
(60, 70, '2022-07-01', 'Tarde', 1),
(62, 81, '2022-06-02', 'Tarde', 1),
(65, 81, '2022-06-09', 'Tarde', 1),
(68, 81, '2022-06-30', 'Tarde', 1),
(69, 81, '2022-06-16', 'Tarde', 1),
(70, 81, '2022-06-23', 'Tarde', 1),
(71, 81, '2022-07-07', 'Tarde', 1),
(73, 96, '2022-07-05', 'Mañana', 1),
(76, 96, '2022-07-04', 'Mañana', 1),
(77, 73, '2022-07-04', 'Tarde', 1),
(78, 92, '2022-07-04', 'Vespertino', 1),
(79, 72, '2022-07-04', 'Tarde', 1),
(80, 68, '2022-07-04', 'Mañana', 1),
(81, 68, '2022-07-04', 'Tarde', 1),
(82, 68, '2022-07-05', 'Mañana', 1),
(83, 83, '2022-07-01', 'Mañana', 1),
(84, 83, '2022-07-08', 'Mañana', 1),
(85, 72, '2022-07-05', 'Tarde', 1),
(86, 72, '2022-06-27', 'Tarde', 1),
(87, 92, '2022-07-05', 'Vespertino', 1),
(88, 88, '2022-07-04', 'Mañana', 1),
(89, 88, '2022-07-04', 'Vespertino', 1),
(90, 88, '2022-07-05', 'Mañana', 1),
(91, 68, '2022-07-06', 'Mañana', 1),
(92, 68, '2022-07-06', 'Tarde', 1),
(93, 86, '2022-07-04', 'Tarde', 1),
(94, 86, '2022-07-04', 'Vespertino', 1),
(95, 86, '2022-07-05', 'Mañana', 1),
(96, 86, '2022-07-06', 'Tarde', 1),
(97, 86, '2022-07-06', 'Vespertino', 1),
(98, 92, '2022-07-06', 'Vespertino', 1),
(99, 70, '2022-07-06', 'Tarde', 1),
(100, 68, '2022-07-07', 'Mañana', 1),
(101, 68, '2022-07-07', 'Tarde', 1),
(102, 70, '2022-07-07', 'Tarde', 1),
(103, 92, '2022-07-07', 'Vespertino', 1),
(104, 88, '2022-07-07', 'Mañana', 1),
(105, 88, '2022-07-07', 'Vespertino', 1),
(106, 72, '2022-07-06', 'Tarde', 1),
(107, 72, '2022-07-07', 'Tarde', 1),
(108, 68, '2022-07-08', 'Mañana', 1),
(109, 68, '2022-07-08', 'Tarde', 1),
(110, 86, '2022-07-07', 'Tarde', 1),
(111, 86, '2022-07-07', 'Vespertino', 1),
(113, 86, '2022-07-08', 'Vespertino', 1),
(114, 86, '2022-07-08', 'Tarde', 1),
(115, 73, '2022-07-05', 'Tarde', 1),
(116, 73, '2022-07-06', 'Tarde', 1),
(117, 73, '2022-07-07', 'Tarde', 1),
(118, 73, '2022-07-08', 'Tarde', 1),
(119, 78, '2022-07-08', 'Tarde', 1),
(120, 78, '2022-07-08', 'Vespertino', 1),
(121, 70, '2022-07-08', 'Tarde', 1),
(122, 92, '2022-07-08', 'Vespertino', 1),
(123, 90, '2022-06-27', 'Mañana', 1),
(124, 90, '2022-06-28', 'Mañana', 1),
(125, 90, '2022-06-29', 'Mañana', 1),
(126, 90, '2022-06-30', 'Mañana', 1),
(127, 90, '2022-06-27', 'Tarde', 1),
(128, 90, '2022-06-28', 'Tarde', 1),
(129, 90, '2022-06-29', 'Tarde', 1),
(130, 90, '2022-06-30', 'Tarde', 1),
(131, 90, '2022-07-01', 'Mañana', 1),
(132, 90, '2022-07-01', 'Tarde', 1),
(133, 90, '2022-07-04', 'Mañana', 1),
(134, 90, '2022-07-04', 'Tarde', 1),
(135, 90, '2022-07-05', 'Mañana', 1),
(136, 90, '2022-07-05', 'Tarde', 1),
(137, 90, '2022-07-06', 'Mañana', 1),
(138, 90, '2022-07-06', 'Tarde', 1),
(139, 90, '2022-07-08', 'Mañana', 1),
(140, 90, '2022-07-08', 'Tarde', 1),
(141, 90, '2022-07-25', 'Mañana', 1),
(142, 90, '2022-07-25', 'Tarde', 1),
(143, 77, '2022-06-28', 'Tarde', 1),
(144, 77, '2022-06-29', 'Tarde', 1),
(145, 77, '2022-06-30', 'Tarde', 1),
(146, 77, '2022-07-05', 'Tarde', 1),
(147, 77, '2022-07-06', 'Tarde', 1),
(148, 77, '2022-07-07', 'Tarde', 1),
(149, 77, '2022-05-26', 'Tarde', 1),
(150, 77, '2022-05-31', 'Tarde', 1),
(151, 77, '2022-06-01', 'Tarde', 1),
(152, 77, '2022-06-02', 'Tarde', 1),
(153, 77, '2022-06-07', 'Tarde', 1),
(154, 77, '2022-06-08', 'Tarde', 1),
(155, 77, '2022-06-14', 'Tarde', 1),
(156, 77, '2022-06-15', 'Tarde', 1),
(157, 77, '2022-06-16', 'Tarde', 1),
(158, 77, '2022-06-21', 'Tarde', 1),
(159, 77, '2022-06-22', 'Tarde', 1),
(160, 77, '2022-06-23', 'Tarde', 1),
(161, 76, '2022-06-28', 'Tarde', 1),
(162, 76, '2022-06-29', 'Mañana', 1),
(163, 76, '2022-06-29', 'Tarde', 1),
(164, 76, '2022-07-01', 'Tarde', 1),
(165, 76, '2022-07-05', 'Tarde', 1),
(166, 76, '2022-07-06', 'Mañana', 1),
(167, 76, '2022-07-06', 'Tarde', 1),
(168, 76, '2022-07-08', 'Tarde', 1),
(169, 96, '2022-07-25', 'Mañana', 1),
(170, 96, '2022-07-26', 'Mañana', 1),
(171, 78, '2022-07-29', 'Tarde', 1),
(172, 78, '2022-07-29', 'Vespertino', 1),
(173, 68, '2022-07-27', 'Mañana', 1),
(174, 68, '2022-07-27', 'Tarde', 1),
(175, 88, '2022-07-27', 'Mañana', 1),
(176, 86, '2022-07-27', 'Tarde', 1),
(177, 86, '2022-07-27', 'Vespertino', 1),
(178, 72, '2022-07-27', 'Tarde', 1),
(179, 93, '2022-06-29', 'Vespertino', 1),
(180, 93, '2022-06-30', 'Vespertino', 1),
(181, 93, '2022-07-01', 'Vespertino', 1),
(182, 93, '2022-07-04', 'Vespertino', 1),
(183, 93, '2022-07-05', 'Vespertino', 1),
(184, 93, '2022-07-06', 'Vespertino', 1),
(185, 93, '2022-07-07', 'Vespertino', 1),
(186, 93, '2022-07-08', '', 1),
(190, 93, '2022-07-27', 'Vespertino', 1),
(191, 80, '2022-06-27', 'Vespertino', 1),
(192, 80, '2022-06-28', 'Vespertino', 1),
(193, 80, '2022-06-29', 'Vespertino', 1),
(194, 80, '2022-06-30', 'Vespertino', 1),
(195, 80, '2022-07-01', 'Vespertino', 1),
(196, 80, '2022-07-04', 'Vespertino', 1),
(197, 80, '2022-07-05', 'Vespertino', 1),
(198, 80, '2022-07-06', 'Vespertino', 1),
(199, 80, '2022-07-07', 'Vespertino', 1),
(200, 80, '2022-07-08', 'Vespertino', 1),
(201, 80, '2022-07-27', 'Vespertino', 1),
(202, 91, '2022-07-01', 'Vespertino', 1),
(204, 91, '2022-07-04', 'Vespertino', 1),
(205, 91, '2022-07-05', 'Vespertino', 1),
(206, 91, '2022-07-06', 'Vespertino', 1),
(207, 91, '2022-07-07', 'Vespertino', 1),
(208, 91, '2022-07-27', 'Vespertino', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `cuil` text COLLATE utf8_spanish_ci NOT NULL,
  `legajo` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `domicilio` text COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` text COLLATE utf8_spanish_ci NOT NULL,
  `movilidad` int(11) NOT NULL,
  `tipo_vehiculo` text COLLATE utf8_spanish_ci NOT NULL,
  `dominio` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `cuil`, `legajo`, `telefono`, `domicilio`, `ciudad`, `movilidad`, `tipo_vehiculo`, `dominio`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(8, 'Lapettina Guillermo', '20237723784', '123456', '2984417763', 'Francisco Vespa 156', '7', 0, '', '', 'lape', '$2a$07$usesomesillystringforeKFErhzzmd6AoycQvV4lokWBof7hIUcW', 'Administrador', '', 1, '2022-07-28 17:59:13', '2022-07-28 20:59:13'),
(67, 'Aguila Denis Paul', '20-37214292-9', '722642', '', 'Don Bosco 1114', '3', 1, 'Taxi', '', 'daguila', '$2a$07$usesomesillystringforeEgUPsTeVliBMf.eSmem2tXiNFMr3Bbq', 'Docente', '', 1, '2022-07-04 14:54:31', '2022-07-04 17:54:31'),
(68, 'Cabarrou María Cecilia', '27-21878186-7', '438910', '', 'Bº Jardín Azul 24', '2', 1, 'Particular', '', 'mcabarrou', '$2a$07$usesomesillystringforeyzgXq59kd73Eu6fYnJPxe8d5.3s.SkC', 'Docente', '', 1, '2022-07-27 08:20:01', '2022-07-27 11:20:01'),
(69, 'Crolla Lucas', '23-32485335-9', '720712', '', 'Uruguay 192', '3', 1, 'Taxi', '', 'lcrolla', '$2a$07$usesomesillystringforeDO2fUUVNfwNMwrJldKunzFhjUrity3K', 'Docente', '', 1, '0000-00-00 00:00:00', '2022-06-27 12:46:26'),
(70, 'Guayquil Claudia', '27-28234982-0', '888508', '', 'Mariano Moreno 1040', '3', 1, 'Taxi', '', 'cguayquil', '$2a$07$usesomesillystringfore/WzV3Ur3kUD4XgntoeMZ/YCnSLkfkru', 'Docente', '', 1, '2022-07-08 16:47:25', '2022-07-08 19:47:25'),
(71, 'Guida Walter Javier', '20-23734209-8', '362867', '', 'Sección Chacras', '7', 1, 'Particular', '', 'wguida', '$2a$07$usesomesillystringforeyJWG0Jl0vI0ArdKGxRABEiyFfwOyV4W', 'Docente', '', 1, '2022-07-01 19:53:44', '2022-07-01 22:53:44'),
(72, 'Huiscaleo Flor', '27-28518426-1', '636711', '', 'Berutti 345', '2', 1, 'Particular', '', 'fhuiscaleo', '$2a$07$usesomesillystringforeiBPGefHSKUDwbVFdXC4JrfQifxAz40W', 'Preceptor', '', 1, '2022-07-27 14:25:05', '2022-07-27 17:25:05'),
(73, 'Labrada Silvia', '27-24893060-3', '463213', '', 'Padre Brizola Casa 57', '2', 1, 'Particular', '', 'slabrada', '$2a$07$usesomesillystringforeC9E7mW4.Wl.a7mU8gbGQa9Cze936oR6', 'Docente', '', 1, '2022-07-08 13:56:16', '2022-07-08 16:56:16'),
(74, 'Lopez Lucas Leandro', '20-36677355-0', '808334', '', 'Paraguay 372', '3', 1, 'Taxi', '', 'llopez', '$2a$07$usesomesillystringforeEmrSIzcAYCDEt0kYCp5ajo0pQrGckLO', 'Docente', '', 1, '0000-00-00 00:00:00', '2022-06-27 12:57:53'),
(75, 'Martinez Alderete Fernanda', '27-41421283-8', '827576', '', 'Sección Chacras', '3', 1, 'Taxi', '', 'fmartinez', '$2a$07$usesomesillystringforefre6CeiTsoeUGkPxQ.jNI8am0O6kDuu', 'Docente', '', 1, '0000-00-00 00:00:00', '2022-06-27 13:00:04'),
(76, 'Meili Claudia', '27-29230732-8', '552895', '', 'Don Bosco 951', '3', 1, 'Particular', '', 'cmeili', '$2a$07$usesomesillystringforesZVAoWrqrG3954cYKAT83MGHMKLHstG', 'Docente', '', 1, '2022-07-25 17:14:27', '2022-07-25 20:14:27'),
(77, 'Horñachek Eliana', '27-38967703-0', '865451', '', 'Sección Chacras', '7', 1, 'Particular', '', 'ehorniachek', '$2a$07$usesomesillystringforeXwj2FK.u.04vm6qijp3KSoywM/Yholi', 'Docente', '', 1, '2022-07-25 17:05:30', '2022-07-25 20:05:30'),
(78, 'Orozco María Alicia', '27-23542494-6', '796891', '', 'Ramos Mejía 216', '4', 1, 'Particular', '', 'morozco', '$2a$07$usesomesillystringforehFxnA5jpUSLL/1laY7Zm.ziPZ6H3CPG', 'Docente', '', 1, '2022-07-26 22:19:36', '2022-07-27 01:19:36'),
(79, 'Orrio Diego Luis', '20-36929035-6', '636851', '', 'Juan José Paso', '3', 1, 'Particular', '', 'dorrio', '$2a$07$usesomesillystringforeFm08tBnMTyQSVMKnd7IV5C5753N9MdS', 'Docente', '', 1, '2022-06-30 00:22:26', '2022-06-30 03:22:26'),
(80, 'Pirillo Temperoni María Celeste', '27-34862179-9', '637165', '', 'Bº Jardín Azul 45', '2', 1, 'Particular', '', 'mpirillo', '$2a$07$usesomesillystringforep8tf/6TXqh8hY7laNEaqvYnv8NWlpzO', 'Secretario', '', 1, '2022-07-27 19:41:04', '2022-07-27 22:41:04'),
(81, 'Ponce Yoana', '27-33187106-6', '800171', '', 'Sección Chacras', '4', 1, 'Particular', '', 'yponce', '$2a$07$usesomesillystringforegI6GoL696aQtOJK0l6XBOldLPJVe17i', 'Docente', '', 1, '2022-07-04 08:56:28', '2022-07-04 11:56:28'),
(82, 'Possenti Miguel', '20-16644531-1', '329541', '', 'Uruguay 967', '3', 1, 'Particular', '', 'mpossenti', '$2a$07$usesomesillystringforezoGuDLsvbaR3YVq8KVj5QfE1AEImk5G', 'Docente', '', 1, '0000-00-00 00:00:00', '2022-07-01 23:07:28'),
(83, 'Rivera Viviana', '23-40300978-4', '846740', '', 'Bº Ing. Fernández Casa 4', '2', 1, 'Taxi', '', 'vrivera', '$2a$07$usesomesillystringforeALy76vOiNDgWB20qFiQP46lzZOfVdJS', 'Docente', '', 1, '2022-07-05 15:12:21', '2022-07-05 18:12:21'),
(84, 'Rodeghiero Silvia', '27-27015136-7', '611638', '', 'Sección Chacras', '2', 1, 'Taxi', '', 'srodeghiero', '$2a$07$usesomesillystringforek3C0pEt2UMJPXqDmfCNx4.9IPm1Lo3i', 'Docente', '', 1, '0000-00-00 00:00:00', '2022-06-27 16:05:18'),
(85, 'Rossi Ernesto', '20-26600655-5', '123456', '1111111', 'Rivadavia 978', '3', 1, 'Particular', '', 'erossi', '$2a$07$usesomesillystringforese5jryrQXE1i8VEi939o15nry/2m13K', 'Docente', '', 1, '2022-07-25 11:50:54', '2022-07-28 11:47:38'),
(86, 'Silva Yamil', '20-30857708-8', '592838', '', 'Blas Parera y 25 de Mayo', '2', 1, 'Taxi', '', 'ysilva', '$2a$07$usesomesillystringforeLu7U7psvNMoreYSWN8Lr0fGKz22VY.m', 'Docente', '', 1, '2022-07-27 13:51:27', '2022-07-27 16:51:27'),
(87, 'Slaiman Lucila', '28-31561943-8', '484326', '', 'San Martín 91', '2', 1, 'Particular', '', 'lslaiman', '$2a$07$usesomesillystringforefLlEgZUt1KFNKdQjsTsw3kEx3hMn2iC', 'Docente', '', 1, '0000-00-00 00:00:00', '2022-06-27 16:15:22'),
(88, 'Soria Marcelo', '20-17612481-5', '329584', '', 'Mangano S/N', '1', 1, 'Taxi', '', 'msoria', '$2a$07$usesomesillystringforeN/6UYV/swX.SI86Xy0IDYitICK1vfsS', 'Preceptor', '', 1, '2022-07-27 11:40:25', '2022-07-27 14:40:25'),
(89, 'Sthal Ricardo', '20-24450833-3', '484385', '', 'Sección Chacras', '2', 1, 'Particular', '', 'rsthal', '$2a$07$usesomesillystringforeIaJnL4LnO3uawzxz4khQoYyoFFiJ2g2', 'Docente', '', 1, '0000-00-00 00:00:00', '2022-06-27 16:25:59'),
(90, 'Toro Amaris', '27-18893822-7', '462896', '', 'Sección Chacras', '6', 1, 'Particular', '', 'atoro', '$2a$07$usesomesillystringforeinXgTaZiKx5G1XbrhCvvtXA4iaRzic2', 'Secretario', '', 1, '2022-07-25 15:18:17', '2022-07-25 18:18:17'),
(91, 'Traillanca Enrique', '20-28782178-7', '721832', '', 'Chacabuco 1723', '2', 1, 'Taxi', '', 'etraillanca', '$2a$07$usesomesillystringforeEY0LJh6dz58PrX73fjhdKAE7or09TqO', 'Preceptor', '', 1, '2022-07-27 20:38:37', '2022-07-27 23:38:37'),
(92, 'Borrajo Andrés', '20-25957502-9', '721476', '', 'Paso Piedra', '7', 1, 'Particular', '', 'aborrajo', '$2a$07$usesomesillystringforezTeaGM0uK0crZfZQDogCot3DbmCNeZu', 'Preceptor', '', 1, '2022-07-08 18:33:15', '2022-07-08 21:33:16'),
(93, 'Guzmán Elena', '27-29798257-0', '808490', '', 'Pasaje Dr. Comín', '3', 1, 'Taxi', '', 'eguzman', '$2a$07$usesomesillystringfore2QJcTwnsEvNP9azlcFVoJo37tbUWo0i', 'Preceptor', '', 1, '2022-07-27 18:37:07', '2022-07-27 21:37:07'),
(94, 'Lucero Angela', '27-29066969-9', '788481', '', 'Independencia 862', '3', 1, 'Taxi', '', 'alucero', '$2a$07$usesomesillystringforedt2P.oJpBSF44FL9uyxCBeXk9tcpuYq', 'Preceptor', '', 1, '0000-00-00 00:00:00', '2022-06-28 21:16:10'),
(95, 'Obernauer Ruth', '27-32196986-6', '804967', '', 'Sección Chacras', '7', 1, 'Particular', '', 'robernauer', '$2a$07$usesomesillystringforeA9Vrjcnx9NXZJswE6xduxWllVRqYSyC', 'Docente', '', 1, '0000-00-00 00:00:00', '2022-06-28 21:17:33'),
(96, 'Villavicencio Milagros', '27-38368815-4', '892106', '', 'Libertad 185', '3', 1, 'Taxi', '', 'mvillavicencio', '$2a$07$usesomesillystringforeKm9x2lP9.sCztFCl/02gb6HiK11x60a', 'Docente', '', 1, '2022-07-26 09:43:01', '2022-07-26 12:43:01'),
(97, 'Olmos Débora', ' 23-31767830-4 ', '637912', '', 'Don Bosco 853', '3', 1, 'Taxi', '', 'dolmos', '$2a$07$usesomesillystringforeFhcIHDd6aTIPcMJe/Dd.T0v8jJcI3oC', 'Docente', '', 1, '2022-07-07 09:16:37', '2022-07-07 12:16:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `movilidad`
--
ALTER TABLE `movilidad`
  ADD PRIMARY KEY (`id_movilidad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `movilidad`
--
ALTER TABLE `movilidad`
  MODIFY `id_movilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
