-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2022 a las 20:59:16
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

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
(6, 'Bebidas', 'coctel.jpg', 'Seccion de bebidas', 1, '2022-02-14 15:33:57', '2022-02-14 15:33:57');

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
(2, 'Jamón y Queso', '      Empanadas de jamón con extra queso      ', 200, 'imgProductos-1645300944420.jpg', 4, '2022-02-19 19:18:47', '2022-02-19 20:23:37'),
(3, 'Pollo', '  Empanadas fritas  ', 8000, 'imgProductos-1645468697062.jpeg', 4, '2022-02-21 14:18:34', '2022-02-21 18:38:17'),
(4, 'Carne', ' Empanadas de carne ', 120, 'imgProductos-1645453224575.jpg', 4, '2022-02-21 14:20:24', '2022-02-21 14:22:55'),
(5, 'Choclo', '  Empanadas al horno  ', 150, 'imgProductos-1645468727105.jpeg', 4, '2022-02-21 14:31:06', '2022-02-21 18:38:47'),
(6, 'Arabes', 'Empanadas Arabes', 155, 'imgProductos-1645453997891.jpg', 4, '2022-02-21 14:33:17', '2022-02-21 14:33:17'),
(7, 'Humita', 'Empanadas humita', 100, 'imgProductos-1645454285045.jpg', 4, '2022-02-21 14:38:05', '2022-02-21 14:38:05'),
(8, 'Hambuguesa2.0', '', 499, 'imgProductos-1645459288197.jpg', 1, '2022-02-21 16:01:28', '2022-02-21 16:01:28'),
(9, 'Hambuguesa3.0', 'imagen de Hamburguesa 3.0', 599, 'imgProductos-1645459342122.jpg', 1, '2022-02-21 16:02:22', '2022-02-21 16:02:22'),
(10, 'Combo Mar del plata', 'imagen de Combo de Mar del Plata', 589, 'imgProductos-1645459396245.jpg', 1, '2022-02-21 16:03:16', '2022-02-21 16:03:16'),
(11, 'Combo Big', 'imagen de Combo Big', 699, 'imgProductos-1645459449426.jpg', 1, '2022-02-21 16:04:09', '2022-02-21 16:04:09'),
(12, 'Hamburguesa Triple', 'imagen de Hamurguesa Triple Bacon', 250, 'imgProductos-1645459518972.jpg', 1, '2022-02-21 16:05:19', '2022-02-21 16:05:19'),
(13, 'Muzzarella', 'Grande de Muzzarella', 399, 'imgProductos-1645459830645.jpeg', 2, '2022-02-21 16:10:30', '2022-02-21 16:10:30'),
(14, 'Napolitana', 'Grande de Muzzarella', 399, 'imgProductos-1645467220652.jpg', 2, '2022-02-21 18:13:40', '2022-02-21 18:13:40'),
(15, 'Calabresa', 'Grande de Muzzarella', 449, 'imgProductos-1645467269009.jpg', 2, '2022-02-21 18:14:29', '2022-02-21 18:14:29'),
(16, 'Fugaseta', 'Grande de Muzzarella', 459, 'imgProductos-1645467388652.jpg', 2, '2022-02-21 18:16:28', '2022-02-21 18:16:28'),
(17, 'Italiana', 'Grande Italiana', 479, 'imgProductos-1645467455149.jpeg', 2, '2022-02-21 18:17:35', '2022-02-21 18:17:35'),
(18, 'Grande de Muzza', 'Grande de Muzzarella', 499, 'imgProductos-1645467496321.jpg', 2, '2022-02-21 18:18:16', '2022-02-21 18:18:16'),
(19, 'Ñoquis', 'Ñoquis', 399, 'imgProductos-1645467545103.jpg', 3, '2022-02-21 18:19:05', '2022-02-21 18:19:05'),
(20, 'Ravioles', 'Ravioles', 399, 'imgProductos-1645467593039.jpeg', 3, '2022-02-21 18:19:53', '2022-02-21 18:19:53'),
(21, 'Pasta económica', 'Pasta económica', 299, 'imgProductos-1645467643066.jpeg', 3, '2022-02-21 18:20:43', '2022-02-21 18:20:43'),
(22, 'Pasta Italiana', 'Pasta Italiana', 399, 'imgProductos-1645467687591.jpg', 3, '2022-02-21 18:21:27', '2022-02-21 18:21:27'),
(23, 'Pasta de la casa', 'Pasta de la casa', 330, 'imgProductos-1645467730643.jpg', 3, '2022-02-21 18:22:10', '2022-02-21 18:22:10'),
(24, 'Super ravioles', 'Super ravioles al rescate', 1000, 'imgProductos-1645467784810.jpg', 3, '2022-02-21 18:23:04', '2022-02-21 18:23:04'),
(25, 'Combo Parrilita', 'Combo para 2 personas', 800, 'imgProductos-1645467879981.jpeg', 5, '2022-02-21 18:24:40', '2022-02-21 18:24:40'),
(26, 'Combo Familiar', 'Combo Familiar tipo 4 personas', 1200, 'imgProductos-1645467914414.jpg', 5, '2022-02-21 18:25:14', '2022-02-21 18:25:14'),
(27, 'Combo Carnívoro', ' Combo Carnívoro nothing herviboro  ', 900, 'imgProductos-1645467978307.jpg', 5, '2022-02-21 18:26:18', '2022-02-21 18:36:57'),
(28, 'Carne Wagyu', 'Carne con ceros venas y ceros nervios carne tiernecita tiernecita ', 10000, 'imgProductos-1645468048197.jpeg', 5, '2022-02-21 18:27:28', '2022-02-21 18:27:28'),
(29, 'Especial De La Casa', 'Especial De La Casa', 100, 'imgProductos-1645468254210.jpg', 5, '2022-02-21 18:30:54', '2022-02-21 18:30:54'),
(30, 'Sandwich de Bondiola', 'Sandwich de Bondiola que esta cucupipi', 199, 'imgProductos-1645468312440.jpg', 5, '2022-02-21 18:31:52', '2022-02-21 18:31:52'),
(31, 'Vino Michel Torino', 'Vino Michel Torino', 199, 'imgProductos-1645468369029.jpg', 6, '2022-02-21 18:32:49', '2022-02-21 18:32:49'),
(32, 'Vino Norton', 'Vino Norton', 199, 'imgProductos-1645468414427.jpg', 6, '2022-02-21 18:33:34', '2022-02-21 18:33:34'),
(33, 'Sprite', 'Sprite', 200, 'imgProductos-1645468463288.jpg', 6, '2022-02-21 18:34:23', '2022-02-21 18:34:23'),
(34, 'Coca Cola', 'Coca Cola', 199, 'imgProductos-1645468492480.jpg', 6, '2022-02-21 18:34:52', '2022-02-21 18:34:52'),
(35, 'Corona', 'Corona', 200, 'imgProductos-1645468513303.jpg', 6, '2022-02-21 18:35:13', '2022-02-21 18:35:13'),
(36, 'Heineken', 'Heineken', 250, 'imgProductos-1645468531655.png', 6, '2022-02-21 18:35:31', '2022-02-21 18:35:31');

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
(5, 'Marcelo Cliente', 'cliente123@gmail.com', '$2b$10$Pa7tljzd8Krlp3WzIEHAQeavgvwh5JBzLeAR6MgRDKAI/.cWFs8jO', '1643376517159_img.jpg', 2, '2022-02-14 16:08:26', '2022-02-14 16:08:26'),
(6, 'Cr7SIUUUUU', 'MarianoCespedez@gmail.com', '$2b$10$TNPTghOp8ZQHhokPCbn5y.WQ69hR6GV3QVlyTupXnQQUpD4DKFtNa', '1645132541410_img.jpg', 2, '2022-02-17 21:15:41', '2022-02-17 21:15:41');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
