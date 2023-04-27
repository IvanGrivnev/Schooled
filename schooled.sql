-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 22 апр 2023 в 15:53
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
(2, '5XySdHUEI9', 'DSC_0566.JPG', 18, 3),
(3, 'eecEKTe312', 'DSC_0569.JPG', 18, 3),
(4, 's6bP9uMYLH', 'DSC_0572.JPG', 18, 3),
(5, '5lFT5Rhgs9', '8a9367a2fe7d6a795651a6a19831c3e7.jpg', 19, 4),
(6, '6QiNQwFycZ', 'aura2.png', 20, 4),
(7, 'uSKucrcX4c', 'Knocking-on-wall-five-knocks-www.fesliyanstudios.com.mp3', 21, 5);

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
(1, 0, 0, 1678990053, ''),
(2, 0, 0, 1678990095, ''),
(3, 1, 3, 1679005161, 'ok lold'),
(4, 1, 3, 1679005320, 'ok lold a'),
(5, 1, 3, 1679005330, 'ok lold aa'),
(6, 1, 3, 1679005382, 'ok lold aaa'),
(7, 1, 3, 1679008126, 'qj hu      bava banica za vecherq'),
(8, 1, 3, 1679092625, 'why files aren\'t working? rn'),
(9, 4, 3, 1679093150, 'Hay'),
(10, 4, 3, 1679093364, 'huh'),
(11, 4, 3, 1679093386, 'huh'),
(12, 4, 3, 1679093445, 'huh'),
(13, 4, 3, 1679093451, 'huh'),
(14, 4, 3, 1679093465, 'huh'),
(15, 4, 3, 1679093473, 'huh'),
(16, 4, 3, 1679093475, 'huh'),
(18, 4, 3, 1679093964, 'Hello posts'),
(19, 1, 4, 1679389953, 'cute girl'),
(20, 5, 4, 1679390055, 'i made this cool pic uwu'),
(21, 6, 5, 1681819536, 'Добре дошли в моята стая!!');

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
(1, 'french', 'This is my first room', 1, 'qYusKsBm', 'c91313'),
(4, 'files', 'okay', 0, 'h8LRKIGl', '712c72'),
(5, 'Bombi', 'nqma', 0, 'n0fHxRTX', '000000'),
(6, 'C# basic courses', 'Тук ще бъдат съхранявани упражнения за начинаещи с C#', 1, 'We33JFxs', '90b1d5');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Password` varchar(1200) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`ID`, `Username`, `Password`, `Email`, `Time`) VALUES
(2, 'Hetz', '$2y$10$Qt4XiRC4ZRl62oq8l.UCVOGFOmihYuuUNsuDssguLAAvWJW9YmFGO', 'ivangrivnev@gmail.com', 1677943116),
(3, 'Gosho', '$2y$10$/hsqBKZQoGZl0nY.Ar1rfuVwrIUSyFmcL2xc9uRD8rrY6i6JJClky', 'georgi.murlev@gmail.com', 1678214815),
(4, 'Hetzy', '$2y$10$D7oZM2qKrXd4V6MKOrRKZe5.FzblyqaQ677twMOq9gn/TrTHidrze', 'ivangrivnev051@gmail.com', 1679389926),
(5, 'Maria', '$2y$10$Adg7oBHJHT8346mOdvl72OEWJ0gWaDIsTleuEhY4YAoV381Iv.usu', 'ivangrivnev0511@gmail.com', 1681818429);

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
(5, 6, '2');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
