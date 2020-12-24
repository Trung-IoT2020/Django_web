-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 24, 2020 at 06:44 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

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
(13, 'Can add dattro', 4, 'add_dattro'),
(14, 'Can change dattro', 4, 'change_dattro'),
(15, 'Can delete dattro', 4, 'delete_dattro'),
(16, 'Can view dattro', 4, 'view_dattro'),
(17, 'Can add thanhpho', 5, 'add_thanhpho'),
(18, 'Can change thanhpho', 5, 'change_thanhpho'),
(19, 'Can delete thanhpho', 5, 'delete_thanhpho'),
(20, 'Can view thanhpho', 5, 'view_thanhpho'),
(21, 'Can add quan_tp', 6, 'add_quan_tp'),
(22, 'Can change quan_tp', 6, 'change_quan_tp'),
(23, 'Can delete quan_tp', 6, 'delete_quan_tp'),
(24, 'Can view quan_tp', 6, 'view_quan_tp'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add content type', 11, 'add_contenttype'),
(42, 'Can change content type', 11, 'change_contenttype'),
(43, 'Can delete content type', 11, 'delete_contenttype'),
(44, 'Can view content type', 11, 'view_contenttype'),
(45, 'Can add session', 12, 'add_session'),
(46, 'Can change session', 12, 'change_session'),
(47, 'Can delete session', 12, 'delete_session'),
(48, 'Can view session', 12, 'view_session');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$yefSLfhkgLmb$m/ehHgs42ulrcs2+FNY3RzwZHPOM1mfN2kvddFVUhmE=', '2020-12-22 02:10:04.960530', 1, 'admin', '', '', 'trungbaod17th10@gmail.com', 1, 1, '2020-12-21 09:20:05.012468'),
(2, 'pbkdf2_sha256$216000$xoYRZ6LCNYCY$xidQMrF76YgjLuIkhwXwO+stCC3/a5z9bK+cKs0L3IU=', '2020-12-21 09:49:47.358878', 0, 'thienbao1999', 'Thiên Bảo', 'Đào Hoàng ', 'dhthienbao1607@gmail.com', 0, 1, '2020-12-21 09:21:48.093008'),
(3, 'pbkdf2_sha256$216000$XWnUUYHhYFoI$GDIPPx5b5sLMh412MmSBcitJ9S+UwbPYSwQorckVSN8=', '2020-12-21 15:57:55.630035', 0, 'vantrungd17', 'Trung', 'Nguyễn', 'vantrungD17@gmail.com', 0, 1, '2020-12-21 09:29:34.641242');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'home', 'dangbaichinh'),
(2, 'home', 'dangbaichutro'),
(3, 'home', 'dangbainguoitimtro'),
(4, 'home', 'dattro'),
(5, 'home', 'thanhpho'),
(6, 'home', 'quan_tp'),
(7, 'admin', 'logentry'),
(8, 'auth', 'permission'),
(9, 'auth', 'group'),
(10, 'auth', 'user'),
(11, 'contenttypes', 'contenttype'),
(12, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2020-12-21 09:19:08.883530'),
(2, 'auth', '0001_initial', '2020-12-21 09:19:08.986062'),
(3, 'admin', '0001_initial', '2020-12-21 09:19:09.244120'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-21 09:19:09.317977'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-21 09:19:09.325928'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-21 09:19:09.369853'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-21 09:19:09.396319'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-21 09:19:09.419085'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-21 09:19:09.427085'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-21 09:19:09.451137'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-21 09:19:09.453129'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-21 09:19:09.461129'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-21 09:19:09.487966'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-21 09:19:09.509963'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-21 09:19:09.531964'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-21 09:19:09.539963'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-21 09:19:09.564007'),
(18, 'home', '0001_initial', '2020-12-21 09:19:09.687279'),
(19, 'sessions', '0001_initial', '2020-12-21 09:19:09.733828');

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
('75jddifih0rg27o3le7lfti85nf19qnr', '.eJxVjLEOAiEQRP-F2hAIB7KW9n4D2V1WOTWQHHeV8d-V5Aqdct6beamE21rS1mVJc1Yn5dThtyPkh9QB8h3rrWludV1m0kPRO-360rI8z7v7d1Cwl7FGewxsaAoGCDKLAAUXDZFMIoY9RG98uIJY6xDdN-RgypSZIwVQ7w_4Azhk:1krNZL:ZmeIJ4Xmc5NSkhEGHdA4z_oBygX_QrqwvLTs0bzUXkY', '2021-01-04 15:57:55.633035');

-- --------------------------------------------------------

--
-- Table structure for table `home_dangbaichinh`
--

DROP TABLE IF EXISTS `home_dangbaichinh`;
CREATE TABLE IF NOT EXISTS `home_dangbaichinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(150) NOT NULL,
  `id_ct` int(11) NOT NULL,
  `id_ntt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_dangbaichinh`
--

INSERT INTO `home_dangbaichinh` (`id`, `ten`, `id_ct`, `id_ntt`) VALUES
(1, 'thienbao1999', 1, 0),
(2, 'vantrungd17', 1, 0),
(3, 'thienbao1999', 0, 1),
(4, 'vantrungd17', 0, 1),
(5, 'admin', 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_dangbaichutro`
--

INSERT INTO `home_dangbaichutro` (`id`, `ten`, `img`, `diachi`, `tieude`, `noidung`, `gia`, `sdt`, `quan`, `tp`, `status`, `ngaythang`) VALUES
(1, 'vantrungd17', '1.jpg', '180 cao lỗ', 'nhà trọ mới quận 8', 'tiện nghi và đủ các thiết bị, giá rẻ trong khu vực, gần chợ gần trường đại học cấp 2, cấp 3,...', 1500000, 924016865, 8, 1, 0, '2020-12-21 09:36:46.508591'),
(2, 'vantrungd17', '23.jpg', ' 252/29/5, Đường Cao Thắng', 'nhà trọ mới quận 10', 'nơi tiện nghi tại quận 10 thích hợp cho mọi việc đi chuyển', 1600000, 909087474, 10, 1, 0, '2020-12-21 09:41:02.994332'),
(3, 'vantrungd17', '4.jpg', '180 cao lỗ', 'giá rẻ tại quận 8', 'gần chợ , gần trường', 2000000, 908787874, 8, 1, 0, '2020-12-21 09:42:34.471155'),
(4, 'vantrungd17', 'q1.jpg', ' 353/20, Đường Phạm Ngũ Lão', 'nhà rẻ tại quận 1', 'rẻ nhất tại ở quận 1, gần chung tâm', 3000000, 907080904, 1, 1, 0, '2020-12-21 09:44:31.399338'),
(5, 'vantrungd17', 'q2.jpg', ' Đường Nguyễn Xí', 'cho thuê nhà tại quận 2', 'giá thành rẻ, gần chung tâm thành phố', 2000000, 650807014, 2, 1, 0, '2020-12-21 09:47:10.137834'),
(6, 'vantrungd17', '5.jpg', 'Dương Bá Trạc', 'phòng cho thuê q8', 'tại quận 8, yên tĩnh, sạch sẽ', 2500000, 908552244, 8, 1, 0, '2020-12-21 09:49:20.603857'),
(7, 'admin', '4_1eNIv6c.jpg', '1980/10 Nguyễn Thị Thập', 'nhà trọ quận 7', 'giá rẻ, thuận tiện đi lại', 2500000, 657457187, 7, 1, 0, '2020-12-24 06:23:06.946389');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_dangbainguoitimtro`
--

INSERT INTO `home_dangbainguoitimtro` (`id`, `ten`, `tieude`, `noidung`, `sdt`, `quan`, `tp`, `status`, `ngaythang`) VALUES
(1, 'thienbao1999', 'cần tìm nhà trọ tại q8', 'gần chợ gần trường học', 567457187, 8, 1, 1, '2020-12-21 09:51:28.966843');

-- --------------------------------------------------------

--
-- Table structure for table `home_dattro`
--

DROP TABLE IF EXISTS `home_dattro`;
CREATE TABLE IF NOT EXISTS `home_dattro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoten_dp` varchar(150) NOT NULL,
  `sdt_dp` int(11) NOT NULL,
  `mail_dp` varchar(150) NOT NULL,
  `ten` varchar(150) NOT NULL,
  `tieude_baidang` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_dattro`
--

INSERT INTO `home_dattro` (`id`, `hoten_dp`, `sdt_dp`, `mail_dp`, `ten`, `tieude_baidang`) VALUES
(1, 'Nguyễn Văn Trung', 924016865, 'vantrungD17@gmail.com', 'thienbao1999', 'phòng cho thuê q8'),
(2, 'Nguyễn Văn Trung', 924016865, 'vantrungD17@gmail.com', 'vantrungd17', 'phòng cho thuê q8');

-- --------------------------------------------------------

--
-- Table structure for table `home_quan_tp`
--

DROP TABLE IF EXISTS `home_quan_tp`;
CREATE TABLE IF NOT EXISTS `home_quan_tp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_quan` varchar(50) NOT NULL,
  `id_tp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_quan_tp_id_tp_id_dfb6010f` (`id_tp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `home_thanhpho`
--

DROP TABLE IF EXISTS `home_thanhpho`;
CREATE TABLE IF NOT EXISTS `home_thanhpho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_tp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
