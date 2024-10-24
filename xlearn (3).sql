-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 24 oct. 2024 à 11:00
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `xlearn`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 8, 'Admin', 'icon-server', '', NULL, NULL, '2024-08-09 09:16:04'),
(3, 2, 9, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2024-08-09 09:16:04'),
(4, 2, 10, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2024-08-09 09:16:04'),
(5, 2, 11, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2024-08-09 09:16:04'),
(6, 2, 12, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2024-08-09 09:16:04'),
(7, 2, 13, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2024-08-09 09:16:04'),
(8, 0, 7, 'Annonces', 'icon-blog', 'panel-announcements', '*', '2024-08-08 20:55:49', '2024-08-15 09:53:16'),
(9, 0, 2, 'Courses', 'icon-chalkboard-teacher', 'panel-courses', '*', '2024-08-09 09:11:47', '2024-08-15 09:50:44'),
(10, 0, 3, 'Lessons', 'icon-file-video', 'panel-lessons', '*', '2024-08-09 09:13:06', '2024-08-15 09:51:21'),
(11, 0, 4, 'Categories', 'icon-tags', 'panel-categories', '*', '2024-08-09 09:13:51', '2024-08-15 09:51:40'),
(12, 0, 5, 'Quizzes', 'icon-question-circle', 'panel-quizzes', '*', '2024-08-09 09:15:21', '2024-08-15 09:52:24'),
(13, 0, 6, 'Progress', 'icon-tasks', 'panel-progress', '*', '2024-08-09 09:15:55', '2024-08-15 09:52:52'),
(14, 0, 14, 'Log viewer', 'icon-exclamation-triangle', 'logs', NULL, '2024-08-09 09:29:46', '2024-08-09 09:29:46'),
(15, 0, 15, 'Media manager', 'icon-file', 'media', NULL, '2024-08-09 09:58:34', '2024-08-09 09:58:34');

-- --------------------------------------------------------

--
-- Structure de la table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-07 21:54:44', '2024-08-07 21:54:44'),
(2, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-07 21:55:39', '2024-08-07 21:55:39'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-08 20:54:37', '2024-08-08 20:54:37'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-08 20:54:55', '2024-08-08 20:54:55'),
(5, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Annonces\",\"icon\":\"icon-blog\",\"uri\":\"announcements\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"khJgiRvbkwd6eI26zAWiLvBdf30p0jik62tnlw2y\"}', '2024-08-08 20:55:49', '2024-08-08 20:55:49'),
(6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-08 20:55:49', '2024-08-08 20:55:49'),
(7, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"8\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]}]\",\"_token\":\"khJgiRvbkwd6eI26zAWiLvBdf30p0jik62tnlw2y\"}', '2024-08-08 20:55:57', '2024-08-08 20:55:57'),
(8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-08 20:55:57', '2024-08-08 20:55:57'),
(9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-08 20:56:06', '2024-08-08 20:56:06'),
(10, 1, 'admin/announcements', 'GET', '127.0.0.1', '[]', '2024-08-08 20:56:22', '2024-08-08 20:56:22'),
(11, 1, 'admin/announcements', 'GET', '127.0.0.1', '[]', '2024-08-08 20:56:42', '2024-08-08 20:56:42'),
(12, 1, 'admin/announcements/create', 'GET', '127.0.0.1', '[]', '2024-08-08 20:56:54', '2024-08-08 20:56:54'),
(13, 1, 'admin/announcements', 'POST', '127.0.0.1', '{\"title\":\"\\ud83d\\udfe7 New annoce \\ud83d\\udd34\",\"content\":\"body annonce !!\",\"link\":\"https:\\/\\/google.ci\",\"is_published\":\"on\",\"is_published_cb\":\"on\",\"publish_at\":\"2024-08-08 22:56:55\",\"expire_at\":\"2024-08-30 12:00:00\",\"_token\":\"khJgiRvbkwd6eI26zAWiLvBdf30p0jik62tnlw2y\"}', '2024-08-08 20:58:31', '2024-08-08 20:58:31'),
(14, 1, 'admin/announcements/create', 'GET', '127.0.0.1', '[]', '2024-08-08 20:58:32', '2024-08-08 20:58:32'),
(15, 1, 'admin/announcements', 'POST', '127.0.0.1', '{\"title\":\"New annoce\",\"content\":\"\\ud83d\\udfe7body annonce !!\\ud83d\\udd34\",\"link\":\"https:\\/\\/google.ci\",\"is_published\":\"on\",\"is_published_cb\":\"on\",\"publish_at\":\"2024-08-08 22:56:55\",\"expire_at\":\"2024-08-30 12:00:00\",\"_token\":\"khJgiRvbkwd6eI26zAWiLvBdf30p0jik62tnlw2y\"}', '2024-08-08 20:59:00', '2024-08-08 20:59:00'),
(16, 1, 'admin/announcements/create', 'GET', '127.0.0.1', '[]', '2024-08-08 20:59:00', '2024-08-08 20:59:00'),
(17, 1, 'admin/announcements', 'POST', '127.0.0.1', '{\"title\":\"New annoce\",\"content\":\"body annonce !!\",\"link\":\"https:\\/\\/google.ci\",\"is_published\":\"on\",\"is_published_cb\":\"on\",\"publish_at\":\"2024-08-08 22:56:55\",\"expire_at\":\"2024-08-30 12:00:00\",\"_token\":\"khJgiRvbkwd6eI26zAWiLvBdf30p0jik62tnlw2y\"}', '2024-08-08 20:59:08', '2024-08-08 20:59:08'),
(18, 1, 'admin/announcements/create', 'GET', '127.0.0.1', '[]', '2024-08-08 20:59:09', '2024-08-08 20:59:09'),
(19, 1, 'admin/announcements', 'POST', '127.0.0.1', '{\"title\":\"New annoce\",\"content\":\"body annonce !!\",\"link\":\"https:\\/\\/google.ci\",\"is_published\":\"on\",\"is_published_cb\":\"on\",\"publish_at\":\"2024-08-08 22:56:55\",\"expire_at\":\"2024-08-30 12:00:00\",\"_token\":\"khJgiRvbkwd6eI26zAWiLvBdf30p0jik62tnlw2y\"}', '2024-08-08 21:36:34', '2024-08-08 21:36:34'),
(20, 1, 'admin/announcements', 'GET', '127.0.0.1', '[]', '2024-08-08 21:36:34', '2024-08-08 21:36:34'),
(21, 1, 'admin/announcements/1/edit', 'GET', '127.0.0.1', '[]', '2024-08-08 21:36:46', '2024-08-08 21:36:46'),
(22, 1, 'admin/announcements/1', 'GET', '127.0.0.1', '[]', '2024-08-08 21:36:53', '2024-08-08 21:36:53'),
(23, 1, 'admin/announcements', 'GET', '127.0.0.1', '[]', '2024-08-08 21:36:57', '2024-08-08 21:36:57'),
(24, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 07:51:57', '2024-08-09 07:51:57'),
(25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:02:30', '2024-08-09 09:02:30'),
(26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:02:57', '2024-08-09 09:02:57'),
(27, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:00', '2024-08-09 09:03:00'),
(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:04', '2024-08-09 09:03:04'),
(29, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:08', '2024-08-09 09:03:08'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:15', '2024-08-09 09:03:15'),
(31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:19', '2024-08-09 09:03:19'),
(32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:23', '2024-08-09 09:03:23'),
(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:26', '2024-08-09 09:03:26'),
(34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:28', '2024-08-09 09:03:28'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:31', '2024-08-09 09:03:31'),
(36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:34', '2024-08-09 09:03:34'),
(37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:36', '2024-08-09 09:03:36'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:38', '2024-08-09 09:03:38'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:41', '2024-08-09 09:03:41'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:03:44', '2024-08-09 09:03:44'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:09:52', '2024-08-09 09:09:52'),
(42, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Courses\",\"icon\":\"icon-chalkboard-teacher\",\"uri\":\"courses\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\"}', '2024-08-09 09:11:46', '2024-08-09 09:11:46'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:11:49', '2024-08-09 09:11:49'),
(44, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Lessons\",\"icon\":\"icon-clone\",\"uri\":\"lessons\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\"}', '2024-08-09 09:13:05', '2024-08-09 09:13:05'),
(45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:13:07', '2024-08-09 09:13:07'),
(46, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Categories\",\"icon\":\"icon-tags\",\"uri\":\"categories\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\"}', '2024-08-09 09:13:51', '2024-08-09 09:13:51'),
(47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:13:52', '2024-08-09 09:13:52'),
(48, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '[]', '2024-08-09 09:13:59', '2024-08-09 09:13:59'),
(49, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Lessons\",\"icon\":\"icon-file-video\",\"uri\":\"lessons\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\",\"_method\":\"PUT\"}', '2024-08-09 09:14:34', '2024-08-09 09:14:34'),
(50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:14:36', '2024-08-09 09:14:36'),
(51, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Quizzes\",\"icon\":\"icon-question-circle\",\"uri\":\"quizzes\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\"}', '2024-08-09 09:15:21', '2024-08-09 09:15:21'),
(52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:15:23', '2024-08-09 09:15:23'),
(53, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Progress\",\"icon\":\"icon-tasks\",\"uri\":\"progress\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\"}', '2024-08-09 09:15:54', '2024-08-09 09:15:54'),
(54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:15:56', '2024-08-09 09:15:56'),
(55, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"8\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]}]\",\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\"}', '2024-08-09 09:16:04', '2024-08-09 09:16:04'),
(56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-09 09:16:06', '2024-08-09 09:16:06'),
(57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 09:16:23', '2024-08-09 09:16:23'),
(58, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 10:36:16', '2024-08-09 10:36:16'),
(59, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 10:36:26', '2024-08-09 10:36:26'),
(60, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-09 10:37:38', '2024-08-09 10:37:38'),
(61, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-08-09 10:37:58', '2024-08-09 10:37:58'),
(62, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-09 10:38:07', '2024-08-09 10:38:07'),
(63, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-08-09 10:38:18', '2024-08-09 10:38:18'),
(64, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"instructor\",\"name\":\"Instructor\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",null],\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\"}', '2024-08-09 10:38:38', '2024-08-09 10:38:38'),
(65, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-09 10:38:40', '2024-08-09 10:38:40'),
(66, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-09 10:38:58', '2024-08-09 10:38:58'),
(67, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-08-09 10:39:14', '2024-08-09 10:39:14'),
(68, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"Instructor\",\"name\":\"Instructor\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"admin\",\"roles\":[\"2\",null],\"search_terms\":null,\"permissions\":[\"1\",null],\"_token\":\"KkxJZXowo2Y9YvaTS0uHFcAlIHkYzAMHEMSePho0\"}', '2024-08-09 10:40:07', '2024-08-09 10:40:07'),
(69, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-09 10:40:10', '2024-08-09 10:40:10'),
(70, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 10:53:17', '2024-08-09 10:53:17'),
(71, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 10:54:12', '2024-08-09 10:54:12'),
(72, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 11:03:55', '2024-08-09 11:03:55'),
(73, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-09 11:04:35', '2024-08-09 11:04:35'),
(74, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-09 11:04:56', '2024-08-09 11:04:56'),
(75, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 11:05:27', '2024-08-09 11:05:27'),
(76, 2, 'admin/media', 'GET', '127.0.0.1', '[]', '2024-08-09 11:05:47', '2024-08-09 11:05:47'),
(77, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 11:58:16', '2024-08-09 11:58:16'),
(78, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-09 11:58:43', '2024-08-09 11:58:43'),
(79, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 12:00:10', '2024-08-09 12:00:10'),
(80, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 12:08:37', '2024-08-09 12:08:37'),
(81, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-09 12:09:39', '2024-08-09 12:09:39'),
(82, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 12:10:07', '2024-08-09 12:10:07'),
(83, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-09 12:12:14', '2024-08-09 12:12:14'),
(84, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-09 12:13:11', '2024-08-09 12:13:11'),
(85, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-09 12:13:17', '2024-08-09 12:13:17'),
(86, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-09 12:13:24', '2024-08-09 12:13:24'),
(87, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-08-09 12:20:40', '2024-08-09 12:20:40'),
(88, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"courses\",\"name\":\"Course\",\"http_method\":[\"POST\",\"GET\",\"DELETE\",\"HEAD\",\"OPTIONS\",\"PATCH\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/courses\",\"_token\":\"Akh3lgrHev1LVx7PB2T0Gli2BxpxGAOIsSCSp0t5\"}', '2024-08-09 12:21:35', '2024-08-09 12:21:35'),
(89, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-09 12:21:37', '2024-08-09 12:21:37'),
(90, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-08-09 12:21:50', '2024-08-09 12:21:50'),
(91, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"courses\",\"name\":\"Course\",\"http_method\":[\"DELETE\",\"GET\",\"HEAD\",\"OPTIONS\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/courses\\/*\",\"_token\":\"Akh3lgrHev1LVx7PB2T0Gli2BxpxGAOIsSCSp0t5\",\"_method\":\"PUT\"}', '2024-08-09 12:21:58', '2024-08-09 12:21:58'),
(92, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-09 12:22:00', '2024-08-09 12:22:00'),
(93, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-08-09 12:22:11', '2024-08-09 12:22:11'),
(94, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"courses\",\"name\":\"Course\",\"http_method\":[\"DELETE\",\"GET\",\"HEAD\",\"OPTIONS\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/courses*\",\"_token\":\"Akh3lgrHev1LVx7PB2T0Gli2BxpxGAOIsSCSp0t5\",\"_method\":\"PUT\"}', '2024-08-09 12:22:23', '2024-08-09 12:22:23'),
(95, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-09 12:22:25', '2024-08-09 12:22:25'),
(96, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-09 12:22:34', '2024-08-09 12:22:34'),
(97, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-09 12:22:41', '2024-08-09 12:22:41'),
(98, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"Instructor\",\"name\":\"Instructor\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$10$huyr4i3HyOtDM.IWqGPz4eENX9OfH9fQX\\/nIBJYfe1fB5fCiuO2UK\",\"roles\":[\"2\",null],\"search_terms\":null,\"permissions\":[\"1\",\"8\",null],\"_token\":\"Akh3lgrHev1LVx7PB2T0Gli2BxpxGAOIsSCSp0t5\",\"_method\":\"PUT\"}', '2024-08-09 12:22:53', '2024-08-09 12:22:53'),
(99, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-09 12:22:54', '2024-08-09 12:22:54'),
(100, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-09 12:22:59', '2024-08-09 12:22:59'),
(101, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-09 12:23:06', '2024-08-09 12:23:06'),
(102, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"instructor\",\"name\":\"Instructor\",\"permissions\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",null],\"_token\":\"Akh3lgrHev1LVx7PB2T0Gli2BxpxGAOIsSCSp0t5\",\"_method\":\"PUT\"}', '2024-08-09 12:23:11', '2024-08-09 12:23:11'),
(103, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-09 12:23:13', '2024-08-09 12:23:13'),
(104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 12:23:26', '2024-08-09 12:23:26'),
(105, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-09 12:23:46', '2024-08-09 12:23:46'),
(106, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 12:24:14', '2024-08-09 12:24:14'),
(107, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 12:24:34', '2024-08-09 12:24:34'),
(108, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-09 12:24:56', '2024-08-09 12:24:56'),
(109, 2, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-08-09 12:25:30', '2024-08-09 12:25:30'),
(110, 2, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"courses.management\",\"name\":\"Course\",\"http_method\":[\"DELETE\",\"GET\",\"HEAD\",\"OPTIONS\",\"PATCH\",\"POST\",\"PUT\",null],\"search_terms\":null,\"http_path\":\"\\/courses*\",\"_token\":\"g3BTD3GTfWq3N39GIUCvGvo89Ml7l9EVdWa9Uj8k\",\"_method\":\"PUT\"}', '2024-08-09 12:25:38', '2024-08-09 12:25:38'),
(111, 2, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-08-09 12:25:40', '2024-08-09 12:25:40'),
(112, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-08-09 12:25:54', '2024-08-09 12:25:54'),
(113, 2, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-08-09 12:26:02', '2024-08-09 12:26:02'),
(114, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-09 12:26:20', '2024-08-09 12:26:20'),
(115, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-09 12:26:31', '2024-08-09 12:26:31'),
(116, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-10 17:45:57', '2024-08-10 17:45:57'),
(117, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-10 17:46:01', '2024-08-10 17:46:01'),
(118, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-08-10 17:46:31', '2024-08-10 17:46:31'),
(119, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-10 17:46:46', '2024-08-10 17:46:46'),
(120, 1, 'admin/lessons', 'GET', '127.0.0.1', '[]', '2024-08-10 17:47:25', '2024-08-10 17:47:25'),
(121, 1, 'admin/lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-10 17:47:35', '2024-08-10 17:47:35'),
(122, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-10 17:54:41', '2024-08-10 17:54:41'),
(123, 1, 'admin/lessons', 'GET', '127.0.0.1', '[]', '2024-08-10 18:52:31', '2024-08-10 18:52:31'),
(124, 1, 'admin/lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-10 18:52:36', '2024-08-10 18:52:36'),
(125, 1, 'admin/lessons', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"search_terms\":null,\"title\":\"Lesson 1\",\"content\":\"Content 001\",\"order\":\"1\",\"_token\":\"KePEoqYxc05FwC86zJOsOoJLkCVT3c8EcpGRO1dB\"}', '2024-08-10 18:53:50', '2024-08-10 18:53:50'),
(126, 1, 'admin/lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-10 18:53:51', '2024-08-10 18:53:51'),
(127, 1, 'admin/lessons', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"search_terms\":null,\"title\":\"Lesson 1\",\"content\":\"Content 001\",\"order\":\"1\",\"_token\":\"KePEoqYxc05FwC86zJOsOoJLkCVT3c8EcpGRO1dB\"}', '2024-08-10 18:54:31', '2024-08-10 18:54:31'),
(128, 1, 'admin/lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-10 18:54:32', '2024-08-10 18:54:32'),
(129, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-15 09:00:59', '2024-08-15 09:00:59'),
(130, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-15 09:48:53', '2024-08-15 09:48:53'),
(131, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-15 09:49:10', '2024-08-15 09:49:10'),
(132, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2024-08-15 09:49:43', '2024-08-15 09:49:43'),
(133, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Courses\",\"icon\":\"icon-chalkboard-teacher\",\"uri\":\"panel-courses\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"_method\":\"PUT\"}', '2024-08-15 09:50:43', '2024-08-15 09:50:43'),
(134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-15 09:50:47', '2024-08-15 09:50:47'),
(135, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '[]', '2024-08-15 09:51:11', '2024-08-15 09:51:11'),
(136, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Lessons\",\"icon\":\"icon-file-video\",\"uri\":\"panel-lessons\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"_method\":\"PUT\"}', '2024-08-15 09:51:21', '2024-08-15 09:51:21'),
(137, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-15 09:51:23', '2024-08-15 09:51:23'),
(138, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '[]', '2024-08-15 09:51:29', '2024-08-15 09:51:29'),
(139, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Categories\",\"icon\":\"icon-tags\",\"uri\":\"panel-categories\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"_method\":\"PUT\"}', '2024-08-15 09:51:40', '2024-08-15 09:51:40'),
(140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-15 09:51:42', '2024-08-15 09:51:42'),
(141, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '[]', '2024-08-15 09:51:50', '2024-08-15 09:51:50'),
(142, 1, 'admin/auth/menu/12', 'GET', '127.0.0.1', '[]', '2024-08-15 09:52:09', '2024-08-15 09:52:09'),
(143, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '[]', '2024-08-15 09:52:10', '2024-08-15 09:52:10'),
(144, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Quizzes\",\"icon\":\"icon-question-circle\",\"uri\":\"panel-quizzes\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\\/12\"}', '2024-08-15 09:52:24', '2024-08-15 09:52:24'),
(145, 1, 'admin/auth/menu/12', 'GET', '127.0.0.1', '[]', '2024-08-15 09:52:26', '2024-08-15 09:52:26'),
(146, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '[]', '2024-08-15 09:52:28', '2024-08-15 09:52:28'),
(147, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Quizzes\",\"icon\":\"icon-question-circle\",\"uri\":\"panel-quizzes\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"_method\":\"PUT\"}', '2024-08-15 09:52:35', '2024-08-15 09:52:35'),
(148, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-15 09:52:38', '2024-08-15 09:52:38'),
(149, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '[]', '2024-08-15 09:52:44', '2024-08-15 09:52:44'),
(150, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Progress\",\"icon\":\"icon-tasks\",\"uri\":\"panel-progress\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"_method\":\"PUT\"}', '2024-08-15 09:52:51', '2024-08-15 09:52:51'),
(151, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-15 09:52:54', '2024-08-15 09:52:54'),
(152, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Progress\",\"icon\":\"icon-tasks\",\"uri\":\"panel-progress\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"_method\":\"PUT\"}', '2024-08-15 09:52:57', '2024-08-15 09:52:57'),
(153, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-15 09:53:00', '2024-08-15 09:53:00'),
(154, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '[]', '2024-08-15 09:53:07', '2024-08-15 09:53:07'),
(155, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Annonces\",\"icon\":\"icon-blog\",\"uri\":\"panel-announcements\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"_method\":\"PUT\"}', '2024-08-15 09:53:16', '2024-08-15 09:53:16'),
(156, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-08-15 09:53:18', '2024-08-15 09:53:18'),
(157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-15 09:53:39', '2024-08-15 09:53:39'),
(158, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 09:53:45', '2024-08-15 09:53:45'),
(159, 1, 'admin/panel-courses/create', 'GET', '127.0.0.1', '[]', '2024-08-15 09:53:56', '2024-08-15 09:53:56'),
(160, 1, 'admin/panel-courses', 'POST', '127.0.0.1', '{\"instructor_id\":\"1\",\"title\":\"New Course NFS\",\"description\":\"NATURAL FILE SECURE\",\"category_id\":\"3\",\"search_terms\":null,\"price\":\"300\",\"is_published\":\"on\",\"is_published_cb\":\"on\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\",\"after-save\":\"view\"}', '2024-08-15 09:55:12', '2024-08-15 09:55:12'),
(161, 1, 'admin/panel-courses/create', 'GET', '127.0.0.1', '[]', '2024-08-15 09:55:14', '2024-08-15 09:55:14'),
(162, 1, 'admin/panel-courses', 'POST', '127.0.0.1', '{\"instructor_id\":\"1\",\"title\":\"New Course NFS\",\"description\":\"NATURAL FILE SECURE\",\"category_id\":\"3\",\"search_terms\":null,\"price\":\"300\",\"is_published\":\"on\",\"is_published_cb\":\"on\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\"}', '2024-08-15 09:55:27', '2024-08-15 09:55:27'),
(163, 1, 'admin/panel-courses/create', 'GET', '127.0.0.1', '[]', '2024-08-15 09:55:29', '2024-08-15 09:55:29'),
(164, 1, 'admin/panel-courses', 'POST', '127.0.0.1', '{\"instructor_id\":\"1\",\"title\":\"New Course NFS\",\"description\":\"NATURAL FILE SECURE\",\"category_id\":\"3\",\"search_terms\":null,\"price\":\"300\",\"is_published\":\"on\",\"is_published_cb\":\"on\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\"}', '2024-08-15 09:55:32', '2024-08-15 09:55:32'),
(165, 1, 'admin/panel-courses/create', 'GET', '127.0.0.1', '[]', '2024-08-15 09:55:35', '2024-08-15 09:55:35'),
(166, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:08:27', '2024-08-15 10:08:27'),
(167, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:08:37', '2024-08-15 10:08:37'),
(168, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:08:50', '2024-08-15 10:08:50'),
(169, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:09:01', '2024-08-15 10:09:01'),
(170, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:09:17', '2024-08-15 10:09:17'),
(171, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:09:29', '2024-08-15 10:09:29'),
(172, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:10:04', '2024-08-15 10:10:04'),
(173, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:10:12', '2024-08-15 10:10:12'),
(174, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:10:19', '2024-08-15 10:10:19'),
(175, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:10:25', '2024-08-15 10:10:25'),
(176, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:10:31', '2024-08-15 10:10:31'),
(177, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:10:39', '2024-08-15 10:10:39'),
(178, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:10:47', '2024-08-15 10:10:47'),
(179, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:12:41', '2024-08-15 10:12:41'),
(180, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:15:12', '2024-08-15 10:15:12'),
(181, 1, 'admin/panel-courses', 'GET', '127.0.0.1', '[]', '2024-08-15 10:19:09', '2024-08-15 10:19:09'),
(182, 1, 'admin/panel-courses/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"is_published\":\"on\",\"after-save\":\"exit\"}', '2024-08-15 10:19:32', '2024-08-15 10:19:32'),
(183, 1, 'admin/panel-courses/create', 'GET', '127.0.0.1', '[]', '2024-08-15 10:21:53', '2024-08-15 10:21:53'),
(184, 1, 'admin/panel-courses/1', 'GET', '127.0.0.1', '[]', '2024-08-15 10:22:53', '2024-08-15 10:22:53'),
(185, 1, 'admin/panel-courses/create', 'GET', '127.0.0.1', '[]', '2024-08-15 10:23:08', '2024-08-15 10:23:08'),
(186, 1, 'admin/panel-courses/1', 'GET', '127.0.0.1', '[]', '2024-08-15 10:25:10', '2024-08-15 10:25:10'),
(187, 1, 'admin/panel-courses/1', 'GET', '127.0.0.1', '[]', '2024-08-15 10:28:12', '2024-08-15 10:28:12'),
(188, 1, 'admin/panel-courses/1', 'GET', '127.0.0.1', '[]', '2024-08-15 10:29:36', '2024-08-15 10:29:36'),
(189, 1, 'admin/panel-courses/1', 'GET', '127.0.0.1', '[]', '2024-08-15 10:31:07', '2024-08-15 10:31:07'),
(190, 1, 'admin/panel-courses/1', 'GET', '127.0.0.1', '[]', '2024-08-15 10:31:56', '2024-08-15 10:31:56'),
(191, 1, 'admin/panel-courses/1', 'GET', '127.0.0.1', '[]', '2024-08-15 10:37:03', '2024-08-15 10:37:03'),
(192, 1, 'admin/panel-lessons', 'GET', '127.0.0.1', '[]', '2024-08-15 10:37:40', '2024-08-15 10:37:40'),
(193, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 10:37:46', '2024-08-15 10:37:46'),
(194, 1, 'admin/panel-lessons', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"search_terms\":null,\"title\":\"First Lesson\",\"content\":\"Conten of First lesson\",\"order\":\"1\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\"}', '2024-08-15 10:42:26', '2024-08-15 10:42:26'),
(195, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 10:42:29', '2024-08-15 10:42:29'),
(196, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 10:53:47', '2024-08-15 10:53:47'),
(197, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:04:36', '2024-08-15 11:04:36'),
(198, 1, 'admin/panel-lessons', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"search_terms\":null,\"title\":\"INTRO\",\"content\":\"Content Lesson 1\",\"order\":\"1\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\"}', '2024-08-15 11:06:24', '2024-08-15 11:06:24'),
(199, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:06:28', '2024-08-15 11:06:28'),
(200, 1, 'admin/panel-lessons', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"search_terms\":null,\"title\":\"INTRO\",\"content\":\"Content Lesson 1\",\"order\":\"1\",\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\"}', '2024-08-15 11:12:46', '2024-08-15 11:12:46'),
(201, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:12:52', '2024-08-15 11:12:52'),
(202, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:13:01', '2024-08-15 11:13:01'),
(203, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:17:51', '2024-08-15 11:17:51'),
(204, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:18:45', '2024-08-15 11:18:45'),
(205, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:20:39', '2024-08-15 11:20:39'),
(206, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:21:22', '2024-08-15 11:21:22'),
(207, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:23:34', '2024-08-15 11:23:34'),
(208, 1, 'admin/panel-lessons', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"search_terms\":null,\"title\":\"Lesson 1 of New Course 01\",\"content\":\"<p>Content of lesson&nbsp;<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<table border=\\\"1\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\" style=\\\"width:500px\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>1<\\/td>\\r\\n\\t\\t\\t<td>p<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>p<\\/td>\\r\\n\\t\\t\\t<td>pi<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>p<\\/td>\\r\\n\\t\\t\\t<td>j<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n\\r\\n<hr \\/>\\r\\n<p>link:&nbsp;<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<p>Source<\\/p>\",\"order\":\"1\",\"tags\":[\"tag2\",\"tag3\",null],\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\"}', '2024-08-15 11:25:59', '2024-08-15 11:25:59'),
(209, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:26:00', '2024-08-15 11:26:00'),
(210, 1, 'admin/panel-lessons', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"search_terms\":null,\"title\":\"Lesson 1 of New Course 01\",\"content\":\"<p>Content of lesson&nbsp;<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<table border=\\\"1\\\" cellpadding=\\\"1\\\" cellspacing=\\\"1\\\" style=\\\"width:500px\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>1<\\/td>\\r\\n\\t\\t\\t<td>p<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>p<\\/td>\\r\\n\\t\\t\\t<td>pi<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>p<\\/td>\\r\\n\\t\\t\\t<td>j<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n\\r\\n<hr \\/>\\r\\n<p>link:&nbsp;<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<p>Source<\\/p>\",\"order\":\"1\",\"tags\":[null],\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\"}', '2024-08-15 11:31:21', '2024-08-15 11:31:21'),
(211, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:31:54', '2024-08-15 11:31:54'),
(212, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:32:12', '2024-08-15 11:32:12'),
(213, 1, 'admin/panel-lessons', 'POST', '127.0.0.1', '{\"course_id\":\"1\",\"search_terms\":null,\"title\":\"Lesson 1\",\"content\":\"<p>Content of Lesson 1<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<p>Link:&nbsp;<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<p>Sources :&nbsp;<\\/p>\",\"order\":\"1\",\"tags\":[\"New\",\"Feature\",null],\"_token\":\"x4VHzGevES9L5M7l1Yp5xtgDaNmIvS5zynYixtFf\"}', '2024-08-15 11:34:53', '2024-08-15 11:34:53'),
(214, 1, 'admin/panel-lessons/create', 'GET', '127.0.0.1', '[]', '2024-08-15 11:35:00', '2024-08-15 11:35:00');

-- --------------------------------------------------------

--
-- Structure de la table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Logs', 'ext.log-viewer', '', '/logs*', '2024-08-09 09:29:46', '2024-08-09 09:29:46'),
(7, 'Media manager', 'ext.media-manager', '', '/media*', '2024-08-09 09:58:35', '2024-08-09 09:58:35'),
(8, 'Course', 'courses.management', 'DELETE,GET,HEAD,OPTIONS,PATCH,POST,PUT', '/courses*', '2024-08-09 12:21:36', '2024-08-09 12:25:39');

-- --------------------------------------------------------

--
-- Structure de la table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-08-06 10:07:27', '2024-08-06 10:07:27'),
(2, 'Instructor', 'instructor', '2024-08-09 10:38:38', '2024-08-09 10:38:38');

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 5, NULL, NULL),
(2, 6, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$05gi5TuPUvKINtut15v/IOKeMVagq.DA15f8PxlYZ4chKBHOlceQm', 'Administrator', NULL, 'sRF0SbtE6lN4SwZbZ2OK5j2jQuuSInQ9KeqNiwx59qvWsUuTI0aSv6RV4Bmt', '2024-08-06 10:07:26', '2024-08-06 10:07:26'),
(2, 'Instructor', '$2y$10$huyr4i3HyOtDM.IWqGPz4eENX9OfH9fQX/nIBJYfe1fB5fCiuO2UK', 'Instructor', 'images/myattachment.png', '2rNaFmmY1uzWnao7rf8rQxWVH2Q7ZoeY4CGgB7jL3MIlvSiaRYqZwWv5uP3b', '2024-08-09 10:40:08', '2024-08-09 10:40:08');

-- --------------------------------------------------------

--
-- Structure de la table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(2, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `publish_at` timestamp NULL DEFAULT NULL,
  `expire_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `link`, `is_published`, `publish_at`, `expire_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'New annoce', 'body annonce !!', 'https://google.ci', 1, '2024-08-08 21:36:34', '2024-08-30 10:00:00', 1, '2024-08-08 21:36:34', '2024-08-08 21:36:34');

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Big Data', NULL, NULL),
(2, 'SD-WAN', NULL, NULL),
(3, 'New Categorie', '2024-08-10 17:07:17', '2024-08-10 17:07:17');

-- --------------------------------------------------------

--
-- Structure de la table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `certificate_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estimated_duration` varchar(255) DEFAULT NULL,
  `average_rating` decimal(3,2) NOT NULL DEFAULT 0.00,
  `revenue` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`id`, `subject`, `title`, `level`, `content`, `description`, `instructor_id`, `category_id`, `price`, `is_published`, `featured`, `created_at`, `updated_at`, `estimated_duration`, `average_rating`, `revenue`) VALUES
(1, 'INIT', 'New cousre 01', 'Pro', '<figure class=\"table\"><table><tbody><tr><td>1</td><td>5</td><td>8</td><td>8</td></tr><tr><td>6</td><td>&nbsp;</td><td>456</td><td>4</td></tr><tr><td>64</td><td>6</td><td>46</td><td>46</td></tr><tr><td><pre><code class=\"language-plaintext\">\r\n46</code></pre></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>', 'Descprion INIT Pro', 4, 2, 199.99, 0, 0, '2024-08-10 18:49:12', '2024-08-10 18:49:12', '2', 0.00, 0.00);

-- --------------------------------------------------------

--
-- Structure de la table `course_completions`
--

CREATE TABLE `course_completions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `course_tag`
--

CREATE TABLE `course_tag` (
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `enrolled_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `forum_threads`
--

CREATE TABLE `forum_threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `media_type` varchar(255) NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `pdf_material` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lesson_tag`
--

CREATE TABLE `lesson_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mediable_type` varchar(255) NOT NULL,
  `mediable_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_24_031157_create_permission_tables', 1),
(6, '2024_07_16_131442_create_categories_table', 1),
(7, '2024_07_16_134312_update_userètable_add_role_columns', 1),
(8, '2024_07_16_135300_create_courses_table', 1),
(9, '2024_07_16_136405_create_lessons_table', 1),
(10, '2024_07_16_136531_create_enrollments_table', 1),
(11, '2024_07_16_136614_create_progress_table', 1),
(12, '2024_07_16_136714_create_reviews_table', 1),
(13, '2024_07_24_100921_create_user_read_modules_table', 1),
(14, '2024_07_16_142903_create_module_quizze_questions_answers_table', 2),
(15, '2024_08_06_101402_create_subscriptions_table', 3),
(16, '2024_08_06_101438_create_payments_table', 3),
(17, '2024_08_06_101516_create_certificates_table', 3),
(18, '2024_08_06_101556_create_forum_threads_table', 3),
(19, '2024_08_06_101632_create_forum_posts_table', 3),
(20, '2024_08_06_101656_create_notifications_table', 3),
(21, '2024_08_06_101719_add_media_type_to_lessons_table', 3),
(22, '2024_08_06_101808_create_tags_table', 3),
(25, '2024_08_06_101829_create_course_tag_table', 4),
(26, '2024_08_06_101904_add_cinetpay_fields_to_payments_table', 4),
(27, '2024_08_06_103112_update_payments_table_for_cinetpay', 4),
(28, '2016_01_04_173148_create_admin_tables', 5),
(29, '2024_08_06_162036_create_course_completions_table', 6),
(30, '2024_08_06_183647_add_average_rating_to_courses_table', 7),
(31, '2024_08_07_223939_create_role_user_table', 8),
(32, '2024_08_07_224938_add_featured_to_courses_table', 9),
(33, '2024_08_08_221358_create_announcements_table', 10),
(34, '2024_08_09_121152_create_jobs_table', 11),
(35, '2024_08_09_121544_create_media_table', 12),
(36, '2024_08_10_110428_add_revenue_column_to_courses_table', 13),
(37, '2024_08_10_192522_add_price_to_enrollments_table', 14),
(38, '2024_08_15_124824_rename_media_url_to_video_url_in_lessons_table', 14),
(39, '2024_08_15_130857_add_material_pdf_in_lessons_table', 15),
(40, '2024_08_15_131155_add_tags_pivot_in_lessons_table', 16);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cinetpay_transaction_id` varchar(255) DEFAULT NULL,
  `cinetpay_payment_method` varchar(255) DEFAULT NULL,
  `cinetpay_payment_token` varchar(255) DEFAULT NULL,
  `cpm_site_id` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `cpm_trans_id` varchar(255) DEFAULT NULL,
  `cpm_custom` varchar(255) DEFAULT NULL,
  `cpm_currency` varchar(255) DEFAULT NULL,
  `cpm_payid` varchar(255) DEFAULT NULL,
  `cpm_payment_date` datetime DEFAULT NULL,
  `cpm_payment_time` varchar(255) DEFAULT NULL,
  `cpm_error_message` varchar(255) DEFAULT NULL,
  `cpm_phone_prefixe` varchar(255) DEFAULT NULL,
  `cel_phone_num` varchar(255) DEFAULT NULL,
  `cpm_ipn_ack` varchar(255) DEFAULT NULL,
  `cpm_result` varchar(255) DEFAULT NULL,
  `cpm_trans_status` varchar(255) DEFAULT NULL,
  `cpm_designation` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view courses', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15'),
(2, 'create courses', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15'),
(4, 'edit courses', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15'),
(5, 'delete courses', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15'),
(6, 'manage users', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15'),
(8, 'manage roles', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15'),
(9, 'view analytics', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `progress`
--

CREATE TABLE `progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15'),
(3, 'instructor', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15'),
(4, 'student', 'web', '2024-08-15 10:56:15', '2024-08-15 10:56:15');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(7, 3),
(7, 5),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 5),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(13, 1),
(16, 1),
(17, 1);

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 1, 3, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'POP', NULL, NULL),
(2, 'NEW', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','instructor','admin','superAdmin') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `bio`, `photo`) VALUES
(1, 'Root Racine', 'root@gmail.com', NULL, '$2y$10$6jLoq9GzVB.9O454NY7gP.SFPbTT/awqzFDylzN5f4opjerSXckzO', 'instructor', NULL, '2024-08-06 07:17:24', '2024-08-06 07:17:24', NULL, NULL),
(2, 'Test Unitaire', 'unitaire1@gmail.com', NULL, '$2y$10$MUXQ6aWViDU7gBVCF5JBueYfvlw69sxd5DJf0U/YGu52NwLWD4OaK', 'student', 'wA4dOuJ54fbxE37pjHeHuCOr01MVFZzolpHBISrkPUisBlm0CBLNl1Kuj2MQ', '2024-08-06 14:04:17', '2024-08-06 14:04:17', NULL, NULL),
(3, 'Admin', 'admin@gmail.com', NULL, '$2y$10$YOaiCI9xtxceFa.xQlJiieMqFZXg9alisHpO16NI9vv9k2ptkRHqa', 'admin', 'k0629lgwKTncwCJdq368xxRRnQMigvhPG8t2cegEiQiV5hQ5UgNuR0pG5bjd', '2024-08-08 15:30:36', '2024-08-08 15:30:36', NULL, NULL),
(4, 'Instructor', 'instructor@gmail.com', NULL, '$2y$10$51zyuilajIBPD5uziMjUguY5fjQRtpeFfe4GDYNW2DLDdVyux.tiq', 'instructor', 'cm3jyEfFKFWs4dJo5mNYHxrilYdUXkcKkvdgouIHmHFLjVHk2MaQj90n4YJQ', '2024-08-09 12:34:56', '2024-08-09 12:34:56', NULL, NULL),
(5, 'test 10', 'test10@gmail.com', NULL, '$2y$10$w8WDTj/u1wXnBaRoZLvU2.j4W1uCp/ISzhwSv6B7oa4HXzpncoXGa', 'student', NULL, '2024-10-02 16:21:47', '2024-10-02 16:21:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_read_modules`
--

CREATE TABLE `user_read_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Index pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Index pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Index pour la table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Index pour la table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Index pour la table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Index pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Index pour la table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Index pour la table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcements_created_by_foreign` (`created_by`);

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificates_certificate_number_unique` (`certificate_number`),
  ADD KEY `certificates_user_id_foreign` (`user_id`),
  ADD KEY `certificates_course_id_foreign` (`course_id`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_instructor_id_foreign` (`instructor_id`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

--
-- Index pour la table `course_completions`
--
ALTER TABLE `course_completions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_completions_user_id_foreign` (`user_id`),
  ADD KEY `course_completions_course_id_foreign` (`course_id`);

--
-- Index pour la table `course_tag`
--
ALTER TABLE `course_tag`
  ADD PRIMARY KEY (`course_id`,`tag_id`),
  ADD KEY `course_tag_tag_id_foreign` (`tag_id`);

--
-- Index pour la table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrollments_user_id_foreign` (`user_id`),
  ADD KEY `enrollments_course_id_foreign` (`course_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_posts_thread_id_foreign` (`thread_id`),
  ADD KEY `forum_posts_user_id_foreign` (`user_id`);

--
-- Index pour la table `forum_threads`
--
ALTER TABLE `forum_threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_threads_course_id_foreign` (`course_id`),
  ADD KEY `forum_threads_user_id_foreign` (`user_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_course_id_foreign` (`course_id`);

--
-- Index pour la table `lesson_tag`
--
ALTER TABLE `lesson_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_tag_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_tag_tag_id_foreign` (`tag_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_mediable_type_mediable_id_index` (`mediable_type`,`mediable_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_course_id_foreign` (`course_id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_subscription_id_foreign` (`subscription_id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progress_user_id_foreign` (`user_id`),
  ADD KEY `progress_lesson_id_foreign` (`lesson_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Index pour la table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_lesson_id_foreign` (`lesson_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_course_id_foreign` (`course_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Index pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_read_modules`
--
ALTER TABLE `user_read_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_read_modules_user_id_foreign` (`user_id`),
  ADD KEY `user_read_modules_course_id_foreign` (`course_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `course_completions`
--
ALTER TABLE `course_completions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `forum_threads`
--
ALTER TABLE `forum_threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lesson_tag`
--
ALTER TABLE `lesson_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user_read_modules`
--
ALTER TABLE `user_read_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `certificates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `courses_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `course_completions`
--
ALTER TABLE `course_completions`
  ADD CONSTRAINT `course_completions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_completions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `course_tag`
--
ALTER TABLE `course_tag`
  ADD CONSTRAINT `course_tag_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Contraintes pour la table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `enrollments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD CONSTRAINT `forum_posts_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `forum_threads` (`id`),
  ADD CONSTRAINT `forum_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `forum_threads`
--
ALTER TABLE `forum_threads`
  ADD CONSTRAINT `forum_threads_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `forum_threads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `lesson_tag`
--
ALTER TABLE `lesson_tag`
  ADD CONSTRAINT `lesson_tag_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`),
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  ADD CONSTRAINT `progress_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `user_read_modules`
--
ALTER TABLE `user_read_modules`
  ADD CONSTRAINT `user_read_modules_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_read_modules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
