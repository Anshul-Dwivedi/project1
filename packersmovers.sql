-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 03, 2020 at 07:28 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `packersmovers`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add services', 7, 'add_services'),
(20, 'Can change services', 7, 'change_services'),
(21, 'Can delete services', 7, 'delete_services'),
(22, 'Can add contact', 8, 'add_contact'),
(23, 'Can change contact', 8, 'change_contact'),
(24, 'Can delete contact', 8, 'delete_contact'),
(25, 'Can add quote', 9, 'add_quote'),
(26, 'Can change quote', 9, 'change_quote'),
(27, 'Can delete quote', 9, 'delete_quote');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$q8SpoGXF8zPo$psfkAyLTzO/J1uy2mQTZeIAuv8JFjay64/R1A+/zyJU=', '2020-07-03 04:58:04', 1, 'admin', '', '', 'packmove@gmail.com', 1, 1, '2020-07-01 16:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Karan Singh', 'karanveersingh@gmail.com', '8989898989', 'Feedback', 'Service is good'),
(2, 'Karan Singh', 'karanveersingh@gmail.com', '8989898989', 'Feedback', 'Service is good'),
(3, 'Kamal Rani', 'kamalrani@gmail.com', '9875554443', 'Enquiry', 'What is the estimate cost of home relocation'),
(4, 'Virender', 'virendersingh@gmail.com', '8989898989', 'Suggestion', 'Please mention the prices for the services');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-01 16:39:12', '1', 'Packing / Unpacking Services', 1, '[{"added": {}}]', 7, 1),
(2, '2020-07-01 16:39:48', '2', 'Loading / Unloading Services', 1, '[{"added": {}}]', 7, 1),
(3, '2020-07-01 16:40:32', '3', 'Transportaion Services', 1, '[{"added": {}}]', 7, 1),
(4, '2020-07-01 16:41:12', '4', 'Relocation Services', 1, '[{"added": {}}]', 7, 1),
(5, '2020-07-01 16:41:49', '5', 'Car Transportaion Services', 1, '[{"added": {}}]', 7, 1),
(6, '2020-07-01 16:42:23', '6', 'Insurance Services', 1, '[{"added": {}}]', 7, 1),
(7, '2020-07-01 16:43:08', '7', 'Warehousing / Storage Services', 1, '[{"added": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'packmove', 'contact'),
(9, 'packmove', 'quote'),
(7, 'packmove', 'services'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-01 16:23:41'),
(2, 'auth', '0001_initial', '2020-07-01 16:23:46'),
(3, 'admin', '0001_initial', '2020-07-01 16:23:47'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-01 16:23:47'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-07-01 16:23:47'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-07-01 16:23:48'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-07-01 16:23:48'),
(8, 'auth', '0004_alter_user_username_opts', '2020-07-01 16:23:48'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-07-01 16:23:48'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-07-01 16:23:48'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-07-01 16:23:48'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-07-01 16:23:49'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-07-01 16:23:50'),
(14, 'sessions', '0001_initial', '2020-07-01 16:23:51'),
(15, 'packmove', '0001_initial', '2020-07-01 16:37:08'),
(16, 'packmove', '0002_contact', '2020-07-01 16:58:43'),
(17, 'packmove', '0003_quote', '2020-07-01 17:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mgjykb5i32h51jgdrvgvajkit3d6kyvf', 'M2E4ZmNhZTExMDExMWQ1NWY0MTM4NjQxODJjMTQwZDlmM2Q1MTBhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDgwYjg4ZDkyYzg5N2ViYWRhZWM5YWE0NGQ2YjllMmJlY2Y2M2UxIn0=', '2020-07-15 16:37:43'),
('yqz5jcdxp5jnr8ryjnjrci94d5ge8ub4', 'M2E4ZmNhZTExMDExMWQ1NWY0MTM4NjQxODJjMTQwZDlmM2Q1MTBhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDgwYjg4ZDkyYzg5N2ViYWRhZWM5YWE0NGQ2YjllMmJlY2Y2M2UxIn0=', '2020-07-17 04:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE IF NOT EXISTS `quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `relocationdate` varchar(200) NOT NULL,
  `fromaddress` varchar(200) NOT NULL,
  `toaddress` varchar(200) NOT NULL,
  `requirements` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id`, `name`, `email`, `phone`, `relocationdate`, `fromaddress`, `toaddress`, `requirements`) VALUES
(1, 'Harmandeep', 'harmans@gmail.com', '9876543210', '2020-07-10', 'Mall road bathinda', 'model town bathinda', 'home relocation'),
(2, 'Shadab Mozaffar', 'shadab@gmail.com', '9875554443', '2020-07-06', 'Bathinda', 'Talwandi', 'Safety for office things');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `pic`) VALUES
(1, 'Packing / Unpacking Services', 'The packing and unpacking services offered by us minimize the stress level during the relocation. Our professional completing the services quickly without any damage. We are widely appreciated for packing and unpacking the goods. Our team members also help in arranging the goods. We have special package In Chandigarh, Mohali and Panchkula tricity.', 'upload/p5.jpg'),
(2, 'Loading / Unloading Services', 'Our company is one of the leading service providers for loading and unloading of the goods. Our main motto is to offer safe, quick, systematic, well organized, professional loading and unloading of our customer''s belongings. We give utmost importance while loading and unloading so each item is handled with care and no goods are damaged while transit.', 'upload/p6.jpg'),
(3, 'Transportaion Services', 'We hold expertise in offering a quality range of transportation facility to ensure secure and safe transit of goods from one place to another. Our diligent team assists us in transferring all kinds of goods from the existing place to its final destination as per the client''s information. Clients satisfaction is an utmost priority to us thus we believe in serving the excellence to our clients. We are also famous for timely completion of our consignment.', 'upload/transport.jpg'),
(4, 'Relocation Services', 'Our company offers hassle-free relocation services at the most economical rates. The team members are completely aware of the handling of all sorts of commercial, residential, business and industrial relocation services. Our company is globally known for taking up challenges and completing them timely.', 'upload/relocate.jpg'),
(5, 'Car Transportaion Services', 'We are one of the eminent names in the field of offering services related to Car Transportation. We ensure these services are offered with excellent quality, reliability and with cost efficiency. We are known for offering safe and prompt services with zero chances of damage. We also take care that these cars are loaded properly on the trucks and canters to transport these cars within the stipulated time frame.', 'upload/p7.jpg'),
(6, 'Insurance Services', 'Backed by our experienced and skilled professionals, we are involved in offering a wide range of services related to Insurance. We ensure our clients are assisted with proper documentation and paper work so that our clients are rest assured about the safety of their belongings. During the course of transportation we offer insurance services so that in case of any unavoidable circumstances our customers do not have to bear the losses', 'upload/insurance.jpg'),
(7, 'Warehousing / Storage Services', 'We are widely known for providing Warehousing and Storage facilities to meet the increasing demands of our clients. Our warehouse is spacious and hygienic that can easily hold bulk amount of goods safely. We holds a tied up with various reputed warehousing agents in order to fulfill the requirements of long and short time period warehousing needs across the country. Our clients can avail these services from us at industry leading prices.', 'upload/warehouse.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
