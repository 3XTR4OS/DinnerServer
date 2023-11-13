-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 26 2023 г., 19:45
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `BotStore`
--

-- --------------------------------------------------------

--
-- Структура таблицы `listProducts`
--

CREATE TABLE `listProducts` (
  `id` int NOT NULL,
  `Product name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Product Price` decimal(10,0) NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `listProducts`
--

INSERT INTO `listProducts` (`id`, `Product name`, `Product Price`, `quantity`) VALUES
(1, 'бургер', '80', 1),
(2, 'Сосиска в тесте', '65', 2),
(3, 'Морс', '70', 3),
(4, 'Морс', '70', 3),
(5, 'Морс', '70', 3),
(6, 'Морс', '70', 3),
(7, 'Морс', '70', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `user_cart`
--

CREATE TABLE `user_cart` (
  `user_id` bigint NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(10,0) NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_cart`
--

INSERT INTO `user_cart` (`user_id`, `product_name`, `product_price`, `quantity`) VALUES
(5018892651, '🥤 Морс', '80', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `listProducts`
--
ALTER TABLE `listProducts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `listProducts`
--
ALTER TABLE `listProducts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
