-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 12, 2020 at 05:19 AM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlphongtro`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add destination', 1, 'add_destination'),
(2, 'Can change destination', 1, 'change_destination'),
(3, 'Can delete destination', 1, 'delete_destination'),
(4, 'Can view destination', 1, 'view_destination'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `first_name` (`first_name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$c1yEaMTAMXT2$xwiIOM9HVdfUJtyzQ8n6MK5sPcIzUzrBHqi+h/iP/sw=', '2020-11-12 04:52:09.722181', 1, 'trung', '', '', 'vantrungD17@gmail.com', 1, 1, '2020-11-09 03:52:55.682857'),
(2, 'pbkdf2_sha256$216000$hHSxcIMgiytU$exX81It72OwvJ3nkrXDPYlSu9JB6l+T8yn+V08gorYw=', NULL, 0, 'abc', 'nguyen', 'trung', 'asdasd@vsadas.com', 0, 1, '2020-11-09 04:51:29.784624'),
(3, 'pbkdf2_sha256$216000$5EfbIGuXBsHu$roz9mDxurVoDnFltiDO7Knqk6a04QN26btLeu8f1XnA=', NULL, 0, 'abcz', 'a', 'a', 'thiensuhuyhieu1@yahoo.com', 0, 1, '2020-11-09 04:58:42.791646'),
(4, 'pbkdf2_sha256$216000$v4oL7sZiQ34O$/5CBoQcuP2sU+CGnKiFWwfUzWK/38A93zI0uBLbeq80=', NULL, 0, 'abczy', '1', '1', 'thiensuhuyhieu12@yahoo.com', 0, 1, '2020-11-09 04:59:14.443234'),
(5, 'pbkdf2_sha256$216000$VvolQz9ZzZAu$xTiU7yUaphkz11j7eogiPZX5a9P4Owx7Xr//KPVrAF8=', NULL, 0, 'abcxyz', 'a', 'a', 'thiensuhuyhieu112@yahoo.com', 0, 1, '2020-11-09 05:01:34.238099'),
(6, 'pbkdf2_sha256$216000$G5bILhAMic94$QqBsLr2lWq9ayu1g00+B85GN13cepHJzoTAzZ0J5p0Q=', NULL, 0, 'abcxyzaa', 'a', '2', 'abcb@gmail.com', 0, 1, '2020-11-09 05:08:03.827439'),
(7, 'pbkdf2_sha256$216000$VaY2Ysvcu3Nc$jKGNL2dnKIVGe9FMn2w5OxO0eAfVoMtgqUWaoHnShXI=', '2020-11-12 05:00:44.945073', 0, 'thienbao', 'bao', 'dao', 'thienbao@gmail.com', 0, 1, '2020-11-09 05:23:47.627080'),
(8, 'pbkdf2_sha256$216000$N518qn2JvZwN$GLMJkQFFwDJy7dhBeXr5kn2uQy1VNqrsoeZOKNSJOoM=', '2020-11-10 13:43:07.089911', 0, 'locloc', 'loc', 'Nguyen', 'loc@gmail.com', 0, 1, '2020-11-10 01:46:29.000000'),
(9, 'pbkdf2_sha256$216000$poyzzHG4Q4JW$Fe3Nn694Y/+pYTgGAD6iWbMBmZLIpNfUsKGdOEY/frg=', NULL, 0, 'thienbao123', 'Thiên Bảo', 'Đào', 'thienbao12345678@gmail.com', 0, 1, '2020-11-12 05:00:06.431196'),
(10, 'pbkdf2_sha256$216000$XSwZgHAYoOPo$9/ok5JJgFy5rZ+SpjWhonI9rNmD/nvwL2zhnUyuh+j0=', '2020-11-12 05:07:16.075360', 0, 'andy', 'dao hoang', 'thien bao', 'dhthienbao1607@gmail.com', 0, 1, '2020-11-12 05:07:05.152334');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-09 03:55:55.639468', '1', 'Destination object (1)', 1, '[{\"added\": {}}]', 1, 1),
(2, '2020-11-09 04:02:12.434675', '2', 'Destination object (2)', 1, '[{\"added\": {}}]', 1, 1),
(3, '2020-11-09 04:04:33.993477', '3', 'Destination object (3)', 1, '[{\"added\": {}}]', 1, 1),
(4, '2020-11-10 07:36:11.588484', '15', 'Destination object (15)', 2, '[{\"changed\": {\"fields\": [\"Img\"]}}]', 1, 1),
(5, '2020-11-10 07:39:12.099401', '8', 'locloc', 2, '[{\"changed\": {\"fields\": [\"Username\", \"User permissions\"]}}]', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'show_index', 'destination'),
(2, 'admin', 'logentry'),
(3, 'auth', 'permission'),
(4, 'auth', 'group'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-09 03:48:39.112364'),
(2, 'auth', '0001_initial', '2020-11-09 03:48:39.221747'),
(3, 'admin', '0001_initial', '2020-11-09 03:48:39.487237'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-09 03:48:39.565345'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-09 03:48:39.565345'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-09 03:48:39.612207'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-09 03:48:39.643493'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-09 03:48:39.659071'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-09 03:48:39.674694'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-09 03:48:39.690314'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-09 03:48:39.690314'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-09 03:48:39.705937'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-09 03:48:39.721557'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-09 03:48:39.737215'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-09 03:48:39.768462'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-09 03:48:39.768462'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-09 03:48:39.799663'),
(18, 'sessions', '0001_initial', '2020-11-09 03:48:39.815287'),
(19, 'show_index', '0001_initial', '2020-11-09 03:48:39.862149'),
(20, 'show_index', '0002_destination_price', '2020-11-09 03:51:45.880387'),
(21, 'show_index', '0003_auto_20201110_2025', '2020-11-10 13:25:33.876692'),
(22, 'show_index', '0004_auto_20201110_2039', '2020-11-10 13:39:14.635714'),
(23, 'show_index', '0005_auto_20201110_2329', '2020-11-10 16:30:05.088726'),
(24, 'show_index', '0006_auto_20201110_2333', '2020-11-10 16:33:45.340335'),
(25, 'show_index', '0007_auto_20201112_1012', '2020-11-12 03:13:00.194666');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9f0ubfdwqy7zerzdnmot32im1mc8gwr4', '.eJxVjEEOwiAQRe_C2hBmKIou3fcMBGYGqRpISrsy3l2bdKHb_977LxXiupSwdpnDxOqiQB1-txTpIXUDfI_11jS1usxT0puid9r12Fie1939Oyixl2-NzqAMckI2lJ0ny5YzMSZJUSSBR3IIRsAZsXAGQvCR8mCPHsUxqfcH-9Q4cQ:1kd4af:UEMMStcZ__qXNM1XEHbWfIO4AkGNTPNlGhQO0BplRZg', '2020-11-26 04:52:09.723110');

-- --------------------------------------------------------

--
-- Table structure for table `show_index_destination`
--

DROP TABLE IF EXISTS `show_index_destination`;
CREATE TABLE IF NOT EXISTS `show_index_destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) NOT NULL,
  `img` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `tieude` varchar(50) NOT NULL,
  `ngaythang` datetime(6) NOT NULL,
  `luachon` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sdt` int(11) NOT NULL,
  `quan` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`first_name`),
  UNIQUE KEY `first_name` (`first_name`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `show_index_destination`
--

INSERT INTO `show_index_destination` (`id`, `first_name`, `img`, `desc`, `tieude`, `ngaythang`, `luachon`, `price`, `diachi`, `sdt`, `quan`) VALUES
(1, 'abc', 'pics/121114469_1619814554867323_4515338103616530074_n.jpg', 'hinh dep', 'dep ko', '2020-11-09 03:55:53.000000', 0, 9000, '1', 2, '2'),
(2, 'trung', 'pics/121114469_1619814554867323_4515338103616530074_n.jpg', 'dep lam', 'abc', '2020-11-09 04:02:11.000000', 0, 10000, '1', 2, '2'),
(51, 'Lộc', 'image_3.jpg', 'quá đẹp em ơi!', '80', '2020-11-10 13:43:35.662764', 0, 10000, '1', 2, '2'),
(52, 'Đào Hoàng Thiên Bảo', '3.jpg', 'hình cũng đẹp chứ', 'dep ko', '2020-11-10 14:47:58.453895', 0, 8000, '1', 2, '2'),
(55, 'nguyen', '12223_s8QPPT2.jpg', 'cũng rộng', 'qua dep', '2020-11-10 14:49:15.678685', 0, 1025, '1', 2, '2'),
(56, 'Kiều', 'image_5_gPLmA6r.jpg', 'đẹp', 'HOT', '2020-11-10 16:40:29.527494', 0, 1000, '243/8A Lưu Hữu Phước', 924016865, 'Q8'),
(58, 'người bí ẩn', 'chaoem_2w2YMfB.png', 'ádasda', 'qua dep', '2020-11-11 15:25:21.308719', 0, 11111, '2222', 999999, '10'),
(67, 'Bao', 'image_11_Hdb0Csa.jpg', '1223', 'on khong', '2020-11-12 05:02:18.424506', 0, 12345, '12345', 92222222, '7'),
(66, 'abcdef baccc', 'image_3_z5xSkJI.jpg', '123456', 's', '2020-11-12 05:01:08.879693', 0, 100000, '243/8A Lưu Hữu Phước', 924016865, '8'),
(65, 'thu', 'image_11.jpg', '2131231', 'thunghiem lan 2', '2020-11-12 04:58:01.896990', 0, 12312312, '1231231', 2131231, '9'),
(64, '123123123', 'image_7_AFxqGiz.jpg', '12', 'thu', '2020-11-12 04:57:03.075698', 0, 12345, '12345', 922222, '7'),
(68, 'plapla', '82295863_1989838117829508_6656319317245689856_n.jpg', 'mo ta', 'tieude', '2020-11-12 05:08:21.986839', 0, 20000, '16/47 asdasd', 909090909, '8');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
