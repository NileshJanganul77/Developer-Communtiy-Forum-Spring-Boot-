-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 08:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
(5, 'Java', 'Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.'),
(6, 'PHP', 'PHP is a general-purpose scripting language especially suited to web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994; the PHP reference implementation is now produced by The PHP Group.      \r\n             '),
(7, 'Python', 'Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.      \r\n             '),
(8, 'Android', 'Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets');

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
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replies_table`
--

INSERT INTO `replies_table` (`rep_id`, `rep_user_id`, `topic_id`, `body`, `vote`, `create_date`, `notification`, `status`) VALUES
(35, 10, 19, '<p>Call dict with no parameters</p>\r\n\r\n<p><strong>new_dict = dict()</strong></p>\r\n\r\n<p>or simply write</p>\r\n\r\n<p><strong>new_dict = {}</strong></p>\r\n', -1, '2020-10-20 11:49:57', 0, 1),
(36, 11, 19, '<p>You can do this</p>\r\n\r\n<p><strong>x = {}<br />\r\nx[&#39;a&#39;] = 1</strong></p>\r\n', 3, '2020-10-20 11:50:55', 0, 1),
(37, 12, 12, '<p>To address the confusion about why the UPDATE statement still doesn&#39;t work, despite fixing the syntax error, allow me to explain in more detail (far easier to do this in the answer, rather than in comments).</p>\r\n\r\n<p>The&nbsp;<code>?</code>&nbsp;character in your SQL String is a placeholder for a value that you&#39;ll set with one of the various&nbsp;<code>set_()</code>&nbsp;methods (in your case, only ever&nbsp;<code>setString()</code>. Each placeholder is numbered with an index starting from 1 - the first&nbsp;<code>?</code>&nbsp;that appears in your string represents index 1, the second represents index 2, etc.</p>\r\n\r\n<p>Your SQL string looks like this:</p>\r\n\r\n<pre>\r\n<strong><code>UPDATE item SET Name = ?, // 1\r\nSize = ?, // 2\r\nPrice = ? // 3\r\nWHERE ItemCode = ? // 4\r\n</code></strong></pre>\r\n', 2, '2020-10-20 11:52:28', 0, 1),
(38, 12, 13, '<p>Hi Prashant,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Welcome to Microsoft Community. Your interest in Windows 10 is much appreciated.&nbsp;</p>\r\n\r\n<p>I can understand how frustrating it could be when things go unusual. I will certainly help you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We suggest you to follow the below methods and check if it helps:</p>\r\n\r\n<p><strong>Method:&nbsp;</strong></p>\r\n\r\n<p><strong>Disable the Proxy Settings.</strong>&nbsp;</p>\r\n\r\n<p>If this is the first time, you are trying to install Java on your Windows&nbsp;10 computer, then follow these steps to disable the proxy settings.</p>\r\n\r\n<p>1) Press &ldquo;Windows Logo&rdquo; + &ldquo;R&rdquo;, type &ldquo;<em><strong>inetcpl.cpl</strong></em>&rdquo; and press &ldquo;Enter&rdquo;.</p>\r\n\r\n<p>2) Click the &ldquo;Connections&rdquo; tab, and then click &ldquo;LAN settings&rdquo;.</p>\r\n\r\n<p>3)&nbsp;Uncheck the &ldquo;Use a proxy server for your LAN&rdquo; check box.</p>\r\n\r\n<p>4) Click &ldquo;Ok&rdquo;.</p>\r\n\r\n<p>After disabling the proxy settings, try downloading and installing Java and check if that help.</p>\r\n', 2, '2020-10-20 11:54:03', 0, 1),
(39, 12, 16, '<p>You&#39;re missing the&nbsp;<code>openssl-devel</code>&nbsp;and&nbsp;<code>libpcap-devel</code>&nbsp;packages; use&nbsp;<code>yum</code>&nbsp;to install them. Also, remove&nbsp;<strong><code>build/temp.linux-i686-2.6/</code></strong>&nbsp;before trying again.</p>\r\n', 1, '2020-10-20 11:55:49', 0, 1),
(40, 11, 17, '<p>o build/lib.linux-i686-2.6/cpyrit/_cpyrit_cpu.so running build_scripts creating build/scripts-2.6 copying and adjusting pyrit -&gt; <strong>build/scripts-2.6 changing mode of build/scripts-2.6/pyrit from 664 to 775</strong></p>\r\n', 2, '2020-10-20 11:57:36', 0, 1),
(41, 11, 18, '<p>&lt;PROJECT_ROOT&gt;\\app\\build.gradle is specific for app module.</p>\r\n\r\n<p>&lt;PROJECT_ROOT&gt;\\build.gradle is a &quot;Top-level build file&quot; where you can add configuration options common to all sub-projects/modules.</p>\r\n\r\n<p>If you use another module in your project, as a local library you would have another build.gradle file: &lt;PROJECT_ROOT&gt;\\module\\build.gradle</p>\r\n\r\n<p>For example in your top level file you can specify these common properties:</p>\r\n\r\n<p><strong>buildscript {<br />\r\n&nbsp; &nbsp; repositories {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; mavenCentral()<br />\r\n&nbsp; &nbsp; }</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; dependencies {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; classpath &#39;com.android.tools.build:gradle:1.3.0&#39;<br />\r\n&nbsp; &nbsp; }<br />\r\n}</strong></p>\r\n\r\n<p><strong>ext {<br />\r\n&nbsp; &nbsp; compileSdkVersion = 23<br />\r\n&nbsp; &nbsp; buildToolsVersion = &quot;23.0.1&quot;<br />\r\n}</strong><br />\r\n&nbsp;</p>\r\n', 2, '2020-10-20 11:59:04', 0, 1),
(42, 11, 15, '<h3>your mail.php on config you declare host as smtp.mailgun.org and port is 587 while on env is different. you need to change your mail.php to</h3>\r\n\r\n<p><strong>&#39;host&#39; =&gt; env(&#39;MAIL_HOST&#39;, &#39;mailtrap.io&#39;),</strong></p>\r\n\r\n<p><strong>&#39;port&#39; =&gt; env(&#39;MAIL_PORT&#39;, 2525),</strong></p>\r\n\r\n<p>if you desire to use mailtrap.Then run</p>\r\n\r\n<p><strong>php artisan config:cache</strong></p>\r\n', 2, '2020-10-20 12:01:12', 0, 1);

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
('69ba4b0c-0fdd-4d52-a545-9081cccb08c9', '74d9ef52-2600-4541-bbd6-d081e2ef342e', 1603175700873, 1603175701122, 1800, 1603177501122, NULL),
('8d7db9b1-fe54-42f3-ae37-6f1fa5ae7d46', '815d27bc-8442-4907-974e-05aa1f723a50', 1603174762359, 1603176016761, 1800, 1603177816761, NULL),
('cddef28d-c802-4c5c-a0e4-e2ab28b91cc3', '5bfa88dd-6537-4eac-9577-98d0d160e7fd', 1603175941736, 1603175972568, 1800, 1603177772568, NULL);

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
('cf10bf23-8c68-4818-949a-ee0fa662aa3f', 'sessionusername', 0xaced00057400096e696c657368303737),
('ae97f8b6-8514-4173-9ae2-63846bfb1d25', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('ae97f8b6-8514-4173-9ae2-63846bfb1d25', 'sessionusername', 0xaced000574000a7072617368616e743037),
('d8c0f874-c464-4a5f-9df0-62c15f936682', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('d8c0f874-c464-4a5f-9df0-62c15f936682', 'sessionusername', 0xaced000574000a7072617368616e743037),
('8ce37eb0-070e-4882-ab9d-49a4e3630b90', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('8ce37eb0-070e-4882-ab9d-49a4e3630b90', 'sessionusername', 0xaced000574000a7072617368616e743037),
('7aadeef8-d14a-4833-b2d5-c0c41e632db1', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000009),
('7aadeef8-d14a-4833-b2d5-c0c41e632db1', 'sessionusername', 0xaced000574000861726f6d616c3233),
('c511662c-511b-44b8-85ca-a7d7854250a9', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('c511662c-511b-44b8-85ca-a7d7854250a9', 'sessionusername', 0xaced000574000a7072617368616e743037),
('de12f51d-1531-4d8f-a158-5ab91d6b41c4', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000009),
('de12f51d-1531-4d8f-a158-5ab91d6b41c4', 'sessionusername', 0xaced000574000861726f6d616c3233),
('ca401636-4048-4acf-a393-38924e8aa72b', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000009),
('ca401636-4048-4acf-a393-38924e8aa72b', 'sessionusername', 0xaced000574000861726f6d616c3233),
('4fcdf819-b895-4945-8e51-d48ab9085a3e', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000009),
('4fcdf819-b895-4945-8e51-d48ab9085a3e', 'sessionusername', 0xaced000574000861726f6d616c3233),
('8a99488a-86a5-4b35-9474-803b87ec8584', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('8a99488a-86a5-4b35-9474-803b87ec8584', 'sessionusername', 0xaced000574000a7072617368616e743037),
('24dbeeec-024a-481b-8a11-3d7504b1efb1', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('24dbeeec-024a-481b-8a11-3d7504b1efb1', 'sessionusername', 0xaced000574000a7072617368616e743037),
('f8e63b58-5c05-4ece-a4b9-dfaa11464646', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('f8e63b58-5c05-4ece-a4b9-dfaa11464646', 'sessionusername', 0xaced000574000a7072617368616e743037),
('e2115a44-063c-41a6-ab55-905c007f3990', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('e2115a44-063c-41a6-ab55-905c007f3990', 'sessionusername', 0xaced000574000a7072617368616e743037),
('538479a2-3528-4c50-af97-220f5e5657a6', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('538479a2-3528-4c50-af97-220f5e5657a6', 'sessionusername', 0xaced000574000a7072617368616e743037),
('27897343-62c8-472d-be5f-446f0e447051', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('27897343-62c8-472d-be5f-446f0e447051', 'sessionusername', 0xaced000574000a7072617368616e743037),
('d0afcbc4-bd9a-4c9d-b65c-cde103e30193', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('d0afcbc4-bd9a-4c9d-b65c-cde103e30193', 'sessionusername', 0xaced000574000a7072617368616e743037),
('2868b74e-0736-4adb-b91c-f12c6607b79d', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000006),
('2868b74e-0736-4adb-b91c-f12c6607b79d', 'sessionusername', 0xaced000574000876656e6b61743135),
('039dc60d-12d8-4cb2-9ea5-867b66ef8ccf', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000006),
('039dc60d-12d8-4cb2-9ea5-867b66ef8ccf', 'sessionusername', 0xaced000574000876656e6b61743135),
('e863c46a-bedb-482e-84b1-2a8d76116ac2', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('e863c46a-bedb-482e-84b1-2a8d76116ac2', 'sessionusername', 0xaced000574000a7072617368616e743037),
('545ab2f7-9bec-489d-ae46-1fd16a4ebedc', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('545ab2f7-9bec-489d-ae46-1fd16a4ebedc', 'sessionusername', 0xaced000574000a7072617368616e743037),
('bc4cf74f-1c40-407d-8bfe-0cd0a1e49435', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000006),
('bc4cf74f-1c40-407d-8bfe-0cd0a1e49435', 'sessionusername', 0xaced000574000876656e6b61743135),
('2f585ab9-db3a-48cd-b73f-e14dd6494762', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000008),
('2f585ab9-db3a-48cd-b73f-e14dd6494762', 'sessionusername', 0xaced000574000a7072617368616e743037),
('770401b3-fbc1-4761-aa13-27dd35952867', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000006),
('770401b3-fbc1-4761-aa13-27dd35952867', 'sessionusername', 0xaced000574000876656e6b61743135),
('44ae43a5-6180-483d-afbb-65d1c9cf1201', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000a),
('44ae43a5-6180-483d-afbb-65d1c9cf1201', 'sessionusername', 0xaced000574000961726f6d616c313233),
('b407a28c-bfa6-4d7f-9590-1db4fadc1def', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000b),
('b407a28c-bfa6-4d7f-9590-1db4fadc1def', 'sessionusername', 0xaced000574000a7072617368616e743037),
('b3fe203e-07df-4416-8373-861e30fd602a', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000c),
('b3fe203e-07df-4416-8373-861e30fd602a', 'sessionusername', 0xaced000574000763617468653032),
('fcfb9350-a205-43e2-9146-3494dc871e50', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000a),
('fcfb9350-a205-43e2-9146-3494dc871e50', 'sessionusername', 0xaced000574000961726f6d616c313233),
('e2afcfea-d228-4090-8106-fb4e0700351f', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000c),
('e2afcfea-d228-4090-8106-fb4e0700351f', 'sessionusername', 0xaced000574000763617468653032),
('8d7db9b1-fe54-42f3-ae37-6f1fa5ae7d46', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000a),
('8d7db9b1-fe54-42f3-ae37-6f1fa5ae7d46', 'sessionusername', 0xaced000574000961726f6d616c313233),
('966b91e9-3e31-43e8-914d-effc2a30e185', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000b),
('966b91e9-3e31-43e8-914d-effc2a30e185', 'sessionusername', 0xaced000574000a7072617368616e743037),
('a8da18ab-7e1f-4e70-be45-44492ccad1c0', 'sessionid', 0xaced0005737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000a),
('a8da18ab-7e1f-4e70-be45-44492ccad1c0', 'sessionusername', 0xaced000574000961726f6d616c313233);

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
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic_table`
--

