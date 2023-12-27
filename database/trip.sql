-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 27, 2023 at 02:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(3) NOT NULL,
  `class` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `class`, `caption`) VALUES
(1, 'fa-regular fa-map fa-2xl', 'Best Destinations'),
(2, 'fa-solid fa-hand-holding-dollar fa-2xl', 'Affordable Prices'),
(3, 'fa-solid fa-headset fa-2xl', '24/7 Support');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `guests` int(255) NOT NULL,
  `arrival` date NOT NULL,
  `leaving` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `email`, `phone`, `address`, `location`, `guests`, `arrival`, `leaving`) VALUES
(1, 'vinayak', 'vvs@gmail.com', '7028787287', 'kolhapur', 'Paris', 2, '2023-11-27', '2023-11-30'),
(2, 'rohit', 'rohit@gmail.com', '7038646680', 'kagal', 'Amsterdam', 2, '2023-10-30', '2023-10-31'),
(3, 'vvs', 'vvs@gmail.com', '7038646680', 'kagal', 'Tokyo', 2, '2023-10-30', '2023-11-02'),
(4, 'raj', 'raj@gmail.com', '1234567890', 'kolhapur', 'New York', 2, '2023-10-26', '2023-10-29'),
(5, 'vijay', 'vijay@gmail.com', '9876543210', 'pune', 'London', 2, '2023-10-30', '2023-10-31'),
(6, 'pk', 'pk@gmail.com', '1234567890', 'pune', 'Tokyo', 2, '2023-10-30', '2023-10-31'),
(7, 'axe', 'axe@gmail.com', '9876543210', 'pune', 'Cape Town', 2, '2023-10-29', '2023-10-31'),
(8, 'vvs', 'vvs@gmail.com', '7038646680', 'pune', 'Moscow', 2, '2023-10-30', '2023-10-31'),
(9, 'rohit', 'rohit@gmail.com', '9876543210', 'kolhapur', 'Rome', 3, '2023-10-30', '2023-10-31'),
(10, 'vvs', 'vvs@gmail.com', '9876543210', 'kolhapur', 'Morocco', 2, '2023-10-29', '2023-10-31'),
(11, 'raj', 'rohit@gmail.com', '7038646680', 'kolhapur', 'New York', 2, '2023-10-23', '2023-10-31'),
(12, 'vvs', 'vvs@gmail.com', '7038646680', 'kolhapur', 'Moscow', 2, '2023-11-01', '2023-11-09'),
(13, 'rohit', 'rohit@gmail.com', '1234567890', 'kagal', 'Maldives', 2, '2023-11-01', '2023-11-03'),
(14, 'vvs', 'vvs@gmail.com', '1234567890', 'kagal', 'Cape Town', 2, '2023-11-01', '2023-11-07'),
(15, 'pk', 'pk@gmail.com', '7038646680', 'kagal', 'Singapore', 2, '2023-11-01', '2023-11-02'),
(16, 'vinayak', 'vvs@gmail.com', '7028787287', 'pune', 'Cape Town', 2, '2023-11-02', '2023-11-09'),
(17, 'raj', 'vvs@gmail.com', '1234567890', 'kolhapur', 'Singapore', 2, '2023-11-03', '2023-11-18'),
(18, 'vijay', 'vijay@gmail.com', '7038646680', 'kagal', 'New York', 2, '2023-11-02', '2023-11-03'),
(19, 'vvs', 'raj@gmail.com', '9876543210', 'kolhapur', 'Morocco', 2, '2023-11-03', '2023-11-18'),
(20, 'praneel', 'praneel@gmail.com', '9876543210', 'kolhapur', 'Rome', 2, '2023-11-22', '2023-11-30'),
(21, 'veehan', 'veehan@gmail.com', '1234567890', 'pune', 'London', 2, '2023-11-23', '2023-11-30'),
(22, 'vvs', 'vvs@gmail.com', '7028787287', 'kagal', 'Los Angeles', 2, '2023-11-25', '2023-11-27'),
(23, 'Vinayak Sutar', 'vinayaksutar.work@gmail.com', '0702878728', '304, A Wing, Mauli Krupa, Bavdhan', 'Singapore', 2, '2023-12-11', '2023-12-15'),
(24, 'Vinayak Sutar', 'vinayaksutar.work@gmail.com', '0702878728', '304, A Wing, Mauli Krupa, Bavdhan', 'Amsterdam', 2, '2023-12-15', '2023-12-17'),
(25, 'Rohit Sutar', 'vinayaksutar.work@gmail.com', '0702878728', '304, A Wing, Mauli Krupa, Bavdhan', 'Cape Town', 7, '2023-12-15', '2023-12-22'),
(26, 'Vinayak Sutar', 'vinayaksutar.work@gmail.com', '0702878728', '304, A Wing, Mauli Krupa, Bavdhan', '', 2, '2023-12-23', '2023-12-27'),
(27, 'Vinayak', 'vinayaksutar.work@gmail.com', '0702878728', '304, A Wing, Mauli Krupa, Bavdhan', '', 2, '2023-12-15', '2023-12-17'),
(28, 'Vinayak Sutar', 'vinayaksutar.work@gmail.com', '0702878728', '304, A Wing, Mauli Krupa, Bavdhan', 'Amsterdam', 2, '2023-12-15', '2023-12-24'),
(29, 'Vinayak Sutar', 'vinayaksutar.work@gmail.com', '0702878728', '304, A Wing, Mauli Krupa, Bavdhan', 'Cape Town', 1, '2023-12-15', '2023-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(3) NOT NULL,
  `add1` varchar(255) NOT NULL,
  `add2` varchar(255) NOT NULL,
  `mob1` varchar(255) NOT NULL,
  `mob2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `add1`, `add2`, `mob1`, `mob2`) VALUES
(1, 'New York,NY 10012,US', 'info@example.com', '+ 01 234 567 88', '+ 01 234 567 89');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(3) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `location`) VALUES
(1, 'Amsterdam'),
(2, 'Cape Town'),
(3, 'London'),
(4, 'Los Angeles'),
(5, 'Maldives'),
(6, 'Morocco'),
(7, 'Moscow'),
(8, 'New York'),
(9, 'Paris'),
(10, 'Rome'),
(11, 'Singapore'),
(12, 'Tokyo');

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(3) NOT NULL,
  `link` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `link`, `name`) VALUES
(1, 'index.php', 'Home'),
(2, 'about.php', 'About'),
(3, 'package.php', 'Packages'),
(4, 'booking.php', 'Booking');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `title`, `subtitle`, `image`) VALUES
(1, 'Amsterdam', 'Lorem ipsum', 'images/amsterdam.jpg'),
(2, 'Cape Town', 'Lorem ipsum.', 'images/capetown.jpg'),
(3, 'London', 'Lorem ipsum', 'images/london.jpg'),
(4, 'Los Angeles', 'Lorem ipsum', 'images/los-angeles.jpg'),
(5, 'Maldives', 'Lorem ipsum', 'images/maldives.jpg'),
(6, 'Morocco', 'Lorem ipsum', 'images/morocco.jpg'),
(7, 'Moscow', 'Lorem ipsum', 'images/moscow.jpg'),
(8, 'New York', 'Lorem ipsum', 'images/new-york.jpg'),
(9, 'Paris', 'Lorem ipsum', 'images/paris.jpg'),
(10, 'Rome', 'Lorem ipsum', 'images/rome.jpg'),
(11, 'Singapore', 'Lorem ipsum', 'images/singapore.jpg'),
(12, 'Tokyo', 'Lorem ipsum', 'images/tokyo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(3) NOT NULL,
  `class` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `class`, `name`) VALUES
(1, 'fa-brands fa-space-awesome fa-beat fa-lg', 'Adventure'),
(2, 'fa-solid fa-torii-gate fa-beat fa-lg', 'Tour Guide'),
(3, 'fa-solid fa-house-flag fa-beat fa-lg', 'Trekking'),
(4, 'fa-brands fa-free-code-camp fa-beat fa-lg', 'Camp Fire'),
(5, 'fa-solid fa-truck-monster fa-beat fa-lg', 'Off Road'),
(6, 'fa-solid fa-tents fa-beat fa-lg', 'Camping');

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `id` int(3) NOT NULL,
  `class` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sociallinks`
--

INSERT INTO `sociallinks` (`id`, `class`, `name`) VALUES
(1, 'fa-brands fa-facebook-f fa-lg px-2', 'Facebook'),
(2, 'fa-brands fa-instagram fa-lg px-2', 'Instagram'),
(3, 'fa-brands fa-whatsapp fa-lg px-2', 'Whatsapp'),
(4, 'fa-brands fa-x-twitter fa-lg px-2', 'Twitter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
