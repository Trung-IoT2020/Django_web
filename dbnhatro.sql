-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 20, 2020 lúc 11:32 AM
-- Phiên bản máy phục vụ: 5.7.28
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbnhatro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
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
-- Cấu trúc bảng cho bảng `auth_group_permissions`
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
-- Cấu trúc bảng cho bảng `auth_permission`
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
-- Đang đổ dữ liệu cho bảng `auth_permission`
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
-- Cấu trúc bảng cho bảng `auth_user`
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$XDP40Vh987mx$DwAbgMaypthQJva80P/P//nh6gNfCe1gj6ul1fXjsLk=', '2020-12-20 10:58:28.673501', 0, 'thienbao', 'bao', 'dao', 'bao@yahoo.com', 0, 1, '2020-12-20 10:58:28.398499');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
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
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
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
-- Cấu trúc bảng cho bảng `django_admin_log`
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
-- Cấu trúc bảng cho bảng `django_content_type`
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
-- Đang đổ dữ liệu cho bảng `django_content_type`
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
-- Cấu trúc bảng cho bảng `django_migrations`
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
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-20 10:56:44.214320'),
(2, 'auth', '0001_initial', '2020-12-20 10:56:44.313539'),
(3, 'admin', '0001_initial', '2020-12-20 10:56:44.572317'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-20 10:56:44.645622'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-20 10:56:44.653550'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-20 10:56:44.696751'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-20 10:56:44.723500'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-20 10:56:44.745366'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-20 10:56:44.753354'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-20 10:56:44.782099'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-20 10:56:44.783059'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-20 10:56:44.792060'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-20 10:56:44.814906'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-20 10:56:44.835917'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-20 10:56:44.858574'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-20 10:56:44.866572'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-20 10:56:44.888399'),
(18, 'home', '0001_initial', '2020-12-20 10:56:45.005899'),
(19, 'sessions', '0001_initial', '2020-12-20 10:56:45.050484');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_dangbaichinh`
--

DROP TABLE IF EXISTS `home_dangbaichinh`;
CREATE TABLE IF NOT EXISTS `home_dangbaichinh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(150) NOT NULL,
  `id_ct` int(11) NOT NULL,
  `id_ntt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_dangbaichinh`
--

INSERT INTO `home_dangbaichinh` (`id`, `ten`, `id_ct`, `id_ntt`) VALUES
(1, 'thienbao', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_dangbaichutro`
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_dangbaichutro`
--

INSERT INTO `home_dangbaichutro` (`id`, `ten`, `img`, `diachi`, `tieude`, `noidung`, `gia`, `sdt`, `quan`, `tp`, `status`, `ngaythang`) VALUES
(1, 'thienbao', '126206634_2828288160779181_3805846540195290238_n_AJfIUlj.jpg', '180 cao lỗ', 'qua dep', ' 123', 9000000, 909010101, 5, 1, 0, '2020-12-20 10:59:17.500071');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_dangbainguoitimtro`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_dattro`
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_dattro`
--

INSERT INTO `home_dattro` (`id`, `hoten_dp`, `sdt_dp`, `mail_dp`, `ten`, `tieude_baidang`) VALUES
(1, 'Nguyễn Văn Trung', 924016865, 'vantrungD17@gmail.com', 'thienbao', 'qua dep'),
(2, 'trung', 924016865, '09@gmail.com', 'thienbao', 'qua dep'),
(3, '123', 924016865, 'vantrung2D17@gmail.com', '', 'qua dep');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_quan_tp`
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
-- Cấu trúc bảng cho bảng `home_thanhpho`
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
