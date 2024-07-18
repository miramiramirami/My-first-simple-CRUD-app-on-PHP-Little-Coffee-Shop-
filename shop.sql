-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 10 2024 г., 18:35
-- Версия сервера: 8.0.36
-- Версия PHP: 8.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Cappuccino'),
(2, 'Gold Brew');

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `photo` text COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `photo`, `price`, `category`) VALUES
(1, 'Cappuccino with chocolate', 'The best natural energy drink in addition to your favorite coffee made from noble espresso with lush milk foam. Chocolate, a giver of positivity, will further soften the taste of this coffee and highlight it brighter.\r\n\r\nA traditional recipe with a new twist. Great solution for breakfast. However, it’s good any time. Create your own mood.', 'https://i.imgur.com/pOAiuA2.jpg', 3, 1),
(2, 'Bumble Coffee', 'A drink made from espresso, orange juice and the like - usually caramel. All ingredients are poured in layers: first viscous, then unforgettable juice and two shots of coffee. The result is a cocktail that resembles the orange-brown coloring of a bumblebee. Names and name - \"bumblebee\" in English \"bumblebee\".', 'https://media.istockphoto.com/id/1420732808/photo/glass-of-bumble-coffee-with-orange-juice-syrup-and-espresso-coffee-on-table-with-fresh.jpg?s=612x612&w=0&k=20&c=t0tHI-cGNpaqQswt9T-7P2_KqehbLblLHVi-NJhdfhQ=', 4, 2),
(7, ' Cappuccino with syrup', 'Вкусная и ароматная капучино с сиропом - это идеальное сочетание вкусовых и текстурных ощущений. Капучино - это типичный итальянский сорт винограда, известный своими яркими красными или розовыми тонами. Сироп - это нежный и сладкий сок, получаемый из фруктов или овощей, который добавляет вкус и аромат к капучино. Вкус капучино с сиропом может быть как свежим и фруктовым, так и богатым и сложным, в зависимости от выбора винограда и сиропа. Не забудьте также добавить немного соли и перца для дополнительного вкуса и аромата. Приятного аппетита!', 'https://avatars.dzeninfra.ru/get-zen_doc/271828/pub_6628ef5bcae2de7c1bb46069_6628ef75fffee1084b771ec4/scale_1200', 5, 1),
(8, 'Cappuccino chiaro', 'Капучино chiaro - это нежный напиток, который словно ласкает ваши вкусовые рецепторы легкими нотами свежести и яркости. Этот напиток напоминает прогулку под лунным светом, когда каждый глоток заставляет сердце биться в такт ритму ночного ветра. Смесь нежного капучино и легкого chiaro создает атмосферу таинственности и загадочности, словно загадочный туман, который окутывает вас своим обволакивающим ароматом. Насладитесь каждым глотком этой волшебной эссенции и погрузитесь в мир мягкого свечения луны, который пробуждает чувства и вдохновляет на мечты.', 'https://avatars.mds.yandex.net/get-mpic/1930823/img_id3100239055384649829.jpeg/300x400', 3, 1),
(9, 'Diet Cappuccino', 'Звездное легкое капучино - это напиток, который сочетает в себе нежный вкус капучино с легкостью и пользой для вашего организма. Каждый глоток этого напитка напоминает о яркой звезде на небесах, которая освещает ваш путь к здоровому образу жизни. Сочетание ароматного капучино и легкости диетического подхода создает идеальное сочетание для тех, кто заботится о своем здоровье и фигуре. Насладитесь волшебным вкусом и ароматом этого капучино, который поможет вам почувствовать себя настоящей звездой среди здоровых выборов.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8nyo74uHUX863jUuclHFGaODEksvoItFjg&s', 4, 1),
(10, 'Nitro coffee', 'Нитро кофе - это волшебство, которое начинается в каждом глотке. Этот напиток, пропитанный нежными пузырьками азота, словно танец облачных узоров на голубом небе. Аромат нитро кофе раскрывается как мелодия, завораживая вас своей глубиной и насыщенностью. Каждый глоток напитка наполняет вас бодростью и энергией, словно прикосновение легкого ветерка в теплый летний день. Погрузитесь в мир невероятного вкуса и аромата нитро кофе, чтобы почувствовать себя на вершине кофейного неба.', 'https://coffee.spb.ru/upload/iblock/6b7/6b7217a301e9de8b98d2d63cfcfd322a.jpg', 5, 2),
(11, 'Glasse', 'Гляссе - это волшебный напиток, который напоминает о мире фруктов и ягод. Каждый глоток этого напитка наполняет вас вкусом и ароматом, словно заставляя вас вспомнить легкие и прохладные дни на фруктовом саду. Гляссе - это удивительное сочетание свежести и легкости, которое помогает наполнить вашу жизнь радостью и вдохновением. Погрузитесь в мир гляссе и почувствуйте, как каждый глоток напитка открывает вам новые горизонты вкусовой приключения.', 'https://online-alina.ru/sites/online-alina.ru/files/s1200_3.jpg', 6, 2),
(12, 'Frappe', 'Фраппе - это волшебный напиток, который напоминает о мире солнечного света и легких вкусов. Каждый глоток этого напитка наполняет вас теплом и свежестью, словно заставляя вас вспомнить прохладные дни на открытом воздухе. Фраппе - это удивительное сочетание аромата и легкости, которое помогает наполнить вашу жизнь радостью и вдохновением. Погрузитесь в мир фраппе и почувствуйте, как каждый глоток напитка открывает вам новые горизонты вкусовой приключения.', 'https://cyprusbutterfly.com.cy/assets/cache_image/images/blogs/2018-06-26_21-43_%D1%84%D1%80%D0%B0%D0%BF%D0%BF%D0%B5_0x0_977.jpg', 4, 2),
(13, 'Cappuccino Bianco', 'Capuchino Bianco - это волшебный напиток, который напоминает о мире свежести и прохладности. Каждый глоток этого напитка наполняет вас теплом и свежестью, словно заставляя вас вспомнить прохладные дни на открытом воздухе. Capuchino Bianco - это удивительное сочетание аромата и легкости, которое помогает наполнить вашу жизнь радостью и вдохновением. Погрузитесь в мир Capuchino Bianco и почувствуйте, как каждый глоток напитка открывает вам новые горизонты вкусовой приключения.', 'https://img.freepik.com/premium-photo/cup-coffee-cappuccino-with-croissant-white-minimalist-blank-background_962751-3748.jpg', 5, 1),
(14, 'Flat White Cappuccino', 'Flat White Cappuccino - это удивительный напиток, который напоминает о сочетании элегантности и силы. Каждый глоток этого напитка наполняет вас вкусом и ароматом, словно заставляя вас вспомнить прохладные дни на открытом воздухе. Flat White Cappuccino - это сочетание эспрессо и молока, которое создает вкусное и насыщенное ощущение, словно соединение света и тепла. Погрузитесь в мир Flat White Cappuccino и почувствуйте, как каждый глоток напитка открывает вам новые горизонты вкусовой приключения.', 'https://www.foodandwine.com/thmb/xQZv2CX6FO5331PYK7uGPF1we9Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Partners-Flat-White-FT-BLOG0523-b11f6273c2d84462954c2163d6a1076d.jpg', 5, 1),
(15, 'Iced Latte', 'Iced Latte - это прохладное наслаждение, в котором сливаются нежный вкус эспрессо, молока и ледяные кубики. Этот освежающий напиток идеально подходит для тех, кто хочет насладиться классическим латте в новом, освежающем формате. Каждый глоток Iced Latte напоминает о летнем бризе и создает идеальное сочетание кремовости и освежающей прохлады. Дайте себе возможность окунуться в мир утонченных вкусов и насладиться моментом расслабления с Iced Latte.', 'https://130529051.cdn6.editmysite.com/uploads/1/3/0/5/130529051/s444124611972565011_p238_i2_w1920.jpeg', 6, 2),
(16, 'Iced Caramel Macchiato', 'Iced Caramel Macchiato - это изысканный холодный напиток, сочетающий в себе богатый вкус эспрессо, сладкую карамель, прохладное молоко и ледяные кубики. Этот напиток обладает утонченным балансом бодрящего кофе, нежной сладости карамели и освежающей прохлады. Каждый глоток Iced Caramel Macchiato напоминает о легком летнем ветерке, окутывая вас теплотой и уютом. Погрузитесь в мир изысканных вкусов и насладитесь моментом расслабления с Iced Caramel Macchiato.', 'https://pullandpourcoffee.com/wp-content/uploads/2021/07/starbucks-copycat-iced-caramel-macchiato-1.jpg', 4, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
