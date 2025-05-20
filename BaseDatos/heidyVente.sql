-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.7.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para apolo
CREATE DATABASE IF NOT EXISTS `apolo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `apolo`;

-- Volcando estructura para tabla apolo.asistencia_estudiante
CREATE TABLE IF NOT EXISTS `asistencia_estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `clase` longtext DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.asistencia_estudiante: ~7 rows (aproximadamente)
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(1, 'cristian', 'urueña|', 'fotos/bill_gates_tbkMAW1.jfif', 'Estudiante', 'Cl 71c Sur 7928', '2024-09-10');
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(2, 'jairo', 'luis', 'fotos/bill_gates_hNsz31R.jfif', 'Estudiante', 'sapo', '2024-09-10');
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(3, 'don vu', 'don vi', 'fotos/bill_gates_aXNoxYz.jfif', 'Estudiante', 'sapo', '2024-09-10');
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(4, 'jose', 'luisa', 'fotos/bill_gates_ItBKKPK.jfif', 'Estudiante', 'sapo', '2024-09-10');
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(5, 'Johana', 'parra', 'fotos/bill_gates_b7roEDk.jfif', 'Estudiante', '12345', '2024-09-10');
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(6, 'cristian', 'urueña', 'fotos/bill_gates_4gv9XHv.jfif', 'Estudiante', '12345', '2024-09-10');
INSERT INTO `asistencia_estudiante` (`id`, `nombre`, `apellido`, `foto`, `clase`, `direccion`, `fechaIngreso`) VALUES
	(7, 'Johana', 'parra', 'fotos/bill_gates_f0Z7q6x.jfif', 'Estudiante', '12345', '2024-09-10');

-- Volcando estructura para tabla apolo.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_group: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_group_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_permission: ~28 rows (aproximadamente)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(25, 'Can add estudiante', 7, 'add_estudiante');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(26, 'Can change estudiante', 7, 'change_estudiante');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(27, 'Can delete estudiante', 7, 'delete_estudiante');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(28, 'Can view estudiante', 7, 'view_estudiante');

-- Volcando estructura para tabla apolo.auth_user
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_user: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_user_groups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.auth_user_user_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.django_admin_log: ~0 rows (aproximadamente)

-- Volcando estructura para tabla apolo.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.django_content_type: ~7 rows (aproximadamente)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(7, 'asistencia', 'estudiante');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(3, 'auth', 'group');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(2, 'auth', 'permission');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(4, 'auth', 'user');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(6, 'sessions', 'session');

-- Volcando estructura para tabla apolo.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.django_migrations: ~19 rows (aproximadamente)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2025-05-15 16:11:25.545742');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(2, 'auth', '0001_initial', '2025-05-15 16:11:26.163748');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(3, 'admin', '0001_initial', '2025-05-15 16:11:26.299133');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(4, 'admin', '0002_logentry_remove_auto_add', '2025-05-15 16:11:26.309929');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-15 16:11:26.325856');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(6, 'asistencia', '0001_initial', '2025-05-15 16:11:26.344415');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(7, 'contenttypes', '0002_remove_content_type_name', '2025-05-15 16:11:26.445214');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(8, 'auth', '0002_alter_permission_name_max_length', '2025-05-15 16:11:26.506438');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(9, 'auth', '0003_alter_user_email_max_length', '2025-05-15 16:11:26.543835');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(10, 'auth', '0004_alter_user_username_opts', '2025-05-15 16:11:26.561124');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(11, 'auth', '0005_alter_user_last_login_null', '2025-05-15 16:11:26.621037');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(12, 'auth', '0006_require_contenttypes_0002', '2025-05-15 16:11:26.623635');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(13, 'auth', '0007_alter_validators_add_error_messages', '2025-05-15 16:11:26.637786');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(14, 'auth', '0008_alter_user_username_max_length', '2025-05-15 16:11:26.709262');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(15, 'auth', '0009_alter_user_last_name_max_length', '2025-05-15 16:11:26.773606');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(16, 'auth', '0010_alter_group_name_max_length', '2025-05-15 16:11:26.852691');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(17, 'auth', '0011_update_proxy_permissions', '2025-05-15 16:11:26.867321');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(18, 'auth', '0012_alter_user_first_name_max_length', '2025-05-15 16:11:26.903260');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(19, 'sessions', '0001_initial', '2025-05-15 16:11:26.956093');

-- Volcando estructura para tabla apolo.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Volcando datos para la tabla apolo.django_session: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