INSERT INTO `topic_table` (`topic_id`, `category_id`, `user_id`, `title`, `body`, `last_activity`, `create_date`, `status`) VALUES
(12, 5, 11, 'update statement in Java', '<p>I have the following code to update a record. The code compiles however it skips everything in the try statement and displays the error message in the catch statement. I am not sure what it is that I am missing as it doesn&#39;t display any sort of syntax error.</p>\r\n\r\n<pre>\r\n<strong><code>try {           \r\n    PreparedStatement st = db.con.prepareStatement(&quot;UPDATE item SET Name = ?, Size = ?, Price = ?, WHERE ItemCode = ?&quot;);\r\n    st.setString(1, textArea_Code.getText());\r\n    st.setString(2, textArea_name.getText());\r\n    st.setString(3, textArea_size.getText());\r\n    st.setString(4, textArea_price.getText());\r\n    st.executeUpdate();\r\n\r\n    JOptionPane.showMessageDialog(frame, &quot;Updated&quot;);    \r\n\r\n} catch (SQLException e ) {\r\n    JOptionPane.showMessageDialog(frame, &quot;update not successful&quot;);      \r\n}</code></strong></pre>\r\n', '2020-10-20 11:20:32', '2020-10-20 11:20:32', 1),
(13, 5, 11, 'Unable to install JAVA on Windows 10', '<p>I just installed Windows 10 (September 2015).&nbsp; I tried to install Java and got the message from Java that Java is not compatible with Windows 10. What gives?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;In Windows 10, the Edge browser does not support plug-ins and therefore will not run Java. Switch to a different browser (Firefox or Internet Explorer 11) to run the Java plug-in.&nbsp;<a href=\"http://www.java.com/en/download/faq/win10_faq.xml\" target=\"_blank\">More info&quot;</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Very FRUSTRATED!</p>\r\n', '2020-10-20 11:22:24', '2020-10-20 11:22:24', 1),
(14, 6, 11, 'PHP auto escapes client inputs without asking', '<p>When just using this line of code, assuming request body is&nbsp;<em>abcd\\7zer</em>:</p>\r\n\r\n<pre>\r\n<strong><code>&lt;?php echo var_export(file_get_contents(&#39;php://input&#39;));\r\n</code></strong></pre>\r\n\r\n<p>PHP returns the request body with the backslash escaped, ie.&nbsp;<em>abcd\\\\7zer</em>. Same behavior if using $_POST data.</p>\r\n\r\n<p>It&#39;s a real problem for password handling. How can I disable this behavior?</p>\r\n\r\n<p>PHP Version: 7.3.19 Of course no magic quotes. Behind Apache on Debian, just basic modes enabled.</p>\r\n', '2020-10-20 11:26:18', '2020-10-20 11:26:18', 1),
(15, 6, 12, 'getting error “Expected response code 250 but got code ”530\",', '<p>I am working on swiftmailer php library . actually am facing error like this -&gt;&quot;Expected response code 250 but got code &quot;530&quot;, with message &quot;530 5.7.0 Must issue a STARTTLS command first. k127sm385513pgk.10 - gsmtp&quot;. i am not getting what is the reason behind that. can i get any guidance related to this issue. you can see my code below.</p>\r\n\r\n<p><strong>&nbsp;try</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; {</strong></p>\r\n\r\n<p><strong>$transport = (new Swift_SmtpTransport(&#39;smtp.gmail.com&#39;, 587))</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; -&gt;setUsername(&#39;my@gmail.com&#39;)</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; -&gt;setPassword(&#39;*****&#39;);</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; $transport-&gt;setStreamOptions([<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &#39;ssl&#39; =&gt; [&#39;allow_self_signed&#39; =&gt; true, &#39;verify_peer&#39; =&gt; false, &#39;verify_peer_name&#39; =&gt; false]<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; ]);</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; $mailer = new Swift_Mailer($transport);</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; $message = new Swift_Message();</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; $message-&gt;setSubject(&quot;Notification&quot;);</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; $message-&gt;setFrom([&#39;my@gmail.com&#39; =&gt; &quot;known&quot;]);</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; $message-&gt;setTo([&#39;reciepent@gmail.com&#39; =&gt; &quot;known&quot;]);</strong></p>\r\n\r\n<p><br />\r\n<strong>&nbsp; &nbsp; $content=&quot;hi&quot;;<br />\r\n&nbsp; &nbsp; $message-&gt;setBody($content);</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; $result = $mailer-&gt;send($message);<br />\r\n}</strong></p>\r\n\r\n<p><strong>catch (Exception $e)&nbsp;<br />\r\n{ &nbsp; &nbsp;&nbsp;<br />\r\necho $e-&gt;getMessage(); &nbsp;<br />\r\n}</strong></p>\r\n', '2020-10-20 11:29:49', '2020-10-20 11:29:49', 1),
(16, 7, 10, 'Python Install pyrit error, command gcc in CentOS', '<p>I don&#39;t can install , this all code in console don&#39;t work compiling !! s.o in centos 6 32 bits -- run and later , I have dependencies python with python-dev, tools, etc. But I don&#39;t know, if you lack another</p>\r\n\r\n<p>pyrit</p>\r\n\r\n<p>python setup.py build</p>\r\n\r\n<pre>\r\n<strong><code>svn: &#39;.&#39; is not a working copy\r\nrunning build\r\nrunning build_py\r\nrunning build_ext\r\nbuilding &#39;cpyrit._cpyrit_cpu&#39; extension\r\ngcc -pthread -fno-strict-aliasing -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i686 -mtune=atom -fasynchronous-unwind-tables -D_GNU_SOURCE -fPIC -fwrapv -DNDEBUG -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i686 -mtune=atom -fasynchronous-unwind-tables -D_GNU_SOURCE -fPIC -fwrapv -fPIC -I/usr/include/python2.6 -c cpyrit/_cpyrit_cpu.c -o build/temp.linux-i686-2.6/cpyrit/_cpyrit_cpu.o -Wall -fno-strict-aliasing -DVERSION=&quot;0.4.0&quot;\r\nAssembler messages:\r\nFatal error: can&#39;t create build/temp.linux-i686-2.6/cpyrit/_cpyrit_cpu.o: Permission denied\r\ncpyrit/_cpyrit_cpu.c:35:26: error: openssl/hmac.h: No such file or directory\r\ncpyrit/_cpyrit_cpu.c:36:25: error: openssl/sha.h: No such file or directory\r\ncpyrit/_cpyrit_cpu.c:37:18: error: pcap.h: No such file or directory\r\ncpyrit/_cpyrit_cpu.c:58: error: expected specifier-qualifier-list before &lsquo;SHA_CTX&rsquo;\r\ncpyrit/_cpyrit_cpu.c:98: error: expected specifier-qualifier-list before &lsquo;pcap_t&rsquo;\r\ncpyrit/_cpyrit_cpu.c:210: error: expected declaration specifiers or &lsquo;...&rsquo; before &lsquo;SHA_CTX&rsquo;\r\ncpyrit/_cpyrit_cpu.c: In function &lsquo;padlock_xsha1_prepare&rsquo;:\r\ncpyrit/_cpyrit_cpu.c:238: error: &lsquo;output&rsquo; undeclared (first use in this function)\r\ncpyrit/_cpyrit_cpu.c:238: error: (Each undeclared identifier is reported only once\r\ncpyrit/_cpyrit_cpu.c:238: error: for each function it appears in.)\r\ncpyrit/_cpyrit_cpu.c: At top level:\r\ncpyrit/_cpyrit_cpu.c:249: error: expected &lsquo;)&rsquo; before &lsquo;*&rsquo; token\r\ncpyrit/_cpyrit_cpu.c: In function &lsquo;prepare_pmk_padlock&rsquo;:</code></strong></pre>\r\n', '2020-10-20 11:37:47', '2020-10-20 11:37:47', 1),
(17, 8, 10, 'Build.gradle file (project level) in Android Studio is not plain text', '<p>I am not able to edit or read build.gradle file (at project level) from Android Studio. Android Studio does not show this file as a plain text. I am able to read and write perfecty the build.gradle file (at app level).</p>\r\n\r\n<p>I have Android Studio 4.0</p>\r\n\r\n<p>build.gradle (project file) from Android Studio</p>\r\n\r\n<p>I have done all the following without succes: Syn Project with graddle files Reload all from disc Invalid Caches and Restart</p>\r\n\r\n<p>My gradel-wraper.properties is:</p>\r\n\r\n<p>#Sat Sep 19 10:45:03 CEST 2020<br />\r\ndistributionBase=GRADLE_USER_HOME<br />\r\ndistributionPath=wrapper/dists<br />\r\nzipStoreBase=GRADLE_USER_HOME<br />\r\nzipStorePath=wrapper/dists<br />\r\ndistributionUrl=https\\://services.gradle.org/distributions/gradle-6.1.1-all.zip</p>\r\n\r\n<p>I am able to open existing projects but I am not able to create a new Project, while creating a project it gives me this error:</p>\r\n', '2020-10-20 11:46:32', '2020-10-20 11:46:32', 1),
(18, 8, 10, 'How to create jar for Android Library Project', '<p>I have to create a library that I am going to export to the client in a jar file. Is there any way to create a jar with the resources in it?</p>\r\n\r\n<p>The Google adMob have such a jar, which includes resource file such as R$layout.class in it. <strong>This page </strong>describes some way to do that but I am not able to understand exactly how am I supposed to import the library project to an application using the method above.<br />\r\n&nbsp;</p>\r\n', '2020-10-20 11:47:32', '2020-10-20 11:47:32', 1),
(19, 7, 12, 'Creating a new dictionary in Python', '<p>I want to build a dictionary in Python. However, all the examples that I see are instantiating a dictionary from a list, etc . ..</p>\r\n\r\n<p>How do I create a new empty dictionary in Python?<br />\r\n&nbsp;</p>\r\n', '2020-10-20 11:49:07', '2020-10-20 11:49:07', 1);

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
(10, 'Aromal', 'aromal123', '4QrcOUm6Wau+VuBX8g+IPg==', 'aromal@gmail.com', 'male.jpg', 'I am a java developer', '2020-10-20 11:09:08', '2020-10-20 11:09:08'),
(11, 'Prashant', 'prashant07', '4QrcOUm6Wau+VuBX8g+IPg==', 'prashant07@gmail.com', 'avatar.jpg', 'Hi  I am a Android Developer.', '2020-10-20 11:15:32', '2020-10-20 11:15:32'),
(12, 'Catherine', 'cathe02', '4QrcOUm6Wau+VuBX8g+IPg==', 'catherine@gmail.com', 'female.jpg', 'Hi I am Python Developer', '2020-10-20 11:18:22', '2020-10-20 11:18:22');

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
(88, 11, 37, 1),
(89, 11, 38, 1),
(90, 11, 39, 0),
(91, 11, 40, 1),
(92, 11, 36, 1),
(93, 11, 35, 0),
(94, 12, 42, 1),
(95, 12, 36, 1),
(96, 12, 41, 1),
(97, 12, 39, 1),
(98, 10, 38, 1),
(99, 10, 37, 1),
(100, 10, 42, 1),
(101, 10, 39, 1),
(102, 10, 36, 1),
(103, 10, 40, 1),
(104, 10, 41, 1);

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
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `replies_table`
--
ALTER TABLE `replies_table`
  MODIFY `rep_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `topic_table`
--
ALTER TABLE `topic_table`
  MODIFY `topic_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vote_table`
--
ALTER TABLE `vote_table`
  MODIFY `vote_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

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
