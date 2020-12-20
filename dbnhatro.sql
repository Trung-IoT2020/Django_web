-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 20, 2020 lúc 05:53 AM
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
(13, 'Can add thanhpho', 4, 'add_thanhpho'),
(14, 'Can change thanhpho', 4, 'change_thanhpho'),
(15, 'Can delete thanhpho', 4, 'delete_thanhpho'),
(16, 'Can view thanhpho', 4, 'view_thanhpho'),
(17, 'Can add quan_tp', 5, 'add_quan_tp'),
(18, 'Can change quan_tp', 5, 'change_quan_tp'),
(19, 'Can delete quan_tp', 5, 'delete_quan_tp'),
(20, 'Can view quan_tp', 5, 'view_quan_tp'),
(21, 'Can add log entry', 6, 'add_logentry'),
(22, 'Can change log entry', 6, 'change_logentry'),
(23, 'Can delete log entry', 6, 'delete_logentry'),
(24, 'Can view log entry', 6, 'view_logentry'),
(25, 'Can add permission', 7, 'add_permission'),
(26, 'Can change permission', 7, 'change_permission'),
(27, 'Can delete permission', 7, 'delete_permission'),
(28, 'Can view permission', 7, 'view_permission'),
(29, 'Can add group', 8, 'add_group'),
(30, 'Can change group', 8, 'change_group'),
(31, 'Can delete group', 8, 'delete_group'),
(32, 'Can view group', 8, 'view_group'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session'),
(45, 'Can add dattro', 12, 'add_dattro'),
(46, 'Can change dattro', 12, 'change_dattro'),
(47, 'Can delete dattro', 12, 'delete_dattro'),
(48, 'Can view dattro', 12, 'view_dattro');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$216000$EbN3dx6SCluI$s89o89jl8IoTS/FKPsNTXYYZ/c5/7hG7igCcE8eRe/Q=', '2020-12-18 03:43:41.603701', 0, 'thunghiem', 'thu', 'nghiem', 'DH51701681@student.stu.edu.vn', 0, 1, '2020-12-18 03:43:41.333615'),
(2, 'pbkdf2_sha256$216000$SrWO6tFHlsXz$vWlyLHm1lJjqVvDLF16TL9tulhad6N+rWFpqOM+Rmx8=', '2020-12-15 06:46:16.176262', 0, 'trung', 'Trung', 'Nguyen', 'vantrungd17@gmail.com', 0, 1, '2020-12-15 06:46:15.933263'),
(3, 'pbkdf2_sha256$216000$t1d539Bsr6w5$j+DcIqtIV3IJDzMyO+Rodl0c7sHv4H+PmFZoiaLws3Q=', '2020-12-15 06:48:34.482765', 1, 'hector', '', '', 'hector@gmail.com', 1, 1, '2020-12-15 06:48:22.197170');

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-15 06:48:44.757712', '1', 'Hồ Chí Minh', 1, '[{\"added\": {}}]', 4, 3),
(2, '2020-12-15 06:48:50.369266', '2', 'Hà Nội', 1, '[{\"added\": {}}]', 4, 3),
(3, '2020-12-15 06:48:58.109034', '1', 'quận 1', 1, '[{\"added\": {}}]', 5, 3),
(4, '2020-12-15 06:49:05.016549', '2', 'quận 2', 1, '[{\"added\": {}}]', 5, 3),
(5, '2020-12-15 06:49:12.562039', '3', 'quận 3', 1, '[{\"added\": {}}]', 5, 3),
(6, '2020-12-15 06:49:21.676224', '4', 'quận 4', 1, '[{\"added\": {}}]', 5, 3),
(7, '2020-12-15 06:49:28.537392', '5', 'quận 5', 1, '[{\"added\": {}}]', 5, 3),
(8, '2020-12-15 06:49:36.583869', '6', 'quận 6', 1, '[{\"added\": {}}]', 5, 3),
(9, '2020-12-15 06:49:44.181543', '7', 'quận 7', 1, '[{\"added\": {}}]', 5, 3),
(10, '2020-12-15 06:49:50.631445', '8', 'quận 8', 1, '[{\"added\": {}}]', 5, 3),
(11, '2020-12-15 06:50:02.207329', '9', 'quận 9', 1, '[{\"added\": {}}]', 5, 3),
(12, '2020-12-15 06:50:23.701349', '10', 'quận 10', 1, '[{\"added\": {}}]', 5, 3),
(13, '2020-12-15 06:50:30.441236', '11', 'quận 11', 1, '[{\"added\": {}}]', 5, 3),
(14, '2020-12-15 06:50:38.005362', '12', 'quận 12', 1, '[{\"added\": {}}]', 5, 3),
(15, '2020-12-15 06:51:13.791000', '13', 'Quận Bình Tân', 1, '[{\"added\": {}}]', 5, 3),
(16, '2020-12-15 06:51:25.024155', '14', 'Quận Tân Bình', 1, '[{\"added\": {}}]', 5, 3),
(17, '2020-12-15 06:51:34.670785', '15', 'Quận Gò Vấp', 1, '[{\"added\": {}}]', 5, 3),
(18, '2020-12-15 06:51:49.384648', '16', 'Quận Bình Thạnh', 1, '[{\"added\": {}}]', 5, 3),
(19, '2020-12-15 06:52:00.670883', '17', 'Quận Nhà Bè', 1, '[{\"added\": {}}]', 5, 3),
(20, '2020-12-15 06:52:15.325825', '18', 'Quận Bình Chánh', 1, '[{\"added\": {}}]', 5, 3),
(21, '2020-12-15 06:52:30.255619', '19', 'quận Hai Bà Trưng', 1, '[{\"added\": {}}]', 5, 3);

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
(4, 'home', 'thanhpho'),
(5, 'home', 'quan_tp'),
(6, 'admin', 'logentry'),
(7, 'auth', 'permission'),
(8, 'auth', 'group'),
(9, 'auth', 'user'),
(10, 'contenttypes', 'contenttype'),
(11, 'sessions', 'session'),
(12, 'home', 'dattro');

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-15 06:44:58.160065'),
(2, 'auth', '0001_initial', '2020-12-15 06:44:58.278802'),
(3, 'admin', '0001_initial', '2020-12-15 06:44:58.576729'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-15 06:44:58.664005'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-15 06:44:58.671712'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-15 06:44:58.719356'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-15 06:44:58.752315'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-15 06:44:58.787315'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-15 06:44:58.795324'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-15 06:44:58.827313'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-15 06:44:58.829314'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-15 06:44:58.839357'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-15 06:44:58.863313'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-15 06:44:58.887314'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-15 06:44:58.912313'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-15 06:44:58.921315'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-15 06:44:58.945318'),
(18, 'home', '0001_initial', '2020-12-15 06:44:59.056972'),
(19, 'sessions', '0001_initial', '2020-12-15 06:44:59.110484'),
(20, 'home', '0002_dattro', '2020-12-18 07:58:34.282945');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_dangbaichinh`
--

INSERT INTO `home_dangbaichinh` (`id`, `ten`, `id_ct`, `id_ntt`) VALUES
(1, 'trung', 1, 0),
(2, 'hector', 1, 0),
(3, 'thunghiem', 1, 0),
(4, 'thunghiem', 0, 1);

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
  PRIMARY KEY (`id`),
  KEY `FC_quan` (`quan`),
  KEY `FC_tp` (`tp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_dangbaichutro`
--

INSERT INTO `home_dangbaichutro` (`id`, `ten`, `img`, `diachi`, `tieude`, `noidung`, `gia`, `sdt`, `quan`, `tp`, `status`, `ngaythang`) VALUES
(1, 'trung', '126206634_2828288160779181_3805846540195290238_n_njQdcVX.jpg', '2222', 'ổn hơn', ' 123', 1231231231, 999999, 15, 1, 0, '2020-12-15 06:46:41.687608'),
(2, 'hector', '125835099_2828288134112517_7684674570528436155_n_dQVGolc.jpg', '123', 'dep ko', ' qqweqeqw', 90000, 999999990, 10, 1, 0, '2020-12-15 06:56:23.508309'),
(3, 'thunghiem', 'meo_yPoZs7w.PNG', '243/8A Lưu Hữu Phước', 'nhà trọ quận 8', 'tôi có nhà trọ tại q8 ', 1000000, 924016865, 8, 1, 0, '2020-12-18 03:46:08.769632');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_quan_tp`
--

INSERT INTO `home_quan_tp` (`id`, `ten_quan`, `id_tp_id`) VALUES
(1, 'quận 1', 1),
(2, 'quận 2', 1),
(3, 'quận 3', 1),
(4, 'quận 4', 1),
(5, 'quận 5', 1),
(6, 'quận 6', 1),
(7, 'quận 7', 1),
(8, 'quận 8', 1),
(9, 'quận 9', 1),
(10, 'quận 10', 1),
(11, 'quận 11', 1),
(12, 'quận 12', 1),
(13, 'Quận Bình Tân', 1),
(14, 'Quận Tân Bình', 1),
(15, 'Quận Gò Vấp', 1),
(16, 'Quận Bình Thạnh', 1),
(17, 'Quận Nhà Bè', 1),
(18, 'Quận Bình Chánh', 1),
(19, 'quận Hai Bà Trưng', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_thanhpho`
--

DROP TABLE IF EXISTS `home_thanhpho`;
CREATE TABLE IF NOT EXISTS `home_thanhpho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_tp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `home_thanhpho`
--

INSERT INTO `home_thanhpho` (`id`, `ten_tp`) VALUES
(1, 'Hồ Chí Minh'),
(2, 'Hà Nội');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `home_dangbaichutro`
--
ALTER TABLE `home_dangbaichutro`
  ADD CONSTRAINT `FC_quan` FOREIGN KEY (`quan`) REFERENCES `home_quan_tp` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FC_tp` FOREIGN KEY (`tp`) REFERENCES `home_thanhpho` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
