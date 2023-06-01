-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране:  1 юни 2023 в 06:40
-- Версия на сървъра: 10.4.22-MariaDB
-- Версия на PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `schooled`
--

-- --------------------------------------------------------

--
-- Структура на таблица `comments`
--

CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PostID` int(11) NOT NULL,
  `Content` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `comments`
--

INSERT INTO `comments` (`ID`, `UserID`, `PostID`, `Content`) VALUES
(1, 3, 6, 'Heyyy'),
(2, 3, 7, 'nice, enjoy banica'),
(3, 3, 7, 'thamks gosho'),
(4, 3, 9, 'lol'),
(5, 3, 9, 'da'),
(6, 3, 18, 'gotovo');

-- --------------------------------------------------------

--
-- Структура на таблица `contact`
--

CREATE TABLE `contact` (
  `FirstName` varchar(32) NOT NULL,
  `FamilyName` varchar(32) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `Country` varchar(25) NOT NULL,
  `Subject` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `contact`
--

INSERT INTO `contact` (`FirstName`, `FamilyName`, `Email`, `Country`, `Subject`) VALUES
('da', 'da', 'ad@adfs.ms', 'dad', 'aad'),
('da', 'da', 'ad@adfs.ms', 'dad', 'aad');

-- --------------------------------------------------------

--
-- Структура на таблица `files`
--

CREATE TABLE `files` (
  `ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `PostID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `files`
--

INSERT INTO `files` (`ID`, `Name`, `FileName`, `PostID`, `UserID`) VALUES
(8, '1dbpsf7FQz', 'viber_image_2023-04-27_15-46-33-088.jpg', 22, 6),
(9, 'I7m4GzKHvy', 'documentaciq Ivan.docx', 23, 6),
(10, 'Mh5HLGKJmH', 'Final_Fantasy_XIV_Memes_-_Such_devastation_this_was_not_my_Intention.mp3', 24, 6),
(11, 'kzuw87jB6f', 'index.html', 25, 9),
(12, '3fn6fDOYt3', 'red.png', 26, 9);

-- --------------------------------------------------------

--
-- Структура на таблица `posts`
--

CREATE TABLE `posts` (
  `ID` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Time` int(11) NOT NULL,
  `Content` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `posts`
--

INSERT INTO `posts` (`ID`, `RoomID`, `UserID`, `Time`, `Content`) VALUES
(22, 7, 6, 1684680426, ''),
(23, 7, 6, 1684680439, ''),
(24, 7, 6, 1684680449, ''),
(26, 8, 9, 1685578068, 'Power ranger');

-- --------------------------------------------------------

--
-- Структура на таблица `rooms`
--

CREATE TABLE `rooms` (
  `ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Description` varchar(160) NOT NULL,
  `IsPublic` tinyint(1) NOT NULL,
  `JoinCode` varchar(8) NOT NULL,
  `Accent` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `rooms`
--

INSERT INTO `rooms` (`ID`, `Name`, `Description`, `IsPublic`, `JoinCode`, `Accent`) VALUES
(7, 'french', 'афдф', 0, 'lxNjsNte', 'e60000'),
(8, 'C# basic courses', 'Основни задачи', 1, 'k3y1dkF8', 'aea3a3');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Password` varchar(1200) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Time` int(11) NOT NULL,
  `Role` tinyint(1) NOT NULL,
  `Admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`ID`, `Username`, `Password`, `Email`, `Time`, `Role`, `Admin`) VALUES
(6, 'Hetz', '$2y$10$xpoRtVAKxDJM.jV7Atd64OoeugSdMYZUpPObWwZTGrIAV.CMLkRL.', 'dasd@asefmakf.cs', 1684584922, 1, 0),
(7, 'Hetz3', '$2y$10$muEZMO6oRXITSL7YDmTDP.Ys39TpscjpusEAS.bROGMvBU8V/6kJm', 'trgj@asjkmd.kur', 1684584976, 0, 0),
(8, 'adminTester', '$2y$10$.j3kCz/Euws5VrgBZrTpAOgI5gj8kl9jHja7mDg9Vfkhmmc1ZRXQW', 'ivangrivnev051@gmail.com', 1684598647, 0, 1),
(9, 'Johan', '$2y$10$w4v8X3G5qnoe9OBXOrQ4T.JtRIQ2MxtAXVGEPf7q/IorXViZ.wWKO', 'ivangrivnev@gmail.com', 1685551455, 1, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `usersrooms`
--

CREATE TABLE `usersrooms` (
  `UserID` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `Role` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `usersrooms`
--

INSERT INTO `usersrooms` (`UserID`, `RoomID`, `Role`) VALUES
(3, 4, '2'),
(3, 1, '0'),
(4, 1, '0'),
(4, 5, '2'),
(5, 6, '2'),
(6, 7, '2'),
(9, 8, '2');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`);

--
-- Индекси за таблица `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`ID`);

--
-- Индекси за таблица `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Индекси за таблица `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`ID`);

--
-- Индекси за таблица `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
