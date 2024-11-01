-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2024 at 07:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `status`, `date`, `patient_id`, `doctor_id`) VALUES
(1, 'evening schedule', '2024-10-08', 3, 3),
(2, 'morning state', '2017-10-13', 5, 2),
(3, 'night schedule', '2022-10-21', 6, 5),
(4, 'morning state', '2024-10-07', 2, 4),
(5, 'evening schedule', '2015-10-21', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `amount`, `payment_type`, `date`, `patient_id`, `appointment_id`) VALUES
(1, 50000, 'bkash', '2023-10-15', 5, 2),
(2, 5600, 'cash', '2024-10-07', 3, 5),
(3, 23455, 'credit card', '2024-10-07', 2, 1),
(4, 65780, 'credit card', '2023-12-21', 2, 4),
(5, 234566, 'account transer', '2024-10-06', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `locations` varchar(50) NOT NULL,
  `doctors` int(11) NOT NULL,
  `staffs` int(11) NOT NULL,
  `hod` varchar(40) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `locations`, `doctors`, `staffs`, `hod`, `number`) VALUES
(1, 'Anatomy', '3rd floor,academic building', 15, 50, 'Khairul Alam', 534556457),
(2, 'Pediatrics', '6th floor,emergency building', 20, 52, 'Robayet Amin', 89754354),
(3, 'Medicine', '2nd Floor,academic building 2', 23, 54, 'Nazim al azad', 534556457),
(4, 'Intensive Care Unit(ICU)', '3rd floor,east block', 12, 45, 'Sahida Khatun', 98676455),
(5, 'Pathology', '4rd floor,west block', 10, 30, 'ahmadul kabir', 987864755);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `speciality` varchar(30) NOT NULL,
  `number` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `experienced` varchar(15) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `speciality`, `number`, `email`, `experienced`, `dept_id`) VALUES
(2, 'Shaila Haque', 'Gynaecology', 124354654, 'ahs@gmail.com', '10years', 1),
(3, 'Kibria Khan', 'Surgery', 89754354, 'akter@gmail.com', '2years', 3),
(4, 'Zunayed Ahsan', 'Cardiologist', 987864755, 'ena@yahoo.com', '5yr', 5),
(5, 'Kamrun Nahar', 'Medicine', 534556457, 'par@gmail.com', '7yr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `id` int(11) NOT NULL,
  `test_type` varchar(30) NOT NULL,
  `result` varchar(15) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`id`, `test_type`, `result`, `patient_id`, `doctor_id`) VALUES
(1, 'hemoglobin', 'high', 2, 3),
(2, 'SARS covid', 'positive', 4, 5),
(3, 'insulin level', 'moderate', 3, 2),
(4, 'Glucagon', 'high', 1, 4),
(5, 'Urine test', 'low', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `roll` varchar(30) NOT NULL,
  `number` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `name`, `roll`, `number`, `dept_id`) VALUES
(1, 'sahida begum', 'evening time', 124354654, 3),
(2, 'Rupa Khan', 'night duty', 987864755, 4),
(3, 'Aporna Roy', 'morning', 987864755, 2),
(4, 'Eva Hasan', 'night', 54786373, 3),
(5, 'munia tamanna', 'morning', 32543674, 3);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` enum('male','female','others','') NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `blood_type` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `gender`, `dob`, `address`, `phone_number`, `blood_type`) VALUES
(1, 'Sultana Sadia', 'female', '2024-10-09', 'Narayanganj,Dhaka', '017623-34674', 'O+'),
(2, 'fahmida akter', 'female', '1997-10-21', 'RK mission road', '012376-7644', 'B+'),
(3, 'Rehana Parvin', 'female', '2014-08-18', 'RN Tower,Maniknagar', '01263-374t432', 'B+'),
(4, 'Kamrul Hasan', 'male', '1995-10-23', 'Victoria Garden,Tikatuli', '01763-32464', 'AB+'),
(5, 'Ahsanul haque', 'male', '2024-10-09', 'Bels Park,Barishal', '0214325-43554', 'A-'),
(6, 'Jahangir Alam', 'male', '1990-10-24', 'College Road,Barishal', '02734-24354', 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `date_issued` date NOT NULL,
  `dosage` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `date_issued`, `dosage`, `patient_id`, `appointment_id`) VALUES
(1, '2022-10-18', '3times everyday & comes again after 1month', 3, 4),
(2, '2024-10-10', '2times each day & come again after 15 days', 5, 1),
(3, '2024-10-10', '3times everyday after meal', 4, 1),
(4, '2024-10-20', '3times everyday before meal', 5, 1),
(5, '2024-10-06', '3times after meal', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`id`, `description`, `start_date`, `end_date`, `patient_id`, `doctor_id`) VALUES
(1, 'gastric pain', '2020-10-03', '2024-10-28', 5, 2),
(2, 'heart problem', '2024-10-20', '2024-10-25', 4, 2),
(3, 'urinary infection', '2023-10-27', '2024-10-27', 3, 2),
(4, 'hand injury', '2022-10-20', '2024-10-15', 2, 4),
(5, 'ovarian damage', '2019-10-19', '2024-07-17', 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `billing_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD CONSTRAINT `laboratory_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `laboratory_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `treatment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
