-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 30 2020 г., 18:56
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cars`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `CategoryId` int(8) NOT NULL,
  `CategoryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`CategoryId`, `CategoryName`) VALUES
(1, 'Внедорожник'),
(2, 'Седан'),
(3, 'Универсал'),
(4, 'Купе'),
(5, 'Хэтчбэк'),
(6, 'Кабриолет'),
(7, 'Обьемный Универсал'),
(8, 'Пикап'),
(9, 'Лимузин'),
(10, 'Микроавтобус');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `UserId` int(8) NOT NULL,
  `CourseId` int(8) NOT NULL,
  `Comment` varchar(200) NOT NULL,
  `CommentDate` varchar(50) NOT NULL,
  `CommentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`UserId`, `CourseId`, `Comment`, `CommentDate`, `CommentId`) VALUES
(12, 6, 'Спасибо, очень познавательно. Учитывая то, что курсы бесплатные - это просто подарок.', '2019-11-04 12:27:55', 18),
(11, 6, 'Интересный курс. Было интересно узнать что-то новое даже с учётом стажа программиста на JAVA 6 лет. Спасибо!', '2019-11-04 12:58:59', 21);

-- --------------------------------------------------------

--
-- Структура таблицы `course`
--

CREATE TABLE `course` (
  `CourseId` int(8) NOT NULL,
  `CategoryId` int(8) NOT NULL,
  `CourseName` varchar(30) NOT NULL,
  `CourseDesc` text NOT NULL,
  `CourseTime` varchar(20) NOT NULL,
  `CourseDate` varchar(30) NOT NULL,
  `CourseLanguage` varchar(30) NOT NULL,
  `CoursePlace` varchar(30) NOT NULL,
  `CoursePrice` varchar(30) NOT NULL,
  `StatusId` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `course`
--

INSERT INTO `course` (`CourseId`, `CategoryId`, `CourseName`, `CourseDesc`, `CourseTime`, `CourseDate`, `CourseLanguage`, `CoursePlace`, `CoursePrice`, `StatusId`) VALUES
(1, 1, 'Основы маркетинга', 'Целевая группа:\r\nПредприниматели, работники торговли и маркетинга не имеющие специального образования.\r\nTребования: среднее образование.', '40 часов', '12.09.2019 - 10.10.2019', 'RUS', 'Jõhvi', 'Бесплтано', 2),
(2, 2, 'Технология изготовления просты', 'Участник курса, прошедший обучение:\r\n- использует сырье и инструменты, необходимые для изготовления карамели;\r\n- варит различные карамельные смеси\r\n- изготавливает карамельные украшения и формы, используя правильные и безопасные\r\nметоды работы.', '40 часов', 'Начало в Сентябре', 'RUS', 'Kutse 13, Jõhvi', 'Бесплтано', 1),
(3, 1, 'Основы интернет-маркетинга', 'Курс для небольшого погружения в сферу маркетинга. Вы научитесь создавать группу в социальной сети, наполнять её контентом и привлекать первых потенциальных клиентов. Изучите стратегии успешных интернет-компаний, у которых можно перенять опыт и определите вектор развития собственного дела', '30 часов', '13.01.2020 - 17.02.2020', 'RUS', 'Narva', '30 Euro', 1),
(4, 1, 'Основы маркетинга', 'Целевая группа:\r\nПредприниматели, работники торговли и маркетинга не имеющие специального образования.\r\nTребования: среднее образование.', '40 часов', '12.09.2019 - 10.10.2019', 'RUS', 'Jõhvi', '', 2),
(5, 1, 'Основы интернет-маркетинга', 'Курс для небольшого погружения в сферу маркетинга. Вы научитесь создавать группу в социальной сети, наполнять её контентом и привлекать первых потенциальных клиентов. Изучите стратегии успешных интернет-компаний, у которых можно перенять опыт и определите вектор развития собственного дела', '30 часов', '13.01.2020 - 17.02.2020', 'RUS', 'Narva', '30 Euro', 1),
(6, 5, 'JAVA EE', 'desc', '3 years', '11/04/2019', 'GER', 'Hamburg, Hollar Strasse 17', '', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `newcars`
--

CREATE TABLE `newcars` (
  `CarId` int(4) NOT NULL,
  `CarUserName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `CarCategoryId` int(4) NOT NULL,
  `CarMark` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CarModel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CarColor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CarYear` int(4) NOT NULL,
  `CarUnsurance` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `CarPrice` float NOT NULL,
  `CarVinNumber` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `CarNumber` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `CarDescription` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarImgMain` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarImg1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarImg2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarImg3` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarFeature` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `newcars`
