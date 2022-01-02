-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 06:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories_table`
--

CREATE TABLE `categories_table` (
  `category_id` int(3) NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories_table`
--

INSERT INTO `categories_table` (`category_id`, `name`, `description`) VALUES
(1, 'PHP', 'PHP is a server side scripting language. that is used to develop Static websites or Dynamic websites or Web applications. PHP stands for Hypertext Pre-processor, that earlier stood for Personal Home Pages. PHP scripts can only be interpreted on a server that has PHP installed.'),
(2, 'Java', 'Java is a high-level programming language developed by Sun Microsystems. ... Instead, Java programs are interpreted by the Java Virtual Machine, or JVM, which runs on multiple platforms. This means all Java programs are multiplatform and can run on different platforms, including Macintosh, Windows, and Unix computers.');

-- --------------------------------------------------------

--
-- Table structure for table `replies_table`
--

CREATE TABLE `replies_table` (
  `rep_id` int(4) NOT NULL,
  `rep_user_id` int(4) NOT NULL,
  `topic_id` int(4) NOT NULL,
  `body` text NOT NULL,
  `vote` int(4) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `notification` int(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replies_table`
--

INSERT INTO `replies_table` (`rep_id`, `rep_user_id`, `topic_id`, `body`, `vote`, `create_date`, `notification`, `status`) VALUES
(18, 4, 1, '<p>this is manick</p>\r\n', 0, '2020-06-13 14:36:17', 0, 0),
(19, 3, 1, '<p>tsdfasdfd</p>\r\n', 0, '2020-06-13 21:29:08', 0, 0),
(20, 4, 1, '<p>hi nilish thi is manick</p>\r\n', 0, '2020-06-14 20:08:26', 0, 0),
(21, 4, 5, '<p>my replay</p>\r\n', 1, '2020-06-14 20:09:16', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spring_session`
--

CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `spring_session`
--

INSERT INTO `spring_session` (`PRIMARY_ID`, `SESSION_ID`, `CREATION_TIME`, `LAST_ACCESS_TIME`, `MAX_INACTIVE_INTERVAL`, `EXPIRY_TIME`, `PRINCIPAL_NAME`) VALUES
('0abc0738-14d9-4ce7-8130-66376c1dfbd0', '2c8b9dde-5fe1-499a-91ce-feaab785a555', 1592145677049, 1592151872974, 1800, 1592153672974, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spring_session_attributes`
--

CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `spring_session_attributes`
--

INSERT INTO `spring_session_attributes` (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`, `ATTRIBUTE_BYTES`) VALUES
('0abc0738-14d9-4ce7-8130-66376c1dfbd0', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('0abc0738-14d9-4ce7-8130-66376c1dfbd0', 'sessionusername', 0xaced00057400096e696c657368303737);

-- --------------------------------------------------------

--
-- Table structure for table `topic_table`
--

CREATE TABLE `topic_table` (
  `topic_id` int(4) NOT NULL,
  `category_id` int(3) NOT NULL,
  `user_id` int(4) NOT NULL,
  `title` varchar(70) NOT NULL,
  `body` text NOT NULL,
  `last_activity` datetime NOT NULL DEFAULT current_timestamp(),
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic_table`
--

INSERT INTO `topic_table` (`topic_id`, `category_id`, `user_id`, `title`, `body`, `last_activity`, `create_date`) VALUES
(1, 1, 3, 'hello world', '<h1>Search Results</h1>\r\n\r\n<h2>Web results</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a href=\"https://www.google.com/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=web&amp;cd=&amp;ved=2ahUKEwjl5cP13_bpAhVt7nMBHVEsCqkQFjAAegQIAxAB&amp;url=https%3A%2F%2Fwww.baeldung.com%2Fspring-mvc-session-attributes&amp;usg=AOvVaw3IXtgT6jYqnv-p_A7rXGfm\" target=\"_blank\">Session Attributes in Spring MVC | Baeldung</a></h3>\r\n\r\n<p><a href=\"https://www.google.com/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=web&amp;cd=&amp;ved=2ahUKEwjl5cP13_bpAhVt7nMBHVEsCqkQFjAAegQIAxAB&amp;url=https%3A%2F%2Fwww.baeldung.com%2Fspring-mvc-session-attributes&amp;usg=AOvVaw3IXtgT6jYqnv-p_A7rXGfm\" target=\"_blank\"><cite>www.baeldung.com &rsaquo; spring-mvc-session-attributes</cite></a></p>\r\n\r\n<p>Mar 21, 2020 - Explore the different ways to store <em>attributes</em> in a <em>session</em> with <em>Spring MVC</em>. ... We&#39;ll use <em>Spring Boot</em> starters to bootstrap our project and bring in all necessary ... MvcResult result = mockMvc.perform(<em>get</em>( &quot;/scopedproxy/form&quot; )).</p>\r\n', '2020-06-10 13:23:45', '2020-06-10 13:23:45'),
(2, 2, 3, 'What is Java and why do I need it?', '<p><em>Java</em> is a programming language and computing platform first released by Sun Microsystems in 1995. ... <em>Java</em> is fast, secure, and reliable. From laptops to datacenters, game consoles to scientific supercomputers, cell phones to the Internet, <em>Java</em> is everywhere!</p>\r\n', '2020-06-10 14:25:09', '2020-06-10 14:25:09'),
(3, 2, 3, 'Display Current Date', '<pre>\r\n<code>import java.time.LocalTime; // import the LocalTime class\r\n\r\npublic class MyClass {\r\n  public static void main(String[] args) {\r\n    LocalTime myObj = LocalTime.now();\r\n    System.out.println(myObj);\r\n  }\r\n}\r\n</code></pre>\r\n', '2020-06-10 18:38:57', '2020-06-10 18:38:57'),
(4, 1, 3, 'JSTL Format Tag fmt:parseDate Example', '<p><cite><a href=\"https://www.codejava.net/nam-ha-minh\" target=\"_blank\">Nam Ha Minh</a></cite> is certified Java programmer (SCJP and SCWCD). He started programming with Java in the time of Java 1.4 and has been falling in love with Java since then. Make friend with him on <a href=\"https://www.facebook.com/namjavaprogrammer\" target=\"_blank\">Facebook</a> and watch <a href=\"https://www.youtube.com/codejava?utm_source=codejava&amp;utm_campaign=aboutnamhm\" target=\"_blank\">his Java videos</a> you YouTube.v</p>\r\n', '2020-06-10 19:48:26', '2020-06-10 19:48:26'),
(5, 1, 4, 'What is Java and why do I need it?', '<p>hi this is manick post</p>\r\n', '2020-06-14 20:08:56', '2020-06-14 20:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `avatar` varchar(20) NOT NULL,
  `about` text NOT NULL,
  `last_activity` datetime NOT NULL DEFAULT current_timestamp(),
  `join_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `name`, `username`, `password`, `email`, `avatar`, `about`, `last_activity`, `join_date`) VALUES
(1, 'Nileesh', 'nileshj07', '123456', 'Nj@gmail.com', 'hello', 'bfhhyjk,j,jmndhtjki.', '2020-06-07 18:13:23', '2020-06-07 18:13:23'),
(2, 'Thomas', 'tomcat08', '123456', 'tho@gmail.com', 'up.png', 'hhgjklilkjrjfgjfkhk', '2020-06-07 19:20:13', '2020-06-07 19:20:13'),
(3, 'Rahul', 'nilesh077', '4QrcOUm6Wau+VuBX8g+IPg==', 'nj078@gmail.com', '11.png', 'hello', '2020-06-08 23:17:00', '2020-06-08 23:17:00'),
(4, 'manick', 'nick07', '4QrcOUm6Wau+VuBX8g+IPg==', 'mk@gmail.com', 'up down.jpg', 'ghhj', '2020-06-09 16:07:53', '2020-06-09 16:07:53'),
(5, 'Thomas', 'tomcat77', '4QrcOUm6Wau+VuBX8g+IPg==', 'tom@gmail.com', 'down.jpg', 'cv', '2020-06-09 16:11:25', '2020-06-09 16:11:25'),
(6, 'Venkat', 'venkat15', '4QrcOUm6Wau+VuBX8g+IPg==', 'vj@gmail.com', 'down.jpg', '1adf', '2020-06-09 16:15:36', '2020-06-09 16:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `vote_table`
--

CREATE TABLE `vote_table` (
  `vote_id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `reply_id` int(4) NOT NULL,
  `vote_click` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vote_table`
--

INSERT INTO `vote_table` (`vote_id`, `user_id`, `reply_id`, `vote_click`) VALUES
(77, 4, 18, 1),
(78, 3, 18, 0),
(79, 3, 21, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_table`
--
ALTER TABLE `categories_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `replies_table`
--
ALTER TABLE `replies_table`
  ADD PRIMARY KEY (`rep_id`),
  ADD KEY `users_id` (`rep_user_id`),
  ADD KEY `topics_id` (`topic_id`);

--
-- Indexes for table `spring_session`
--
ALTER TABLE `spring_session`
  ADD PRIMARY KEY (`PRIMARY_ID`),
  ADD UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  ADD KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  ADD KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`);

--
-- Indexes for table `spring_session_attributes`
--
ALTER TABLE `spring_session_attributes`
  ADD PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`);

--
-- Indexes for table `topic_table`
--
ALTER TABLE `topic_table`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `top_cat` (`category_id`),
  ADD KEY `top_user` (`user_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vote_table`
--
ALTER TABLE `vote_table`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `reply_id` (`reply_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories_table`
--
ALTER TABLE `categories_table`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies_table`
--
ALTER TABLE `replies_table`
  MODIFY `rep_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `topic_table`
--
ALTER TABLE `topic_table`
  MODIFY `topic_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vote_table`
--
ALTER TABLE `vote_table`
  MODIFY `vote_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `replies_table`
--
ALTER TABLE `replies_table`
  ADD CONSTRAINT `topics_id` FOREIGN KEY (`topic_id`) REFERENCES `topic_table` (`topic_id`),
  ADD CONSTRAINT `users_id` FOREIGN KEY (`rep_user_id`) REFERENCES `user_table` (`user_id`);

--
-- Constraints for table `spring_session_attributes`
--
ALTER TABLE `spring_session_attributes`
  ADD CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE;

--
-- Constraints for table `topic_table`
--
ALTER TABLE `topic_table`
  ADD CONSTRAINT `top_cat` FOREIGN KEY (`category_id`) REFERENCES `categories_table` (`category_id`),
  ADD CONSTRAINT `top_user` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);

--
-- Constraints for table `vote_table`
--
ALTER TABLE `vote_table`
  ADD CONSTRAINT `reply_id` FOREIGN KEY (`reply_id`) REFERENCES `replies_table` (`rep_id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
