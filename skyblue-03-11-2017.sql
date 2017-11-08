-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2017 a las 23:56:15
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `skyblue`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `verificado` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `apellido`, `email`, `password`, `salt`, `activo`, `verificado`, `created_at`, `updated_at`) VALUES
(1, 'Cesar', 'Rios', 'cesar@innology.mx', '123456', NULL, 1, NULL, '2017-10-17 00:00:00', '2017-10-17 00:00:00'),
(2, 'Test', 'Developer', 'test@innology.mx', 'innology', NULL, 1, NULL, '2017-11-03 23:50:37', '2017-11-03 23:50:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `nombre`, `descripcion`, `url`, `tipo`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'Que es y Como Funciona', 'Gif de explicacion de SkyBlue', 'b981bd65e53b35f24bcfbe94eb4c2f47.gif', 1, 1, '2017-10-26 15:34:34', '2017-10-26 15:34:34'),
(2, 'HT Skyblue', 'Informacion Tecnica SkyBlue', '8c9d398eb35f345c7de14ffdb7b9eacc.pdf', 2, 1, '2017-10-26 15:55:11', '2017-10-26 15:55:11'),
(3, 'SkyBlue Logo', 'Logo Que es y como funciona', '9ef4a3fd84172d602c719c1c674eb72b.png', 1, 1, '2017-11-01 05:43:45', '2017-11-01 05:43:45'),
(4, 'Regulaciones 1', 'Regulaciones 1', '047957688dddf7cea14da388c7f97df4.jpeg', 1, 1, '2017-11-02 17:42:26', '2017-11-02 17:42:26'),
(5, 'Regulaciones 2', 'Regulaciones 2', '73fbf5feaf97af294d9c07adc9574638.jpeg', 1, 1, '2017-11-02 17:44:06', '2017-11-02 17:44:06'),
(6, 'Regulaciones 3', 'Regulaciones 3', '44ad739cdad96fdfdb7b2c8195022e88.jpeg', 1, 1, '2017-11-02 17:44:45', '2017-11-02 17:44:45'),
(7, 'Certificacion', 'Certificacion de API', '016696f2a58d646c03d6bd4a662327de.pdf', 2, 1, '2017-11-03 15:29:07', '2017-11-03 15:29:07'),
(8, 'Calidad 1', 'Logo API', 'fa985ed476a85ed285cabec9f6570d0f.jpeg', 1, 1, '2017-11-03 15:30:05', '2017-11-03 15:30:05'),
(9, 'Calidad 2', 'Productos Certificados', '3788f0a1e5756488c5594cd84013f32f.jpeg', 1, 1, '2017-11-03 15:30:41', '2017-11-03 15:30:41'),
(10, 'Norma NOx', 'Normatividad', '98170c386e0b6160781dfe5dd6240175.jpeg', 1, 1, '2017-11-03 15:44:10', '2017-11-03 15:44:10'),
(11, 'Uso del Producto', 'Uso Catalizador - SkyBlue', 'b5b9fc117b77afdcc32cb8977a02d311.jpeg', 1, 1, '2017-11-03 16:19:16', '2017-11-03 16:19:16'),
(12, 'Despacho', 'Despacho del Producto', '6ac6016fe25b1d01eee4c626c64d7da0.jpeg', 1, 1, '2017-11-03 16:35:59', '2017-11-03 16:35:59'),
(13, 'Almacenamiento', 'Almacenamiento del Producto - SkyBlue', '4482357f8c1eb567cef3b48dce01ac57.jpeg', 1, 1, '2017-11-03 16:42:23', '2017-11-03 16:42:23'),
(14, 'Mantenimiento 1', 'Mantenimiento del Catalizador', '3cf6d135eeff530a09bbd6970a6a75b2.jpeg', 1, 1, '2017-11-03 22:43:58', '2017-11-03 22:43:58'),
(15, 'Mantenimiento 2', 'Lubricante Diesel', '923bdee3d947ee03726c1cfc0495e9ce.jpeg', 1, 1, '2017-11-03 23:01:19', '2017-11-03 23:01:19'),
(16, 'Mantenimiento 3', 'UBA', '15b7eda482bdcc3e64f0c524287578af.jpeg', 1, 1, '2017-11-03 23:04:13', '2017-11-03 23:04:13'),
(17, 'HDS SkyBlue', 'HDS SkyBlue', '6d1511c2ff09af08fa8d31ddc55b0509.pdf', 2, 1, '2017-11-03 23:29:38', '2017-11-03 23:29:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `nombre`, `descripcion`, `imagen`, `link`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'UREA', NULL, '8ac92b2264452bac752968f582eb65bc.jpeg', NULL, 1, '2017-10-19 17:28:17', '2017-11-01 21:20:42'),
(2, 'Video', 'Video de Presentación SkyBlue®', '646a487fd1c173f6fc1d4125b58b5081.jpeg', NULL, 1, '2017-11-01 21:20:16', '2017-11-01 21:20:16'),
(3, 'UREA Grado Automotriz', 'Presentaciones', '02989b8373b55b80951fa1efa3673ebd.jpeg', NULL, 1, '2017-11-01 21:21:46', '2017-11-01 21:21:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `pais` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tema` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliente` tinyint(1) DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `nombre` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giro` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plataforma` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ext_log_entries`
--

CREATE TABLE `ext_log_entries` (
  `id` int(11) NOT NULL,
  `action` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ext_translations`
--

CREATE TABLE `ext_translations` (
  `id` int(11) NOT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `home`
--

INSERT INTO `home` (`id`, `nombre`, `descripcion`, `imagen`, `link`, `orden`, `activo`, `created_at`, `updated_at`) VALUES
(1, '¿Qué es y Cómo Funciona?', 'Es una solución acuosa con 32.5% de urea grado automotriz de extrema pureza, la cual fue desarrollada para reducir el nivel de emisiones contaminantes de los vehículos y máquinas con motor a Diesel eq', '4fbcffbb091c3e30e07ef1a5233f011a.jpeg', 'http://localhost/skyblue/web/app_dev.php/skyblue-r/que-es-y-como-funciona', 1, 1, '2017-10-31 17:41:00', '2017-11-02 16:31:48'),
(2, 'Regulaciones', 'Como se puede observar en la tabla, México está rezagado en la regulación respecto al control de emisiones contaminantes comparado con otros países. • Actual regulación de emisiones de Nox en México:', '854ea477e1ae1c9b7cc06e3aaf75aebc.jpeg', 'http://localhost/skyblue/web/app_dev.php/informacion-tecnica/regulaciones', 2, 1, '2017-11-01 22:08:39', '2017-11-02 18:20:38'),
(3, 'Preguntas Frecuentes', 'P. ¿Qué es la Reducción Catalítica Selectiva (SCR)?\r\nR. SCR es una tecnología que utiliza un fluido para el sistema de escape basado en urea (DEF/SKYBLUE®) y un convertidor catalítico, para reducir si', '555b0bd1877af0bb1b7c9a55697a6949.png', 'http://localhost/skyblue/web/app_dev.php/informacion-tecnica/preguntas-frecuentes', 3, 1, '2017-11-01 22:14:27', '2017-11-03 15:23:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapsdistribuidor`
--

CREATE TABLE `mapsdistribuidor` (
  `id` int(11) NOT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zona` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metakeys` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metadesc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mapsdistribuidor`
--

INSERT INTO `mapsdistribuidor` (`id`, `url`, `nombre`, `zona`, `activo`, `slug`, `metakeys`, `metadesc`, `created_at`, `updated_at`) VALUES
(1, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kZrohI8TB2kE', 'Aguascalientes', 'Norte', 1, 'aguascalientes', 'mapa,aguascalientes,maps,google maps', 'Mapa de Aguascalientes en Google Maps', '2017-07-11 17:54:55', '2017-07-11 17:54:55'),
(2, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kr9ef9PUrROA', 'Chihuahua', 'Norte', 1, 'chihuahua', 'mapa,google maps,chihuahua,raloy', 'Mapa de Chihuahua en Google Maps Raloy', '2017-07-14 13:01:12', '2017-07-14 13:01:12'),
(3, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kcCW4x7U1NBA', 'Coahuila', 'Norte', 1, 'coahuila', 'mapa,google maps,coahuila,raloy', 'Mapa de Coahuila en Google Maps', '2017-07-14 13:02:26', '2017-07-14 13:02:26'),
(4, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kAjbG7t9yWkE', 'Durango', 'Norte', 1, 'durango', 'mapa,google maps,durango,raloy', 'Mapa de Durango en Google Maps', '2017-07-14 13:03:12', '2017-07-14 13:03:12'),
(5, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.k3tviijOM6xI', 'Nuevo León', 'Norte', 1, 'nuevo-leon', 'mapa,google maps,nuevo leon,raloy', 'Mapa de Nuevo León en Google Maps', '2017-07-14 13:04:29', '2017-07-14 13:04:29'),
(6, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kTfnVA10Sg1o', 'San Luis Potosí', 'Norte', 1, 'san-luis-potosi', 'mapa,google maps,san luis potosi,raloy', 'Mapa de San Luis Potosí en Google Maps', '2017-07-14 13:05:30', '2017-07-14 13:05:30'),
(7, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kdKCqxgJ8qgU', 'Tamaulipas', 'Norte', 1, 'tamaulipas', 'mapa,google maps,tamaulipas,raloy', 'Mapa de Tamaulipas en Google Maps', '2017-07-14 13:06:36', '2017-07-14 13:06:36'),
(8, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kEE6JTPxAWtM', 'Zacatecas', 'Norte', 1, 'zacatecas', 'mapa,google maps,zacatecas,raloy', 'Mapa de Zacatecas en Google Maps', '2017-07-14 13:07:15', '2017-07-14 13:07:15'),
(9, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.k4G1x0XdXFSE', 'Distrito Federal', 'Centro', 1, 'distrito-federal', 'mapa,google maps,distrito federal,raloy', 'Mapa de Distrito Federal en Google Maps', '2017-07-14 13:08:49', '2017-07-14 13:08:49'),
(10, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.k3mgtN1O7XXw', 'Guanajuato', 'Centro', 1, 'guanajuato', 'mapa,google maps,guanajuato,raloy', 'Mapa de Guanajuato en Google Maps', '2017-07-14 13:20:54', '2017-07-14 13:20:54'),
(11, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kRuuA3DcvngY', 'Guerrero', 'Centro', 1, 'guerrero', 'mapa,google maps,guerrero,raloy', 'Mapa de Guerrero en Google Maps', '2017-07-14 13:21:37', '2017-07-14 13:21:37'),
(12, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kq6RQTwZNxBw', 'Hidalgo', 'Centro', 1, 'hidalgo', 'mapa,google maps,hidalgo,raloy', 'Mapa de Hidalgo en Google Maps', '2017-07-14 13:22:18', '2017-07-14 13:22:18'),
(13, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kPLP-4M87rLY', 'Estado de México', 'Centro', 1, 'estado-de-mexico', 'mapa,google maps,estado de mexico,raloy', 'Mapa de Estado de México en Google Maps', '2017-07-14 13:23:37', '2017-07-14 13:23:37'),
(14, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.khaiVTOr7k6Y', 'Morelos', 'Centro', 1, 'morelos', 'mapa,google maps,morelos,raloy', 'Mapa de Morelos en Google Maps', '2017-07-14 13:24:38', '2017-07-14 13:24:38'),
(15, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kc8tfA4ay04w', 'Oaxaca', 'Centro', 1, 'oaxaca', 'mapa,google maps,oaxaca,raloy', 'Mapa de Oaxaca en Google Maps', '2017-07-14 13:25:23', '2017-07-14 13:25:23'),
(16, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kKuBn8C4DT2w', 'Puebla', 'Centro', 1, 'puebla', 'mapa,google maps,oaxaca,raloy', 'Mapa de Oaxaca en Google Maps', '2017-07-14 13:26:02', '2017-07-14 13:26:02'),
(17, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.k-_yZmxpXZe0', 'Querétaro', 'Centro', 1, 'queretaro', 'mapa,google maps,queretaro,raloy', 'Mapa de Querétaro en Google Maps', '2017-07-14 13:26:48', '2017-07-14 13:26:48'),
(18, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kChZCnUl7QBg', 'Tlaxcala', 'Centro', 1, 'tlaxcala', 'mapa,google maps,tlaxcala,raloy', 'Mapa de Tlaxcala en Google Maps', '2017-07-14 13:27:47', '2017-07-14 13:27:47'),
(19, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kMgGl855Qt8s', 'Veracruz', 'Centro', 1, 'veracruz', 'mapa,google maps,veracruz,raloy', 'Mapa de Tlaxcala en Google Maps', '2017-07-14 13:28:31', '2017-07-14 13:28:31'),
(20, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kNEBDMQ6nDEU', 'Baja California', 'Pacífico', 1, 'baja-california', 'mapa, baja california,google maps,raloy', 'Mapa de Baja California en Google Maps', '2017-07-18 09:43:46', '2017-07-18 09:43:46'),
(21, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kzj5bPjAkZZg', 'Baja California Sur', 'Pacífico', 1, 'baja-california-sur', 'mapa, baja california sur,google maps,raloy', 'Mapa de Baja California Sur en Google Maps', '2017-07-18 12:02:09', '2017-07-18 12:02:09'),
(22, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.k5G9UQh9DC-0', 'Colima', 'Pacífico', 1, 'colima', 'mapa,colima,google maps,raloy', 'Mapa de Colima en Google Maps', '2017-07-18 12:02:51', '2017-07-18 12:02:51'),
(23, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kwjLcFZA8OT0', 'Jalisco', 'Pacífico', 1, 'jalisco', 'mapa,jalisco,google maps,raloy', 'Mapa de Jalisco en Google Maps', '2017-07-18 12:03:34', '2017-07-18 12:03:34'),
(24, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kBSJYHQigfH4', 'Michoacán', 'Pacífico', 1, 'michoacan', 'mapa,michoacan,google maps,raloy', 'Mapa de Michoacán en Google Maps', '2017-07-18 12:04:31', '2017-07-18 12:04:31'),
(25, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kdgVCRSO3s1E', 'Nayarit', 'Pacífico', 1, 'nayarit', 'mapa,nayarit,google maps,raloy', 'Mapa de Nayarit en Google Maps', '2017-07-18 12:05:20', '2017-07-18 12:05:20'),
(26, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kbYTh2lFeWdw', 'Sinaloa', 'Pacífico', 1, 'sinaloa', 'mapa,sinaloa,google maps,raloy', 'Mapa de Sinaloa en Google Maps', '2017-07-18 12:41:46', '2017-07-18 12:41:46'),
(27, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kyHXa1lCt7a8', 'Sonora', 'Pacífico', 1, 'sonora', 'mapa,sonora,google maps,raloy', 'Mapa de Sonora en Google Maps', '2017-07-18 12:42:23', '2017-07-18 12:42:23'),
(28, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kHudUZ1Nh-rU', 'Campeche', 'Sureste', 1, 'campeche', 'mapa,campeche,google maps,raloy', 'Mapa de Campeche en Google Maps', '2017-07-18 12:43:14', '2017-07-18 12:43:14'),
(29, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kLJDQEqNFa9Q', 'Chiapas', 'Sureste', 1, 'chiapas', 'mapa,chiapas,google maps,raloy', 'Mapa de Chiapas en Google Maps', '2017-07-18 12:43:46', '2017-07-18 12:55:06'),
(30, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kioUK5b-z74k', 'Quintana Roo', 'Sureste', 1, 'quintana-roo', 'mapa,quintana roo,google maps,raloy', 'Mapa de Quintana Roo en Google Maps', '2017-07-18 12:44:35', '2017-07-18 12:44:35'),
(31, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kt6M_GWmsHcM', 'Tabasco', 'Sureste', 1, 'tabasco', 'mapa,tabasco,google maps,raloy', 'Mapa de Tabasco en Google Maps', '2017-07-18 12:45:08', '2017-07-18 12:45:08'),
(32, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kqVjtzTHbe-8', 'Yucatán', 'Sureste', 1, 'yucatan', 'mapa,yucatan,google maps,raloy', 'Mapa de Yucatán en Google Maps', '2017-07-18 12:45:44', '2017-07-18 12:55:30'),
(33, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.k0ze35hNltXQ', 'Bolivia', 'Internacional', 1, 'bolivia', 'mapa,bolivia,google maps,raloy', 'Mapa de Bolivia en Google Maps', '2017-07-18 12:46:25', '2017-07-18 12:46:25'),
(34, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.ke-H6Ba-4N88', 'Chile', 'Internacional', 1, 'chile', 'mapa,chile,google maps,raloy', 'Mapa de Chile en Google Maps', '2017-07-18 12:50:18', '2017-07-18 12:50:18'),
(35, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kL6DJSK82jqQ', 'Colombia', 'Internacional', 1, 'colombia', 'mapa,colombia,google maps,raloy', 'Mapa de Colombia en Google Maps', '2017-07-18 12:56:46', '2017-07-18 12:56:46'),
(36, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.k1K1-HXHATIY', 'Costa Rica', 'Internacional', 1, 'costa-rica', 'mapa,costa rica,google maps,raloy', 'Mapa de Costa Rica en Google Maps', '2017-07-18 12:57:28', '2017-07-18 12:57:28'),
(37, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.ke4aYXg0jIj8', 'Ecuador', 'Internacional', 1, 'ecuador', 'mapa,ecuador,google maps,raloy', 'Mapa de Ecuador en Google Maps', '2017-07-18 12:58:06', '2017-07-18 12:58:06'),
(38, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kweBCKHU_GO4', 'El Salvador', 'Internacional', 1, 'el-salvador', 'mapa,el salvador,google maps,raloy', 'Mapa de El Salvador en Google Maps', '2017-07-18 12:58:44', '2017-07-18 12:58:44'),
(39, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.knkI4XCQovw0', 'Guatemala', 'Internacional', 1, 'guatemala', 'mapa,guatemala,google maps,raloy', 'Mapa de Guatemala en Google Maps', '2017-07-18 12:59:15', '2017-07-18 12:59:15'),
(40, 'https://www.google.com/maps/d/embed?mid=177BsIoAYLQRm2I51cISz8z0mnwg', 'Honduras', 'Internacional', 1, 'honduras', 'mapa,honduras,google maps,raloy', 'Mapa de Honduras en Google Maps', '2017-07-18 12:59:48', '2017-07-18 12:59:48'),
(41, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.kPeiXGJyiwfw', 'Paraguay', 'Internacional', 1, 'paraguay', 'mapa,paraguay,google maps,raloy', 'Mapa de Paraguay en Google Maps', '2017-07-18 13:00:25', '2017-07-18 13:00:25'),
(42, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.k5j9fFwUCHyc', 'Perú', 'Internacional', 1, 'peru', 'mapa,peru,google maps,raloy', 'Mapa de Perú en Google Maps', '2017-07-18 13:01:00', '2017-07-18 13:01:00'),
(43, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.ko9bBdbnmWPc', 'Uruguay', 'Internacional', 0, 'uruguay', 'mapa,uruguay,google maps,raloy', 'Mapa de Uruguay en Google Maps', '2017-07-18 13:01:29', '2017-07-18 13:01:29'),
(44, 'https://www.google.com/maps/d/embed?mid=zP7oyHMMnKS4.knGkrrrCHO58', 'Nicaragua', 'Internacional', 1, 'nicaragua', 'mapa,nicaragua,google maps,raloy', 'Mapa de Nicaragua en Google Maps', '2017-07-19 13:21:44', '2017-07-19 13:21:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapsdistribuidordirectorio`
--

CREATE TABLE `mapsdistribuidordirectorio` (
  `id` int(11) NOT NULL,
  `id_MapsDistribuidor` int(11) NOT NULL,
  `clave` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_distribuidor` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mapsdistribuidordirectorio`
--

INSERT INTO `mapsdistribuidordirectorio` (`id`, `id_MapsDistribuidor`, `clave`, `nombre_distribuidor`, `direccion`, `telefono`, `whatsapp`, `email`, `email2`, `orden`, `activo`, `created_at`, `updated_at`) VALUES
(1, 1, '978', 'Jesús Zapata Silva', '<p style=\"text-align:center\">Av. Mahatma Gandhi No. 810</p>\r\n\r\n<p style=\"text-align:center\">Col. San Francisco del Arenal</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;Aguascalientes, Ags. C.P. 20280</p>', '4499710215', '4499710215', 'aguascalientes@raloy.com.mx', 'jzapata64@hotmail.com', 1, 1, '2017-07-12 10:50:22', '2017-07-13 13:15:30'),
(2, 20, '4166', 'Francisco Melgoza Suarez', '<p style=\"text-align:center\">Carr. a San Felipe Km. 7.5 S/N</p>\r\n\r\n<p style=\"text-align:center\">Colonia 1 Divisi&oacute;n 2, Del. Cerro Prieto&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Mexicali, Baja California , C.P.&nbsp;21701</p>', '6865568203', NULL, 'aceitesindustrialesraloy@gmail.com', 'mexicali@raloy.com.mx', 1, 1, '2017-07-19 12:02:56', '2017-07-19 12:02:56'),
(3, 29, '4065', '3G Servicios Integrales y Comercialización del Sureste', '<p style=\"text-align:center\">Carr. Comitan-La Trinitaria km 180 Pamala</p>\r\n\r\n<p style=\"text-align:center\">Comit&aacute;n de Dom&iacute;nguez, Chiapas</p>', '9631106264', '+5219631295402', '3gsolucionescomerciales@gmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:46:57'),
(4, 2, '3735', 'CAACSA, S.A. de C.V.', '<p style=\"text-align:center\">Av. Miguel Hidalgo No. 898</p>\r\n\r\n<p style=\"text-align:center\">Zona Centro</p>\r\n\r\n<p style=\"text-align:center\">Cd. Cuauht&eacute;moc, Chih.</p>', '6255821561', '+5216255812348', 'chihuahua1@raloy.com.mx', 'caacsa1@prodigy.net.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:49:01'),
(5, 2, '4092', 'Mario Diesel de Chihuahua', '<p style=\"text-align:center\">Av. Ocampo No. 2607</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro,&nbsp; C.P. 31020</p>\r\n\r\n<p style=\"text-align:center\">Chihuahua, Chih.</p>', '6144157715', '+5216144160114', NULL, 'contabilidad@mariodiesel.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:50:18'),
(6, 3, '4013', 'Mecramotors, S.A. de C.V.', '<p style=\"text-align:center\">Carr. G&oacute;mez Palacio-Chihuahua, Km. 14, S/N</p>\r\n\r\n<p style=\"text-align:center\">Torre&oacute;n, Coah. C.P. 35135</p>', '8717482435', '+5218717482436', 'torreon@raloy.com.mx', 'gabriela.vazquez@mecramotors.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:53:03'),
(7, 9, '3812', 'García Arroyo Isabel', '<p style=\"text-align:center\">Calle A&ntilde;o 1910 No. 391</p>\r\n\r\n<p style=\"text-align:center\">Col. Ticom&aacute;n, Del. Gustavo A. Madero</p>\r\n\r\n<p style=\"text-align:center\">D.F. C.P. 07330</p>', '5555864401', NULL, 'ticoman@raloy.com.mx', 'raloy_viga@yahoo.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:58:14'),
(8, 22, NULL, 'Distribución Disponible', '<p>INTERESADOS</p>', NULL, NULL, 'informacion@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:54:28'),
(9, 13, NULL, 'Raloy Lubricación Integral', '<p style=\"text-align:center\">Blvd. Toluca Metepec No. 865 Norte, Lote 44</p>\r\n\r\n<p style=\"text-align:center\">Col. Xinant&eacute;catl</p>\r\n\r\n<p style=\"text-align:center\">Metepec, Edo. de M&eacute;xico.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 52148</p>', '7222199199', '+5217222199201', 'kmorales@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:11:38'),
(10, 11, '4062', 'Diana Muñiz Villalobos', '<p style=\"text-align:center\">Campeche No. 407</p>\r\n\r\n<p style=\"text-align:center\">Col. Progreso, Entre Jalapa y Oaxaca</p>\r\n\r\n<p style=\"text-align:center\">Acapulco, Gro.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 39350</p>', '7444853217', NULL, 'acapulco@raloy.com.mx', 'diana_mvilla@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:08:45'),
(11, 10, '3916', 'Súper Diesel de Celaya', '<p style=\"text-align:center\">Blvd. Adolfo L&oacute;pez Mateos No. 709 Pte.</p>\r\n\r\n<p style=\"text-align:center\">Zona Centro</p>\r\n\r\n<p style=\"text-align:center\">Celaya Gto, C.P. 38040</p>', '4616135358', '+5214616127395', 'guanajuato@raloy.com.mx', 'jesus.ma@superdiesel.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:01:17'),
(12, 10, '3695', 'Luis Augusto Aguilar Malagón', '<p style=\"text-align:center\">Priv. Bajio 109</p>\r\n\r\n<p style=\"text-align:center\">Col. Valle de los Naranjos</p>\r\n\r\n<p style=\"text-align:center\">Celaya, Gto. C.P. 38020</p>', '4616175990', NULL, 'celaya1@raloy.com.mx', 'luis_augusto1am@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:01:44'),
(13, 10, '3355', 'Socorro Gómez Padilla', '<p style=\"text-align:center\">Calle 5 de Mayo, No. 323</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro</p>\r\n\r\n<p style=\"text-align:center\">Le&oacute;n, Gto. C.P. 37000</p>', '4777168709', NULL, 'leon@raloy.com.mx', 'filtracionesespecializada@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:02:15'),
(14, 10, '3776', 'Salvador Reyes Medel', '<p style=\"text-align:center\">Casimiro Liceaga No. 149</p>\r\n\r\n<p style=\"text-align:center\">Col. &Aacute;lvaro Obreg&oacute;n Centro</p>\r\n\r\n<p style=\"text-align:center\">Irapuato, Gto. C.P. 36530</p>', '4626276657', '+5214626261108', 'irapuato@raloy.com.mx', 'anaidreyes@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:04:00'),
(15, 10, '3859', 'Roberto Barba Tavarez', '<p style=\"text-align:center\">Liebres No. 103</p>\r\n\r\n<p style=\"text-align:center\">Fracc. Granjas Ceres</p>\r\n\r\n<p style=\"text-align:center\">Le&oacute;n, Gto. C.P. 37280</p>', '4477118724', '+5214477719123', NULL, 'lubarmex_ab@live.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:04:38'),
(16, 10, '3962', 'Norma Estela Soto Mendoza', '<p style=\"text-align:center\">Libramiento Norte No. 3370</p>\r\n\r\n<p style=\"text-align:center\">Col. Progreso</p>\r\n\r\n<p style=\"text-align:center\">Silao, Gto.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 36135</p>', '4727225149', NULL, 'silao@raloy.com.mx', 'snormaestela@yahoo.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:05:11'),
(17, 12, '2251', 'Miguel Ángel Flor Flores', '<p style=\"text-align:center\">Carr. M&eacute;xico-Tuxpan Km. 139, s/n</p>\r\n\r\n<p style=\"text-align:center\">San Nicolas el Grande</p>\r\n\r\n<p style=\"text-align:center\">Tulancingo, Hgo.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 43667</p>', '7757751421', NULL, 'tulancingo@raloy.com.mx', 'maff_vym@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:09:22'),
(18, 24, '3678', 'Tracto Diesel de Uruapan, S.A. de C.V.', '<p style=\"text-align:center\">Libramiento Ote. No. 545</p>\r\n\r\n<p style=\"text-align:center\">Col. L&aacute;zaro C&aacute;rdenas</p>\r\n\r\n<p style=\"text-align:center\">Uruapan, Mich.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 60135</p>', '4525284300', '+5214525284848', 'ventas.humberto@tractodiesel.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:16:04'),
(19, 14, '1516', 'Corporación GFG, S.A. de C.V.', '<p style=\"text-align:center\">Calle 8 lote 3-A</p>\r\n\r\n<p style=\"text-align:center\">Col. Ram&oacute;n Hern&aacute;ndez Navarro</p>\r\n\r\n<p style=\"text-align:center\">Cuernavaca, Mor.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 62370</p>', '7773160556', NULL, 'gfg@raloy.com.mx', 'jaime_felix@corporaciongfg.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:18:11'),
(20, 5, '4010', 'Distribuidora de Filtros FYR, S.A. de C.V.', '<p style=\"text-align:center\">Av. Manuel L. Albarr&aacute;n No. 716 Nte.</p>\r\n\r\n<p style=\"text-align:center\">Col. Tabachines</p>\r\n\r\n<p style=\"text-align:center\">San Nicol&aacute;s de los Garza, NL.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 66425</p>', '8183524140', '+5218331252090', 'nuevoleon@raloy.com.mx', 'carlosrangel@fyr.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:23:11'),
(21, 15, '3679', 'Comercializadora Merlín, S.A. de C.V.', '<p style=\"text-align:center\">Segunda Privada de Emilio Carranza No. 109-A</p>\r\n\r\n<p style=\"text-align:center\">Col. Reforma</p>\r\n\r\n<p style=\"text-align:center\">Oaxaca, Oax.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 68050</p>', '9515135887', '018008333365', 'oaxaca@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:26:56'),
(22, 16, '0834', 'Enrique Ochoa Duarte', '<p style=\"text-align:center\">Av. San Felipe No. 2615-B</p>\r\n\r\n<p style=\"text-align:center\">Col. Villa Posadas</p>\r\n\r\n<p style=\"text-align:center\">Puebla, Pue.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 72060</p>', '2222311517', '2222311537', 'puebla@raloy.com.mx', 'raloypue@prodigy.net.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:36:28'),
(23, 16, '3738', 'Lubrimex de Puebla, S.A. de C.V.', '<p style=\"text-align:center\">Diagonal 2 Oriente No. 1</p>\r\n\r\n<p style=\"text-align:center\">San Andr&eacute;s, Cholula, Pue.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 72814</p>', '2222474117', '2222476082', 'cholula@raloy.com.mx', 'arturo.cabanas@yahoo.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:37:00'),
(24, 17, '3857', 'Ma. Trinidad Quintanar Reséndiz', '<p style=\"text-align:center\">Circuito Granito No. 24</p>\r\n\r\n<p style=\"text-align:center\">Col. Lomas del Pedregal</p>\r\n\r\n<p style=\"text-align:center\">San Juan del R&iacute;o, Qro.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 76807</p>', '4271480979', '4272748909', 'sanjuandelrio@raloy.com.mx', 'kdbcomercializadora@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:37:45'),
(25, 17, '3889', 'AINSA, S.A. de C.V.', '<p style=\"text-align:center\">Calle Jardineros No. 93 Bodega J</p>\r\n\r\n<p style=\"text-align:center\">Col. Pe&ntilde;uelas, C.P. 76148</p>\r\n\r\n<p style=\"text-align:center\">Quer&eacute;taro, Qro.</p>', '4422120010', '4421405943', 'ainsa@raloy.com.mx', 'ainsa01@yahoo.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:38:11'),
(26, 6, '4044', 'Intelilub, S.A. de C.V.', '<p style=\"text-align:center\">Pedro Moreno No. 300-F</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro</p>\r\n\r\n<p style=\"text-align:center\">San Luis Potos&iacute;, SLP.</p>', '4448182548', '4448182541', 'sanluispotosi@raloy.com.mx', 'adrianlule@prodigy.net.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:40:16'),
(27, 6, '3808', 'M. I. Química y Procesos, S.A. de C.V.', '<p style=\"text-align:center\">Jard&iacute;n San Antonio 110</p>\r\n\r\n<p style=\"text-align:center\">Col. Villa Rica</p>\r\n\r\n<p style=\"text-align:center\">San Luis Potos&iacute;, SLP.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 78280</p>', '4441853342', '4441666661', NULL, 'mede1@prodigy.net.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:42:02'),
(28, 27, '3950', 'Citos Lubricantes, S.A. de C.V.', '<p style=\"text-align:center\">Poder Legislativo No. 188</p>\r\n\r\n<p style=\"text-align:center\">Col. Ley 57</p>\r\n\r\n<p style=\"text-align:center\">Hermosillo Son.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 83100</p>', '6622070448', NULL, 'hermosillo@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:45:27'),
(29, 27, NULL, 'Diesel Zone, S.A. de C.V.', '<p style=\"text-align:center\">Jalisco No. 169 Norte</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro</p>\r\n\r\n<p style=\"text-align:center\">Cd. Obreg&oacute;n, Son.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 85000</p>', '6441794007', NULL, 'ciudadobregon@raloy.com.mx', 'dieselzone@hotmail.es', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:46:04'),
(30, 7, '3930', 'AREFIL, S.A. de C.V.', '<p style=\"text-align:center\">Av. Monterrey No. 500</p>\r\n\r\n<p style=\"text-align:center\">Col. Manuel R. D&iacute;az</p>\r\n\r\n<p style=\"text-align:center\">Cd. Madero, Tamps.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 89515</p>', '8332114906', '8331265855', 'ciudadmadero@raloy.com.mx', 'victor.vazquez@arefil.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:48:45'),
(31, 4, NULL, 'Distribución Disponible', '<p>INTERESADOS</p>', NULL, NULL, 'informacion@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:59:26'),
(32, 19, '0856', 'Comercializadora Polos de Córdoba, S.A. de C.V.', '<p style=\"text-align:center\">Av. 1 Calle 23 y 25 No 2312</p>\r\n\r\n<p style=\"text-align:center\">Col Centro</p>\r\n\r\n<p style=\"text-align:center\">C&oacute;rdoba Ver.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 94500</p>', '2717142767', '2717140635', 'cordoba@raloy.com.mx', 'polosdecordoba@prodigy.net.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:50:12'),
(33, 19, '1741', 'Distribuciones DMTress Veracruz, S.A. de C.V.', '<p style=\"text-align:center\">Calle Robles lote 1 mzna. IX</p>\r\n\r\n<p style=\"text-align:center\">Cd. Industrial Bruno Pagliai</p>\r\n\r\n<p style=\"text-align:center\">Veracruz, Ver.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 91697</p>', '2291783597', '2291783597', 'veracruz@raloy.com.mx', 'marquinez_dm3@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:51:19'),
(34, 19, '1741', 'Distribuciones DMTress Poza Rica, S.A. de C.V.', '<p style=\"text-align:center\">Av. Manlio Fabio Altamirano No. 206</p>\r\n\r\n<p style=\"text-align:center\">Poza Rica. Ver.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 93330</p>', '7828229438', '7821550432', 'pozarica@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:50:48'),
(35, 32, '3469', 'RG Suministros Suc. Santiago, S.A. de C.V.', '<p style=\"text-align:center\">Calle 61 No. 572 A.</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro</p>\r\n\r\n<p style=\"text-align:center\">M&eacute;rida Yuc.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 97000</p>', '9999245417', '+5219992922603', 'merida@raloy.com.mx', 'riolubricantes@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:52:26'),
(36, 32, '3469', 'RG Suministros Suc. Xoclán', '<p style=\"text-align:center\">Calle 59 No. 801</p>\r\n\r\n<p style=\"text-align:center\">Col. Xocl&aacute;n Canto</p>\r\n\r\n<p style=\"text-align:center\">M&eacute;rida, Yuc.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 97245</p>', '9999280600', '+5219991212866', 'merida@raloy.com.mx', 'riolubricantes@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:52:57'),
(37, 8, '3988', 'Angélica María Ávila Ontiveros', '<p style=\"text-align:center\">Calle Santa Rosa No. 125</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro</p>\r\n\r\n<p style=\"text-align:center\">Sombrerete, Zac.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 99100</p>', '4339350062', '4339351550', 'sombrerete@raloy.com.mx', 'h.esparza@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:53:26'),
(38, 44, NULL, 'Construmarket de Nicaragua, S.A.', '<p style=\"text-align:center\">Pista Juan Pablo II</p>\r\n\r\n<p style=\"text-align:center\">Contiguo A en el Central</p>\r\n\r\n<p style=\"text-align:center\">Managua</p>', '50522785354', '50522785231', 'repuestos.ni@grupoconstrumarket.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:22:26'),
(39, 36, NULL, 'Lubricantes AZAIT, S.A. de C.V.', '<p style=\"text-align:center\">De la Iglesia de San Rafa&eacute;l de Coronado</p>\r\n\r\n<p style=\"text-align:center\">100 Sureste y 50 Norte</p>\r\n\r\n<p style=\"text-align:center\">San Jos&eacute;, Costa Rica</p>', '5062292792', NULL, 'jsgazait@ice.co.cr', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:56:49'),
(40, 5, '4144', 'Distribuidora de Lubricantes Unión, S.A. de C.V.', '<p style=\"text-align:center\">Carr. Allende Cadereyta Km 2.5</p>\r\n\r\n<p style=\"text-align:center\">Col. Talleres</p>\r\n\r\n<p style=\"text-align:center\">Cd. Allende, N.L.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 67350</p>', '8262683191', '+5218262684160', NULL, 'rodrigo@filtralub.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:23:45'),
(41, 14, '4257', 'Rocio Arias Ochoa', '<p style=\"text-align:center\">Alta Tensi&oacute;n No. 12</p>\r\n\r\n<p style=\"text-align:center\">Col. Vicente Estrada Cajigal</p>\r\n\r\n<p style=\"text-align:center\">Cuernavaca, Morelos</p>\r\n\r\n<p style=\"text-align:center\">C.P. 62460</p>', '7773227757', NULL, NULL, NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:18:42'),
(42, 17, '4110', 'Comercializadora de Filtros y Lubricantes de Acapulco, S.A. de C.V.', '<p style=\"text-align:center\">Carr. M&eacute;xico-Quer&eacute;taro KM 212 s/n Loc. B</p>\r\n\r\n<p style=\"text-align:center\">Col. Plazas del Sol</p>\r\n\r\n<p style=\"text-align:center\">Santiago de Quer&eacute;taro, Qro.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 76099</p>', '4424035629', NULL, NULL, 'hmva55@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:38:43'),
(43, 10, '4172', 'Mercedes Toledo Quintero', '<p style=\"text-align:center\">Calle Ac&oacute;nito No. 118</p>\r\n\r\n<p style=\"text-align:center\">Jardines de Jer&eacute;z 3a Secci&oacute;n</p>\r\n\r\n<p style=\"text-align:center\">Le&oacute;n, Gto.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 37530</p>', '4777616270', '+5214773289701', NULL, 'jlnm52@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:06:01'),
(44, 13, '4250', 'Marco Antonio Gutiérrez Núñez', '<p style=\"text-align:center\">Belisario Dom&iacute;nguez S/N</p>\r\n\r\n<p style=\"text-align:center\">Col. La Mota</p>\r\n\r\n<p style=\"text-align:center\">Lerma, Estado de M&eacute;xico</p>\r\n\r\n<p style=\"text-align:center\">C.P. 52000</p>', '7282821520', NULL, 'lerma@raloy.com.mx', 'marco.gutierrez@fujioil.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:12:10'),
(45, 19, '1741', 'Distribuciones DMTress Coatzacoalcos, S.A. de C.V.', '<p style=\"text-align:center\">Corregidora No. 503, entre Zamora e Ignacio de la Llave</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro</p>\r\n\r\n<p style=\"text-align:center\">Coatzacoalcos, Ver.</p>', '9211641126', NULL, 'veracruz@raloy.com.mx', 'marquinez_dm3@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:51:45'),
(46, 23, '4264', 'PRODISA Comercialización, S. de R.L. de C.V.', '<p style=\"text-align:center\">Circuito Grijalva No. 50 - 125</p>\r\n\r\n<p style=\"text-align:center\">Condominio Industrial Siglo 21</p>\r\n\r\n<p style=\"text-align:center\">Tlajomulco de Z&uacute;&ntilde;iga</p>\r\n\r\n<p style=\"text-align:center\">C.P. 45640</p>', '3316540385', '+5213315259001', 'zflores@prodisa.net', 'zflores@prodi-sa.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:10:58'),
(47, 26, NULL, 'Apolinar Félix Cárdenas', '<p style=\"text-align:center\">Jes&uacute;s Manuel Sarabia No. 2461 Pte.</p>\r\n\r\n<p style=\"text-align:center\">Col. Country del R&iacute;o, C.P. 80050</p>\r\n\r\n<p style=\"text-align:center\">Culiacan, Sinaloa</p>', '6677491371', NULL, 'apolinar.felix@hotmail.com', 'culiacan@raloy.com.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:43:32'),
(48, 34, NULL, 'Importadora VINI, S.A.', '<p style=\"text-align:center\">Lira No. 945</p>\r\n\r\n<p style=\"text-align:center\">Santiago Centro</p>\r\n\r\n<p style=\"text-align:center\">Santiago, Chile</p>', '56981387022', NULL, 'sumi@sumicar.tie.cl', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:52:20'),
(49, 35, NULL, 'Raloy Filters S.A.S.', '<p style=\"text-align:center\">Carretera 59 No. 46-42</p>\r\n\r\n<p style=\"text-align:center\">Medell&iacute;n, Colombia</p>', '573148921277', NULL, 'sauljgp@hotmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:55:17'),
(50, 35, NULL, 'Tecnifil LTDA', '<p style=\"text-align:center\">Carretera 29A 18 A 25 SUR</p>\r\n\r\n<p style=\"text-align:center\">Bogota, Colombia</p>', '5717204407', NULL, 'jaime.bahamon@tecnifil.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:55:42'),
(51, 39, NULL, 'Pineda Trucks, S.A.', '<p style=\"text-align:center\">Calle 18 No. 16-20</p>\r\n\r\n<p style=\"text-align:center\">Zona 11</p>\r\n\r\n<p style=\"text-align:center\">Cuidad de Guatemala, Guatemala</p>', '24731117', '50224732222', 'ventasptpguatemala1@gmail.com', 'estuardocarol@yahoo.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:07:51'),
(52, 41, NULL, 'Lubricaucho, S.A.', '<p style=\"text-align:center\">Las Flores No. 21 Esq. Jazm&iacute;n</p>\r\n\r\n<p style=\"text-align:center\">San Lorenzo, Departamento Central</p>\r\n\r\n<p style=\"text-align:center\">Asunci&oacute;n, Paraguay</p>', '59521577433', '50521573171', 'gerencia@lubricaucho.com.py', 'anlo2804@hotmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:28:07'),
(53, 37, NULL, 'Servicios Industriales Vallejo Araujo, S.A. de C.V.', '<p style=\"text-align:center\">Av. Mariscal Antonio Sucre No. 52-120 y Av. La Florida</p>\r\n\r\n<p style=\"text-align:center\">Pichincha, Quito, Ecuador</p>', '593999376404', NULL, 'cristobal.canizares@grupova.com.ec', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:00:13'),
(54, 33, NULL, 'Jorge Condori Capuma', '<p style=\"text-align:center\">C. Tumusla No. 347</p>\r\n\r\n<p style=\"text-align:center\">Cochabamba, Bolivia</p>', '59144588909', NULL, 'pelagia@herco.com.bo', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:44:30'),
(55, 43, NULL, 'SERPLUS, S.A.', '<p style=\"text-align:center\">Camino a la Higuerita No. 2049</p>\r\n\r\n<p style=\"text-align:center\">Montevideo, Uruguay</p>', '59823123268', NULL, 'serplus@adinet.com.uy', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:49:40'),
(56, 35, NULL, 'Cooperativa Integral Distriaceites Espinoza', '<p style=\"text-align:center\">Calle 13 No. 27 a 75</p>\r\n\r\n<p style=\"text-align:center\">Acopi Yumbo</p>\r\n\r\n<p style=\"text-align:center\">Cali, Colombia</p>', '5728891616', NULL, 'mercadeo@surtiaceites.com.co', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:56:12'),
(57, 38, NULL, 'Racing Lurbicantes', '<p style=\"text-align:center\">25 Calle Poniente y 10a. Av. Sur</p>\r\n\r\n<p style=\"text-align:center\">Santa Ana, El Salvador</p>', '50324320965', NULL, 'amenedez@lubricantesracing.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:00:35'),
(58, 2, '4311', 'Distribuidora de Lubricantes y Grasas Finas', '<p style=\"text-align:center\">Sabino No. 802</p>\r\n\r\n<p style=\"text-align:center\">Col. Los Frailes</p>\r\n\r\n<p style=\"text-align:center\">Chihuahua, Chi. C.P. 31160</p>', '6144146060', NULL, NULL, 'gerencia@dilugraf.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:51:23'),
(59, 2, '4408', 'Jorge Mauricio Alegría González', '<p style=\"text-align:center\">Eusebio Baez No. 5</p>\r\n\r\n<p style=\"text-align:center\">Col. Deportistas</p>\r\n\r\n<p style=\"text-align:center\">Chihuahua, Chi., C.P. 31125</p>', '6144160599', NULL, NULL, 'facturasmayoreocarss@gmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:51:49'),
(60, 24, '4358', 'Ignacio Eduardo Moreno Gómez', '<p style=\"text-align:center\">Av. Constituci&oacute;n de 1917 No.64</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro</p>\r\n\r\n<p style=\"text-align:center\">L&aacute;zaro Cardenas, Mich.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 60950</p>', '7535322376', NULL, 'lubimsaventas@prodigy.net.mx', 'lubimsaventas@prodigy.net.mx', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:16:37'),
(61, 31, '4122', 'Lubricantes de Calidad de Tabasco, S.A. de C.V.', '<p style=\"text-align:center\">Calle 4 S/N</p>\r\n\r\n<p style=\"text-align:center\">Col. Parque Industrial Deit Rancher&iacute;a Anacleto Canabal 1ra. Secc.</p>\r\n\r\n<p style=\"text-align:center\">Villahermosa, Tab.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 86280</p>', '9933379250', NULL, NULL, NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:47:17'),
(62, 30, '4388', 'Mercalub, S.A. de C.V.', '<p style=\"text-align:center\">Av. Jos&eacute; L&oacute;pez Portillo Mzna. 20 lote 10 y 11</p>\r\n\r\n<p style=\"text-align:center\">Col. Regi&oacute;n 84</p>\r\n\r\n<p style=\"text-align:center\">Canc&uacute;n, Q. Roo</p>\r\n\r\n<p style=\"text-align:center\">C.P. 77517</p>', '9982520443', NULL, NULL, 'factprov.mercalub@gmail.com', 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:39:13'),
(63, 25, NULL, 'Distribución Disponible', '<p>INTERESADOS</p>', NULL, NULL, 'informacion@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:19:42'),
(64, 31, '4327', 'Corporativo GC de Tabasco', '<p style=\"text-align:center\">Carr. Villahermosa - C&aacute;rdenas km. 0.8 R/A</p>\r\n\r\n<p style=\"text-align:center\">Anacleto Canabal</p>\r\n\r\n<p style=\"text-align:center\">Villahermosa, Tab.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 86280</p>', NULL, '+5219932357400', 'contacto.gctabasco@gmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:48:12'),
(65, 29, '4065', '3G Servicios Integrales y Comercialización del Sureste', '<p style=\"text-align:center\">Blvd. Los Laguitos No. 2310</p>\r\n\r\n<p style=\"text-align:center\">Fracc. Buena Vista, C.P. 29020</p>\r\n\r\n<p style=\"text-align:center\">Tuxtla Guti&eacute;rrez, Chiapas</p>', '96152113', '+5219612354213', '3gsolucionescomerciales@gmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:48:10'),
(66, 24, '4409', 'Econopartes Automotrices', '<p style=\"text-align:center\">Calzada La Huerta No. 747</p>\r\n\r\n<p style=\"text-align:center\">Col. Morelos C.P. 58030</p>\r\n\r\n<p style=\"text-align:center\">Morelia, Mich.</p>', '4431654780', NULL, 'econopartes@hotmail.es', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:17:04'),
(67, 20, '4458', 'Comercializadora Shelly', '<p style=\"text-align:center\">Manuel J. Clouthier 114 - A7</p>\r\n\r\n<p style=\"text-align:center\">Campestre Murua C.P. 22455</p>\r\n\r\n<p style=\"text-align:center\">Tijuana, B.C.</p>', '6649731394', NULL, 'alanc@comercializadorashelly.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:34:47'),
(68, 26, '4454', 'Sergio Árias Montoya', '<p style=\"text-align:center\">Aquiles Serd&aacute;n 1014</p>\r\n\r\n<p style=\"text-align:center\">Col. Morelos, C.P. 81460</p>\r\n\r\n<p style=\"text-align:center\">Guam&uacute;chil, Sin.</p>', '46737329399', '6681890228', 'hollmankraks@hotmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:44:00'),
(69, 13, '0562', 'Distribuidora Marloy', '<p style=\"text-align:center\">V&iacute;veros de Xochimilco No. 8</p>\r\n\r\n<p style=\"text-align:center\">V&iacute;veros de la Loma</p>\r\n\r\n<p style=\"text-align:center\">Tlalnepantla</p>\r\n\r\n<p style=\"text-align:center\">C.P. 54080</p>', '5553980204', '+5215553654973', 'melchorloya@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:13:26'),
(70, 13, '0562', 'Distribuidora Lubloy', '<p style=\"text-align:center\">Conchita No. 3.</p>\r\n\r\n<p style=\"text-align:center\">Col. Sat&eacute;lite</p>\r\n\r\n<p style=\"text-align:center\">Naucalpan, Edo. M&eacute;xico</p>\r\n\r\n<p style=\"text-align:center\">C.P. 53119</p>', '5567955155', '+5215538984534', 'lubloy@hotmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:14:09'),
(71, 13, '0562', 'Distribuidora Marlovi', '<p style=\"text-align:center\">Julio Garc&iacute;a No. 11</p>\r\n\r\n<p style=\"text-align:center\">Col. Sat&eacute;lite</p>\r\n\r\n<p style=\"text-align:center\">Naucalpan, Edo. M&eacute;xico</p>\r\n\r\n<p style=\"text-align:center\">C.P. 53100</p>', '5553491673', '+5215554542744', 'marlovi@live.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:14:42'),
(72, 18, NULL, 'Distribución Disponible', '<p>INTERESADOS</p>', NULL, NULL, 'informacion@raloy.com.mx', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:49:12'),
(73, 42, NULL, 'Lucas Reategui Flores', '<p style=\"text-align:center\">Martinez de Compagnon No. 225</p>\r\n\r\n<p style=\"text-align:center\">Col. Tarapoto</p>\r\n\r\n<p style=\"text-align:center\">San Martin, Per&ugrave;.</p>\r\n\r\n<p style=\"text-align:center\">C.P. 22200</p>', '511992737353', '511942685129', 'gelapac@gmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:34:18'),
(74, 24, NULL, 'Mónica Yovana González López', '<p style=\"text-align:center\">Juan Martinez 146</p>\r\n\r\n<p style=\"text-align:center\">Col. Movimiento Magisterial</p>\r\n\r\n<p style=\"text-align:center\">Uruapan, Michoac&aacute;n</p>\r\n\r\n<p style=\"text-align:center\">C.P. 60190</p>', '4525020095', NULL, 'dafmex@hotmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:17:32'),
(75, 42, NULL, 'LUBSERVIS L&A, S.R.L.', '<p style=\"text-align:center\">Augusto B. Leguia No. 2320</p>\r\n\r\n<p style=\"text-align:center\">Col. Urbanizaci&oacute;n</p>\r\n\r\n<p style=\"text-align:center\">Santa Mar&iacute;a Chiclayo, Per&uacute;</p>', '51977575286', NULL, NULL, NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:34:57'),
(76, 42, NULL, 'Ayacucho Racing Oil, I.E.R.L.', '<p style=\"text-align:center\">Jr. Salvador Cavero No. 301</p>\r\n\r\n<p style=\"text-align:center\">Distrito Jes&uacute;s Nazareno</p>\r\n\r\n<p style=\"text-align:center\">Huamanga Ayacucho, Per&uacute;</p>', '51066315262', NULL, NULL, NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:35:29'),
(77, 40, NULL, 'Lubricantes, Grasas y Filtros, S.de R.L.', '<p style=\"text-align:center\">Calle 1, 2 y 9 Av.</p>\r\n\r\n<p style=\"text-align:center\">Barrio Santa Anita</p>\r\n\r\n<p style=\"text-align:center\">San Pedro Sula, Honduras</p>', '50425521508', NULL, NULL, NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:10:18'),
(78, 9, '4532', 'Lubricantes EuroMex Especializados S.A. de C.V.', '<p style=\"text-align:center\">Calle B No. 51</p>\r\n\r\n<p style=\"text-align:center\">Colonia Modelo</p>\r\n\r\n<p style=\"text-align:center\">Naucalpan, Estado de M&eacute;xico</p>\r\n\r\n<p style=\"text-align:center\">C.P. 53330</p>', '5553635680', NULL, 'md_estevez@yahoo.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:58:55'),
(79, 13, '4532', 'Lubricantes EuroMex Especializados S.A. de C.V.', '<p style=\"text-align:center\">Calle B No. 51</p>\r\n\r\n<p style=\"text-align:center\">Colonia Modelo</p>\r\n\r\n<p style=\"text-align:center\">Naucalpan, Estado de M&eacute;xico</p>\r\n\r\n<p style=\"text-align:center\">C.P. 53330</p>', '5553635680', NULL, 'md_estevez@yahoo.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:15:25'),
(80, 20, '4512', 'Leobardo Guadalupe Camacho Garza', '<p style=\"text-align:center\">Av. Bilbao No. 1445</p>\r\n\r\n<p style=\"text-align:center\">Col. Conjunto Urbano Esperanza</p>\r\n\r\n<p style=\"text-align:center\">Mexicali, B.C., CP 21350</p>', '6862885286', NULL, 'gerencia@kaizermx.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:41:16'),
(81, 21, '4518', 'María Amelia Aispuro Félix', '<p style=\"text-align:center\">Jose Maria Morelos y Pavon 995</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro</p>\r\n\r\n<p style=\"text-align:center\">La Paz, B.C.S. CP 23000</p>', '6121256300', NULL, 'agracosacontable@hotmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:42:32'),
(82, 10, '4551', 'José Zavala Contreras', '<p style=\"text-align:center\">Francisco I. Madero 79</p>\r\n\r\n<p style=\"text-align:center\">Col. Centro,Uriangato</p>\r\n\r\n<p style=\"text-align:center\">Guanajuato</p>\r\n\r\n<p style=\"text-align:center\">CP 38980</p>', '443378707', NULL, 'estecel82@gmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:06:59'),
(83, 26, '4515', 'Victoria Guadalupe Santillán Villegas', '<p style=\"text-align:center\">Blvd Adolfo Lopez Mateos NO. 3239</p>\r\n\r\n<p style=\"text-align:center\">Col. Hidalgo CP 80150,</p>\r\n\r\n<p style=\"text-align:center\">Los Mochis, Sinaloa</p>', '6677300030', NULL, 'tractopartes@live.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:44:45'),
(84, 28, '4485CAM', 'Lubricantes Euromex Especializados, S.A. de C.V.', '<p style=\"text-align:center\">Parque Ind. Lerma MZA 1 lote 3</p>\r\n\r\n<p style=\"text-align:center\">Col. Cruz Verde, C.P. 24500</p>\r\n\r\n<p style=\"text-align:center\">Campeche, Camp.</p>', '9988600037', NULL, 'pololo17b@hotmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:45:42'),
(85, 30, '4485CUN', 'Lubricantes Euromex Especializados, S.A. de C.V.', '<p style=\"text-align:center\">SM2 301, Mz61 Lote 61 Bodegas 31 y 32</p>\r\n\r\n<p style=\"text-align:center\">Parque Industrial Canc&uacute;n</p>\r\n\r\n<p style=\"text-align:center\">Complejo Gins C.P. 77536</p>\r\n\r\n<p style=\"text-align:center\">Cancun, Quintana Roo</p>', '9988600037', NULL, 'pololo17b@hotmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:39:49'),
(86, 27, '4569', 'César Mario Cedano Moreno', '<p style=\"text-align:center\">Ignacio L&oacute;pez Rayon No. 15</p>\r\n\r\n<p style=\"text-align:center\">Col. 5 de Mayo, C.P. 83010</p>\r\n\r\n<p style=\"text-align:center\">Hermosillo, Son.</p>', NULL, NULL, 'mccedano@gmail.com', NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:46:39'),
(87, 42, NULL, 'Lubricants Import Perú, S.A.C.', '<p style=\"text-align:center\">Av. Honorio Delgado</p>\r\n\r\n<p style=\"text-align:center\">Urb. Semir&uacute;stica El Bosque No. 756</p>\r\n\r\n<p style=\"text-align:center\">La Libertad, Per&uacute;.</p>', '51933517499', NULL, NULL, NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 13:35:56'),
(88, 36, NULL, 'Central de Lubricantes', '<p style=\"text-align:center\">Pozos Santa Ana</p>\r\n\r\n<p style=\"text-align:center\">San Jos&eacute;, Costa Rica</p>', '50683295000', NULL, NULL, NULL, 1, 1, '2017-07-19 12:15:00', '2017-07-19 12:57:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `nombre`, `subtitulo`, `imagen`, `orden`, `activo`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'SkyBlue®', '¿Qué es SkyBlue?', '5b92658c2023518c0979085443f3fdaf.png', 1, 1, '2017-11-01 03:34:51', '2017-11-01 03:34:51', 'skyblue-r'),
(2, 'Recomendaciones', 'Recomendaciones', '662e2f57b41f0770c17e9f369b6d4db4.jpeg', 2, 1, '2017-11-02 16:35:54', '2017-11-02 16:35:54', 'recomendaciones'),
(3, 'Información Técnica', 'Información Técnica', '32aea77213e7991d625f373829d8c3e9.jpeg', 3, 1, '2017-11-02 16:42:37', '2017-11-02 16:42:37', 'informacion-tecnica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginas`
--

CREATE TABLE `paginas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` longtext COLLATE utf8_unicode_ci,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `metakeys` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metadesc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `paginas`
--

INSERT INTO `paginas` (`id`, `nombre`, `contenido`, `slug`, `activo`, `metakeys`, `metadesc`, `created_at`, `updated_at`) VALUES
(1, '¿Qué es y Cómo Funciona?', '<p style=\"text-align:justify\">Es una soluci&oacute;n acuosa con 32.5% de urea grado automotriz de extrema pureza, la cual fue desarrollada para reducir el nivel de emisiones contaminantes de los veh&iacute;culos y m&aacute;quinas con motor a Diesel equipados con Sistema de Reducci&oacute;n Catal&iacute;tica Selectiva (SCR).</p>\r\n\r\n<p style=\"text-align:justify\">Skyblue es la primer soluci&oacute;n de urea grado automotriz para motores a di&eacute;sel producido en M&eacute;xico, con tecnolog&iacute;a 100% alemana.</p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\"><strong>&iquest;C&oacute;mo funciona SkyBlue&reg;?</strong></p>\r\n\r\n<p style=\"text-align:justify\">El sistema SCR cuenta con un dep&oacute;sito especial para SkyBlue&reg; independiente al del combustible, desde ah&iacute; se inyecta SkyBlue&reg; al tubo de escape y con ayuda de la temperatura (180&deg;C) se convierte en gas amoniaco, posteriormente este gas se combina con el contaminante &oacute;xido de nitr&oacute;geno (Nox) y se env&iacute;a al catalizador donde finalmente se transforma en nitr&oacute;geno atmosf&eacute;rico y vapor de agua (amigable al medio ambiente) y se libera a trav&eacute;s del escape.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/b981bd65e53b35f24bcfbe94eb4c2f47.gif\" /></p>', 'que-es-y-como-funciona', 1, 'skyblue,funciona,que es,como', 'Explicacion Que es y como funciona SkyBlue', '2017-11-01 05:48:01', '2017-11-02 15:58:49'),
(2, 'Regulaciones', '<p>Como se puede observar en la tabla, M&eacute;xico est&aacute; rezagado en la regulaci&oacute;n respecto al control de emisiones contaminantes comparado con otros pa&iacute;ses.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/047957688dddf7cea14da388c7f97df4.jpeg\" style=\"height:492px; width:1000px\" /></p>\r\n\r\n<ul>\r\n	<li>Actual regulaci&oacute;n de emisiones de Nox en M&eacute;xico: 4.0 g/bhp-hr</li>\r\n	<li>Nueva regulaci&oacute;n en proceso: Emisiones de Nox: 0.4 g/bhp-hr</li>\r\n</ul>\r\n\r\n<p><strong>NOM 044</strong>&nbsp;Equivalente a Euro VI y EPA 2010&nbsp;<br />\r\n*Sujeta a disponibilidad de Diesel UBA (40%) de las E.S</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/73fbf5feaf97af294d9c07adc9574638.jpeg\" style=\"height:170px; width:1000px\" /></p>\r\n\r\n<p style=\"text-align:justify\">La siguiente tabla describe el proceso para que entre en vigor la NOM 44 con la cual los nuevos veh&iacute;culos de equipo pesado deber&aacute;n cumplir los mismos lineamientos que EURO VI Y EPA 2010.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/44ad739cdad96fdfdb7b2c8195022e88.jpeg\" style=\"height:214px; width:1000px\" /></p>', 'regulaciones', 1, 'regulaciones, skyblue', 'Regulaciones de SkyBlue', '2017-11-02 17:54:42', '2017-11-02 17:54:42'),
(3, 'Preguntas Frecuentes', '<h3 style=\"text-align:center\">SCR: Tecnolog&iacute;a de &Uacute;ltima Generaci&oacute;n para Cumplir con las Regulaciones de Emisiones 2010 en EU y Euro04 en M&eacute;xico.</h3>\r\n\r\n<p><strong>P. &iquest;Qu&eacute; es la Reducci&oacute;n Catal&iacute;tica Selectiva (SCR)?</strong><br />\r\nR. SCR es una tecnolog&iacute;a que utiliza un fluido para el sistema de escape basado en urea (DEF/SKYBLUE&reg;) y un convertidor catal&iacute;tico, para reducir significativamente emisiones de &oacute;xidos de nitr&oacute;geno (NOx). SCR es la tecnolog&iacute;a principal que est&aacute; siendo usada para cumplir con las regulaciones de emisiones 2010 en US.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;C&oacute;mo funciona la tecnolog&iacute;a SCR?&nbsp;</strong><br />\r\nR. El prop&oacute;sito del sistema SCR es reducir los niveles de NOx (&oacute;xidos de nitr&oacute;geno emitidos por el motor) que son da&ntilde;inos para la salud y el medio ambiente. SCR es la tecnolog&iacute;a de post-tratamiento que trata los gases de salida del motor. Peque&ntilde;as cantidades de Fluido para sistemas de Escape a Diesel (DEF/SKYBLUE&reg;) son inyectadas al flujo caliente de los gases de escape, donde se vaporiza y se descompone formando amoniaco y di&oacute;xido de carbono. El amoniaco (NH3) es el producto que en conjunto con el sistema catal&iacute;tico SCR, convierte los &oacute;xidos de nitr&oacute;geno (NOx) en Nitr&oacute;geno (N2) y agua (H20).&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Cu&aacute;les son las ventajas de usar la tecnolog&iacute;a SCR para la flotilla?&nbsp;</strong><br />\r\nR. Los motores actuales cubrir&aacute;n las necesidades del mercado en estos tiempos de desaf&iacute;os econ&oacute;micos que vivimos. Los motores actuales 2010 de rango pesado con SCR van a proveer un ahorro substancial de combustible, mayor al 5%. La tecnolog&iacute;a catal&iacute;tica SCR alcanza una eficiencia mucho mayor en la conversi&oacute;n de &oacute;xidos de nitr&oacute;geno (NOx), de tal modo que permite al motor estar totalmente optimizado. Otro beneficio adicional al rendimiento del combustible es una reducci&oacute;n en la frecuencia de cambio del filtro de part&iacute;culas (DPF), lo cual reduce el costo de mantenimiento.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Cu&aacute;l es la experiencia de Raloy Lubricantes con sistemas SCR?&nbsp;</strong><br />\r\nR. La tecnolog&iacute;a SCR no es nueva, Raloy Lubricantes ha colaborado para la elaboraci&oacute;n de la NMX-D-233-IMNC-2016 junto con otras instituciones para la reducci&oacute;n de emisiones contaminantes, siendo uno de los pioneros en M&eacute;xico en la formulaci&oacute;n de las normas. Para mayor informaci&oacute;n visita nuestra secci&oacute;n sobre la regulaci&oacute;n en este&nbsp;<strong><a href=\"http://localhost/skyblue/web/app_dev.php/skyblue-r/colaboracion-de-raloy-lubricantes-con-la-norma-nmx-d-233-imnc-2016\"><span style=\"color:#7f8c8d\">enlace</span></a>.</strong></p>\r\n\r\n<h3 style=\"text-align:center\">DEF/SKYBLUE&reg;: Propiedades &amp; Recomendaciones de uso</h3>\r\n\r\n<p><strong>P. &iquest;Qu&eacute; es el fluido para sistemas de escape a Diesel (DEF/SKYBLUE&reg;)?&nbsp;</strong><br />\r\nR. DEF/SKYBLUE&reg; es el reactivo para la funcionalidad del sistema SCR. Es una soluci&oacute;n acuosa de urea cuidadosamente mezclada con un 32.5% de urea pura y 67.5% de agua des-ionizada.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Qu&eacute; es Urea?&nbsp;</strong><br />\r\nA. La urea es un compuesto de nitr&oacute;geno que se convierte en amoniaco con el calor. Es usado en diferentes giros industriales, como la industria de fertilizantes y de agricultura.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;C&oacute;mo puedo asegurarme que funcionar&aacute; el producto DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. El producto DEF/SKYBLUE&reg; que usted compre debe de desplegar la certificaci&oacute;n del German Institute of Standardization DIN70700, the International Organization for Standardization ISO 22241-1, as&iacute; como la especificaci&oacute;n AUS &ndash; 32. Esto asegurar&aacute; la pureza apropiada y la concentraci&oacute;n (32.5%) de urea.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Puedo elaborar yo mismo este producto (DEF/SKYBLUE&reg;)?</strong><br />\r\nR. Raloy Lubricantes no recomienda a sus clientes la elaboraci&oacute;n de este producto. El producto DEF/SKYBLUE&reg; tiene estrictos requerimientos de mantenimiento de la concentraci&oacute;n y pureza de sus ingredientes, los cuales son cr&iacute;ticos para su funcionalidad y la durabilidad del sistema SCR. Equipos Originales requieren que el DEF/SKYBLUE&reg; utilizado en sus sistemas SCR cumpla al 100% con el requerimiento ISO22241, as&iacute; como el requerimiento para la certificaci&oacute;n API. Es recomendado que los usuarios finales compren DEF/SKYBLUE&reg; certificado y eviten mezclarlo por ellos mismos. Para m&aacute;s informaci&oacute;n sobre los requerimientos de calidad se puede consultar la norma ISO22241 la cual detalla especificaci&oacute;n de calidad, pruebas, transportaci&oacute;n y rellenado de DEF/SKYBLUE&reg;.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Qu&eacute; es la certificaci&oacute;n API?</strong><br />\r\nR. La certificaci&oacute;n API es un programa voluntario establecido por el American Petroleum Institute (API) el cual certifica y monitorea que el Fluido para Sistemas de Escape a Diesel cumple con el requerimiento ISO. Este programa fue lanzado en Marzo 2009. DEF/SKYBLUE&reg; cumple con el requerimiento ISO y est&aacute; certificado por API.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Es cr&iacute;tico el 32.5% de urea en la soluci&oacute;n?&nbsp;</strong><br />\r\nR. S&iacute;, la concentraci&oacute;n de urea en un 32.5% es la ideal para esta la soluci&oacute;n ya que alcanza el punto de congelaci&oacute;n m&aacute;s bajo. Adem&aacute;s, el sistema SCR estar&aacute; calibrado a un 32.5%, por lo que los NOx &oacute;ptimos ser&aacute;n reducidos durante la operaci&oacute;n.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Cu&aacute;l es el punto de congelaci&oacute;n de DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. Con una soluci&oacute;n a 32.5% DEF/SKYBLUE&reg; comenzar&aacute; a cristalizarse y congelarse a 12&deg; F (-11&deg; C). A 32.5%, la urea y el agua se congelar&aacute;n a la misma raz&oacute;n, asegurando que cuando se funda, el fluido no llegue a ser diluido o sobre-concentrado. Por tal motivo, su congelaci&oacute;n y fundici&oacute;n no causar&aacute;n una degradaci&oacute;n del producto.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;DEF/SKYBLUE&reg; se expande cuando se congela?&nbsp;</strong><br />\r\nR. S&iacute;, DEF/SKYBLUE&reg; se expande aproximadamente un 7% cuando se congela. El empaque o contenedores de DEF/SKYBLUE&reg; est&aacute;n dise&ntilde;ados para permitir esta expansi&oacute;n.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Cu&aacute;nto pesa DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. DEF/SKYBLUE&reg; pesa aproximadamente 4 kilogramos por gal&oacute;n.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;C&oacute;mo evito la congelaci&oacute;n de DEF/SKYBLUE&reg;? &iquest;Qu&eacute; pasa si DEF/SKYBLUE&reg; se congela en el tanque del veh&iacute;culo?&nbsp;</strong><br />\r\nR. Durante la operaci&oacute;n del veh&iacute;culo, el sistema SCR est&aacute; dise&ntilde;ado para proveer calor al tanque de DEF/SKYBLUE&reg; y alimentar sus l&iacute;neas. Si DEF/SKYBLUE&reg; se congela cuando el veh&iacute;culo est&aacute; apagado, el encendido y la operaci&oacute;n normal del veh&iacute;culo no ser&aacute;n inhibidos. El sistema de calentamiento del SCR est&aacute; dise&ntilde;ado para retornar r&aacute;pidamente al DEF/SKYBLUE&reg; a su estado l&iacute;quido y la operaci&oacute;n del veh&iacute;culo no ser&aacute; impactada. La congelaci&oacute;n y fundici&oacute;n de DEF/SKYBLUE&reg; no causar&aacute;n degradaci&oacute;n del producto.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Puede un anticongelante o mejorador del punto de congelaci&oacute;n ser a&ntilde;adido al DEF/SKYBLUE&reg; para prevenir de la congelaci&oacute;n?&nbsp;</strong><br />\r\nR. No. Del mismo modo que un aditivo puede incrementar el punto de congelaci&oacute;n de la mezcla, puede afectar la relaci&oacute;n de 32.5% de la soluci&oacute;n por lo que puede perder sus propiedades espec&iacute;ficas de la mezcla. Cualquier cambio en la relaci&oacute;n o ajuste en la soluci&oacute;n de DEF/SKYBLUE&reg; impedir&aacute; su habilidad para trabajar correctamente y puede causar da&ntilde;o a los componentes del SCR. Al d&iacute;a de hoy, cualquier tipo de aditivos no son aprobados para usarse con DEF/SKYBLUE&reg;.</p>\r\n\r\n<p><strong>P. &iquest;Hay requerimientos de almacenaje para DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. DEF/SKYBLUE&reg; debe ser almacenado en un lugar fresco, seco, en un &aacute;rea bien ventilada y libre de la luz del sol directa. Aunque la temperatura de almacenaje optima es hasta 77&deg;F (25&deg; C), la exposici&oacute;n temporal a temperaturas altas tiene un bajo o nulo impacto en la calidad de DEF/SKYBLUE&reg;.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Cu&aacute;l es el tiempo de vida de venta de DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. El tiempo de vida de venta de DEF/SKYBLUE&reg; est&aacute; en funci&oacute;n del ambiente y temperatura de almacenaje del producto. DEF/SKYBLUE&reg; ser&aacute; degradado con el tiempo dependiendo de la temperatura y exposici&oacute;n a la luz del sol. La expectativa de vida de DEF/SKYBLUE&reg; definida por la norma ISO Spec 22241-3 es la m&iacute;nima esperada cuando el producto es almacenado a temperaturas constantes. Si DEF/SKYBLUE&reg; es almacenado entre 10 y 90 grados F, el tiempo de vida ser&aacute; f&aacute;cilmente de un a&ntilde;o. Si la temperatura m&aacute;xima no excede los 75 grados F por un periodo largo de tiempo, el tiempo de vida de venta ser&aacute; de 2 a&ntilde;os.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Deber&iacute;a preocuparme por el tipo de manejo de DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. No. DEF/SKYBLUE&reg; es una soluci&oacute;n no t&oacute;xica, no contaminante, no peligrosa y no inflamable. Es estable, incolora, y cumple los requerimientos internacionales de pureza y composici&oacute;n. El manejo y almacenamiento de DEF/SKYBLUE&reg; es seguro y no representa riesgos importantes para el ser humano, los animales, el equipo de la unidad y el medio ambiente cuando es usado apropiadamente. Las hojas de seguridad MSDS est&aacute;n disponibles en este&nbsp;<strong><a href=\"http://skyblue.mx/infotec.php?cid=3\"><span style=\"color:#7f8c8d\">enlace</span></a>.</strong></p>\r\n\r\n<p><strong>P. &iquest;Qu&eacute; debo de hacer ante un derrame de DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. Si se presenta un derrame de DEF/SKYBLUE&reg;, se debe de contener y absorber el l&iacute;quido con un material absorbente que sea inerte y no-combustible, como la arena. Los derrames en el drenaje deben de ser evitados. Si se presenta un derrame en el drenaje, enjuague completamente con agua. En caso de que se presente un derrame de producto grande, contacta a las autoridades para el desecho apropiado de esta sustancia. Para peque&ntilde;os derrames en el auto, retira el l&iacute;quido con agua.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Qu&eacute; pasa si ingieres DEF/SKYBLUE&reg;?</strong><br />\r\nR. DEF/SKYBLUE&reg; nunca debe ser ingerido. Si DEF/SKYBLUE&reg; es ingerido, no debe de inducir el v&oacute;mito. Si empieza tener s&iacute;ntomas, consulta a un m&eacute;dico.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;El DEF/SKYBLUE&reg; tiene olor?&nbsp;</strong><br />\r\nR. DEF/SKYBLUE&reg; puede tener un ligero olor similar al del amoniaco, sin embargo los operadores de los veh&iacute;culos no deben de preocuparse de esto.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;DEF/SKYBLUE&reg; es corrosivo?&nbsp;</strong><br />\r\nR. DEF/SKYBLUE&reg; es corrosivo al cobre, lat&oacute;n as&iacute; como a otros materiales. S&oacute;lo materiales aprobados, como el polietileno de alta densidad (HDPE) pueden ser utilizados para la fabricaci&oacute;n de sus contenedores, empaque y equipos de dispensado por despacho.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;DEF/SKYBLUE&reg; se evapora, qu&eacute; sucede si lo hace?&nbsp;</strong><br />\r\nPorque DEF/SKYBLUE&reg; est&aacute; compuesto en un 67.5% de agua, la evaporaci&oacute;n ocurrir&aacute; con el tiempo. Sin embargo, se has construido y embarcado m&aacute;s de 50,000 motores equipados con sistemas SCR. Estos motores SCR operan est&aacute;n operando por todo Europa sin ning&uacute;n problema, incluyendo los climas calientes de Espa&ntilde;a, Grecia y de igual manera con el Medio Oriente, sin ning&uacute;n problema asociado con la evaporaci&oacute;n. Adem&aacute;s, nuestras pruebas de campo en veh&iacute;culos alrededor de M&eacute;xico en sitios con altas temperaturas no han producido ninguna cantidad de evaporaci&oacute;n significativa que pueda impedir la operaci&oacute;n o rendimiento del motor. Como medida preventiva, es importante mantener la tapa del tanque DEF/SKYBLUE&reg; y la de los contenedores de almacenamiento seguramente cerrada. Si la concentraci&oacute;n de urea se convierte con el tiempo en m&aacute;s o en menos que la cantidad recomendada, el tanque DEF/SKYBLUE&reg; debe ser drenado.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Qu&eacute; medidas han sido tomadas para evitar que el diesel sea bombeado al tanque de DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. El di&aacute;metro est&aacute;ndar de la pistola para dispensar DEF/SKYBLUE&reg; ha sido dise&ntilde;ado a 19 mm. en comparaci&oacute;n con la pistola del diesel que tiene un di&aacute;metro de 22 mm. Adem&aacute;s, la tapa del tanque de DEF/SKYBLUE&reg; ser&aacute; azul para diferenciarla de la del tanque del diesel.&nbsp;</p>\r\n\r\n<p><strong>P. &iquest;Qu&eacute; pasa si una sustancia externa se introduce accidentalmente en el tanque de DEF/SKYBLUE&reg;?&nbsp;</strong><br />\r\nR. El sistema SCR reconocer&aacute; una deficiente cantidad de DEF/SKYBLUE&reg; y una luz en el tablero aparecer&aacute; notificando al operador. Dependiendo del nivel de contaminaci&oacute;n en el tanque, el veh&iacute;culo necesitar&aacute; servicio.&nbsp;</p>', 'preguntas-frecuentes', 1, 'preguntas,frecuentes,skyblue', 'Preguntas Frecuentes SkyBlue', '2017-11-03 15:19:22', '2017-11-03 16:40:52'),
(4, 'Calidad', '<p>El sistema SCR es muy sensible a las impurezas, por lo que debe asegurarse de utilizar un producto de la m&aacute;s alta calidad y extraordinaria pureza.</p>\r\n\r\n<p>SkyBlue&reg; cumple con los requisitos de calidad internacional:</p>\r\n\r\n<p><strong>1. Producido con materia prima de alta calidad.</strong><br />\r\nUtilizamos s&oacute;lo urea grado automotriz de extrema pureza importada (En M&eacute;xico NO se fabrica urea grado automotriz).</p>\r\n\r\n<p><strong>2. Proceso de fabricaci&oacute;n certificado.</strong><br />\r\nEn nuestro proceso de fabricaci&oacute;n incorporamos agua 100% pura, tratada bajo un proceso conforme al grado 3 de la norma ISO 3696.</p>\r\n\r\n<p><strong>3. Aprobado por API, cumple con los requerimientos de la norma ISO 22241 (AUS 32).</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><a href=\"http://localhost/skyblue/web/uploads/documents/016696f2a58d646c03d6bd4a662327de.pdf\" target=\"_blank\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/fa985ed476a85ed285cabec9f6570d0f.jpeg\" style=\"height:150px; width:150px\" /></a></strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>4. Certificado con an&aacute;lisis de laboratorio.</strong><br />\r\nLa producci&oacute;n de SkyBlue&reg; es analizada en laboratorios Certificados los cuales avalan que el producto cumple con los requisitos establecidos en la norma ISO 22241.</p>\r\n\r\n<p style=\"text-align:justify\">Nuestros procesos est&aacute;n certificados por la norma ISO/TS 16949:2009 la cual avala que cumplen con la calidad requerida para proveer soluciones a la industria automotriz .<br />\r\nUtilice solamente aquellos productos fabricados con urea grado automotriz conforme a los est&aacute;ndares internacionales de ISO (International Organization por Standarization) y avalados por API.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Advertencia:</strong>&nbsp;La mayor&iacute;a de fabricantes de veh&iacute;culos no aplicar&aacute;n la garant&iacute;a de su unidad si usted ha utilizado un producto de baja calidad o ha modificado el producto.</p>\r\n\r\n<p style=\"text-align:right\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/3788f0a1e5756488c5594cd84013f32f.jpeg\" style=\"float:right; height:190px; width:1000px\" /></p>', 'calidad', 1, 'calidad,skyblue', 'Calidad SkyBlue', '2017-11-03 15:34:01', '2017-11-03 15:34:01'),
(5, 'Garantía de Abasto', '<p style=\"text-align:justify\">Nuestro sistema de entregas seguras garantiza la distribuci&oacute;n eficaz y eficiente de nuestros productos, as&iacute; como la calidad de los mismos desde que salen de producci&oacute;n hasta el suministro en el equipo final, de forma que excedamos las expectativas de nuestros clientes en cuanto a calidad, rapidez y servicio.</p>\r\n\r\n<p style=\"text-align:justify\">Entregamos en diferentes presentaciones de acuerdo a las necesidades de nuestros clientes.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>EQUIPOS ORIGINALES Y GRANDES FLOTAS</strong><br />\r\nLa opci&oacute;n m&aacute;s econ&oacute;mica para quien consume grandes vol&uacute;menes es adquirir SkyBlue&reg; a granel y almacenarlo en sus instalaciones en un deposito dise&ntilde;ado exclusivamente para este fin. Nosotros podemos recomendarle y realizarle la mejor instalaci&oacute;n con tanques que cumplen los requisitos de la norma ISO 22241.</p>\r\n\r\n<p style=\"text-align:justify\">El producto a granel lo entregamos en pipas de acero inoxidable destinadas &uacute;nica y exclusivamente para SkyBlue&reg;, estas pipas cuentan con bomba, cuentalitros y calibrador que garantizan una entrega de calidad , as&iacute; como el mantenimiento de la pureza de SkyBlue&reg;.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>FLOTAS MEDIANAS Y PEQUE&Ntilde;AS</strong><br />\r\nPara este tipo de usuarios ofrecemos el producto en tote de 1000 litros y tambo de 200 litros, adem&aacute;s ofrecemos el equipo de despacho para garantizar que la pureza del producto se mantenga desde su fabricaci&oacute;n hasta que el producto es vertido en la unidad.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>HOMBRE CAMI&Oacute;N</strong><br />\r\nPara un consumo menor, contamos con presentaci&oacute;n de bid&oacute;n de 20 litros el cual esta dise&ntilde;ado para vertir Skyblue directamente en la unidad y evitar cualquier riesgo de contaminaci&oacute;n.</p>', 'garantia-de-abasto', 1, 'garantia,de,abasto,skyblue', 'Garantía de Abasto - SkyBlue', '2017-11-03 15:37:26', '2017-11-03 15:37:26'),
(6, 'Servicios', '<p style=\"text-align:justify\">Sabemos la importancia de un servicio de excelencia, por tal motivo contamos con los siguientes servicios para satisfacer las necesidades de nuestros clientes.</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Entregas completas y a tiempo a nivel nacional.</li>\r\n	<li style=\"text-align: justify;\">3 plantas situadas estrat&eacute;gicamente para asegurar el abasto al mejor costo.</li>\r\n	<li style=\"text-align: justify;\">Asistencia t&eacute;cnica.</li>\r\n	<li style=\"text-align: justify;\">Capacitaci&oacute;n t&eacute;cnica.</li>\r\n	<li style=\"text-align: justify;\">Sistemas de control (equipos de despacho)</li>\r\n</ul>', 'servicios', 1, 'servicios,skyblue,servicio', 'Servicios SkyBlue', '2017-11-03 15:42:06', '2017-11-03 15:42:06'),
(7, 'Colaboración de Raloy Lubricantes con la Norma NMX-D-233-IMNC-2016', '<p style=\"text-align:justify\"><strong>Raloy lubricantes como primer fabricante de urea grado automotriz en M&eacute;xico ha colaborado con ANPACT y el IMNC para la elaboraci&oacute;n de la norma NMX-D-233-IMNC-2016 MOTORES A DIESEL &ndash; AGENTE DE REDUCCI&Oacute;N NOX</strong>&nbsp;la cual es el precedente para la regulaci&oacute;n de este producto en M&eacute;xico.</p>\r\n\r\n<p style=\"text-align:justify\">Esta norma se convertir&aacute; en obligatoria una vez que este incluida en la NOM44 la cual ser&aacute; publicada en el 2017 y entrar&aacute; en vigor en el 2018.</p>\r\n\r\n<p style=\"text-align:justify\">CON ESTA NORMA SE PROTEGE AL CONSUMIDOR PARA GARANTIZAR LA CALIDAD DEL PRODUCTO DESDE SU ELABORACI&Oacute;N HASTA EL USO EN LAS UNIDADES CON SISTEMA SCR.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/98170c386e0b6160781dfe5dd6240175.jpeg\" style=\"height:325px; width:646px\" /></p>', 'colaboracion-de-raloy-lubricantes-con-la-norma-nmx-d-233-imnc-2016', 1, 'colaboracion,raloy lubricantes,raloy,skyblue,norma,NOx,2016', 'Colaboración de Raloy Lubricantes - SkyBlue', '2017-11-03 15:48:50', '2017-11-03 16:08:00'),
(8, 'Responsabilidad Ambiental', '<p style=\"text-align:justify\">La riqueza natural del pa&iacute;s, es un privilegio para los mexicanos, pero tambi&eacute;n representa un gran compromiso con las futuras generaciones y con el planeta entero.</p>\r\n\r\n<p style=\"text-align:justify\">Se requieren pol&iacute;ticas nacionales de uso sostenible para preservarla y protegerla.</p>\r\n\r\n<p style=\"text-align:justify\">Los motores de los veh&iacute;culos son los principales causantes de las emisiones contaminantes de CO, NOx y PM. Por esta raz&oacute;n M&eacute;xico se est&aacute; uniendo a los esfuerzos globales de cuidado del medio ambiente y ha iniciado la transici&oacute;n para cumplir con los est&aacute;ndares EPA 2010 y EURO VI.</p>\r\n\r\n<p style=\"text-align:justify\">Raloy como empresa l&iacute;der proporcionando soluciones en lubricaci&oacute;n para la industria automotriz presenta SKYBLUE&reg;</p>\r\n\r\n<div class=\"youtube-video\">\r\n<p style=\"text-align:center\"><iframe frameborder=\"0\" height=\"450\" scrolling=\"no\" src=\"https://www.youtube.com/embed/CWOYr8IZYGo\" width=\"800\"></iframe></p>\r\n</div>', 'responsabilidad-ambiental', 1, 'responsabilidad,ambiental,skyblue', 'Responsabilidad Ambiental SkyBlue', '2017-11-03 16:04:46', '2017-11-03 16:10:47'),
(9, 'Uso del Producto', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/b5b9fc117b77afdcc32cb8977a02d311.jpeg\" style=\"height:652px; width:1000px\" /></p>\r\n\r\n<p style=\"text-align:justify\">El sistema SCR es muy sensible a las impurezas, por lo que debe asegurarse de utilizar un producto de la m&aacute;s alta calidad y&nbsp;<strong>evitar cualquier riesgo de contaminaci&oacute;n en el manejo y almacenamiento del producto.</strong></p>', 'uso-del-producto', 1, 'uso,producto,catalizador,skyblue', 'Uso del Producto - SkyBlue', '2017-11-03 16:20:39', '2017-11-03 16:20:39'),
(10, 'Despacho del Producto', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/6ac6016fe25b1d01eee4c626c64d7da0.jpeg\" style=\"height:663px; width:1000px\" /></p>', 'despacho-del-producto', 1, 'despacho,del,producto,skyblue,catalizador', 'Despacho del Producto - SkyBlue', '2017-11-03 16:36:39', '2017-11-03 16:36:39'),
(11, 'Almacenamiento del Producto', '<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/4482357f8c1eb567cef3b48dce01ac57.jpeg\" style=\"height:663px; width:1000px\" /></p>', 'almacenamiento-del-producto', 1, 'almacenamiento,del,producto,catalizador,skyblue', 'Almacenamiento del Producto - SkyBlue', '2017-11-03 16:43:31', '2017-11-03 16:43:31'),
(12, 'Mantenimiento del Catalizador', '<h3>Mantenimiento del Catalizador SCR</h3>\r\n\r\n<p>El mantenimiento y la vida del catalizador SCR dependen de la calidad de tres elementos principales:</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-4\">\r\n<h5 class=\"header-green\">1.- Uso de Urea Grado Automotriz (ISO 22241)</h5>\r\n\r\n<hr />\r\n<p style=\"text-align:justify\">Solo utilice aquellos productos que cumplan con la norma ISO 22241 y cuenten con la certificaci&oacute;n API.</p>\r\n\r\n<p style=\"text-align:justify\">Siga las recomendaciones de mantenimiento, despacho y suministro para la conservaci&oacute;n de la pureza del producto.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Importante:</strong> Nunca utilice urea grado agr&iacute;cola ya que este producto fue dise&ntilde;ado para otro fin y no cuenta con la pureza que el catalizador SCR requiere.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/3cf6d135eeff530a09bbd6970a6a75b2.jpeg\" style=\"height:200px; width:200px\" /></p>\r\n</div>\r\n\r\n<div class=\"col-sm-4\">\r\n<h5 class=\"header-green\">2.- Uso de lubricante API CJ-4 y CK-4</h5>\r\n\r\n<hr />\r\n<p style=\"text-align:justify\">Todas las formulaciones de aceite para motor al quemarse producen SAPS (cenizas sulfatadas, fósforo y azufre)</p>\r\n\r\n<p style=\"text-align:justify\">Los aceites CJ-4 y CK-4 con mejor contenido de SAPS son especialmente eficaces en el mantenimiento y durabilidad del sistema de control de emisiones contaminantes cuando se emplean filtros de partículas y otros avanzados sistemas avanzados de post-tratamiento de gases contaminantes.</p>\r\n\r\n<p style=\"text-align:justify\">Utilice un lubricante con menor contenido de SAPS como <a target=\"_blank\" href=\"http://www.raloylubricantes.mx/producto/raloy-diesel-extra-performance-sae-15w-40-api-cj-4-sn\">Raloy Diesel Extraperformance 15W-40 API CJ-4</a> o <a target=\"_blank\" href=\"http://www.raloylubricantes.mx/producto/raloy-improved-extraperformance-sae-15w-40-api-ck-4-sn\">Raloy Diesel Improved Extraperformance SAE 15W-40 API CK-4/SN</a></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/923bdee3d947ee03726c1cfc0495e9ce.jpeg\" style=\"height:200px; width:200px\" /></p>\r\n</div>\r\n\r\n<div class=\"col-sm-4\">\r\n<h5 class=\"header-green\">3.- Uso de Combustibles UBA</h5>\r\n\r\n<hr />\r\n<p style=\"text-align:justify\">El uso de lubricantes CJ-4 y CK-4 con combustibles con bajo contenido de azufre mayor a 15ppm puede afectar la durabilidad de los sistemas post-tratamiento de los gases de escape y/o al intervalo de cambio de aceite.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/skyblue/web/uploads/images/15b7eda482bdcc3e64f0c524287578af.jpeg\" style=\"height:200px; width:200px\" /></p>\r\n</div>\r\n\r\n</div>', 'mantenimiento-del-catalizador', 1, 'mantenimiento,del,catalizador,skyblue', 'Mantenimiento del Catalizador', '2017-11-03 22:44:54', '2017-11-03 23:04:31'),
(13, 'Información Técnica', '<h4>CARACTERÍSTICAS</h4>\r\n\r\n<p class=\"text-justify\">SkyBlue es una solución acuosa de alta pureza, usada en motores Diesel equipados con sistema de Reducción Catalítica Selectiva (SCR = Selective Catalytic Reduction). La solución actúa como un agente de reducción de los dañinos óxidos de nitrógeno.</p>\r\n\r\n<p class=\"text-center\"><small><strong>IMPORTANTE:</strong> El manejo inadecuado del producto, así como la utilización de productos de baja pureza, pueden dañar seriamente los equipos de Reducción Catalítica Selectiva.</small></p>\r\n\r\n<div>\r\n                        <ul class=\"nav pest nav-tabs\">\r\n                            <li class=\"active\"><a href=\"#tab-1\" role=\"tab\" data-toggle=\"tab\">Aplicación</a></li>\r\n                            <li><a href=\"#tab-2\" role=\"tab\" data-toggle=\"tab\">Especificaciones</a></li>\r\n                            <li><a href=\"#tab-3\" role=\"tab\" data-toggle=\"tab\">Información Técnica</a></li>\r\n                            <li><a href=\"#tab-4\" role=\"tab\" data-toggle=\"tab\">Características Típicas</a></li>\r\n                        </ul>\r\n                        <div class=\"tab-content\">\r\n                            <div class=\"tab-pane active\" role=\"tabpanel\" id=\"tab-1\">\r\n                                <p class=\"text-justify\">Pequeñas cantidades de SkyBlue son inyectadas al flujo de los gases de escape, con el fin de reducir los Óxidos de Nitrógeno a Nitrógeno no dañino y Agua.</p>\r\n                            </div>\r\n                            <div class=\"tab-pane\" role=\"tabpanel\" id=\"tab-2\">\r\n                                <p class=\"text-justify\">SkyBlue está Aprobado por:</p>\r\n                                <p><img src=\"/skyblue/web/assets/img/icon.png\">API Diesel Exhaust Fluid Certification No. 0029</p>\r\n                                <p><img src=\"/skyblue/web/assets/img/icon.png\">Volkswagen VW N.052.910.AA</p>\r\n                                <p class=\"text-justify\">Cumple con los requerimientos de las siguientes especificaciones:</p>\r\n                                <p><img src=\"/skyblue/web/assets/img/icon.png\">DIN 70070:2005</p>\r\n                                <p><img src=\"/skyblue/web/assets/img/icon.png\">Requerimientos de calidad del Estándar Internacional ISO 22241-1:2006 (AUS 32)</p>\r\n                            </div>\r\n                            <div class=\"tab-pane\" role=\"tabpanel\" id=\"tab-3\">\r\n                                <p class=\"text-justify\">Para conocer más características de este producto, así como su manejo adecuado, puede descargar la Hoja Técnica y Hoja de Seguridad, archivos en formato PDF compatibles con cualquier navegador web.</p>\r\n                                <ul>\r\n                                   <li>Hoja Técnica <a target=\"_blank\" href=\"http://localhost/skyblue/web/uploads/documents/8c9d398eb35f345c7de14ffdb7b9eacc.pdf\">[Descargar]</a></li>\r\n                                   <li>Hoja de Seguridad <a target=\"_blank\" href=\"http://localhost/skyblue/web/uploads/documents/6d1511c2ff09af08fa8d31ddc55b0509.pdf\">[Descargar]</a></li>\r\n                                </ul>\r\n                                <p class=\"text-center\"><small>Se requiere Adobe Reader 7 o porterior. Si no tiene instalado Adobe Reader, puede descargarlo en este enlace.\r\n</small></p>\r\n                            </div>\r\n                            <div class=\"tab-pane\" role=\"tabpanel\" id=\"tab-4\">\r\n                                <table class=\"table table-bordered\">\r\n    <thead>\r\n      <tr>\r\n        <th>Pruebas</th>\r\n        <th>Resultados</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr>\r\n        <td>Densidad a 20°C, g/cm3</td>\r\n        <td>1.0870 a 1.0930</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Índice de Refracción a 20°C</td>\r\n        <td>1.3814 a 1.3843</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Alcalinidad como NH3, %</td>\r\n        <td>0.2 máx.</td>\r\n      </tr>\r\n      <tr>\r\n        <td>Biuret,%</td>\r\n        <td>0.3 máx.</td>\r\n      </tr>\r\n      <tr>\r\n        <td>pH</td>\r\n        <td>9.0 a 9.5</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n              <p class=\"text-justify\"><strong>Nota:</strong> Para mayor información acerca de SkyBlue® consulte a nuestro Departamento de Asistencia Técnica.</p>\r\n<p class=\"text-center\"><small>Los resultados indicados como Características Típicas del aceite se refieren solamente a valores promedio. Se podrán esperar pequeñas variaciones en estos valores durante su fabricación, las cuales no afectarán el desempeño del producto. Esta hoja técnica está sujeta a cambio sin previo aviso.\r\n</small></p>\r\n                            </div>\r\n                        </div>\r\n</div>', 'informacion-tecnica', 1, 'informacion,tecnica,skyblue', 'Información Técnica', '2017-11-03 23:42:19', '2017-11-03 23:47:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `id_menus` int(11) NOT NULL,
  `nombre` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_paginas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `submenus`
--

INSERT INTO `submenus` (`id`, `id_menus`, `nombre`, `orden`, `activo`, `created_at`, `updated_at`, `id_paginas`) VALUES
(1, 1, '¿Qué es y Cómo Funciona?', 1, 1, '2017-11-01 05:53:57', '2017-11-01 05:53:57', 1),
(2, 3, 'Regulaciones', 1, 1, '2017-11-02 18:14:04', '2017-11-02 18:14:04', 2),
(3, 3, 'Preguntas Frecuentes', 3, 1, '2017-11-03 15:22:14', '2017-11-03 15:22:14', 3),
(4, 1, 'Calidad', 2, 1, '2017-11-03 15:34:49', '2017-11-03 15:34:49', 4),
(5, 1, 'Garantía de Abasto', 3, 1, '2017-11-03 15:37:56', '2017-11-03 15:37:56', 5),
(6, 1, 'Servicios', 4, 1, '2017-11-03 15:42:37', '2017-11-03 15:42:37', 6),
(7, 1, 'Elaboración de la norma NOx', 5, 1, '2017-11-03 15:50:31', '2017-11-03 15:50:31', 7),
(8, 1, 'Raloy y su responsabilidad con el Medio Ambiente', 6, 1, '2017-11-03 16:11:59', '2017-11-03 16:11:59', 8),
(9, 2, 'De Uso', 1, 1, '2017-11-03 16:21:37', '2017-11-03 16:21:37', 9),
(10, 2, 'De Despacho', 2, 1, '2017-11-03 16:37:12', '2017-11-03 16:37:12', 10),
(11, 2, 'De Almacenamiento', 3, 1, '2017-11-03 16:44:10', '2017-11-03 16:44:10', 11),
(12, 2, 'De Mantenimiento del Catalizador', 4, 1, '2017-11-03 22:52:49', '2017-11-03 22:52:49', 12),
(13, 3, 'Información Técnica', 2, 1, '2017-11-03 23:43:09', '2017-11-03 23:43:09', 13);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ext_log_entries`
--
ALTER TABLE `ext_log_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_class_lookup_idx` (`object_class`),
  ADD KEY `log_date_lookup_idx` (`logged_at`),
  ADD KEY `log_user_lookup_idx` (`username`),
  ADD KEY `log_version_lookup_idx` (`object_id`,`object_class`,`username`);

--
-- Indices de la tabla `ext_translations`
--
ALTER TABLE `ext_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lookup_unique_idx` (`locale`,`object_class`,`field`,`foreign_key`),
  ADD KEY `translations_lookup_idx` (`locale`,`object_class`,`foreign_key`);

--
-- Indices de la tabla `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mapsdistribuidor`
--
ALTER TABLE `mapsdistribuidor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mapsdistribuidordirectorio`
--
ALTER TABLE `mapsdistribuidordirectorio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_MapsDistribuidorDirectorio_MapsDistribuidor1_idx` (`id_MapsDistribuidor`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_submenus_menus1_idx` (`id_menus`),
  ADD KEY `fk_submenus_paginas1_idx` (`id_paginas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ext_log_entries`
--
ALTER TABLE `ext_log_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ext_translations`
--
ALTER TABLE `ext_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `mapsdistribuidor`
--
ALTER TABLE `mapsdistribuidor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `mapsdistribuidordirectorio`
--
ALTER TABLE `mapsdistribuidordirectorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mapsdistribuidordirectorio`
--
ALTER TABLE `mapsdistribuidordirectorio`
  ADD CONSTRAINT `FK_FE2229C84797FD6B` FOREIGN KEY (`id_MapsDistribuidor`) REFERENCES `mapsdistribuidor` (`id`);

--
-- Filtros para la tabla `submenus`
--
ALTER TABLE `submenus`
  ADD CONSTRAINT `FK_8C6E7159CF049FF` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `FK_8C6E715F6AEF544` FOREIGN KEY (`id_paginas`) REFERENCES `paginas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
