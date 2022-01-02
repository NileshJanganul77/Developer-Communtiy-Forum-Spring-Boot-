-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 02:15 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

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
(2, 'Java', 'Java is a high-level programming language developed by Sun Microsystems. ... Instead, Java programs are interpreted by the Java Virtual Machine, or JVM, which runs on multiple platforms. This means all Java programs are multiplatform and can run on different platforms, including Macintosh, Windows, and Unix computers.'),
(3, 'Kotlin', 'Kotlin is new programming language\r\n             ');

-- --------------------------------------------------------

--
-- Table structure for table `replies_table`
--

CREATE TABLE `replies_table` (
  `rep_id` int(4) NOT NULL,
  `rep_user_id` int(4) NOT NULL,
  `topic_id` int(4) NOT NULL,
  `body` text NOT NULL,
  `vote` int(4) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notification` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replies_table`
--

INSERT INTO `replies_table` (`rep_id`, `rep_user_id`, `topic_id`, `body`, `vote`, `create_date`, `notification`, `status`) VALUES
(18, 4, 1, '<p>this is manick</p>\r\n', 2, '2020-06-13 14:36:17', 0, 1),
(19, 3, 1, '<p>Hello I Love Java and I want to be a Java Programmer</p>\r\n\r\n<p>The First Program is hello world</p>\r\n', 1, '2020-06-13 21:29:08', 0, 1),
(20, 4, 1, '<p>hi nilish thi is manick</p>\r\n', 0, '2020-06-14 20:08:26', 0, 1),
(21, 4, 5, '<p>my replay</p>\r\n', 1, '2020-06-14 20:09:16', 0, 1),
(22, 3, 1, '<p>yes</p>\r\n', 0, '2020-06-15 14:25:07', 0, 0),
(23, 3, 4, '<p>fggffgg</p>\r\n', 1, '2020-06-15 16:59:08', 0, 1),
(24, 3, 2, '<p>hello this is nilesh</p>\r\n', 0, '2020-06-17 21:59:22', 0, 1);

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
('695affbe-6948-4981-9d23-a814c2bc6551', 'a9aee62d-60a8-4c97-9e29-560cc9bd01fd', 1593000309458, 1593000560710, 1800, 1593002360710, NULL);

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
('0abc0738-14d9-4ce7-8130-66376c1dfbd0', 'sessionusername', 0xaced00057400096e696c657368303737),
('bdb52cbc-7e07-41ec-b15e-2176c779169f', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('bdb52cbc-7e07-41ec-b15e-2176c779169f', 'sessionusername', 0xaced00057400096e696c657368303737),
('58742c2f-251c-4016-8d98-0ac0c4a72fb1', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('58742c2f-251c-4016-8d98-0ac0c4a72fb1', 'sessionusername', 0xaced00057400096e696c657368303737),
('063af3ed-474c-42cc-9a53-e5d24a292d6e', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('063af3ed-474c-42cc-9a53-e5d24a292d6e', 'sessionusername', 0xaced00057400096e696c657368303737),
('8ae3e65c-b939-46e2-a412-c99597067127', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('8ae3e65c-b939-46e2-a412-c99597067127', 'sessionusername', 0xaced00057400096e696c657368303737),
('9593eae0-7f1c-41ba-ad98-f1236460d8eb', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('9593eae0-7f1c-41ba-ad98-f1236460d8eb', 'sessionusername', 0xaced00057400096e696c657368303737),
('768be819-5a5d-4bdf-871d-c3813d2ec6da', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('768be819-5a5d-4bdf-871d-c3813d2ec6da', 'sessionusername', 0xaced00057400096e696c657368303737),
('501e9d48-9a9a-41da-9ac5-1069db1868cc', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('501e9d48-9a9a-41da-9ac5-1069db1868cc', 'sessionusername', 0xaced00057400096e696c657368303737),
('29468d6b-51ec-47f1-ad16-94f83bc77a1e', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('29468d6b-51ec-47f1-ad16-94f83bc77a1e', 'sessionusername', 0xaced00057400096e696c657368303737),
('efb877c6-f850-4288-a52e-0e8746712795', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('efb877c6-f850-4288-a52e-0e8746712795', 'sessionusername', 0xaced00057400096e696c657368303737),
('80d1e561-1ff7-487b-8e9e-0e9c08ece39e', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('80d1e561-1ff7-487b-8e9e-0e9c08ece39e', 'sessionusername', 0xaced00057400096e696c657368303737),
('af0801de-6d17-4a76-8ef9-a70f68d5ad0b', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('af0801de-6d17-4a76-8ef9-a70f68d5ad0b', 'sessionusername', 0xaced00057400096e696c657368303737),
('a191fbc7-d7fc-4176-af5b-b133a87f0859', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('a191fbc7-d7fc-4176-af5b-b133a87f0859', 'sessionusername', 0xaced00057400096e696c657368303737),
('adb21efe-6f72-4315-abf1-4232fd51e090', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('adb21efe-6f72-4315-abf1-4232fd51e090', 'sessionusername', 0xaced00057400096e696c657368303737),
('dba2fe8c-5ea1-4835-ba0c-79d64e57d8cb', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('dba2fe8c-5ea1-4835-ba0c-79d64e57d8cb', 'sessionusername', 0xaced00057400096e696c657368303737),
('20aabb2d-adcf-4f19-bdf4-cd4ac4615942', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('20aabb2d-adcf-4f19-bdf4-cd4ac4615942', 'sessionusername', 0xaced00057400096e696c657368303737),
('79c0674f-2cc2-4df6-b88a-f747c5696e63', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('79c0674f-2cc2-4df6-b88a-f747c5696e63', 'sessionusername', 0xaced00057400096e696c657368303737),
('49cdb217-fced-4cac-ac96-226939d99dae', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('49cdb217-fced-4cac-ac96-226939d99dae', 'sessionusername', 0xaced00057400096e696c657368303737),
('7e63dd58-dc37-4662-9549-aebd953336e1', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000004),
('7e63dd58-dc37-4662-9549-aebd953336e1', 'sessionusername', 0xaced00057400066e69636b3037),
('b6916e98-84e2-4b0c-b9a6-01e1ff56346f', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('b6916e98-84e2-4b0c-b9a6-01e1ff56346f', 'sessionusername', 0xaced00057400096e696c657368303737),
('9ba66cda-8b22-40a9-9938-51badfc78ff9', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('9ba66cda-8b22-40a9-9938-51badfc78ff9', 'sessionusername', 0xaced00057400096e696c657368303737),
('b9f15f85-5120-40ff-9d96-9e4b9f263213', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('b9f15f85-5120-40ff-9d96-9e4b9f263213', 'sessionusername', 0xaced00057400096e696c657368303737),
('011fc30d-3f62-418f-a0ba-cebf998fd779', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('011fc30d-3f62-418f-a0ba-cebf998fd779', 'sessionusername', 0xaced00057400096e696c657368303737),
('040bcc39-60dc-4266-9730-ab3e56fbf2c0', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('040bcc39-60dc-4266-9730-ab3e56fbf2c0', 'sessionusername', 0xaced00057400096e696c657368303737),
('89313d8e-5538-489a-8a21-e1fd88f2a2c6', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('89313d8e-5538-489a-8a21-e1fd88f2a2c6', 'sessionusername', 0xaced00057400096e696c657368303737),
('bb72302f-6d26-4caa-bb67-809642903de7', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('bb72302f-6d26-4caa-bb67-809642903de7', 'sessionusername', 0xaced00057400096e696c657368303737),
('1547f4e2-a8f2-488e-877a-0a0087dbd540', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('1547f4e2-a8f2-488e-877a-0a0087dbd540', 'sessionusername', 0xaced00057400096e696c657368303737),
('734afc74-718e-46b9-9cfc-4eef881caaf2', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('734afc74-718e-46b9-9cfc-4eef881caaf2', 'sessionusername', 0xaced00057400096e696c657368303737),
('efba2480-fdc8-4f95-8abc-ef6058de3c21', 'flag', 0xaced000574000131),
('efba2480-fdc8-4f95-8abc-ef6058de3c21', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('efba2480-fdc8-4f95-8abc-ef6058de3c21', 'sessionusername', 0xaced00057400096e696c657368303737),
('9134fdf4-9762-4277-8746-74f530e493f5', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('9134fdf4-9762-4277-8746-74f530e493f5', 'sessionusername', 0xaced00057400096e696c657368303737),
('0d665db7-5722-4b88-9e71-43b3cbb1951e', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('0d665db7-5722-4b88-9e71-43b3cbb1951e', 'sessionusername', 0xaced00057400096e696c657368303737),
('bd48e59b-402f-42a5-8051-8c0105b801d5', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('bd48e59b-402f-42a5-8051-8c0105b801d5', 'sessionusername', 0xaced00057400096e696c657368303737),
('4846e025-ae37-4f1a-9cff-087d8c1bf4de', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('4846e025-ae37-4f1a-9cff-087d8c1bf4de', 'sessionusername', 0xaced00057400096e696c657368303737),
('9e0cb845-3291-468a-ab6f-715a66beb981', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000007),
('9e0cb845-3291-468a-ab6f-715a66beb981', 'sessionusername', 0xaced00057400066d696b653737),
('645f462a-349e-4fa3-972c-0dee1ca3b3a1', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('645f462a-349e-4fa3-972c-0dee1ca3b3a1', 'sessionusername', 0xaced00057400096e696c657368303737),
('7fb2f036-9ba9-47f8-8ce7-02cc781ed867', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('7fb2f036-9ba9-47f8-8ce7-02cc781ed867', 'sessionusername', 0xaced00057400096e696c657368303737),
('8bbf0911-15c3-4f0a-851f-9eff2e3ed1ff', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('8bbf0911-15c3-4f0a-851f-9eff2e3ed1ff', 'sessionusername', 0xaced00057400096e696c657368303737),
('8ffe131c-c3bc-4d23-b070-ee289d506fa1', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('8ffe131c-c3bc-4d23-b070-ee289d506fa1', 'sessionusername', 0xaced00057400096e696c657368303737),
('6a74615c-14ab-40b3-ad7f-630b0cdc09ac', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('6a74615c-14ab-40b3-ad7f-630b0cdc09ac', 'sessionusername', 0xaced00057400096e696c657368303737),
('cf10bf23-8c68-4818-949a-ee0fa662aa3f', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000003),
('cf10bf23-8c68-4818-949a-ee0fa662aa3f', 'sessionusername', 0xaced00057400096e696c657368303737);

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
  `last_activity` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic_table`
--

INSERT INTO `topic_table` (`topic_id`, `category_id`, `user_id`, `title`, `body`, `last_activity`, `create_date`, `status`) VALUES
(1, 2, 3, 'Hello World', '<p>Hello World is the First program in Java world...!!!</p>\r\n', '2020-06-10 13:23:45', '2020-06-10 13:23:45', 1),
(2, 2, 3, 'What is Java and why do I need it?', '<p><em>Java</em> is a programming language and computing platform first released by Sun Microsystems in 1995. ... <em>Java</em> is fast, secure, and reliable. From laptops to datacenters, game consoles to scientific supercomputers, cell phones to the Internet, <em>Java</em> is everywhere!</p>\r\n', '2020-06-10 14:25:09', '2020-06-10 14:25:09', 1),
(3, 2, 3, 'Display Current Date', '<pre>\r\n<code>import java.time.LocalTime; // import the LocalTime class\r\n\r\npublic class MyClass {\r\n  public static void main(String[] args) {\r\n    LocalTime myObj = LocalTime.now();\r\n    System.out.println(myObj);\r\n  }\r\n}\r\n</code></pre>\r\n', '2020-06-10 18:38:57', '2020-06-10 18:38:57', 1),
(4, 1, 3, 'JSTL Format Tag fmt:parseDate ', '<p><cite>Parse Date is used for LocalDateTime </cite></p>\r\n\r\n<p><cite>import java.util.LocalDateTime;</cite></p>\r\n', '2020-06-10 19:48:26', '2020-06-10 19:48:26', 1),
(5, 1, 4, 'What is Java and why do I need it?', '<p>hi this is manick post</p>\r\n', '2020-06-14 20:08:56', '2020-06-14 20:08:56', 1),
(6, 3, 7, 'what is Kotlin?', '<p>Kotlin is new programming language for Android and iOS</p>\r\n', '2020-06-18 14:58:22', '2020-06-18 14:58:22', 1);

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
  `last_activity` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `name`, `username`, `password`, `email`, `avatar`, `about`, `last_activity`, `join_date`) VALUES
(1, 'Nileesh', 'nileshj07', '234567', 'Nj@gmail.com', 'hello', 'helloworld', '2020-06-07 18:13:23', '2020-06-07 18:13:23'),
(2, 'Thomas', 'tomcat08', '123456', 'tho@gmail.com', 'up.png', 'hhgjklilkjrjfgjfkhk', '2020-06-07 19:20:13', '2020-06-07 19:20:13'),
(3, 'Rahul', 'nilesh077', 'UI30yy9Nj4BRklYljPuXXw==', 'nj078@gmail.com', '11.png', ' hello world', '2020-06-08 23:17:00', '2020-06-08 23:17:00'),
(4, 'manick', 'nick07', '1B2M2Y8AsgTpgAmY7PhCfg==', 'mk@gmail.com', 'avatar.jpg', 'Hello I am Manick', '2020-06-09 16:07:53', '2020-06-09 16:07:53'),
(5, 'Thomas', 'tomcat77', '4QrcOUm6Wau+VuBX8g+IPg==', 'tom@gmail.com', 'down.jpg', 'cv', '2020-06-09 16:11:25', '2020-06-09 16:11:25'),
(6, 'Venkat', 'venkat15', '4QrcOUm6Wau+VuBX8g+IPg==', 'vj@gmail.com', 'down.jpg', '1adf', '2020-06-09 16:15:36', '2020-06-09 16:15:36'),
(7, 'Michael Scofield', 'mike77', '4QrcOUm6Wau+VuBX8g+IPg==', 'mike@gmail.com', 'down.jpg', 'Prison Break', '2020-06-18 14:56:02', '2020-06-18 14:56:02');

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
(78, 3, 18, 1),
(79, 3, 21, 1),
(80, 3, 19, 1),
(81, 3, 23, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `rep_usr_id` (`rep_user_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `spring_session`
--
ALTER TABLE `spring_session`
  ADD PRIMARY KEY (`PRIMARY_ID`),
  ADD UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  ADD KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  ADD KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`);

--
-- Indexes for table `topic_table`
--
ALTER TABLE `topic_table`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `usr_id` (`user_id`),
  ADD KEY `cate_id` (`category_id`);

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
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rep_id` (`reply_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories_table`
--
ALTER TABLE `categories_table`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `replies_table`
--
ALTER TABLE `replies_table`
  MODIFY `rep_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `topic_table`
--
ALTER TABLE `topic_table`
  MODIFY `topic_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vote_table`
--
ALTER TABLE `vote_table`
  MODIFY `vote_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `replies_table`
--
ALTER TABLE `replies_table`
  ADD CONSTRAINT `rep_usr_id` FOREIGN KEY (`rep_user_id`) REFERENCES `user_table` (`user_id`),
  ADD CONSTRAINT `topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic_table` (`topic_id`);

--
-- Constraints for table `topic_table`
--
ALTER TABLE `topic_table`
  ADD CONSTRAINT `cate_id` FOREIGN KEY (`category_id`) REFERENCES `categories_table` (`category_id`),
  ADD CONSTRAINT `usr_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);

--
-- Constraints for table `vote_table`
--
ALTER TABLE `vote_table`
  ADD CONSTRAINT `rep_id` FOREIGN KEY (`reply_id`) REFERENCES `replies_table` (`rep_id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
