-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2019 a las 15:59:27
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `email`, `foto`, `password`, `perfil`, `estado`, `fecha`) VALUES
(1, 'Juan', 'admin@tantum.com.pe', 'vistas/img/perfiles/499.png', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'administrador', 1, '2019-08-13 17:03:32'),
(2, 'Mariel', 'editor@tantum.com.pe', 'vistas/img/perfiles/477.png', '$2a$07$asxx54ahjppf45sd87a5au6fAHIlFrQ7jQ4XHf7fycZYUNBysO4Bq', 'editor', 1, '2019-08-13 22:50:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `tipo`, `img`, `estado`, `fecha`) VALUES
(1, 'sin-categoria', 'sin-categoria', 'vistas/img/banner/default.jpg', 1, '2018-03-26 13:29:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeceras`
--

CREATE TABLE `cabeceras` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `palabrasClaves` text COLLATE utf8_spanish_ci NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cabeceras`
--

INSERT INTO `cabeceras` (`id`, `ruta`, `titulo`, `descripcion`, `palabrasClaves`, `portada`, `fecha`) VALUES
(1, 'inicio', 'Tienda Virtual', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia', 'Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse', 'vistas/img/cabeceras/default.jpg', '2017-11-17 14:58:16'),
(7, 'tecnologia', 'TECNOLOGIA', 'categoria de los productos ', 'lap laptops ', 'vistas/img/cabeceras/laptops.jpg', '2019-07-12 19:47:51'),
(8, 'laptops', 'Laptops', 'laptops', 'lap laptops', 'vistas/img/cabeceras/default/default.jpg', '2019-07-12 19:48:12'),
(10, 'jean-blushe', 'jean blushe', 'jean blushe con ultimo mooda blebleble', 'jean,blushe,azul,jeandama', 'vistas/img/cabeceras/default/default.jpg', '2019-07-18 14:02:25'),
(13, 'adss', 'adss', 'asd', 'asd', 'vistas/img/cabeceras/default/default.jpg', '2019-08-05 14:10:52'),
(14, 'ropa', 'ROPA', 'hola prueba', 'prueba', 'vistas/img/cabeceras/default/default.jpg', '2019-08-09 00:26:58'),
(15, 'chompas', 'Chompas', 'chompas de mujeres', 'chompas chompas mujeres,chompas mujeres,chompas,invierno,otoño', 'vistas/img/cabeceras/default/default.jpg', '2019-08-12 15:37:16'),
(16, 'chompas-mujeres', 'Chompas Mujeres', 'chompas de mujeres', 'chompas', 'vistas/img/cabeceras/default/default.jpg', '2019-08-12 15:37:42'),
(17, 'chompa-rihani', 'chompa rihani', 'Chompa manga larga cuello redondo Mangas murciélago ', 'chompa', 'vistas/img/cabeceras/default/default.jpg', '2019-08-12 15:39:04'),
(18, 'blusa-sexy', 'blusa sexy', 'MATERIAL:GASA CREPÉ\n', 'BLUSAS,ROPAS,ROPAMUJER,MODAMUJER', 'vistas/img/cabeceras/default/default.jpg', '2019-08-16 17:07:57'),
(19, 'blusa-sexy', 'blusa sexy', 'asd', 'asd', 'vistas/img/cabeceras/default/default.jpg', '2019-08-16 17:11:57'),
(20, 'blusa-sexy', 'blusa sexy', 'asd', 'asd', 'vistas/img/cabeceras/default/default.jpg', '2019-08-16 17:13:09'),
(21, 'blusa-gasparin', 'blusa gasparin', 'marca nueva de ropa para mujeres en blusas', 'blusas', 'vistas/img/cabeceras/default/default.jpg', '2019-08-16 17:23:42'),
(22, 'jean-cruzate', 'jean cruzate', 'cruzate new', 'cruzate', 'vistas/img/cabeceras/default/default.jpg', '2019-08-18 23:07:47'),
(23, 'jean-cruzate', 'jean cruzate', 'cruzate new', 'cruzate', 'vistas/img/cabeceras/default/default.jpg', '2019-08-18 23:10:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `estado`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(1, 'ROPA', 'ropa', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-08-09 00:46:55'),
(2, 'CHOMPAS', 'chompas', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-08-12 15:37:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'JOE', 70552204, 'chapiamadurand15@gmail.com', '999999999', 'jr.carlos dellpeiane 4009 san martin de porres', 43, '2019-08-15 12:39:34', '2019-08-15 17:39:34'),
(2, 'greecy', 70552203, 'dgreeypasteleria@gmail.com', '998521715', 'jr.carlos dellpeiane 4009 san martin de porres', 1, '0000-00-00 00:00:00', '2019-08-15 16:45:22'),
(3, 'JOElito', 752203699, 'dgreeypasteleria@gmail.com', '998521715', 'jr.carlos dellpeiane 4009', 17, '2019-08-13 11:50:39', '2019-08-13 16:50:39'),
(4, 'pedro', 7894561, 'dgreeypasteleria@gmail.com', '998521715', 'jr.carlos dellpeiane 4009', 0, '0000-00-00 00:00:00', '2019-08-15 17:23:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 86, 496, 3.5, 'Lo mejor de PHP', '2018-02-13 16:39:25'),
(2, 86, 464, 4.5, 'Excelente', '2018-02-13 15:55:14'),
(3, 87, 496, 4, 'El curso es muy bueno, pero puede ser mejor.', '2018-02-13 16:10:50'),
(4, 88, 496, 4.5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n		cillum dolore eu fugiat nulla pariatur', '2018-02-13 17:17:48'),
(7, 12, 500, 0, '', '2018-03-27 23:19:33'),
(8, 13, 447, 0, '', '2019-07-12 11:56:46'),
(9, 1, 468, 0.5, 'asd', '2019-07-18 22:48:59'),
(10, 1, 468, 0, '', '2019-07-12 13:06:36'),
(11, 4, 3, 5, 'muy buen producto', '2019-08-05 21:10:24'),
(12, 4, 182, 1.5, 'mal producto', '2019-07-21 03:30:04'),
(13, 4, 1, 5, 'muy buenoo', '2019-07-21 03:29:21'),
(14, 4, 4, 0, '', '2019-07-22 21:44:02'),
(15, 4, 468, 0, '', '2019-07-22 21:45:52'),
(16, 4, 3, 0, '', '2019-08-03 00:14:27'),
(17, 4, 464, 0, '', '2019-08-03 00:29:07'),
(18, 4, 4, 0, '', '2019-08-03 01:41:19'),
(19, 4, 3, 0, '', '2019-08-05 21:10:13'),
(20, 4, 2, 0, '', '2019-08-05 21:14:00'),
(21, 4, 3, 0, '', '2019-08-08 15:06:17'),
(22, 4, 3, 0, '', '2019-08-08 23:22:18'),
(23, 4, 3, 0, '', '2019-08-15 20:34:44'),
(24, 4, 3, 0, '', '2019-08-15 20:44:16'),
(25, 4, 1, 0, '', '2019-08-16 16:09:23'),
(26, 4, 3, 0, '', '2019-08-16 16:09:24'),
(27, 4, 1, 0, '', '2019-08-16 16:13:30'),
(28, 4, 1, 0, '', '2019-08-16 16:42:49'),
(29, 4, 1, 0, '', '2019-08-16 16:45:03'),
(30, 4, 3, 0, '', '2019-08-16 16:45:03'),
(31, 4, 8, 0, '', '2019-08-16 17:27:30'),
(32, 5, 3, 0, '', '2019-08-18 20:41:00'),
(33, 5, 3, 0, '', '2019-08-18 20:42:10'),
(34, 5, 3, 0, '', '2019-08-18 20:42:44'),
(35, 5, 3, 0, '', '2019-08-18 20:44:20'),
(36, 5, 3, 0, '', '2019-08-18 20:46:27'),
(37, 5, 3, 0, '', '2019-08-18 20:46:50'),
(38, 5, 3, 0, '', '2019-08-18 20:47:06'),
(39, 5, 3, 0, '', '2019-08-18 20:48:21'),
(40, 5, 3, 0, '', '2019-08-18 20:49:24'),
(41, 5, 3, 0, '', '2019-08-18 20:51:11'),
(42, 5, 3, 0, '', '2019-08-18 20:53:00'),
(43, 5, 3, 0, '', '2019-08-18 20:53:14'),
(44, 5, 3, 0, '', '2019-08-18 20:53:44'),
(45, 5, 3, 0, '', '2019-08-18 20:53:58'),
(46, 5, 3, 0, '', '2019-08-18 20:55:35'),
(47, 5, 3, 0, '', '2019-08-18 20:55:50'),
(48, 5, 3, 0, '', '2019-08-18 20:57:04'),
(49, 5, 3, 0, '', '2019-08-18 20:58:35'),
(50, 5, 3, 0, '', '2019-08-18 20:59:12'),
(51, 5, 3, 0, '', '2019-08-18 21:00:07'),
(52, 5, 3, 0, '', '2019-08-18 21:00:37'),
(53, 5, 3, 0, '', '2019-08-18 21:01:21'),
(54, 5, 3, 0, '', '2019-08-18 21:01:36'),
(55, 5, 3, 0, '', '2019-08-18 21:03:04'),
(56, 5, 3, 0, '', '2019-08-18 21:03:16'),
(57, 5, 3, 0, '', '2019-08-18 21:04:45'),
(58, 5, 3, 0, '', '2019-08-18 21:05:04'),
(59, 5, 3, 0, '', '2019-08-18 21:07:21'),
(60, 5, 3, 0, '', '2019-08-18 21:10:52'),
(61, 5, 3, 0, '', '2019-08-18 21:11:40'),
(62, 5, 3, 0, '', '2019-08-18 21:12:02'),
(63, 5, 3, 0, '', '2019-08-18 21:13:31'),
(64, 5, 3, 0, '', '2019-08-18 21:15:58'),
(65, 5, 3, 0, '', '2019-08-18 21:16:16'),
(66, 5, 3, 0, '', '2019-08-18 21:19:05'),
(67, 5, 3, 0, '', '2019-08-18 21:21:10'),
(68, 5, 3, 0, '', '2019-08-18 21:21:48'),
(69, 5, 3, 0, '', '2019-08-18 21:22:15'),
(70, 5, 3, 0, '', '2019-08-18 21:22:37'),
(71, 5, 3, 0, '', '2019-08-18 21:23:37'),
(72, 5, 3, 0, '', '2019-08-18 21:26:53'),
(73, 5, 3, 0, '', '2019-08-18 21:27:15'),
(74, 5, 3, 0, '', '2019-08-18 21:27:29'),
(75, 5, 3, 0, '', '2019-08-18 21:28:35'),
(76, 5, 3, 0, '', '2019-08-18 21:51:05'),
(77, 4, 8, 0, '', '2019-08-18 22:39:55'),
(78, 4, 4, 0, '', '2019-08-18 22:39:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPayu` text COLLATE utf8_spanish_ci NOT NULL,
  `merchantIdPayu` int(11) NOT NULL,
  `accountIdPayu` int(11) NOT NULL,
  `apiKeyPayu` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`, `modoPayu`, `merchantIdPayu`, `accountIdPayu`, `apiKeyPayu`) VALUES
(1, 18, 10, 20, 10, 15, 'PE', 'sandbox', 'AezLpsykTCY8zc8GhHEuhpnf13Ivy2aqRpOErpUQNFItSURoNsyFx0nm1LMn534nec3JIIOA6oQxtsRp', 'EDOGflQpuR7rbW7c_mbfZPcCWRU0VcXOD0AYKZ_P-axBf6Tjhvhp2b0soGKDP38fPkx5-DrgQ-Bvr5Tb', 'sandbox', 508029, 512321, '4Vj8eK4rloUd272L48hsrarnUA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `pedido` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `pago` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `pedido`, `cantidad`, `envio`, `metodo`, `email`, `direccion`, `pais`, `pago`, `fecha`) VALUES
(91, 5, 3, 'jean blushe-28-azul', 3, 1, 'paypal', 'chapiamadurand15-buyer@gmail.com', 'jr.peru123, lima, lima, 051', 'PE', 31.5, '2019-08-19 00:57:26'),
(92, 4, 8, 'blusa gasparin-m-rosado', 2, 0, 'paypal', 'chapiamadurand15-buyer@gmail.com', 'jr.carlos dellpeiane 4009, san martin de porres, s, lima, lima, 051', 'PE', 7.2, '2019-08-18 22:39:54'),
(93, 4, 4, 'blusa gasparin-m-rosado', 2, 0, 'paypal', 'chapiamadurand15-buyer@gmail.com', 'jr.carlos dellpeiane 4009, san martin de porres, s, lima, lima, 051', 'PE', 15, '2019-08-18 22:39:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `id_usuario`, `id_producto`, `fecha`) VALUES
(1, 9, 469, '2018-03-26 22:03:34'),
(2, 9, 469, '2018-03-26 22:03:35'),
(3, 9, 467, '2018-03-26 22:03:39'),
(4, 9, 3, '2018-03-26 22:03:43'),
(5, 9, 469, '2018-03-26 22:03:54'),
(6, 9, 470, '2018-03-26 22:03:57'),
(7, 9, 467, '2018-03-26 22:04:00'),
(8, 9, 4, '2018-03-26 22:04:37'),
(9, 13, 469, '2019-07-12 11:57:17'),
(10, 13, 468, '2019-07-12 11:57:19'),
(11, 13, 501, '2019-07-12 19:35:32'),
(23, 4, 3, '2019-08-14 01:47:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `nuevosUsuarios` int(11) NOT NULL,
  `nuevasVentas` int(11) NOT NULL,
  `nuevasVisitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `nuevosUsuarios`, `nuevasVentas`, `nuevasVisitas`) VALUES
(1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `apiFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `pixelFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `googleAnalytics` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `apiFacebook`, `pixelFacebook`, `googleAnalytics`, `fecha`) VALUES
(1, '#ff35d7', '#ffffff', '#ff35d7', '#ffffff', 'vistas/img/plantilla/logo.jpg', 'vistas/img/plantilla/icono.jpg', '[{\"red\":\"fa-facebook\",\"estilo\":\"facebookBlanco\",\"url\":\"http://facebook.com/TiendasTantum/\",\"activo\":1},{\"red\":\"fa-youtube\",\"estilo\":\"youtubeBlanco\",\"url\":\"http://youtube.com/\",\"activo\":0},{\"red\":\"fa-twitter\",\"estilo\":\"twitterBlanco\",\"url\":\"http://twitter.com/\",\"activo\":0},{\"red\":\"fa-google-plus\",\"estilo\":\"google-plusBlanco\",\"url\":\"http://google.com/\",\"activo\":0},{\"red\":\"fa-instagram\",\"estilo\":\"instagramBlanco\",\"url\":\"http://instagram.com/tiendastantum/\",\"activo\":1},{\"red\":\"fa-whatsapp\",\"estilo\":\"whatsappBlanco\",\"url\":\"https://api.whatsapp.com/send?phone=51945344223&text=Hola!%20Bienvenido%20a%20Tiendas%20tantum\",\"activo\":1}\r\n]\r\n', '\n      		\n      		      		\n\n<script>\n  window.fbAsyncInit = function() {\n    FB.init({\n      appId      : \'2209872515804142\',\n      cookie     : true,\n      xfbml      : true,\n      version    : \'v4.0\'\n    });\n      \n    FB.AppEvents.logPageView();   \n      \n  };\n\n  (function(d, s, id){\n     var js, fjs = d.getElementsByTagName(s)[0];\n     if (d.getElementById(id)) {return;}\n     js = d.createElement(s); js.id = id;\n     js.src = \"https://connect.facebook.net/en_US/sdk.js\";\n     fjs.parentNode.insertBefore(js, fjs);\n   }(document, \'script\', \'facebook-jssdk\'));\n</script>\n      		\n      		', '\n  			\n  			  			\n  			\n  			\n  			<!-- Facebook Pixel Code --> 	<script> 	  !function(f,b,e,v,n,t,s) 	  {if(f.fbq)return;n=f.fbq=function(){n.callMethod? 	  n.callMethod.apply(n,arguments):n.queue.push(arguments)}; 	  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\'; 	  n.queue=[];t=b.createElement(e);t.async=!0; 	  t.src=v;s=b.getElementsByTagName(e)[0]; 	  s.parentNode.insertBefore(t,s)}(window, document,\'script\', 	  \'https://connect.facebook.net/en_US/fbevents.js\'); 	  fbq(\'init\', \'131737410786111\'); 	  fbq(\'track\', \'PageView\'); 	</script> 	<noscript><img height=\"1\" width=\"1\" style=\"display:none\" 	  src=\"https://www.facebook.com/tr?id=149877372404434&ev=PageView&noscript=1\" 	/></noscript> <!-- End Facebook Pixel Code -->    \n  			    \n  			    \n  			    \n  			    \n  			    \n  			', '\n  			\n  			  			\n  			\n  			  \n  				<!-- Global site tag (gtag.js) - Google Analytics --> 	<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-999999-1\"></script> 	<script> 	  window.dataLayer = window.dataLayer || []; 	  function gtag(){dataLayer.push(arguments);} 	  gtag(\'js\', new Date());  	  gtag(\'config\', \'UA-9999999-1\'); 	</script>      \n            \n            \n            \n            \n  			      \n  			      \n  			      \n  			      \n  			', '2019-08-08 16:08:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `estado`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `stock`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `peso`, `entrega`, `fecha`) VALUES
(3, 1, 1, 'fisico', 'jean-blushe', 1, 'jean blushe', 'jean blushe con ultimo mooda blebleble...', 'jean blushe con ultimo mooda blebleble', '[{\"foto\":\"vistas/img/multimedia/jean-blushe/images (2).jpg\"},{\"foto\":\"vistas/img/multimedia/jean-blushe/images (1).jpg\"},{\"foto\":\"vistas/img/multimedia/jean-blushe/images.jpg\"},{\"foto\":\"vistas/img/multimedia/jean-blushe/DVDA00428CE26.jpg\"}]', '{\"Talla\":[\"28\",\"30\",\"32\",\"34\"],\"Color\":[\"negro\",\"azul\",\"vintage\"],\"Marca\":[]}', 35, 36, 'vistas/img/productos/jean-blushe.jpg', 24, 67, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 1.3, 2, '2019-08-18 22:38:11'),
(4, 2, 5, 'fisico', 'chompa-rihani', 1, 'chompa rihani', 'Chompa manga larga cuello redondo Mangas murciélago ...', 'Chompa manga larga cuello redondo Mangas murciélago ', '[{\"foto\":\"vistas/img/multimedia/chompa-rihani/grace-808-93_copia_2048x.jpg\"},{\"foto\":\"vistas/img/multimedia/chompa-rihani/grace-1010-125_copia_2048x.jpg\"}]', '{\"Talla\":[\"s\"],\"Color\":[\"negro\",\"marron\"],\"Marca\":[]}', 50, 8, 'vistas/img/productos/chompa-rihani.jpg', 12, 1, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0.3, 5, '2019-08-18 23:25:13'),
(8, 1, 1, 'fisico', 'blusa-gasparin', 1, 'blusa gasparin', 'marca nueva de ropa para mujeres en blusas...', 'marca nueva de ropa para mujeres en blusas', '[{\"foto\":\"vistas/img/multimedia/blusa-gasparin/IMG_20190712_130327.jpg\"},{\"foto\":\"vistas/img/multimedia/blusa-gasparin/IMG_20190718_164103.jpg\"}]', '{\"Talla\":[\"m\",\"l\"],\"Color\":[\"amarillo\",\"rosado\",\"negro\"],\"Marca\":[]}', 12, 3, 'vistas/img/productos/blusa-gasparin.jpg', 3, 7, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0.3, 10, '2019-08-18 22:39:55'),
(10, 1, 1, 'fisico', 'jean-cruzate', 1, 'jean cruzate', 'cruzate new...', 'cruzate new', '[{\"foto\":\"vistas/img/multimedia/jean-cruzate/descarga.jpg\"},{\"foto\":\"vistas/img/multimedia/jean-cruzate/descarga (1).jpg\"},{\"foto\":\"vistas/img/multimedia/jean-cruzate/jean.jpg\"}]', '{\"Talla\":[\"28\",\"30\",\"32\",\"34\"],\"Color\":[\"azul\",\"negro\"],\"Marca\":[]}', 35, 10, 'vistas/img/productos/jean-cruzate.jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0, 5, '2019-08-18 23:10:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `nombre`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `orden`, `fecha`) VALUES
(1, 'ZAPATOS AMARILLOS', 'vistas/img/slide/default/back_default.jpg', 'slideOpcion2', 'vistas/img/slide/slide1/calzado.png', '{\"top\":\"5\",\"right\":\"\",\"left\":\"5\",\"width\":\"50\"}', '{\"top\":\"20\",\"right\":\"10\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"Lorem Ipsum\",\"color\":\"#333\"}', '{\"texto\":\"Lorem ipsum dolor sit\",\"color\":\"#777\"}', '{\"texto\":\"Lorem ipsum dolor sit\",\"color\":\"#888\"}', 'VER PRODUCTO', '#', 1, '2018-01-31 22:46:41'),
(2, 'CURSO', 'vistas/img/slide/default/back_default.jpg', 'slideOpcion1', 'vistas/img/slide/slide2/producto.jpg', '{\"top\":\"0\",\"right\":\"50\",\"left\":\"\",\"width\":\"50\"}', '{\"top\":\"20\",\"right\":\"\",\"left\":\"45\",\"width\":\"40\"}', '{\"texto\":\"Lorem Ipsum\",\"color\":\"#333\"}', '{\"texto\":\"Lorem ipsum dolor sit\",\"color\":\"#777\"}', '{\"texto\":\"Lorem ipsum dolor sit\",\"color\":\"#888\"}', 'VER PRODUCTO', '#', 2, '2019-07-22 21:23:59'),
(3, 'MÓVIL', 'vistas/img/slide/slide3/fondo2.jpg', 'slideOpcion2', 'vistas/img/slide/slide3/iphone.png', '{\"top\":\"10\",\"right\":\"\",\"left\":\"10\",\"width\":\"35\"}', '{\"top\":\"15\",\"right\":\"15\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"Lorem Ipsum\",\"color\":\"#eee\"}', '{\"texto\":\"Lorem ipsum dolor sit\",\"color\":\"#ccc\"}', '{\"texto\":\"Lorem ipsum dolor sit\",\"color\":\"#aaa\"}', 'VER PRODUCTO', '#', 3, '2018-01-31 22:45:22'),
(4, 'CHICA', 'vistas/img/slide/slide4/fondo3.jpg', 'slideOpcion1', '', '{\"top\":\"\",\"right\":\"\",\"left\":\"\",\"width\":\"\"}', '{\"top\":\"20\",\"right\":\"\",\"left\":\"10\",\"width\":\"40\"}', '{\"texto\":\"Lorem Ipsum\",\"color\":\"#333\"}', '{\"texto\":\"Lorem ipsum dolor sit\",\"color\":\"#777\"}', '{\"texto\":\"Lorem ipsum dolor sit\",\"color\":\"#888\"}', '', '', 4, '2018-01-31 22:46:04'),
(5, 'coleccion', 'vistas/img/slide/slide5/fondo.jpg', 'slideOpcion2', '', '{\"top\":\"\",\"right\":\"\",\"left\":\"0\",\"width\":\"0\"}', '{\"top\":\"50\",\"right\":\"20\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"\",\"color\":\"#333\"}', '{\"texto\":\"\",\"color\":\"#777\"}', '{\"texto\":\"\",\"color\":\"#888\"}', 'VER PRODUCTO', 'http://localhost/aecommerce/modo-desarrollo/frontend/chompas', 5, '2019-08-12 15:48:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `estado`, `ofertadoPorCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(1, 'Ropa para dama', 1, 'ropa-para-dama', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-08-09 00:48:29'),
(2, 'Ropa para hombre', 1, 'ropa-para-hombre', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-08-09 00:46:55'),
(3, 'Ropa deportiva', 1, 'ropa-deportiva', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-08-09 00:46:55'),
(4, 'Ropa infantil', 1, 'ropa-infantil', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-08-09 00:46:55'),
(5, 'Chompas Mujeres', 2, 'chompas-mujeres', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2019-08-12 15:37:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(8) NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `dni`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`) VALUES
(4, 'greecy chapiama durand', 70552203, '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'dgreeypasteleria@gmail.com', 'directo', '', 0, 'f5a87176710638a149440c54db670c65', '2019-08-18 20:14:36'),
(5, 'joe chapiama durand', 70552204, '$2a$07$asxx54ahjppf45sd87a5aubjMhyMibzwzergT05j1KCzrsGK7b6vC', 'chapiamadurand15@gmail.com', 'directo', '', 0, 'c750155bba7be51702b11387ff6ac2ec', '2019-08-18 20:14:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_administrador` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_administrador`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(1, 1, 1, 1, '[{\"id\":\"4\",\"titulo\":\"chompa rihani\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"50\",\"total\":\"50\"},{\"id\":\"3\",\"titulo\":\"jean blushe\",\"cantidad\":\"2\",\"stock\":\"98\",\"precio\":\"35\",\"total\":\"70\"},{\"id\":\"2\",\"titulo\":\"Top Dama\",\"cantidad\":\"3\",\"stock\":\"27\",\"precio\":\"2\",\"total\":\"6\"}]', 22.68, 126, 148.68, 'Efectivo', '2019-08-15 17:39:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspaises`
--

CREATE TABLE `visitaspaises` (
  `id` int(11) NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspaises`
--

INSERT INTO `visitaspaises` (`id`, `pais`, `codigo`, `cantidad`, `fecha`) VALUES
(1, 'United States', 'US', 12, '2019-08-18 19:46:41'),
(2, 'Japan', 'JP', 65, '2018-03-27 13:26:30'),
(3, 'Spain', 'ES', 10, '2017-12-05 21:02:53'),
(4, 'Colombia', 'CO', 5, '2017-12-05 21:02:55'),
(5, 'China', 'CN', 3, '2017-12-05 21:04:32'),
(6, 'Germany', 'DE', 34, '2017-12-05 21:04:39'),
(7, 'Mexico', 'MX', 8, '2017-12-05 21:04:41'),
(8, 'France', 'FR', 7, '2019-07-20 17:07:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspersonas`
--

CREATE TABLE `visitaspersonas` (
  `id` int(11) NOT NULL,
  `ip` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `visitas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspersonas`
--

INSERT INTO `visitaspersonas` (`id`, `ip`, `pais`, `visitas`, `fecha`) VALUES
(1, '153.202.197.216', 'Japan', 1, '2017-11-08 18:37:07'),
(3, '249.170.168.184', 'Spain', 1, '2017-11-28 19:16:16'),
(5, '249.170.168.184', 'Spain', 1, '2017-11-28 19:16:19'),
(6, '234.13.198.119', 'Colombia', 1, '2017-11-28 19:16:03'),
(7, '141.46.61.241', 'Germany', 1, '2017-11-28 19:13:45'),
(8, '40.179.75.60', 'United States', 1, '2017-11-28 19:14:05'),
(9, '153.205.198.22', 'Japan', 1, '2017-11-01 19:14:18'),
(10, '148.21.177.158', 'United States', 1, '2017-10-28 19:14:34'),
(11, '40.224.125.226', 'United States', 1, '2017-11-28 19:14:56'),
(12, '10.98.135.68', 'China', 1, '2017-11-28 19:15:57'),
(13, '23.121.157.131', 'United States', 1, '2017-11-28 19:15:37'),
(17, '8.12.238.123', 'United States', 1, '2017-11-28 19:28:27'),
(18, '148.21.177.158', 'United States', 1, '2017-11-28 19:33:05'),
(19, '153.202.197.216', 'Japan', 1, '2017-11-28 19:33:50'),
(27, '153.205.198.22', 'Japan', 1, '2017-10-28 20:05:19'),
(31, '153.205.198.22', 'Japan', 1, '2017-11-28 20:09:49'),
(32, '153.205.198.22', 'Japan', 1, '2017-11-29 19:23:07'),
(33, '153.205.198.22', 'Japan', 1, '2017-11-30 23:01:27'),
(34, '153.205.198.22', 'Japan', 1, '2017-12-04 14:55:27'),
(35, '153.205.198.22', 'Japan', 1, '2017-12-05 20:58:04'),
(36, '153.205.198.22', 'Japan', 1, '2017-12-06 21:11:13'),
(37, '153.205.198.22', 'Japan', 1, '2017-12-07 22:32:13'),
(38, '153.205.198.22', 'Japan', 1, '2017-12-11 15:32:10'),
(39, '153.205.198.22', 'Japan', 1, '2017-12-13 15:45:58'),
(40, '153.205.198.22', 'Japan', 1, '2017-12-19 02:37:45'),
(41, '153.205.198.22', 'Japan', 1, '2017-12-19 12:54:21'),
(42, '153.205.198.22', 'Unknown', 1, '2017-12-30 15:41:47'),
(43, '153.205.198.22', 'Japan', 1, '2018-01-02 15:46:52'),
(44, '153.205.198.22', 'Japan', 1, '2018-01-03 13:54:29'),
(45, '153.205.198.22', 'Japan', 1, '2018-01-04 16:54:03'),
(46, '153.205.198.22', 'Japan', 1, '2018-01-05 17:17:05'),
(47, '153.205.198.22', 'Japan', 1, '2018-01-08 13:57:21'),
(48, '153.205.198.22', 'Japan', 1, '2018-01-09 15:46:40'),
(49, '153.205.198.22', 'Japan', 1, '2018-01-10 20:34:12'),
(50, '153.205.198.22', 'Japan', 1, '2018-01-11 14:08:56'),
(51, '153.205.198.22', 'Japan', 1, '2018-01-15 18:10:09'),
(52, '153.205.198.22', 'Japan', 1, '2018-01-16 16:15:33'),
(53, '153.205.198.22', 'Japan', 1, '2018-01-17 21:39:17'),
(54, '153.205.198.22', 'Japan', 1, '2018-01-18 20:16:09'),
(55, '153.205.198.22', 'Japan', 1, '2018-01-19 15:05:32'),
(56, '153.205.198.22', 'Japan', 1, '2018-01-22 14:38:48'),
(57, '153.205.198.22', 'Japan', 1, '2018-01-25 15:44:30'),
(58, '153.205.198.22', 'Japan', 1, '2018-01-26 21:24:38'),
(59, '153.205.198.22', 'Japan', 1, '2018-01-29 20:45:50'),
(60, '153.205.198.22', 'Japan', 1, '2018-01-30 22:32:35'),
(61, '153.205.198.22', 'Japan', 1, '2018-01-31 18:35:33'),
(62, '153.205.198.22', 'Japan', 1, '2018-02-07 17:37:45'),
(63, '153.205.198.22', 'Japan', 1, '2018-02-13 16:52:37'),
(64, '153.205.198.22', 'Japan', 1, '2018-02-14 13:33:04'),
(65, '153.205.198.22', 'Japan', 1, '2018-02-16 13:50:44'),
(66, '153.205.198.22', 'Japan', 1, '2018-02-23 17:06:23'),
(67, '153.205.198.22', 'Japan', 1, '2018-03-02 17:25:19'),
(68, '153.205.198.22', 'Japan', 1, '2018-03-03 12:06:54'),
(69, '153.205.198.22', 'Japan', 1, '2018-03-05 16:27:57'),
(70, '153.205.198.22', 'Japan', 1, '2018-03-06 17:59:36'),
(71, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(72, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(73, '153.205.198.22', 'Japan', 1, '2018-03-12 19:38:37'),
(74, '153.205.198.22', 'Japan', 1, '2018-03-13 20:35:47'),
(75, '153.205.198.22', 'Japan', 1, '2018-03-14 19:41:17'),
(76, '153.205.198.22', 'Japan', 1, '2018-03-15 16:41:11'),
(77, '153.205.198.22', 'Japan', 1, '2018-03-16 19:21:45'),
(78, '153.205.198.22', 'Japan', 1, '2018-03-17 12:23:58'),
(79, '153.205.198.22', 'Japan', 1, '2018-03-19 00:38:47'),
(80, '153.205.198.22', 'Japan', 1, '2018-03-19 12:57:20'),
(81, '153.205.198.22', 'Japan', 1, '2018-03-20 20:33:33'),
(82, '153.205.198.22', 'Japan', 1, '2018-03-21 19:30:58'),
(83, '153.205.198.22', 'Japan', 1, '2018-03-23 19:41:03'),
(84, '153.205.198.22', 'Japan', 1, '2018-03-26 12:42:06'),
(85, '153.205.198.22', 'Japan', 1, '2018-03-27 13:26:30'),
(86, '163.172.160.190', 'France', 1, '2018-03-27 23:23:14'),
(87, '163.172.160.190', 'France', 1, '2018-12-07 21:56:00'),
(88, '::1', 'Unknown', 1, '2018-12-07 22:02:04'),
(89, '::1', 'Unknown', 1, '2018-12-13 03:22:41'),
(90, '163.172.160.190', 'France', 1, '2019-04-27 20:19:02'),
(91, '163.172.160.190', 'France', 1, '2019-07-11 17:48:31'),
(92, '::1', 'Unknown', 1, '2019-07-11 18:03:04'),
(93, '163.172.160.190', 'France', 1, '2019-07-12 11:47:56'),
(94, '::1', 'Unknown', 1, '2019-07-12 18:06:23'),
(95, '163.172.160.190', 'France', 1, '2019-07-15 13:57:34'),
(96, '163.172.160.190', 'France', 1, '2019-07-18 13:31:40'),
(97, '::1', 'Unknown', 1, '2019-07-18 21:08:06'),
(98, '163.172.160.190', 'France', 1, '2019-07-20 17:07:39'),
(99, '163.172.160.190', 'Unknown', 1, '2019-07-21 21:23:20'),
(100, '192.168.0.164', 'Unknown', 1, '2019-07-21 21:40:07'),
(101, '192.168.0.104', 'Unknown', 1, '2019-07-21 21:40:48'),
(102, '192.168.0.104', 'Unknown', 1, '2019-07-22 20:49:21'),
(103, '192.168.0.104', 'Unknown', 1, '2019-07-30 20:43:25'),
(104, '192.168.0.104', 'Unknown', 1, '2019-08-01 16:45:24'),
(105, '192.168.0.104', 'Unknown', 1, '2019-08-03 00:09:39'),
(106, '192.168.0.104', 'Unknown', 1, '2019-08-03 15:53:45'),
(107, '192.168.101.104', 'Unknown', 1, '2019-08-03 15:58:00'),
(108, '162.168.5.104', 'United States', 1, '2019-08-03 15:59:01'),
(109, '162.168.5.104', 'United States', 1, '2019-08-05 13:08:05'),
(110, '162.168.5.104', 'United States', 1, '2019-08-06 13:14:35'),
(111, '162.168.5.104', 'United States', 1, '2019-08-07 14:03:28'),
(112, '162.168.5.104', 'United States', 1, '2019-08-08 13:56:13'),
(113, '162.168.5.104', 'United States', 1, '2019-08-12 14:32:40'),
(114, '162.168.5.104', 'United States', 1, '2019-08-13 18:27:14'),
(115, '162.168.5.104', 'United States', 1, '2019-08-15 14:42:18'),
(116, '162.168.5.104', 'United States', 1, '2019-08-16 15:02:11'),
(117, '162.168.5.104', 'United States', 1, '2019-08-18 19:46:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
