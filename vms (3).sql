-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 10:19 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vms`
--

-- --------------------------------------------------------

--
-- Table structure for table `addvehicle`
--

CREATE TABLE `addvehicle` (
  `vehicle_id` int(11) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `years` varchar(5) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `insurance_expdate` varchar(15) NOT NULL,
  `smoke_expdate` varchar(15) NOT NULL,
  `License_expdate` varchar(15) NOT NULL,
  `vehicle_type` varchar(15) NOT NULL,
  `rc_book` varchar(250) NOT NULL,
  `insurance_certificate` varchar(250) NOT NULL,
  `smoke_certificate` varchar(250) NOT NULL,
  `License` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `userid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addvehicle`
--

INSERT INTO `addvehicle` (`vehicle_id`, `model_name`, `years`, `reg_no`, `insurance_expdate`, `smoke_expdate`, `License_expdate`, `vehicle_type`, `rc_book`, `insurance_certificate`, `smoke_certificate`, `License`, `images`, `userid`) VALUES
(52, 'Hyundai', '2006 ', '386383', '01/12/2021', '09/11/2022', '23/11/2022', 'Car', 'Quest-Global-Recruitment-2022-batch-(Notification_Dated-24-Oct-2021).pdf', 'IRELAND_SPOT_ADMISSION.pdf', 'Recruitment Drive -Maxwell.pdf', '5_6280396978903843925.pdf', 'd6f2ed544cb6de6404ecbb192bddd36a.jpg', '17'),
(54, 'bike', '2017 ', '8368327', '15/02/2022', '25/12/2022', '15/09/2023', 'bike', '', '', '', '', '', '18');

-- --------------------------------------------------------

--
-- Table structure for table `appfeedback`
--

CREATE TABLE `appfeedback` (
  `feedbackid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appfeedback`
--

INSERT INTO `appfeedback` (`feedbackid`, `name`, `message`) VALUES
(13, 'Hanamol', 'Good app...keep going'),
(14, 'Sivapriya', 'Vms is a very nice app where we can experience good services'),
(15, 'Anjali Rajeev', 'Nice app');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `mech_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `name`, `message`, `mech_id`) VALUES
(30, 'Sivapriya', 'good service', 18);

-- --------------------------------------------------------

--
-- Table structure for table `mechanic`
--

CREATE TABLE `mechanic` (
  `mechanic_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `s` varchar(50) NOT NULL,
  `mechanic_type` varchar(50) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanic`
--

INSERT INTO `mechanic` (`mechanic_id`, `username`, `password`, `fullname`, `phone_no`, `email`, `place`, `s`, `mechanic_type`, `latitude`, `longitude`) VALUES
(20, 'siva', 'siva', 'Sivapriya', '9207104631', 'sivapriya@gmail.com', 'Kodungallur', '1', 'Four wheeler Mechanic', '10.5377504', '76.2117794');

-- --------------------------------------------------------

--
-- Table structure for table `rentvehicle`
--

CREATE TABLE `rentvehicle` (
  `vehicle_id` int(11) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `years` varchar(5) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `km_drove` varchar(10) NOT NULL,
  `mileage` varchar(10) NOT NULL,
  `rent_perday` varchar(10) NOT NULL,
  `rent_permonth` varchar(10) NOT NULL,
  `rc_book` varchar(250) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `images` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentvehicle`
--

INSERT INTO `rentvehicle` (`vehicle_id`, `model_name`, `years`, `reg_no`, `km_drove`, `mileage`, `rent_perday`, `rent_permonth`, `rc_book`, `vehicle_type`, `userid`, `images`) VALUES
(31, 'Swift', '2006', '628267', '2000km', '1500 km', '2000', '60000', 'IRELAND_SPOT_ADMISSION.pdf', 'Car', '17', 'e7c4333c6cc8b91326d2fe49c8c723c2.jpg'),
(32, 'Swift F86', '2010', '3937837', '3500km', '2000km', '3000', '3000', 'Quest-Global-Recruitment-2022-batch-(Notification_Dated-24-Oct-2021).pdf', 'Car', '17', 'e325a406d826eafff71bb632bab60ce4.jpg'),
(33, 'porsche', '2016', '6816817', '690 km', '800km', '10000', '120000', 'Installation.pdf', 'car', '18', 'weverse_media_95f42c3894cc4104bb0c30a571174fd5246.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `requestmec`
--

CREATE TABLE `requestmec` (
  `id` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `mech_id` int(11) NOT NULL,
  `mechname` varchar(30) NOT NULL,
  `mphone_no` varchar(10) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestmec`
--

INSERT INTO `requestmec` (`id`, `status`, `user_id`, `username`, `fullname`, `phone_no`, `mech_id`, `mechname`, `mphone_no`, `latitude`, `longitude`) VALUES
(46, 'request', 15, 'joyna', 'joyna', '8547418286', 9, 'Anjali', '8547418286', '10.3396678', '76.2143643'),
(47, 'request', 15, 'joyna', 'joyna', '8547418286', 9, 'Anjali', '8547418286', '10.3396678', '76.2143643'),
(48, 'request', 15, 'joyna', 'joyna', '8547418286', 15, 'siva', '9207104631', '10.3396678', '76.2143643'),
(55, 'request', 17, 'siva', 'Sivapriya', '9207104631', 9, 'Anjali', '8547418286', '10.5377505', '76.2117803'),
(56, 'request', 17, 'siva', 'Sivapriya', '9207104631', 18, 'Anjali Rajeev', '9497166651', '', ''),
(57, 'request', 18, 'anjali', 'anjali rajeev', '8500835720', 20, 'Sivapriya', '9207104631', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `license_no` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fullname`, `phone_no`, `email`, `address`, `license_no`, `gender`, `latitude`, `longitude`) VALUES
(15, 'joyna', 'joyna', 'Joyna Joy', '9207479679', 'joynajoy@gmail.com', 'Perinchery house P.O pullur', '63836388', 'female', '10.3396526', '76.2143506'),
(17, 'siva', 'siva', 'Sivapriya', '9207104631', 'sivapriyavbaburaj@gmail.com', 'Valiyaparambil House', '2779054', 'Female', '10.5377906', '76.2117911'),
(18, 'anjali', 'anjali', 'Anjali', '8590557281', 'anjalirajeev@gmail.com', 'kooliyattu house', '97282628', 'female', '10.5377492', '76.2117827');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addvehicle`
--
ALTER TABLE `addvehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `appfeedback`
--
ALTER TABLE `appfeedback`
  ADD PRIMARY KEY (`feedbackid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `mechanic`
--
ALTER TABLE `mechanic`
  ADD PRIMARY KEY (`mechanic_id`);

--
-- Indexes for table `rentvehicle`
--
ALTER TABLE `rentvehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `requestmec`
--
ALTER TABLE `requestmec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addvehicle`
--
ALTER TABLE `addvehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `appfeedback`
--
ALTER TABLE `appfeedback`
  MODIFY `feedbackid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mechanic`
--
ALTER TABLE `mechanic`
  MODIFY `mechanic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rentvehicle`
--
ALTER TABLE `rentvehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `requestmec`
--
ALTER TABLE `requestmec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
