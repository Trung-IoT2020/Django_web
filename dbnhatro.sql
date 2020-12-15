-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2020 at 03:36 AM
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
-- Database: `dbnhatro`
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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add dangbaichinh', 1, 'add_dangbaichinh'),
(2, 'Can change dangbaichinh', 1, 'change_dangbaichinh'),
(3, 'Can delete dangbaichinh', 1, 'delete_dangbaichinh'),
(4, 'Can view dangbaichinh', 1, 'view_dangbaichinh'),
(5, 'Can add dangbaichutro', 2, 'add_dangbaichutro'),
(6, 'Can change dangbaichutro', 2, 'change_dangbaichutro'),
(7, 'Can delete dangbaichutro', 2, 'delete_dangbaichutro'),
(8, 'Can view dangbaichutro', 2, 'view_dangbaichutro'),
(9, 'Can add dangbainguoitimtro', 3, 'add_dangbainguoitimtro'),
(10, 'Can change dangbainguoitimtro', 3, 'change_dangbainguoitimtro'),
(11, 'Can delete dangbainguoitimtro', 3, 'delete_dangbainguoitimtro'),
(12, 'Can view dangbainguoitimtro', 3, 'view_dangbainguoitimtro'),
(13, 'Can add log entry', 4, 'add_logentry'),
(14, 'Can change log entry', 4, 'change_logentry'),
(15, 'Can delete log entry', 4, 'delete_logentry'),
(16, 'Can view log entry', 4, 'view_logentry'),
(17, 'Can add permission', 5, 'add_permission'),
(18, 'Can change permission', 5, 'change_permission'),
(19, 'Can delete permission', 5, 'delete_permission'),
(20, 'Can view permission', 5, 'view_permission'),
(21, 'Can add group', 6, 'add_group'),
(22, 'Can change group', 6, 'change_group'),
(23, 'Can delete group', 6, 'delete_group'),
(24, 'Can view group', 6, 'view_group'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add content type', 8, 'add_contenttype'),
(30, 'Can change content type', 8, 'change_contenttype'),
(31, 'Can delete content type', 8, 'delete_contenttype'),
(32, 'Can view content type', 8, 'view_contenttype'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$9P4lPMV7uT4e$tUN3rAiST3/EJ95Fuh966HCsG9qngE7uKnLPHsy+Ybs=', NULL, 1, 'trung', '', '', 'vantrungd17@gmail.com', 1, 1, '2020-12-14 16:54:36.731509'),
(2, 'pbkdf2_sha256$216000$SFHYKCVtvYVP$mLz2c2EDoJaAa989kphgrF3LA8vcJhepqTiA+vDAfT4=', '2020-12-14 16:55:12.133058', 0, 'hectorit', 'Trung', 'Nguyen', 'hectorit1999@gmail.com', 0, 1, '2020-12-14 16:55:11.886047'),
(3, 'pbkdf2_sha256$216000$uSEAWcNOJmlh$Uv0UZ9gYIUxXD1Bz0kJo24co00hQVC9VKn2w6bDlkRQ=', '2020-12-15 02:48:48.472677', 0, 'bao', 'thienbao', 'dao', 'bao@gmail.com', 0, 1, '2020-12-15 02:48:48.124536');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'home', 'dangbaichinh'),
(2, 'home', 'dangbaichutro'),
(3, 'home', 'dangbainguoitimtro'),
(4, 'admin', 'logentry'),
(5, 'auth', 'permission'),
(6, 'auth', 'group'),
(7, 'auth', 'user'),
(8, 'contenttypes', 'contenttype'),
(9, 'sessions', 'session');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-14 16:54:07.791015'),
(2, 'auth', '0001_initial', '2020-12-14 16:54:07.914820'),
(3, 'admin', '0001_initial', '2020-12-14 16:54:08.198521'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-14 16:54:08.274276'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-14 16:54:08.281201'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-14 16:54:08.326690'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-14 16:54:08.352703'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-14 16:54:08.376559'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-14 16:54:08.384493'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-14 16:54:08.407008'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-14 16:54:08.409004'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-14 16:54:08.416048'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-14 16:54:08.440757'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-14 16:54:08.462746'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-14 16:54:08.484001'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-14 16:54:08.492817'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-14 16:54:08.515808'),
(18, 'home', '0001_initial', '2020-12-14 16:54:08.587877'),
(19, 'sessions', '0001_initial', '2020-12-14 16:54:08.606876');

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
('d8u0wq5arv4iy7mppmih2iimuqrvyvib', '.eJxVjEEOwiAQRe_C2hBhpkBduu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERWpx-t0DxwXUH6U711mRsdV3mIHdFHrTLqSV-Xg_376BQL99aGTAADhREm6xGhsyGzjlRdI6VHTPZOA7IlrVBBWgYUScwHCKSG8T7A8ypN4I:1kor7w:FTqaH65Hi-x0cQirvjOumGhBLKQhzLPVijhatiz03Qc', '2020-12-28 16:55:12.134058'),
('vee5wg0yy44pbrnkkez2fxivteu43rip', '.eJxVjEEOgjAQRe_StWkoHcrUpXvO0My0U4saSCisjHcXEha6fe_9_1aBtrWErcoSxqSuyqrLL2OKT5kOkR403Wcd52ldRtZHok9b9TAned3O9u-gUC37OiOiE5YI0EM0DoVYaCdd01H0ZH3C1jQA4MXF7LixwrkDbBl7I1Z9vv20OEM:1kp0OO:IwaIMi6021sXDkyNlGidTa24lpCC3wREsPdJJItyANc', '2020-12-29 02:48:48.474587');

-- --------------------------------------------------------

--
-- Table structure for table `home_dangbaichinh`
--

DROP TABLE IF EXISTS `home_dangbaichinh`;
CREATE TABLE IF NOT EXISTS `home_dangbaichinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(150) NOT NULL,
  `quan` varchar(11) NOT NULL,
  `tp` varchar(50) NOT NULL,
  `id_ct` int(11) NOT NULL,
  `id_ntt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_dangbaichinh`
--

INSERT INTO `home_dangbaichinh` (`id`, `ten`, `quan`, `tp`, `id_ct`, `id_ntt`) VALUES
(1, 'hectorit', '', '', 0, 1),
(2, 'hectorit', '', '', 1, 0),
(3, 'bao', '', '', 0, 1),
(4, 'bao', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_dangbaichutro`
--

DROP TABLE IF EXISTS `home_dangbaichutro`;
CREATE TABLE IF NOT EXISTS `home_dangbaichutro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(150) NOT NULL,
  `img` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `tieude` varchar(50) NOT NULL,
  `noidung` longtext NOT NULL,
  `gia` int(11) NOT NULL,
  `sdt` int(11) NOT NULL,
  `quan` int(11) NOT NULL,
  `tp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ngaythang` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_dangbaichutro`
--

INSERT INTO `home_dangbaichutro` (`id`, `ten`, `img`, `diachi`, `tieude`, `noidung`, `gia`, `sdt`, `quan`, `tp`, `status`, `ngaythang`) VALUES
(1, 'hectorit', 'meo.PNG', '123', '213', ' 123213123', 123123213, 1231231231, 15, 1, 0, '2020-12-14 17:00:52.768530'),
(2, 'bao', 'image_6_JstvVIQ.jpg', '123', 's', ' 123', 123, 888888, 14, 1, 0, '2020-12-15 02:49:21.488246'),
(3, 'hectorit', '5163235_PXL_20200921_080550370.PORTRAIT-01.COVER_Copy.jpg', '2222', 'qua dep', ' 2131', 123, 999999, 11, 1, 0, '2020-12-15 02:54:42.617711'),
(4, 'hectorit', 'galaxyA51.jfif', '2222', '123', ' 123', 10000000, 999999, 15, 1, 0, '2020-12-15 02:56:25.441444'),
(5, 'hectorit', 'iphone11promax.jpg', '123', '1231231', ' 12312312', 1231231, 1000, 15, 1, 0, '2020-12-15 02:57:07.314162'),
(6, 'hectorit', 'iphone11promax_mOmxe4y.jpg', '123', 'qua dep', ' 123', 123, 999999, 8, 1, 0, '2020-12-15 02:58:11.712049'),
(7, 'hectorit', 'trung_dadanhso.docx', '2222', '1231231', ' 123', 123, 999999, 9, 1, 0, '2020-12-15 02:59:01.837419'),
(8, 'hectorit', '125835099_2828288134112517_7684674570528436155_n_52pdPRK.jpg', '123', '123', ' 123213123', 900000, 1231231231, 9, 1, 0, '2020-12-15 03:26:48.358097');

-- --------------------------------------------------------

--
-- Table structure for table `home_dangbainguoitimtro`
--

DROP TABLE IF EXISTS `home_dangbainguoitimtro`;
CREATE TABLE IF NOT EXISTS `home_dangbainguoitimtro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(150) NOT NULL,
  `tieude` varchar(50) NOT NULL,
  `noidung` longtext NOT NULL,
  `sdt` int(11) NOT NULL,
  `quan` int(11) NOT NULL,
  `tp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ngaythang` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_dangbainguoitimtro`
--

INSERT INTO `home_dangbainguoitimtro` (`id`, `ten`, `tieude`, `noidung`, `sdt`, `quan`, `tp`, `status`, `ngaythang`) VALUES
(1, 'hectorit', '123', '13', 1231231231, 5, 1, 1, '2020-12-14 16:55:23.821743'),
(2, 'hectorit', '1231231', '12312321', 1231230999, 5, 1, 1, '2020-12-15 03:04:21.893997');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
