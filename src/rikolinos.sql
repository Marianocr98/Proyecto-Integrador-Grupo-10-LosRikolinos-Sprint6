-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2022 a las 20:58:09
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rikolinos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `text_alternate` varchar(255) DEFAULT NULL,
  `isSpecial` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `text_alternate`, `isSpecial`, `createdAt`, `updatedAt`) VALUES
(1, 'Hamburguesa', 'hamburguesa1.jpg', 'Menu de Hamburguesas', 1, '2022-02-14 15:32:21', '2022-02-14 15:32:21'),
(2, 'Pizza', 'pizza.jpeg', 'Seccion de pizzas', 1, '2022-02-14 15:42:56', '2022-02-14 15:42:56'),
(3, 'Pastas', 'ravioles.jpeg', 'Seccion de Ravioles', 0, '2022-02-14 15:43:08', '2022-02-14 15:43:08'),
(4, 'Empanadas', 'empanadas.jpeg', 'Seccion de empanadas', 0, '2022-02-14 15:43:18', '2022-02-14 15:43:18'),
(5, 'Asado', 'carneasada.jpeg', 'Seccion de Asado', 1, '2022-02-14 15:43:28', '2022-02-14 15:43:28'),
(6, 'Bebidas', 'coctel.jpg', 'Seccion de bebidas', 0, '2022-02-14 15:33:57', '2022-02-14 15:33:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `category_id`, `createdAt`, `updatedAt`) VALUES
(1, 'Jamón y Queso', 'Empanadas de jamón con extra queso', 199, 'empanada-jamon-y-queso.jpg', 4, '2022-02-14 16:39:57', '2022-02-14 16:39:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '2022-02-14 15:47:44', '2022-02-14 15:47:44'),
(2, 'cliente', '2022-02-14 15:50:53', '2022-02-14 15:50:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220212021625-create-category.js'),
('20220212021641-create-product.js'),
('20220212021659-create-rol.js'),
('20220212021709-create-user.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `avatar`, `rol_id`, `createdAt`, `updatedAt`) VALUES
(1, 'Marcelo Olivera', 'marce@rikolinos.com', '$2b$10$XRGSjkrdDbyJjSHxmqts0u0kmX/AIIdBnqODodjjrnaCakETcp9qa', '1643294571105_img.jpg', 1, '2022-02-14 16:13:10', '2022-02-14 16:13:10'),
(2, 'Mayra Gutierrez', 'mayra@rikolinos.com', '$2b$10$xrOqxsHa2On6UJ2IWMH.u.vQfqUTyaLXLlR8h03Y2oPOrREw37oR.', '1643294657950_img.jpg', 1, '2022-02-14 16:13:39', '2022-02-14 16:13:39'),
(3, 'Andres Nuñez', 'andres@rikolinos.com', '$2b$10$0u.0oRk0KrEn63UMIVte9u0Brf9u9h7g6ZYC4ndfKCFfsSPtd9Q1u', '1643294703824_img.jpg', 1, '2022-02-14 16:12:27', '2022-02-14 16:12:27'),
(4, 'Mariano Cespedez', 'mariano@rikolinos.com', '$2b$10$sxhJ.2CBBLFAcSSNqCKl2OyQLbDUmqqbZL5qPKoC0Cq.MrVcqcGEi', '1643294746258_img.jpg', 1, '2022-02-14 16:14:05', '2022-02-14 16:14:05'),
(5, 'Marcelo Cliente', 'cliente123@gmail.com', '$2b$10$Pa7tljzd8Krlp3WzIEHAQeavgvwh5JBzLeAR6MgRDKAI/.cWFs8jO', '1643376517159_img.jpg', 2, '2022-02-14 16:08:26', '2022-02-14 16:08:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
