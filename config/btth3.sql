-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 10:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btth3`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Programming 101', 'Introduction to Programming', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(2, 'Web Development Basics', 'Fundamentals of Web Development', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(3, 'Database Design', 'Understanding Database Concepts', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(4, 'Data Structures', 'Introduction to Data Structures', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(5, 'Software Engineering', 'Principles of Software Engineering', '2023-12-13 09:38:07', '2023-12-13 09:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(2, 2, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(3, 3, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(4, 4, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(5, 5, '2023-12-13 09:38:07', '2023-12-13 09:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Introduction to Programming', 'Overview of programming languages and basic concepts', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(2, 2, 'HTML and CSS', 'Building blocks of web development', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(3, 3, 'Entity-Relationship Diagrams', 'Designing relational databases', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(4, 4, 'Arrays and Linked Lists', 'Understanding basic data structures', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(5, 5, 'Software Development Life Cycle', 'Phases of software development', '2023-12-13 09:38:07', '2023-12-13 09:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `lesson_id`, `title`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Programming Basics Slides', '/files/programming_basics.pdf', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(2, 2, 'HTML/CSS Tutorial', '/files/html_css_tutorial.pdf', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(3, 3, 'ERD Examples', '/files/erd_examples.pdf', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(4, 4, 'Data Structures Cheatsheet', '/files/data_structures_cheatsheet.pdf', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(5, 5, 'SDLC Infographic', '/files/sdlc_infographic.png', '2023-12-13 09:38:07', '2023-12-13 09:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option` text DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'A storage location with a symbolic name representing a value', 1, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(2, 1, 'A condition or factor that may change', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(3, 1, 'A collection of related data items', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(4, 2, 'Hypertext Markup Language and Cascading Style Sheets', 1, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(5, 2, 'Hyperlink and Styling Code Sheets', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(6, 2, 'High-level Text Markup Language and Colorful Style Sheets', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(7, 3, 'To visualize the structure of a database', 1, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(8, 3, 'To write SQL queries', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(9, 3, 'To create a web page', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(10, 4, 'Arrays are static data structures, linked lists are dynamic data structures', 1, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(11, 4, 'Linked lists use less memory than arrays', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(12, 4, 'Arrays and linked lists are identical data structures', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(13, 5, 'To identify and fix bugs in the code', 1, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(14, 5, 'To gather user requirements', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(15, 5, 'To design the user interface', 0, '2023-12-13 09:38:07', '2023-12-13 09:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is a variable?', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(2, 2, 'What does HTML stand for?', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(3, 3, 'What is an ERD used for?', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(4, 4, 'What is the difference between an array and a linked list?', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(5, 5, 'What is the purpose of the testing phase in SDLC?', '2023-12-13 09:38:07', '2023-12-13 09:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `lesson_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Programming Basics Quiz', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(2, 2, 'HTML and CSS Quiz', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(3, 3, 'Database Design Quiz', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(4, 4, 'Data Structures Quiz', '2023-12-13 09:38:07', '2023-12-13 09:38:07'),
(5, 5, 'SDLC Quiz', '2023-12-13 09:38:07', '2023-12-13 09:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', '$2y$10$pX41lpO8Ci87.r8.0nc2zObwbAz8CRfyUBr/bpg6JXgU32iiPPxT.', '2023-12-13 09:38:07', '2023-12-13 09:40:07'),
(2, 'Jane Smith', 'jane@example.com', '$2y$10$pX41lpO8Ci87.r8.0nc2zObwbAz8CRfyUBr/bpg6JXgU32iiPPxT.', '2023-12-13 09:38:07', '2023-12-13 09:40:21'),
(3, 'Alice Johnson', 'alice@example.com', '$2y$10$pX41lpO8Ci87.r8.0nc2zObwbAz8CRfyUBr/bpg6JXgU32iiPPxT.', '2023-12-13 09:38:07', '2023-12-13 09:40:26'),
(4, 'Bob Williams', 'bob@example.com', '$2y$10$pX41lpO8Ci87.r8.0nc2zObwbAz8CRfyUBr/bpg6JXgU32iiPPxT.', '2023-12-13 09:38:07', '2023-12-13 09:40:31'),
(5, 'Eva Davis', 'eva@example.com', '$2y$10$pX41lpO8Ci87.r8.0nc2zObwbAz8CRfyUBr/bpg6JXgU32iiPPxT.', '2023-12-13 09:38:07', '2023-12-13 09:40:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`course_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