--

INSERT INTO `newcars` (`CarId`, `CarUserName`, `CarCategoryId`, `CarMark`, `CarModel`, `CarColor`, `CarYear`, `CarUnsurance`, `CarPrice`, `CarVinNumber`, `CarNumber`, `CarDescription`, `CarImgMain`, `CarImg1`, `CarImg2`, `CarImg3`, `CarFeature`) VALUES
(1, 'aivanov', 1, 'PORSCHE', '911', '', 2018, '12/12/22', 20000, '19SDK94MG94K2O', '333AAA', 'No desc', 'https://img11.auto24.ee/auto24/560/903/132616903.jpg', 'https://img11.auto24.ee/auto24/560/907/132616907.jpg', 'https://img11.auto24.ee/auto24/560/783/132617783.jpg', 'https://img11.auto24.ee/auto24/560/744/132617744.jpg', 'No feature'),
(2, 'aivanov', 2, 'PORSCHE', 'Cayenne ', '', 2018, '15/12/22', 50000, '453F294MG94K2O', '637BRY', 'No desc', 'https://img11.auto24.ee/auto24/560/204/134986204.jpg', 'https://img11.auto24.ee/auto24/560/276/134986276.jpg', 'https://img11.auto24.ee/auto24/560/280/134986280.jpg', 'https://img11.auto24.ee/auto24/560/099/135044099.jpg', 'No feature');

-- --------------------------------------------------------

--
-- Структура таблицы `oldcars`
--

