-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla bddinagro.centros
CREATE TABLE IF NOT EXISTS `centros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `centro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bddinagro.centros: ~20 rows (aproximadamente)
DELETE FROM `centros`;
/*!40000 ALTER TABLE `centros` DISABLE KEYS */;
INSERT INTO `centros` (`id`, `centro`) VALUES
	(1, 'INCUBADORA'),
	(2, 'ROSARIO'),
	(3, 'BRISAS'),
	(4, 'MESA'),
	(5, 'JAJO'),
	(6, 'MORELA'),
	(7, 'MARINELA'),
	(8, 'MARUJITA'),
	(9, 'PITIJOC'),
	(10, 'BELKIS'),
	(11, 'GANIMEDES'),
	(12, 'AGROSANTOS PONEDORAS'),
	(13, 'STMA TRINIDAD PON'),
	(14, 'AGROSANTOS POLLOS'),
	(15, 'AGUA CLARA'),
	(16, 'ILUSIONES'),
	(17, 'VALERIA'),
	(18, 'BETICO '),
	(19, 'LOS MANGOS'),
	(20, 'EL COROZO');
/*!40000 ALTER TABLE `centros` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente` varchar(255) DEFAULT NULL,
  `rif` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bddinagro.clientes: ~18 rows (aproximadamente)
DELETE FROM `clientes`;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `cliente`, `rif`) VALUES
	(1, 'DISTRICARNES', 'J310675104\r\n'),
	(2, 'AGROINSUMOS SS', 'J403927839\r\n'),
	(3, 'AVISAM', 'J410724510\r\n'),
	(4, 'INVERAVICA', 'J294038280\r\n'),
	(5, 'DOÑA AVES', 'J312788844\r\n'),
	(6, 'AGROTRUJILLO', 'G200095300\r\n'),
	(7, 'AGROMASCOTAS DIGNA MARQUEZ', 'V093908011\r\n'),
	(8, 'CONDILAGO', 'J500235585\r\n'),
	(9, 'CONDIMENTOS CAJA SECA', 'J404708170\r\n'),
	(10, 'AGROINSUMOS PANAMERICANA', 'J299977543\r\n'),
	(11, 'AGROPECUARIA MENDEZ', 'J296886180\r\n'),
	(12, 'AGROINSUMOS VALLE ANDINO', 'J412557947\r\n'),
	(13, 'AGROBELL', NULL),
	(14, 'GUARDIA NACIONAL BOLIVARIANA', 'G200004452\r\n'),
	(15, 'PROINCA CA', ' J41301580-3\r\n'),
	(16, 'DISTRIBUIDORA DE ALIMENTOS LA QUINCE', NULL),
	(17, 'DISPRALAC ', 'J41227151-2\r\n'),
	(18, 'PROCESADORA AVICOLA TIO POLLO C.A', 'J29448913-3\r\n');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_apicustom
CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_apicustom: ~0 rows (aproximadamente)
DELETE FROM `cms_apicustom`;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_apikey
CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_apikey: ~0 rows (aproximadamente)
DELETE FROM `cms_apikey`;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_dashboard
CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_dashboard: ~0 rows (aproximadamente)
DELETE FROM `cms_dashboard`;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_email_queues
CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_email_queues: ~0 rows (aproximadamente)
DELETE FROM `cms_email_queues`;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_email_templates
CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_email_templates: ~0 rows (aproximadamente)
DELETE FROM `cms_email_templates`;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
	(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2021-09-27 17:56:53', NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_logs
CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_logs: ~39 rows (aproximadamente)
DELETE FROM `cms_logs`;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
	(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2021-09-27 17:57:16', NULL),
	(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/centros/add-save', 'Add New Data  at Centros', '', 1, '2021-09-27 18:10:50', NULL),
	(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/clientes/add-save', 'Add New Data  at Clientes', '', 1, '2021-09-27 18:12:30', NULL),
	(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/unidades/add-save', 'Add New Data  at Unidades', '', 1, '2021-09-27 18:14:48', NULL),
	(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/unidades/add-save', 'Add New Data  at Unidades', '', 1, '2021-09-27 18:14:54', NULL),
	(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/unidades/add-save', 'Add New Data  at Unidades', '', 1, '2021-09-27 18:14:59', NULL),
	(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/productos/add-save', 'Add New Data  at Productos', '', 1, '2021-09-27 18:15:53', NULL),
	(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/productos/add-save', 'Add New Data  at Productos', '', 1, '2021-09-27 18:16:19', NULL),
	(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/productos/add-save', 'Add New Data  at Productos', '', 1, '2021-09-27 18:16:30', NULL),
	(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/productos/edit-save/1', 'Update data  at Productos', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>producto</td><td>POLLO ENTERO</td><td>POLLO VIVO</td></tr></tbody></table>', 1, '2021-09-27 18:16:47', NULL),
	(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/productos/add-save', 'Add New Data  at Productos', '', 1, '2021-09-27 18:17:06', NULL),
	(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/ventas/add-save', 'Añadir nueva información  en Ventas', '', 1, '2021-09-27 14:26:36', NULL),
	(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/ventas/edit-save/1', 'Actualizar información  en Ventas', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-09-27 14:26:51', NULL),
	(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/ventas/edit-save/1', 'Actualizar información  en Ventas', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-09-27 14:34:49', NULL),
	(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/ventas/add-save', 'Añadir nueva información  en Ventas', '', 1, '2021-09-27 17:09:48', NULL),
	(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/ventas/add-save', 'Añadir nueva información  en Ventas', '', 1, '2021-09-27 17:21:49', NULL),
	(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/3', 'Actualizar información Unidades en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-flask</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-09-28 09:55:16', NULL),
	(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/5', 'Actualizar información Ventas en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-list-alt</td><td>fa fa-shopping-cart</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2021-09-28 09:55:34', NULL),
	(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/2', 'Actualizar información Clientes en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-male</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2021-09-28 09:57:54', NULL),
	(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/1', 'Actualizar información Centros en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-building-o</td></tr></tbody></table>', 1, '2021-09-28 09:58:34', NULL),
	(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/6', 'Actualizar información Rptproductos en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-list-alt</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2021-09-28 09:59:02', NULL),
	(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/add-save', 'Añadir nueva información Configuración en Menu Management', '', 1, '2021-09-28 09:59:51', NULL),
	(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/6', 'Actualizar información Reporte de productos en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Rptproductos</td><td>Reporte de productos</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-09-28 14:25:59', NULL),
	(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2021-10-04 11:50:13', NULL),
	(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2021-10-05 10:16:10', NULL),
	(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/productos/add-save', 'Añadir nueva información  en Productos', '', 1, '2021-10-05 16:06:40', NULL),
	(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2021-10-06 08:31:57', NULL),
	(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2021-10-06 09:08:07', NULL),
	(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2021-10-06 14:15:56', NULL),
	(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/ventas/action-selected', 'Eliminar información 51 en Ventas', '', 1, '2021-10-06 14:38:52', NULL),
	(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/7', 'Actualizar información Configuración en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2021-10-07 12:44:23', NULL),
	(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/4', 'Actualizar información Productos en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>7</td><td></td></tr></tbody></table>', 1, '2021-10-07 12:44:31', NULL),
	(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/3', 'Actualizar información Unidades en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2021-10-07 12:44:40', NULL),
	(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/2', 'Actualizar información Clientes en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-10-07 12:44:48', NULL),
	(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/1', 'Actualizar información Centros en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>7</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2021-10-07 12:44:57', NULL),
	(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/6', 'Actualizar información Reporte de productos en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2021-10-07 12:45:06', NULL),
	(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/menu_management/edit-save/5', 'Actualizar información Ventas en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2021-10-07 12:45:16', NULL),
	(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/users/add-save', 'Añadir nueva información Wladimir Pérez en Users Management', '', 1, '2021-10-07 12:46:12', NULL),
	(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'http://localhost:8009/vDinagro/public/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2021-10-07 12:46:19', NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_menus
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_menus: ~6 rows (aproximadamente)
DELETE FROM `cms_menus`;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
	(1, 'Centros', 'Route', 'AdminCentrosControllerGetIndex', 'normal', 'fa fa-building-o', 7, 1, 0, 1, 4, '2021-09-27 18:10:16', '2021-10-07 12:44:57'),
	(2, 'Clientes', 'Route', 'AdminClientesControllerGetIndex', 'normal', 'fa fa-male', 7, 1, 0, 1, 3, '2021-09-27 18:11:56', '2021-10-07 12:44:48'),
	(3, 'Unidades', 'Route', 'AdminUnidadesControllerGetIndex', 'normal', 'fa fa-flask', 7, 1, 0, 1, 2, '2021-09-27 18:13:18', '2021-10-07 12:44:40'),
	(4, 'Productos', 'Route', 'AdminProductosControllerGetIndex', 'normal', 'fa fa-glass', 7, 1, 0, 1, 1, '2021-09-27 18:13:51', '2021-10-07 12:44:31'),
	(5, 'Ventas', 'Route', 'AdminVentasControllerGetIndex', 'normal', 'fa fa-shopping-cart', 0, 1, 0, 1, 2, '2021-09-27 18:17:34', '2021-10-07 12:45:15'),
	(6, 'Reporte de productos', 'Route', 'AdminVentasProductosControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, 3, '2021-09-27 17:39:09', '2021-10-07 12:45:06'),
	(7, 'Configuración', 'URL', '#', 'normal', 'fa fa-cog', 0, 1, 0, 1, 1, '2021-09-28 09:59:51', '2021-10-07 12:44:23');
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_menus_privileges
CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_menus_privileges: ~14 rows (aproximadamente)
DELETE FROM `cms_menus_privileges`;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
	(14, 7, 2),
	(15, 7, 1),
	(16, 4, 2),
	(17, 4, 1),
	(18, 3, 2),
	(19, 3, 1),
	(20, 2, 2),
	(21, 2, 1),
	(22, 1, 2),
	(23, 1, 1),
	(24, 6, 2),
	(25, 6, 1),
	(26, 5, 2),
	(27, 5, 1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_moduls
CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_moduls: ~17 rows (aproximadamente)
DELETE FROM `cms_moduls`;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2021-09-27 17:56:53', NULL, NULL),
	(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2021-09-27 17:56:53', NULL, NULL),
	(12, 'Centros', 'fa fa-glass', 'centros', 'centros', 'AdminCentrosController', 0, 0, '2021-09-27 18:10:16', NULL, NULL),
	(13, 'Clientes', 'fa fa-glass', 'clientes', 'clientes', 'AdminClientesController', 0, 0, '2021-09-27 18:11:56', NULL, NULL),
	(14, 'Unidades', 'fa fa-glass', 'unidades', 'unidades', 'AdminUnidadesController', 0, 0, '2021-09-27 18:13:18', NULL, NULL),
	(15, 'Productos', 'fa fa-glass', 'productos', 'productos', 'AdminProductosController', 0, 0, '2021-09-27 18:13:51', NULL, NULL),
	(16, 'Ventas', 'fa fa-list-alt', 'ventas', 'ventas', 'AdminVentasController', 0, 0, '2021-09-27 18:17:34', NULL, NULL),
	(17, 'Rptproductos', 'fa fa-glass', 'ventas_productos', 'ventas_productos', 'AdminVentasProductosController', 0, 0, '2021-09-27 17:39:09', NULL, NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_notifications
CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_notifications: ~0 rows (aproximadamente)
DELETE FROM `cms_notifications`;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_privileges
CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_privileges: ~1 rows (aproximadamente)
DELETE FROM `cms_privileges`;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
	(1, 'Super Administrator', 1, 'skin-red', '2021-09-27 17:56:53', NULL),
	(2, 'Operador', 0, 'skin-blue', NULL, NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_privileges_roles
CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_privileges_roles: ~23 rows (aproximadamente)
DELETE FROM `cms_privileges_roles`;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
	(1, 1, 0, 0, 0, 0, 1, 1, '2021-09-27 17:56:53', NULL),
	(2, 1, 1, 1, 1, 1, 1, 2, '2021-09-27 17:56:53', NULL),
	(3, 0, 1, 1, 1, 1, 1, 3, '2021-09-27 17:56:53', NULL),
	(4, 1, 1, 1, 1, 1, 1, 4, '2021-09-27 17:56:53', NULL),
	(5, 1, 1, 1, 1, 1, 1, 5, '2021-09-27 17:56:53', NULL),
	(6, 1, 1, 1, 1, 1, 1, 6, '2021-09-27 17:56:53', NULL),
	(7, 1, 1, 1, 1, 1, 1, 7, '2021-09-27 17:56:53', NULL),
	(8, 1, 1, 1, 1, 1, 1, 8, '2021-09-27 17:56:53', NULL),
	(9, 1, 1, 1, 1, 1, 1, 9, '2021-09-27 17:56:53', NULL),
	(10, 1, 1, 1, 1, 1, 1, 10, '2021-09-27 17:56:53', NULL),
	(11, 1, 0, 1, 0, 1, 1, 11, '2021-09-27 17:56:53', NULL),
	(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
	(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
	(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
	(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
	(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
	(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
	(18, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
	(19, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
	(20, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
	(21, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
	(22, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
	(23, 1, 1, 1, 1, 1, 2, 16, NULL, NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_settings
CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_settings: ~16 rows (aproximadamente)
DELETE FROM `cms_settings`;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
	(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2021-09-27 17:56:53', NULL, 'Login Register Style', 'Login Background Color'),
	(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2021-09-27 17:56:53', NULL, 'Login Register Style', 'Login Font Color'),
	(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Login Register Style', 'Login Background Image'),
	(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Email Setting', 'Email Sender'),
	(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2021-09-27 17:56:53', NULL, 'Email Setting', 'Mail Driver'),
	(6, 'smtp_host', '', 'text', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Email Setting', 'SMTP Host'),
	(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2021-09-27 17:56:53', NULL, 'Email Setting', 'SMTP Port'),
	(8, 'smtp_username', '', 'text', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Email Setting', 'SMTP Username'),
	(9, 'smtp_password', '', 'text', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Email Setting', 'SMTP Password'),
	(10, 'appname', 'vDinagro', 'text', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Application Setting', 'Application Name'),
	(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2021-09-27 17:56:53', NULL, 'Application Setting', 'Default Paper Print Size'),
	(12, 'logo', NULL, 'upload_image', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Application Setting', 'Logo'),
	(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Application Setting', 'Favicon'),
	(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2021-09-27 17:56:53', NULL, 'Application Setting', 'API Debug Mode'),
	(15, 'google_api_key', NULL, 'text', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Application Setting', 'Google API Key'),
	(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2021-09-27 17:56:53', NULL, 'Application Setting', 'Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_statistics
CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_statistics: ~0 rows (aproximadamente)
DELETE FROM `cms_statistics`;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_statistic_components
CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_statistic_components: ~0 rows (aproximadamente)
DELETE FROM `cms_statistic_components`;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.cms_users
CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.cms_users: ~1 rows (aproximadamente)
DELETE FROM `cms_users`;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
	(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$/F15OUL9.IFMiRFFrSRG6enYcAwSxyxIfObLgrUANQE6LIB4Hd0O.', 1, '2021-09-27 17:56:53', NULL, 'Active'),
	(2, 'Wladimir Pérez', 'uploads/1/2021-10/wladimir_perez.png', 'wperez@convaca.com.ve', '$2y$10$A2KKp4aDnObqEkUl8ddaMeBrCB0rhE90H1UcFgUlwqomPUJdRtAcG', 2, '2021-10-07 12:46:12', NULL, NULL);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.migrations: ~28 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
	(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
	(5, '2016_08_07_151210_add_table_cms_logs', 1),
	(6, '2016_08_07_151211_add_details_cms_logs', 1),
	(7, '2016_08_07_152014_add_table_cms_privileges', 1),
	(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
	(9, '2016_08_07_152320_add_table_cms_settings', 1),
	(10, '2016_08_07_152421_add_table_cms_users', 1),
	(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
	(12, '2016_08_07_154624_add_table_cms_moduls', 1),
	(13, '2016_08_17_225409_add_status_cms_users', 1),
	(14, '2016_08_20_125418_add_table_cms_notifications', 1),
	(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
	(16, '2016_09_16_035347_add_group_setting', 1),
	(17, '2016_09_16_045425_add_label_setting', 1),
	(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
	(19, '2016_10_01_141740_add_method_type_apicustom', 1),
	(20, '2016_10_01_141846_add_parameters_apicustom', 1),
	(21, '2016_10_01_141934_add_responses_apicustom', 1),
	(22, '2016_10_01_144826_add_table_apikey', 1),
	(23, '2016_11_14_141657_create_cms_menus', 1),
	(24, '2016_11_15_132350_create_cms_email_templates', 1),
	(25, '2016_11_15_190410_create_cms_statistics', 1),
	(26, '2016_11_17_102740_create_cms_statistic_components', 1),
	(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
	(28, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) DEFAULT NULL,
  `unidad_id` tinyint(255) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unidad_id` (`unidad_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`unidad_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bddinagro.productos: ~11 rows (aproximadamente)
DELETE FROM `productos`;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `producto`, `unidad_id`) VALUES
	(1, 'POLLO VIVO', 3),
	(2, 'POLLITOS BB SIN VACUNA', 2),
	(3, 'POLLITOS BB CON VACUNA', 2),
	(4, 'GALLINAS', 2),
	(5, 'GALLOS', 2),
	(6, 'ANIMALES DE DESCARTE', 2),
	(7, 'GALLINAS DE DESCARTE', 2),
	(8, 'GALLOS DE DESCARTE', 2),
	(9, 'HUEVOS FERTILES', 2),
	(10, 'HUEVOS DE CONSUMO', 2),
	(11, 'GALLINAS ROJAS', 2),
	(12, 'SERVICIO DE INCUBACIÓN HUEVOS FÉRTILES', 2);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.unidades
CREATE TABLE IF NOT EXISTS `unidades` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `unidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bddinagro.unidades: ~2 rows (aproximadamente)
DELETE FROM `unidades`;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` (`id`, `unidad`) VALUES
	(1, 'LTR'),
	(2, 'UND'),
	(3, 'KG');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bddinagro.users: ~0 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.ventas
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `cliente_id` int(10) unsigned DEFAULT NULL,
  `centro_id` int(10) unsigned DEFAULT NULL,
  `observacion` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `impreso` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `centro_id` (`centro_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`centro_id`) REFERENCES `centros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bddinagro.ventas: ~52 rows (aproximadamente)
DELETE FROM `ventas`;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` (`id`, `fecha`, `cliente_id`, `centro_id`, `observacion`, `created_at`, `updated_at`, `impreso`) VALUES
	(1, '2021-09-27', 1, 1, 'Prueba de Registro', NULL, NULL, NULL),
	(2, '2021-09-27', 1, 1, 'dasdf', NULL, NULL, NULL),
	(3, '2021-09-27', 13, 14, 'dfasdfasdf', NULL, NULL, NULL),
	(4, '2021-10-05', 1, 1, NULL, '2021-10-05 11:45:07', NULL, NULL),
	(5, '2021-10-05', 1, 1, NULL, '2021-10-05 11:47:55', NULL, NULL),
	(6, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 11:48:07', NULL, NULL),
	(7, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:26:07', NULL, NULL),
	(8, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:26:45', NULL, NULL),
	(9, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:26:59', NULL, NULL),
	(10, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:27:26', NULL, NULL),
	(11, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:37:55', NULL, NULL),
	(12, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:39:13', NULL, NULL),
	(13, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:39:41', NULL, NULL),
	(14, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:40:10', NULL, NULL),
	(15, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:40:28', NULL, NULL),
	(16, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:40:49', NULL, NULL),
	(17, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:41:36', NULL, NULL),
	(18, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:43:30', NULL, NULL),
	(19, '2021-10-05', 1, 1, 'xsadf', '2021-10-05 13:43:48', NULL, NULL),
	(20, '2021-10-05', 1, 1, 'dfasdf', '2021-10-05 13:44:57', NULL, NULL),
	(21, '2021-10-05', 1, 1, 'dfasdf', '2021-10-05 13:45:38', NULL, NULL),
	(22, '2021-10-05', 1, 1, 'fsdfasdf', '2021-10-05 13:52:49', NULL, NULL),
	(23, '2021-10-05', 1, 1, 'asdfasdf', '2021-10-05 13:55:18', NULL, NULL),
	(24, '2021-10-05', 1, 1, 'ejemplos', '2021-10-05 15:14:41', NULL, NULL),
	(25, '2021-10-05', 1, 1, 'ejemplos', '2021-10-05 15:16:06', NULL, NULL),
	(26, '2021-10-05', 1, 1, 'ejemplos', '2021-10-05 15:16:09', NULL, NULL),
	(27, '2021-10-05', 1, 1, 'ejemplos', '2021-10-05 15:16:40', NULL, NULL),
	(28, '2021-10-05', 1, 1, 'ejemplos', '2021-10-05 15:16:47', NULL, NULL),
	(29, '2021-10-05', 1, 1, 'ejemplos', '2021-10-05 15:17:14', NULL, NULL),
	(30, '2021-10-05', 1, 1, 'ffff', '2021-10-05 15:18:21', NULL, NULL),
	(31, '2021-10-05', 1, 1, 'ffff', '2021-10-05 15:19:41', NULL, NULL),
	(32, '2021-10-05', 1, 1, 'eeee', '2021-10-05 15:20:00', NULL, NULL),
	(33, '2021-10-05', 1, 1, 'eeee', '2021-10-05 15:23:01', NULL, NULL),
	(34, '2021-10-05', 1, 1, 'eeee', '2021-10-05 15:23:15', NULL, NULL),
	(35, '2021-10-05', 1, 1, 'eeee', '2021-10-05 15:26:00', NULL, NULL),
	(36, '2021-10-05', 1, 1, 'eeee', '2021-10-05 15:26:19', NULL, NULL),
	(37, '2021-10-05', 1, 1, 'eeee', '2021-10-05 15:26:42', NULL, NULL),
	(38, '2021-10-05', 1, 1, 'eeee', '2021-10-05 15:27:09', NULL, NULL),
	(39, '2021-10-05', 1, 1, 'eeee', '2021-10-05 15:27:31', NULL, NULL),
	(40, '2021-10-05', 1, 1, 'sadfasdf', '2021-10-05 15:30:55', NULL, NULL),
	(41, '2021-10-05', 1, 1, 'sdfsdaf', '2021-10-05 15:32:40', NULL, NULL),
	(42, '2021-10-05', 1, 1, 'sdfg', '2021-10-05 15:34:25', NULL, '2021-10-07 10:10:35'),
	(43, '2021-10-05', 1, 1, 'sdfg', '2021-10-05 15:36:04', NULL, '2021-10-07 10:10:35'),
	(44, '2021-10-05', 1, 1, 'sdfasdf', '2021-10-05 15:54:55', NULL, '2021-10-07 10:10:35'),
	(45, '2021-10-05', 1, 1, 'sdfasdf', '2021-10-05 16:00:17', NULL, '2021-10-07 10:10:35'),
	(46, '2021-10-05', 1, 1, 'sdfasdf', '2021-10-05 16:00:36', NULL, '2021-10-07 12:10:03'),
	(47, '2021-10-05', 1, 1, 'sdfasdf', '2021-10-05 16:02:22', NULL, '2021-10-07 12:10:03'),
	(48, '2021-10-03', 1, 1, 'asdfadsf', '2021-10-05 16:04:10', NULL, '2021-10-07 12:10:03'),
	(49, '2021-10-05', 1, 1, 'dfafd', '2021-10-05 16:43:00', NULL, '2021-10-07 10:10:44'),
	(50, '2021-10-05', 1, 1, 'dfafd', '2021-10-05 16:46:14', NULL, '2021-10-07 10:10:44'),
	(52, '2021-10-07', 5, 1, 'Nuevo', '2021-10-07 10:32:20', NULL, '2021-10-07 12:10:03'),
	(53, '2021-10-07', 15, 1, 'asdfasdf', '2021-10-07 10:38:46', NULL, '2021-10-07 12:10:03');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;

-- Volcando estructura para tabla bddinagro.ventas_productos
CREATE TABLE IF NOT EXISTS `ventas_productos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `venta_id` int(10) unsigned DEFAULT NULL,
  `producto_id` int(10) unsigned DEFAULT NULL,
  `precio` decimal(17,5) DEFAULT NULL,
  `cantidad` decimal(17,5) DEFAULT NULL,
  `subtotal` decimal(17,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  KEY `ventas_productos_ibfk_2` (`venta_id`),
  CONSTRAINT `ventas_productos_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `ventas_productos_ibfk_2` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla bddinagro.ventas_productos: ~38 rows (aproximadamente)
DELETE FROM `ventas_productos`;
/*!40000 ALTER TABLE `ventas_productos` DISABLE KEYS */;
INSERT INTO `ventas_productos` (`id`, `venta_id`, `producto_id`, `precio`, `cantidad`, `subtotal`) VALUES
	(1, 1, 3, 55.00000, 2000.00000, 110000.00000),
	(2, 1, 4, 100.00000, 10.00000, 1000.00000),
	(3, 2, 2, 1000.00000, 100000.00000, 100000000.00000),
	(4, 3, 11, 5000.00000, 20.00000, 100000.00000),
	(5, 20, 6, 100.00000, 210.00000, NULL),
	(6, 20, 10, 200.00000, 10.00000, NULL),
	(7, 21, 6, 100.00000, 210.00000, NULL),
	(8, 21, 10, 200.00000, 10.00000, NULL),
	(9, 22, 8, 254.00000, 544.00000, NULL),
	(10, 22, 11, 25.00000, 2558.00000, NULL),
	(11, 36, 5, 100.00000, 20.00000, 20.00000),
	(12, 36, 6, 25.00000, 25.00000, 25.00000),
	(13, 37, 5, 100.00000, 20.00000, 20.00000),
	(14, 37, 6, 25.00000, 25.00000, 25.00000),
	(15, 38, 5, 100.00000, 20.00000, 2000.00000),
	(16, 38, 6, 25.00000, 25.00000, 625.00000),
	(17, 39, 5, 100.00000, 20.00000, 2000.00000),
	(18, 39, 6, 25.00000, 25.00000, 625.00000),
	(19, 42, 6, 10.00000, 10.00000, 100.00000),
	(20, 43, 6, 10.00000, 10.00000, 100.00000),
	(21, 44, 4, 50.00000, 25.00000, 1250.00000),
	(22, 45, 4, 50.00000, 52.00000, 2600.00000),
	(23, 46, 4, 50.00000, 52.00000, 2600.00000),
	(24, 46, 11, 58.00000, 5.00000, 290.00000),
	(25, 47, 4, 50.00000, 52.00000, 2600.00000),
	(26, 47, 6, 2.00000, 10.00000, 20.00000),
	(27, 47, 11, 58.00000, 5.00000, 290.00000),
	(28, 48, 6, 5.00000, 5.00000, 25.00000),
	(29, 49, 10, 10.00000, 10.00000, 100.00000),
	(30, 49, 12, 36000.00000, 50.00000, 1800000.00000),
	(31, 50, 6, 5.00000, 0.50000, 2.50000),
	(32, 50, 10, 10.00000, 10.00000, 100.00000),
	(33, 50, 12, 36000.00000, 50.00000, 1800000.00000),
	(37, 52, 5, 500.00000, 10.00000, 5000.00000),
	(38, 52, 6, 50.00000, 5000.00000, 250000.00000),
	(39, 53, 1, 5883.58000, 25.25000, 148560.39500),
	(40, 53, 4, 50.00000, 25.00000, 1250.00000),
	(41, 53, 5, 25.00000, 25.00000, 625.00000);
/*!40000 ALTER TABLE `ventas_productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
