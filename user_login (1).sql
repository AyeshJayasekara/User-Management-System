-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2017 at 11:55 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_login`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `allusers`
--
CREATE TABLE `allusers` (
`name` varchar(255)
,`email` varchar(255)
,`created` timestamp
,`lastseen` timestamp
,`channelname` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `channelname` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`user`, `channelname`) VALUES
('asd@asd.com', 1),
('kosala@kozi.com', 2),
('yasasbimsara@gmail.com', 3),
('surawimala@gmail.com', 4),
('kosalaofficial@gmail.com', 5),
('test@test.com', 6);

--
-- Triggers `channels`
--
DELIMITER $$
CREATE TRIGGER `channels_AFTER_INSERT` AFTER INSERT ON `channels` FOR EACH ROW BEGIN
insert into Status (username,channel) values (NEW.user,NEW.channelname);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `channels_AFTER_UPDATE` AFTER UPDATE ON `channels` FOR EACH ROW BEGIN
insert into Status (username,channel) values (NEW.user,NEW.channelname);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `ID` varchar(255) NOT NULL,
  `pubkey` varchar(255) NOT NULL,
  `subkey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`ID`, `pubkey`, `subkey`) VALUES
('ejkpac@gmail.com', 'pub-c-784c01b6-34fa-46e2-aba7-5eebb8efac0e', 'sub-c-764a7b9e-16a3-11e7-bb8a-0619f8945a4f');

-- --------------------------------------------------------

--
-- Table structure for table `lighttimer`
--

CREATE TABLE `lighttimer` (
  `channel` int(11) NOT NULL,
  `lightID` int(11) NOT NULL,
  `ON` datetime DEFAULT NULL,
  `OFF` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

CREATE TABLE `Status` (
  `username` varchar(255) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'default',
  `power` int(11) DEFAULT '0',
  `light1` int(11) DEFAULT '0',
  `light2` int(11) DEFAULT '0',
  `light3` int(11) DEFAULT '0',
  `light4` int(11) DEFAULT '0',
  `dim1` int(11) DEFAULT '0',
  `dim2` int(11) DEFAULT '0',
  `curtain` int(11) DEFAULT '0',
  `door` int(11) DEFAULT '0',
  `temp` int(11) DEFAULT '0',
  `water` int(11) DEFAULT '100',
  `intencity` int(11) DEFAULT '0',
  `soil` int(11) DEFAULT '100',
  `rain` int(11) DEFAULT '0',
  `ac` int(11) DEFAULT '0',
  `input` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Status`
--

INSERT INTO `Status` (`username`, `channel`, `power`, `light1`, `light2`, `light3`, `light4`, `dim1`, `dim2`, `curtain`, `door`, `temp`, `water`, `intencity`, `soil`, `rain`, `ac`, `input`) VALUES
('asd@asd.com', '0', 1, 0, 1, 0, 0, 1, 0, 0, 0, 28, 200, 0, 100, 0, 1, 0),
('kosala@kozi.com', '2', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 100, 0, 0, 0),
('kosalaofficial@gmail.com', '5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 100, 0, 0, 0),
('surawimala@gmail.com', '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 100, 0, 0, 0),
('test@test.com', '6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 100, 0, 0, 0),
('yasasbimsara@gmail.com', '3', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 100, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kosala Surawimala', 'asd@asd.com', '$2y$10$B1ZI2IZ.Dhgo8ZcUvQXB1.Xf9TPlf3fKiuygoc5py/YDKAuz28PUe', 'I4J30ikYGjw4askZn73yNwZx4aGjeOpXIYbrbCLuId5vzcAOUtdHE4M02JsW', '2017-05-06 14:27:27', '2017-05-06 14:27:27'),
(3, 'Kosala Sura', 'kosala@kozi.com', '$2y$10$IP79nJ7YEjmPRtG.QOfSFuh4qTDDXUDwyodTUKPbxjzaWDHVXaR2m', 'YKj74200nZtW7FdwunYPKFRD3s33MIF63F1LNTRES1W6eSSJnTGVqPh3hFSf', '2017-05-06 14:29:27', '2017-05-06 14:29:27'),
(4, 'Bimsara Yasassree', 'yasasbimsara@gmail.com', '$2y$10$cI03WHNTzCH5IqwuAiEgO.6aEK9ks4RthX2eQLtKr1rlHuZC5niKi', NULL, '2017-05-07 09:07:28', '2017-05-07 09:07:28'),
(5, 'Kosala Surawimala', 'surawimala@gmail.com', '$2y$10$vqgWvszFKtbnCpw8zDL/Z.pRtSVQqRi1M0Yt5toMo0yKqPJtSW/ky', NULL, '2017-05-07 09:11:44', '2017-05-07 09:11:44'),
(6, 'Kosala Surawimala', 'kosalaofficial@gmail.com', '$2y$10$rMh3F7/NZzoN4P/e/SO3p.EBMTSoumDMqQAgmvytGtfDd07mtAPFi', NULL, '2017-05-07 09:13:22', '2017-05-07 09:13:22'),
(7, 'Test', 'test@test.com', '$2y$10$vKqozddEMvQHGLtUfoIecOsVSsdmMDwZMZtfyEW4Viu0iDZFzLGV2', 'DcrJqjxFscRC36NPaZRobe2KW40tzntvmvjPPRxojTIdbmSv1yGN3sNiztkH', '2017-05-08 21:42:45', '2017-05-08 21:42:45');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
 insert into channels (user) values (NEW.email); 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `allusers`
--
DROP TABLE IF EXISTS `allusers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allusers`  AS  (select `a`.`name` AS `name`,`a`.`email` AS `email`,`a`.`created_at` AS `created`,`a`.`updated_at` AS `lastseen`,`b`.`channelname` AS `channelname` from (`users` `a` join `channels` `b`) where (`a`.`email` = `b`.`user`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`user`),
  ADD UNIQUE KEY `channelname_UNIQUE` (`channelname`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lighttimer`
--
ALTER TABLE `lighttimer`
  ADD PRIMARY KEY (`channel`,`lightID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `channelname` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