CREATE TABLE `oldcars` (
  `CarId` int(4) NOT NULL,
  `CarUserName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `CarCategoryId` int(8) NOT NULL,
  `CarMark` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CarModel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CarColor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CarYear` int(4) NOT NULL,
  `CarUnsurance` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `CarPrice` float NOT NULL,
  `CarVinNumber` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `CarNumber` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `CarDescription` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarImgMain` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarImg1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarImg2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarImg3` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `CarFeature` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `oldcars`
--

INSERT INTO `oldcars` (`CarId`, `CarUserName`, `CarCategoryId`, `CarMark`, `CarModel`, `CarColor`, `CarYear`, `CarUnsurance`, `CarPrice`, `CarVinNumber`, `CarNumber`, `CarDescription`, `CarImgMain`, `CarImg1`, `CarImg2`, `CarImg3`, `CarFeature`) VALUES
(1, 'aivanov', 0, 'PORSCHE', '911', 'White-Mate', 2018, '12/12/22', 20000, '19SDK94MG94K2O', '333AAA', 'No desc', 'https://img11.auto24.ee/auto24/560/903/132616903.jpg', 'https://img11.auto24.ee/auto24/560/907/132616907.jpg', 'https://img11.auto24.ee/auto24/560/783/132617783.jpg', 'https://img11.auto24.ee/auto24/560/744/132617744.jpg', 'No feature'),
(2, 'Admin', 0, 'BMW ', 'X4', 'Black -Metallic', 2019, 'No', 9999, '6243K94MG94K2O', '231AYE', 'No desc', 'https://img11.auto24.ee/auto24/560/004/134020004.jpg', 'https://img11.auto24.ee/auto24/560/008/134020008.jpg', 'https://img11.auto24.ee/auto24/560/012/134020012.jpg', 'https://img11.auto24.ee/auto24/560/072/134020072.jpg', 'No feature');

-- --------------------------------------------------------

--
-- Структура таблицы `privileges`
--

CREATE TABLE `privileges` (
  `PrivilegesId` int(8) NOT NULL,
  `PrivilegesName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `privileges`
--

INSERT INTO `privileges` (`PrivilegesId`, `PrivilegesName`) VALUES
(1, 'User'),
(2, 'Admin'),
(3, 'Owner');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `StatusId` int(11) NOT NULL,
  `StatusName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`StatusId`, `StatusName`) VALUES
(1, 'Еще не начался'),
(2, 'В процессе'),
(3, 'Завершен'),
(4, 'Ушел с курса');

-- --------------------------------------------------------

--
-- Структура таблицы `usercourses`
--

CREATE TABLE `usercourses` (
  `UserId` int(8) NOT NULL,
  `CourseId` int(8) NOT NULL,
  `CourseRegisterDate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usercourses`
--

INSERT INTO `usercourses` (`UserId`, `CourseId`, `CourseRegisterDate`) VALUES
(3, 1, '2019-10-28 23:07:59'),
(12, 2, '2019-11-04 12:33:06');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `UserId` int(8) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `UserEmail` varchar(50) NOT NULL,
  `UserPass` varchar(30) NOT NULL,
  `PrivilegesId` int(8) NOT NULL DEFAULT 1,
  `FirstName` varchar(50) NOT NULL,
  `SecondName` varchar(50) NOT NULL,
  `UserNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`UserId`, `UserName`, `UserEmail`, `UserPass`, `PrivilegesId`, `FirstName`, `SecondName`, `UserNumber`) VALUES
(1, 'Moderator', 'fec@nnet.eu', 'moderator', 2, 'Alexander', 'Shultz', '43636734'),
(3, 'Admin', 'aleksei.ilves@ivkhk.ee', 'admin', 3, 'Alexey', 'Ilves', '55560443'),
(11, 'aivanov', 'aivanov@mail.ru', 'aivanov', 1, 'Andrei', 'Ivanov', '8080032'),
(12, 'mfedorova', 'mfedorova@gmail.com', 'mfedorova', 1, 'Maria', 'Fedorova', '56764576');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentId`),
  ADD KEY `CourseId` (`CourseId`),
  ADD KEY `UserId_2` (`UserId`);

--
-- Индексы таблицы `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseId`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Индексы таблицы `newcars`
--
ALTER TABLE `newcars`
  ADD PRIMARY KEY (`CarId`),
  ADD KEY `CarUserName` (`CarUserName`),
  ADD KEY `CarCategoryId` (`CarCategoryId`);

--
-- Индексы таблицы `oldcars`
--
ALTER TABLE `oldcars`
  ADD PRIMARY KEY (`CarId`),
  ADD KEY `CarUserName` (`CarUserName`),
  ADD KEY `CarCategoryId` (`CarCategoryId`);

--
-- Индексы таблицы `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`PrivilegesId`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`StatusId`);

--
-- Индексы таблицы `usercourses`
--
ALTER TABLE `usercourses`
  ADD PRIMARY KEY (`UserId`,`CourseId`),
  ADD KEY `CourseId` (`CourseId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `UserEmail` (`UserEmail`),
  ADD KEY `PrivilegesId` (`PrivilegesId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `course`
--
ALTER TABLE `course`
  MODIFY `CourseId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `newcars`
--
ALTER TABLE `newcars`
  MODIFY `CarId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oldcars`
--
ALTER TABLE `oldcars`
  MODIFY `CarId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `privileges`
--
ALTER TABLE `privileges`
  MODIFY `PrivilegesId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `StatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);

--
-- Ограничения внешнего ключа таблицы `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`CategoryId`);

--
-- Ограничения внешнего ключа таблицы `newcars`
--
ALTER TABLE `newcars`
  ADD CONSTRAINT `newcars_ibfk_1` FOREIGN KEY (`CarUserName`) REFERENCES `users` (`UserName`),
  ADD CONSTRAINT `newcars_ibfk_2` FOREIGN KEY (`CarCategoryId`) REFERENCES `categories` (`CategoryId`);

--
-- Ограничения внешнего ключа таблицы `oldcars`
--
ALTER TABLE `oldcars`
  ADD CONSTRAINT `oldcars_ibfk_1` FOREIGN KEY (`CarUserName`) REFERENCES `users` (`UserName`);

--
-- Ограничения внешнего ключа таблицы `usercourses`
--
ALTER TABLE `usercourses`
  ADD CONSTRAINT `usercourses_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`),
  ADD CONSTRAINT `usercourses_ibfk_2` FOREIGN KEY (`CourseId`) REFERENCES `course` (`CourseId`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`PrivilegesId`) REFERENCES `privileges` (`PrivilegesId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
