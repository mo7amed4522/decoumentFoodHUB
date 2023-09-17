-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2023 at 05:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodzo_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `installer`
--

CREATE TABLE `installer` (
  `id` int(1) NOT NULL,
  `installer_flag` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_details`
--

CREATE TABLE `tbl_account_details` (
  `account_details_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'en_US',
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT '-',
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT '-',
  `mobile` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `skype` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'english',
  `designations_id` int(11) DEFAULT 0,
  `avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'uploads/default_avatar.jpg',
  `joining_date` date DEFAULT NULL,
  `present_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maratial_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_account_details`
--

INSERT INTO `tbl_account_details` (`account_details_id`, `user_id`, `fullname`, `employment_id`, `company`, `city`, `country`, `locale`, `address`, `phone`, `mobile`, `skype`, `language`, `designations_id`, `avatar`, `joining_date`, `present_address`, `date_of_birth`, `gender`, `maratial_status`, `father_name`, `mother_name`, `passport`, `direction`) VALUES
(1, 1, 'Admin', NULL, NULL, NULL, NULL, 'en_IN', '12312', '7397750123', '9003446625', '', 'english', 0, 'employee_1.png', '2022-10-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(13, 14, 'jack', NULL, '0', NULL, NULL, 'en_IN', '-', '123', '9003446625', '', 'english', 11, 'employee_14.png', '2022-10-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(31, 42, 'test', NULL, '0', NULL, NULL, 'en_IN', '23', '1234', '23', '', 'english', 1, 'employee_42.png', '2022-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(33, 44, 'Ramraj1', NULL, '0', NULL, NULL, 'en_IN', '123', '123', '123', '', 'english', 27, 'employee_44.png', '2022-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(34, 45, 'product', NULL, '0', NULL, NULL, 'en_IN', '123', '123', '123', '', 'english', 28, 'employee_45.png', '2022-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(35, 47, 'manger123', NULL, '0', NULL, NULL, 'en_IN', '12321', '123', '12321', '', 'english', 27, 'uploads/default_avatar.jpg', '2022-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(36, 48, 'jhone', NULL, '0', NULL, NULL, 'en_IN', '123', '123', '9003446625', '', 'english', 27, 'uploads/default_avatar.jpg', '2022-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activities`
--

CREATE TABLE `tbl_activities` (
  `activities_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_field_id` int(11) DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `icon` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'fa-coffee',
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `value2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_activities`
--

INSERT INTO `tbl_activities` (`activities_id`, `user`, `module`, `module_field_id`, `activity`, `activity_date`, `icon`, `link`, `value1`, `value2`, `deleted`) VALUES
(41, 1, 'settings', 1, 'activity_save_general_settings', '2020-10-20 05:43:51', 'fa-coffee', NULL, 'Promake', NULL, 0),
(42, 1, 'settings', 1, 'activity_save_theme_settings', '2020-10-20 05:47:20', 'fa-coffee', NULL, 'Promake', NULL, 0),
(43, 1, 'settings', 1, 'activity_update_profile', '2020-10-20 05:48:45', 'fa-coffee', NULL, 'Balaji', NULL, 0),
(44, 1, 'settings', 1, 'activity_password_update', '2020-11-02 06:57:41', 'fa-coffee', NULL, 'admin', NULL, 0),
(45, 1, 'account', 1, 'activity_save_account', '2020-11-02 09:11:36', 'fa-circle-o', NULL, 'SBI (501111)', NULL, 0),
(46, 1, 'settings', 1, 'activity_added_a_income_category', '2020-11-02 09:12:20', 'fa-coffee', NULL, 'Bus charges', NULL, 0),
(47, 1, 'transactions', 1, 'activity_new_deposit', '2020-11-02 09:12:44', 'fa-building-o', 'admin/transactions/view_details/1', 'SBI (501111)', NULL, 0),
(48, 1, 'tasks', 1, 'activity_update_task', '2020-11-02 09:15:09', 'fa-tasks', 'admin/tasks/view_task_details/1', 'test', NULL, 0),
(49, 1, 'tasks', 2, 'activity_update_task', '2020-11-02 09:15:30', 'fa-tasks', 'admin/tasks/view_task_details/2', 'test', NULL, 0),
(50, 1, 'client', 1, 'activity_update_company', '2020-11-02 09:17:40', 'fa-user', NULL, 'PROMAKE', NULL, 0),
(51, 1, 'client', NULL, 'activity_added_new_contact', '2020-11-02 09:18:32', 'fa-user', NULL, 'balaji', NULL, 0),
(52, 1, 'invoice', 1, 'activity_invoice_created', '2020-11-02 09:19:58', 'fa-shopping-cart', 'admin/invoice/manage_invoice/invoice_details/1', 'INV-2020-Nov-02-0001', NULL, 0),
(53, 1, 'departments', NULL, 'activity_added_a_department', '2021-04-01 16:07:39', 'fa-coffee', NULL, 'Admin', NULL, 0),
(54, 1, 'user', 3, 'activity_added_new_user', '2021-04-01 16:08:34', 'fa-user', NULL, 'karthi', NULL, 0),
(55, 3, 'projects', 1, 'activity_save_project', '2021-04-01 16:34:11', 'fa-folder-open-o', 'admin/projects/project_details/1', 'project1', NULL, 0),
(56, 3, 'bugs', 1, 'activity_new_bug', '2021-04-01 16:39:12', 'fa-bug', 'admin/bugs/view_bug_details/1', 'oo', NULL, 0),
(57, 3, 'tasks', 3, 'activity_update_task', '2021-04-09 08:55:02', 'fa-tasks', 'admin/tasks/view_task_details/3', 'karthikeyan', NULL, 0),
(58, 3, 'tasks', 3, 'activity_update_task', '2021-04-09 08:57:03', 'fa-tasks', 'admin/tasks/view_task_details/3', '100', NULL, 0),
(59, 3, 'tasks', 4, 'activity_update_task', '2021-05-12 08:50:54', 'fa-tasks', 'admin/tasks/view_task_details/4', 'karthick', NULL, 0),
(60, 1, 'client', 2, 'activity_update_company', '2021-06-07 11:56:28', 'fa-user', NULL, 'company1', NULL, 0),
(61, 1, 'client', NULL, 'activity_added_new_contact', '2021-06-07 11:57:57', 'fa-user', NULL, 'company1', NULL, 0),
(62, 1, 'settings', 1, 'activity_update_profile', '2021-07-12 05:45:27', 'fa-coffee', NULL, 'Admin', NULL, 0),
(63, 1, 'settings', 1, 'activity_update_profile', '2021-07-12 05:45:56', 'fa-coffee', NULL, 'Admin', NULL, 0),
(64, 1, 'tasks', 4, 'activity_update_task', '2022-04-18 12:17:20', 'fa-tasks', 'admin/tasks/view_task_details/4', 'karthick', NULL, 0),
(65, 1, 'tasks', 4, 'activity_update_task', '2022-04-18 12:17:30', 'fa-tasks', 'admin/tasks/view_task_details/4', 'karthick', NULL, 0),
(66, 1, 'invoice', 2, 'activity_invoice_created', '2022-04-26 05:04:30', 'fa-shopping-cart', 'admin/invoice/manage_invoice/invoice_details/2', 'INV-2022-Apr-26-0002', NULL, 0),
(67, 1, 'tasks', 4, 'activity_update_task', '2022-05-02 07:18:04', 'fa-tasks', 'admin/tasks/view_task_details/4', '100', NULL, 0),
(68, 1, 'tasks', 4, 'activity_update_task', '2022-05-02 07:18:05', 'fa-tasks', 'admin/tasks/view_task_details/4', '0', NULL, 0),
(69, 1, 'tasks', 5, 'activity_update_task', '2022-05-02 10:22:18', 'fa-tasks', 'admin/tasks/view_task_details/5', 'restaurant', NULL, 0),
(70, 1, 'tasks', 4, 'activity_tasks_timer_on', '2022-05-02 10:28:12', 'fa-tasks', 'admin/tasks/view_task_details/4/5', 'karthick', NULL, 0),
(71, 1, 'tasks', 5, 'activity_task_deleted', '2022-05-02 10:51:19', 'fa-tasks', NULL, 'restaurant', NULL, 0),
(72, 1, 'tasks', 4, 'activity_tasks_timer_off', '2022-05-03 06:47:23', 'fa-tasks', 'admin/tasks/view_task_details/4/5', 'karthick', NULL, 0),
(73, 1, 'tasks', 4, 'activity_update_task', '2022-05-03 06:47:23', 'fa-tasks', 'admin/tasks/view_task_details/4', 'karthick', NULL, 0),
(74, 1, 'tasks', 6, 'activity_update_task', '2022-05-03 06:49:12', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(75, 1, 'tasks', 6, 'activity_update_task', '2022-05-03 06:50:34', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(76, 1, 'tasks', 6, 'activity_update_task', '2022-05-03 09:06:36', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(77, 1, 'tasks', 6, 'activity_update_task', '2022-05-03 09:06:45', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(78, 1, 'tasks', 6, 'activity_update_task', '2022-05-03 09:10:24', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(79, 1, 'tasks', 6, 'activity_update_task', '2022-05-03 09:10:35', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(80, 1, 'tasks', 6, 'activity_update_task', '2022-05-03 09:11:49', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(81, 1, 'tasks', 6, 'activity_update_task', '2022-05-11 10:08:05', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(82, 1, 'tasks', 6, 'activity_update_task', '2022-05-21 10:17:07', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(83, 1, 'tasks', 6, 'activity_update_task', '2022-05-24 07:06:41', 'fa-tasks', 'admin/tasks/view_task_details/6', '100', NULL, 0),
(84, 1, 'tasks', 6, 'activity_update_task', '2022-05-24 07:06:44', 'fa-tasks', 'admin/tasks/view_task_details/6', '0', NULL, 0),
(85, 1, 'tasks', 6, 'activity_update_task', '2022-06-25 09:32:40', 'fa-tasks', 'admin/tasks/view_task_details/6', 'naga', NULL, 0),
(86, 1, 'tasks', 6, 'activity_update_task', '2022-06-27 09:39:13', 'fa-tasks', 'admin/tasks/view_task_details/6', '100', NULL, 0),
(87, 1, 'tasks', 6, 'activity_update_task', '2022-06-27 09:39:15', 'fa-tasks', 'admin/tasks/view_task_details/6', '0', NULL, 0),
(88, 1, 'tasks', 6, 'activity_tasks_timer_on', '2022-06-27 09:39:54', 'fa-tasks', 'admin/tasks/view_task_details/6/5', 'naga', NULL, 0),
(89, 1, 'tasks', 6, 'activity_update_task', '2022-06-27 09:44:58', 'fa-tasks', 'admin/tasks/view_task_details/6', '100', NULL, 0),
(90, 1, 'tasks', 6, 'activity_update_task', '2022-06-27 09:44:58', 'fa-tasks', 'admin/tasks/view_task_details/6', '0', NULL, 0),
(91, 1, 'tasks', 6, 'activity_tasks_timer_off', '2022-07-01 04:58:27', 'fa-tasks', 'admin/tasks/view_task_details/6/5', 'naga', NULL, 0),
(92, 1, 'announcements', NULL, 'activity_added_announcements', '2022-07-01 05:03:49', 'fa-ticket', NULL, 'zssd', NULL, 0),
(93, 1, 'tasks', 1, 'activity_update_task', '2022-07-13 10:36:19', 'fa-tasks', 'admin/tasks/view_task_details/1', 'in_progress', NULL, 0),
(94, 1, 'tasks', 2, 'activity_update_task', '2022-07-13 10:36:22', 'fa-tasks', 'admin/tasks/view_task_details/2', 'in_progress', NULL, 0),
(95, 1, 'tasks', 4, 'activity_update_task', '2022-07-13 10:36:24', 'fa-tasks', 'admin/tasks/view_task_details/4', 'in_progress', NULL, 0),
(96, 1, 'tasks', 6, 'activity_update_task', '2022-07-13 10:36:26', 'fa-tasks', 'admin/tasks/view_task_details/6', 'not_started', NULL, 0),
(97, 1, 'tasks', 4, 'activity_update_task', '2022-07-13 10:36:29', 'fa-tasks', 'admin/tasks/view_task_details/4', 'in_progress', NULL, 0),
(98, 1, 'tasks', 1, 'activity_update_task', '2022-07-13 10:36:31', 'fa-tasks', 'admin/tasks/view_task_details/1', 'completed', NULL, 0),
(99, 1, 'tasks', 1, 'activity_update_task', '2022-07-13 10:36:36', 'fa-tasks', 'admin/tasks/view_task_details/1', 'deferred', NULL, 0),
(100, 1, 'settings', 1, 'activity_save_general_settings', '2022-07-13 16:12:42', 'fa-coffee', NULL, '34', NULL, 0),
(101, 1, 'settings', 1, 'activity_save_general_settings', '2022-07-14 08:23:43', 'fa-coffee', NULL, '1232', NULL, 0),
(102, 1, 'settings', 1, 'activity_save_general_settings', '2022-07-14 08:24:17', 'fa-coffee', NULL, '1232', NULL, 0),
(103, 1, 'settings', 1, 'activity_save_general_settings', '2022-07-14 08:25:03', 'fa-coffee', NULL, '1232', NULL, 0),
(104, 1, 'projects', 1, 'activity_update_project', '2022-07-15 05:57:38', 'fa-folder-open-o', 'admin/projects/project_details/1', 'project1', NULL, 0),
(105, 1, 'tasks', 1, 'activity_update_task', '2022-07-15 08:06:29', 'fa-tasks', 'admin/tasks/view_task_details/1', 'test', NULL, 0),
(106, 1, 'announcements', NULL, 'activity_added_announcements', '2022-07-15 08:08:01', 'fa-ticket', NULL, '', NULL, 0),
(107, 1, 'tasks', 2, 'activity_task_deleted', '2022-07-15 11:19:12', 'fa-tasks', NULL, 'test', NULL, 0),
(108, 1, 'tasks', 4, 'activity_tasks_timer_on', '2022-07-16 05:44:41', 'fa-tasks', 'admin/tasks/view_task_details/4/5', 'karthick', NULL, 0),
(109, 1, 'announcements', 1, 'activity_delete_announcements', '2022-07-16 08:42:17', 'fa-ticket', NULL, 'zssd', NULL, 0),
(110, 1, 'invoice', 2, 'activity_invoice_updated', '2022-07-24 13:03:19', 'fa-shopping-cart', 'admin/invoice/manage_invoice/invoice_details/2', 'INV-2022-Apr-26-0002', NULL, 0),
(111, 1, 'settings', 1, 'activity_save_general_settings', '2022-09-02 08:07:40', 'fa-coffee', NULL, NULL, NULL, 0),
(112, 1, 'settings', 1, 'activity_save_general_settings', '2022-09-02 08:07:48', 'fa-coffee', NULL, NULL, NULL, 0),
(113, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-06 05:58:07', 'fa-coffee', NULL, 'test', NULL, 0),
(114, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-06 07:36:47', 'fa-coffee', NULL, 'test2', NULL, 0),
(115, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-06 07:37:16', 'fa-coffee', NULL, 'test2', NULL, 0),
(116, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-06 07:37:36', 'fa-coffee', NULL, 'test2', NULL, 0),
(117, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-06 10:19:01', 'fa-coffee', NULL, 'base_test', NULL, 0),
(118, 1, 'departments', 4, 'activity_added_a_department', '2022-10-06 10:45:36', 'fa-coffee', NULL, 'base_test', NULL, 0),
(119, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-06 13:42:14', 'fa-coffee', NULL, 'sdf', NULL, 0),
(120, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-06 13:42:27', 'fa-coffee', NULL, 'sdfds', NULL, 0),
(121, 1, 'settings', 1, 'activity_save_general_settings', '2022-10-08 07:31:34', 'fa-coffee', NULL, 'asdsa', NULL, 0),
(122, 1, 'settings', 1, 'activity_save_system_settings', '2022-10-08 07:35:32', 'fa-coffee', NULL, 'english', NULL, 0),
(123, 1, 'settings', 1, 'activity_save_system_settings', '2022-10-08 07:35:56', 'fa-coffee', NULL, 'english', NULL, 0),
(124, 1, 'settings', 1, 'activity_database_backup', '2022-10-20 11:00:16', 'fa-coffee', NULL, 'BD-backup_2022-10-20_16-30', NULL, 0),
(125, 1, 'settings', 1, 'activity_database_backup', '2022-10-20 11:00:24', 'fa-coffee', NULL, 'BD-backup_2022-10-20_16-30', NULL, 0),
(126, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-20 11:21:17', 'fa-coffee', NULL, 'Product manager', NULL, 0),
(127, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-20 13:15:19', 'fa-coffee', NULL, 'Delivery Management', NULL, 0),
(128, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-20 13:51:14', 'fa-coffee', NULL, 'Delivery Management', NULL, 0),
(129, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-20 17:23:30', 'fa-coffee', NULL, 'jack', NULL, 0),
(130, 1, 'departments', NULL, 'activity_added_a_department', '2022-10-21 04:07:38', 'fa-coffee', NULL, 'test', NULL, 0),
(131, 1, 'departments', 10, 'activity_delete_a_department', '2022-10-21 05:28:49', 'fa-coffee', NULL, NULL, NULL, 0),
(132, 1, 'settings', 1, 'activity_save_general_settings', '2022-10-24 08:30:13', 'fa-coffee', NULL, 'asdsa', NULL, 0),
(133, 1, 'settings', 1, 'activity_save_general_settings', '2022-10-24 08:57:58', 'fa-coffee', NULL, 'asdsa', NULL, 0),
(134, 1, 'settings', 1, 'activity_save_system_settings', '2022-10-25 08:34:07', 'fa-coffee', NULL, 'english', NULL, 0),
(135, 1, 'settings', 1, 'activity_save_system_settings', '2022-10-26 07:10:14', 'fa-coffee', NULL, 'english', NULL, 0),
(136, 1, 'settings', 1, 'activity_save_system_settings', '2022-10-26 07:20:11', 'fa-coffee', NULL, 'english', NULL, 0),
(137, 1, 'settings', 1, 'activity_save_system_settings', '2022-10-26 07:23:15', 'fa-coffee', NULL, 'english', NULL, 0),
(138, 1, 'departments', 17, 'activity_delete_a_department', '2022-11-02 06:47:18', 'fa-coffee', NULL, NULL, NULL, 0),
(139, 1, 'departments', 19, 'activity_delete_a_department', '2022-11-02 07:53:58', 'fa-coffee', NULL, NULL, NULL, 0),
(140, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-04 03:52:46', 'fa-coffee', NULL, 'asdsa', NULL, 0),
(141, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-04 04:43:11', 'fa-coffee', NULL, 'Promake', NULL, 0),
(142, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-04 04:46:08', 'fa-coffee', NULL, 'Promake', NULL, 0),
(143, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-04 04:46:32', 'fa-coffee', NULL, 'FoodZo', NULL, 0),
(144, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-04 05:18:43', 'fa-coffee', NULL, 'asdsa', NULL, 0),
(145, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-04 05:19:00', 'fa-coffee', NULL, 'asdsa', NULL, 0),
(146, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-04 05:19:16', 'fa-coffee', NULL, 'asdsa', NULL, 0),
(147, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-05 04:29:31', 'fa-coffee', NULL, 'FoodZo', NULL, 0),
(148, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-05 04:29:39', 'fa-coffee', NULL, 'FoodZo', NULL, 0),
(149, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-05 04:29:45', 'fa-coffee', NULL, 'FoodZo1', NULL, 0),
(150, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-05 04:29:50', 'fa-coffee', NULL, 'FoodZo', NULL, 0),
(151, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-05 09:33:24', 'fa-coffee', NULL, 'FoodZo', NULL, 0),
(152, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-07 07:33:15', 'fa-coffee', NULL, 'english', NULL, 0),
(153, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-07 07:33:25', 'fa-coffee', NULL, 'english', NULL, 0),
(154, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-07 07:33:29', 'fa-coffee', NULL, 'english', NULL, 0),
(155, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-07 07:33:32', 'fa-coffee', NULL, 'english', NULL, 0),
(156, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-07 07:33:37', 'fa-coffee', NULL, 'english', NULL, 0),
(157, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-07 07:33:45', 'fa-coffee', NULL, 'english', NULL, 0),
(158, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-07 07:35:44', 'fa-coffee', NULL, 'Cyanover', NULL, 0),
(159, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-07 07:36:24', 'fa-coffee', NULL, NULL, NULL, 0),
(160, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-07 07:55:08', 'fa-coffee', NULL, '12321', NULL, 0),
(161, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-07 07:55:25', 'fa-coffee', NULL, '12321', NULL, 0),
(162, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-07 07:55:28', 'fa-coffee', NULL, 'english', NULL, 0),
(163, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-07 07:55:32', 'fa-coffee', NULL, '12321', NULL, 0),
(164, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-07 08:34:12', 'fa-coffee', NULL, '12321', NULL, 0),
(165, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-15 04:58:10', 'fa-coffee', NULL, 'english', NULL, 0),
(166, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-15 04:58:45', 'fa-coffee', NULL, 'english', NULL, 0),
(167, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-15 05:00:11', 'fa-coffee', NULL, 'english', NULL, 0),
(168, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-15 05:00:14', 'fa-coffee', NULL, 'english', NULL, 0),
(169, 1, 'settings', 1, 'activity_save_system_settings', '2023-02-04 05:50:27', 'fa-coffee', NULL, NULL, NULL, 0),
(170, 1, 'settings', 1, 'activity_save_system_settings', '2023-02-04 05:50:31', 'fa-coffee', NULL, NULL, NULL, 0),
(171, 1, 'settings', 1, 'activity_save_system_settings', '2023-02-04 05:50:35', 'fa-coffee', NULL, NULL, NULL, 0),
(172, 1, 'settings', 1, 'activity_save_system_settings', '2023-02-05 07:17:03', 'fa-coffee', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addon`
--

CREATE TABLE `tbl_addon` (
  `addon_id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `sales_price` double NOT NULL DEFAULT 0,
  `tax` double DEFAULT 0,
  `food_type` varchar(50) NOT NULL DEFAULT 'veg',
  `vendor` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addon`
--

INSERT INTO `tbl_addon` (`addon_id`, `name`, `sales_price`, `tax`, `food_type`, `vendor`, `zone_id`, `status`, `date`) VALUES
(9, 'oninon', 40, 0, 'Veg', 288, 93, 1, 1663163383),
(10, 'Chicken pic', 50, 0, 'Non_Veg', 288, 93, 1, 1663163397),
(11, 'Chicken pic2', 50, 0, 'Non_Veg', 288, 93, 1, 1663163397),
(12, '123', 12, 0, 'Non_Veg', 288, 93, 0, 1665669626),
(13, '123', 23, 0, 'Non_Veg', 288, 93, 1, 1665669705),
(20, 'Addon1', 10, 0, 'Veg', 324, 93, 1, 1669435969),
(21, 'Addon2', 100, 0, 'Veg', 324, 93, 1, 1669435964);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allowed_ip`
--

CREATE TABLE `tbl_allowed_ip` (
  `allowed_ip_id` int(11) NOT NULL,
  `allowed_ip` varchar(100) NOT NULL,
  `status` enum('active','reject','pending') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announcements`
--

CREATE TABLE `tbl_announcements` (
  `announcements_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('published','unpublished') NOT NULL DEFAULT 'unpublished' COMMENT '0 = unpublished, 1 = published',
  `view_status` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Read 2=Unread',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `all_client` varchar(20) DEFAULT NULL,
  `attachment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_announcements`
--

INSERT INTO `tbl_announcements` (`announcements_id`, `title`, `description`, `user_id`, `created_date`, `status`, `view_status`, `start_date`, `end_date`, `all_client`, `attachment`) VALUES
(2, '', '', 1, '2022-07-15 08:06:59', 'unpublished', 1, '0000-00-00', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner_master`
--

CREATE TABLE `tbl_banner_master` (
  `banner_master_id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `redirect_type` varchar(20) NOT NULL,
  `para` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `date` int(30) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banner_master`
--

INSERT INTO `tbl_banner_master` (`banner_master_id`, `title`, `redirect_type`, `para`, `photo`, `date`, `admin`, `zone_id`, `status`) VALUES
(87, 'banner 2', 'link_to_item', 'Chicken', 'banner_master_87.png', 1669369587, NULL, 93, 1),
(94, 'Deal of the day', 'discount_upto', '60', 'banner_master_94.jpg', 1669369070, NULL, 93, 1),
(92, 'Shop Mega offer', 'link_to_shop', '324', 'banner_master_92.png', 1669369406, NULL, 93, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campaign`
--

CREATE TABLE `tbl_campaign` (
  `campaign_id` int(11) NOT NULL,
  `campaign_title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `description` varchar(800) CHARACTER SET utf8 NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancelled_order`
--

CREATE TABLE `tbl_cancelled_order` (
  `cancelled_order_id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `message` longtext CHARACTER SET utf8 NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `date` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cancelled_order`
--

INSERT INTO `tbl_cancelled_order` (`cancelled_order_id`, `order_id`, `user_id`, `shop_id`, `message`, `amount`, `date`) VALUES
(131, '1669173180859840', 840, 323, 'I choose a wrong delivery address', 124.5, 1669174297),
(132, '1669173180859840', 840, 323, 'I ordered the wrong items', 124.5, 1669174408),
(133, '1669174478130840', 840, 323, 'I ordered the wrong items', 124.5, 1669174501),
(134, '1669174580465840', 840, 323, 'I ordered the wrong items', 124.5, 1669174597),
(135, '1669174674797840', 840, 323, 'I choose a wrong delivery address', 124.5, 1669174686);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `photo_type` varchar(50) DEFAULT NULL,
  `bg_photo` varchar(150) DEFAULT NULL,
  `bg_type` varchar(50) DEFAULT NULL,
  `sub_category_view` tinyint(1) NOT NULL DEFAULT 1,
  `search_recommend` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `added_by` longtext DEFAULT NULL,
  `timing` longtext DEFAULT NULL COMMENT '(1-1.am to 4.am)(2-5.am to 10. pm)(3-11.am to 3.pm)(4-4.pm to 6.pm)(5-7.pm to 23.pm)(6-full day)',
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `date` int(15) NOT NULL DEFAULT 0,
  `sort` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `photo`, `photo_type`, `bg_photo`, `bg_type`, `sub_category_view`, `search_recommend`, `status`, `added_by`, `timing`, `zone_id`, `date`, `sort`) VALUES
(84, 'Biryani', 'category_84.png', NULL, 'bg_category_84.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"3\",\"4\",\"5\"]', 93, 1669372249, 0),
(85, 'Chicken', 'category_85.png', NULL, 'bg_category_85.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"3\",\"4\",\"5\"]', 93, 1669372372, 0),
(86, 'Noodles', 'category_86.png', NULL, 'bg_category_86.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"6\"]', 93, 1667980430, 0),
(87, 'Idly', 'category_87.png', NULL, 'bg_category_87.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"1\",\"2\",\"6\"]', 93, 1667980734, 0),
(88, 'Dosa', 'category_88.png', NULL, 'bg_category_88.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"1\",\"2\",\"5\"]', 93, 1667980950, 0),
(89, 'Meals', 'category_89.png', NULL, 'bg_category_89.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"3\",\"5\"]', 93, 1667981229, 0),
(90, 'Pizza', 'category_90.png', NULL, 'bg_category_90.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"3\",\"4\",\"5\"]', 93, 1667981629, 0),
(91, 'Burger', 'category_91.png', NULL, 'bg_category_91.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"3\",\"4\",\"5\"]', 93, 1667981853, 0),
(92, 'Paratha', 'category_92.png', NULL, 'bg_category_92.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"1\",\"2\",\"3\",\"5\"]', 93, 1667981973, 0),
(93, 'Icecream', 'category_93.png', NULL, 'bg_category_93.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"6\"]', 93, 1667982159, 0),
(94, 'Shake', 'category_94.png', NULL, 'bg_category_94.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"6\"]', 93, 1667982351, 0),
(95, 'Soup', 'category_95.png', NULL, 'bg_category_95.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"3\",\"4\",\"5\"]', 93, 1667982511, 0),
(96, 'Fish', 'category_96.png', NULL, 'bg_category_96.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"2\",\"3\",\"5\"]', 93, 1667982635, 0),
(97, 'Gravy', 'category_97.png', NULL, 'bg_category_97.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"6\"]', 93, 1667982759, 0),
(98, 'Chaat', 'category_98.png', NULL, 'bg_category_98.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"4\",\"5\"]', 93, 1667992155, 0),
(99, 'Sandwich', 'category_99.png', NULL, 'bg_category_99.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"5\"]', 93, 1677139212, 0),
(100, 'Shawarma', 'category_100.png', NULL, 'bg_category_100.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"3\",\"4\",\"5\"]', 93, 1669372268, 0),
(104, 'test', 'category_104.png', NULL, 'bg_category_104.png', NULL, 1, 1, 1, '{\"type\":\"admin\",\"id\":\"1\"}', '[\"1\"]', 93, 1677137451, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chistory`
--

CREATE TABLE `tbl_chistory` (
  `chistory_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `message` longtext CHARACTER SET utf8 DEFAULT NULL,
  `cash_type` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chistory`
--

INSERT INTO `tbl_chistory` (`chistory_id`, `id`, `type`, `amount`, `message`, `cash_type`, `status`, `date`) VALUES
(1, 288, 'driver', 100.45, '23', 'online', 1, 1644211281),
(2, 335, 'vendor', 100.45, 'sefse', 'online', 1, 1644211281),
(3, 0, 'driver', 10, '12321', 'Online', 1, 1667584777),
(4, 153, 'driver', 10, 'reger', 'Online', 1, 1667619879),
(5, 153, 'driver', 0, 'fsfwe', 'Online', 1, 1667620372),
(6, 153, 'driver', 0, '34', 'Online', 1, 1667620428),
(7, 153, 'driver', 0, 'dfgr', 'Offline', 1, 1667620560),
(8, 153, 'driver', 0, 'dsfsd', 'Online', 1, 1667621659),
(9, 288, 'vendor', 0, 'df', 'Online', 1, 1667621917),
(10, 153, 'driver', 508, '', 'Online', 1, 1668225741),
(11, 153, 'driver', 0.23, '', 'Online', 1, 1668225817);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `client_id` int(11) NOT NULL,
  `primary_contact` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `skype_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hosting_company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_status` tinyint(1) NOT NULL COMMENT '1 = person and 2 = company',
  `profile_photo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `leads_id` int(11) NOT NULL,
  `latitude` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `active` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sms_notification` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`client_id`, `primary_contact`, `name`, `email`, `short_note`, `website`, `phone`, `mobile`, `fax`, `address`, `city`, `zipcode`, `currency`, `skype_id`, `linkedin`, `facebook`, `twitter`, `language`, `country`, `vat`, `hosting_company`, `hostname`, `port`, `password`, `username`, `client_status`, `profile_photo`, `date_added`, `leads_id`, `latitude`, `longitude`, `customer_group_id`, `active`, `sms_notification`) VALUES
(1, 2, 'PROMAKE', 'baljai30nsit@gmail.com', '', '', '739775011', '', '', '', '', '', 'INR', '', '', '', '', 'english', 'India', '', '', '', '', NULL, '', 0, NULL, '2020-11-02 09:17:40', 0, '', '', 1, '', NULL),
(2, 4, 'company1', 'company1@gmail.com', '', '', '7397750111', '', '', '', '', '', 'INR', '', '', '', '', 'english', 'India', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 11:56:28', 0, '', '', 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_menu`
--

CREATE TABLE `tbl_client_menu` (
  `menu_id` int(11) NOT NULL,
  `label` varchar(20) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `icon` longtext NOT NULL,
  `parent` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_client_menu`
--

INSERT INTO `tbl_client_menu` (`menu_id`, `label`, `link`, `icon`, `parent`, `time`, `sort`, `status`) VALUES
(1, 'projects', 'client/projects', 'fa fa-folder-open-o', 0, '2017-04-19 17:18:26', 3, 0),
(2, 'bugs', 'client/bugs', 'fa fa-bug', 0, '2017-04-19 17:18:39', 4, 0),
(3, 'invoices', 'client/invoice/manage_invoice', 'fa fa-shopping-cart', 0, '2017-04-19 17:18:42', 5, 0),
(4, 'estimates', 'client/estimates', 'fa fa-tachometer', 0, '2017-04-19 17:18:45', 6, 0),
(5, 'payments', 'client/invoice/all_payments', 'fa fa-money', 0, '2017-04-19 17:18:48', 7, 0),
(6, 'tickets', 'client/tickets', 'fa fa-ticket', 0, '2017-06-12 07:11:21', 8, 0),
(7, 'quotations', 'client/quotations', 'fa fa-paste', 0, '2017-04-19 17:18:56', 9, 0),
(8, 'users', 'client/user/user_list', 'fa fa-users', 0, '2017-04-19 17:18:59', 10, 0),
(9, 'settings', 'client/settings', 'fa fa-cogs', 0, '2017-04-19 17:19:03', 11, 0),
(12, 'answered', 'client/tickets/answered', 'fa fa-circle-o', 6, '2017-04-19 17:12:34', 1, 0),
(17, 'dashboard', 'client/dashboard', 'icon-Dinner', 0, '2022-10-05 11:15:33', 1, 0),
(18, 'mailbox', 'client/mailbox', 'fa fa-envelope', 0, '2017-04-19 17:17:21', 2, 0),
(19, 'private_chat', 'chat/conversations', 'fa fa-envelope', 0, '2017-12-09 20:03:43', 12, 0),
(20, 'filemanager', 'client/filemanager', 'fa fa-file', 0, '2017-06-03 05:08:23', 2, 1),
(21, 'proposals', 'client/proposals', 'fa fa-leaf', 0, '2017-07-21 04:21:08', 7, 1),
(22, 'knowledgebase', 'knowledgebase', 'fa fa-question-circle', 0, '2017-11-09 02:04:12', 12, 1),
(23, 'refund_items', 'client/invoice/refund_itemslist', 'icon-share-alt', 0, '2019-09-23 02:00:29', 6, 0),
(24, 'refund_items', 'client/invoice/refund_itemslist', 'icon-share-alt', 0, '2022-04-17 05:03:36', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_role`
--

CREATE TABLE `tbl_client_role` (
  `client_role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_client_role`
--

INSERT INTO `tbl_client_role` (`client_role_id`, `user_id`, `menu_id`) VALUES
(9, 2, 1),
(10, 2, 2),
(11, 2, 3),
(12, 2, 4),
(13, 2, 5),
(14, 2, 6),
(15, 2, 7),
(16, 2, 8),
(17, 2, 9),
(18, 2, 17),
(19, 2, 18),
(20, 2, 20),
(21, 2, 21),
(22, 2, 23),
(23, 4, 1),
(24, 4, 2),
(25, 4, 3),
(26, 4, 5),
(27, 4, 6),
(28, 4, 7),
(29, 4, 8),
(30, 4, 9),
(31, 4, 17),
(32, 4, 18),
(33, 4, 20),
(34, 4, 21),
(35, 4, 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clock`
--

CREATE TABLE `tbl_clock` (
  `clock_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `clockin_time` time DEFAULT NULL,
  `clockout_time` time DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `clocking_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1= clockin_time',
  `ip_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_clock`
--

INSERT INTO `tbl_clock` (`clock_id`, `attendance_id`, `clockin_time`, `clockout_time`, `comments`, `clocking_status`, `ip_address`) VALUES
(1, 1, '14:51:22', '10:16:28', NULL, 0, '::1'),
(2, 2, '10:19:53', '13:38:44', NULL, 0, '223.182.243.79'),
(3, 3, '14:31:43', NULL, NULL, 1, '223.182.230.155'),
(4, 4, '09:55:34', '09:55:39', NULL, 0, '122.178.195.67'),
(5, 5, '13:31:31', '13:31:37', NULL, 0, '::1'),
(6, 6, '17:43:04', '17:43:08', NULL, 0, '::1'),
(7, 7, '16:21:09', '16:21:13', NULL, 0, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clock_history`
--

CREATE TABLE `tbl_clock_history` (
  `clock_history_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `clock_id` int(11) NOT NULL,
  `clockin_edit` time NOT NULL,
  `clockout_edit` time DEFAULT NULL,
  `reason` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=pending and 2 = accept  3= reject',
  `notify_me` tinyint(4) NOT NULL DEFAULT 1,
  `view_status` tinyint(4) NOT NULL DEFAULT 2,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE `tbl_config` (
  `config_id` int(11) NOT NULL,
  `config_key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`config_id`, `config_key`, `value`) VALUES
(1, 'website_name', 'FoodZo'),
(2, 'webmaster_email', 'support@example.com'),
(3, 'version', '1.0'),
(4, 'valid_license', 'TRUE'),
(5, 'use_postmark', 'FALSE'),
(6, 'use_gravatar', 'TRUE'),
(7, 'unread_email', 'on'),
(8, 'two_checkout_live ', 'FALSE'),
(9, 'training_email', '1'),
(10, 'time_format', 'g:i A'),
(11, 'timezone', 'Asia/Kolkata'),
(12, 'tickets_keyword', NULL),
(13, 'thousand_separator', ','),
(14, 'tables_pagination_limit', '10'),
(15, 'system_font', 'roboto_condensed'),
(16, 'stripe_secret_key', 'active12'),
(17, 'stripe_public_key', 'pk_test_x9as1c9jBDpODI7IbC7D0MEB'),
(18, 'stripe_private_key', 'sk_test_g7PUZTcwwFnxdlHrWSOicHfu'),
(19, 'smtp_user', 'admin@cyanoverse.com'),
(20, 'smtp_port', '587'),
(21, 'smtp_pass', '123456'),
(22, 'smtp_host', 'cyanoverse.com'),
(23, 'smtp_encryption', ''),
(24, 'site_desc', '12'),
(25, 'site_author', 'William M.'),
(26, 'site_appleicon', 'logo.png'),
(27, 'security_token', '5027133599'),
(28, 'RTL', '0'),
(29, 'rows_per_table', '25'),
(30, 'reset_key', '34WI2L12L87I1A65M90M9A42N41D08A26I'),
(31, 'reminder_message', 'Hello {CLIENT}<br>This is a friendly reminder to pay your invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
(32, 'recaptcha_site_key', NULL),
(33, 'recaptcha_secret_key', NULL),
(34, 'realtime_notification', '0'),
(35, 'qty_calculation_from_items', 'Yes'),
(36, 'pusher_cluster', 'ap2'),
(37, 'pusher_app_secret', '6fce183b214d17c20dd5'),
(38, 'pusher_app_key', '4cf88668659dc9c987c3'),
(39, 'pusher_app_id', '401479'),
(40, 'purchase_start_no', '1'),
(41, 'purchase_prefix', 'PUR'),
(42, 'purchase_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
(43, 'purchase_code', ''),
(44, 'protocol', 'mail'),
(45, 'postmark_from_address', ''),
(46, 'postmark_api_key', ''),
(47, 'performance_email', '1'),
(48, 'pdf_engine', 'invoicr'),
(49, 'paypal_status', 'on'),
(56, 'only_allowed_ip_can_clock', NULL),
(57, 'office_time', 'same_time'),
(58, 'office_hours', '8'),
(59, 'notify_ticket_reopened', 'TRUE'),
(60, 'notify_task_assignments', 'TRUE'),
(61, 'notify_project_files', 'TRUE'),
(62, 'notify_project_comments', 'TRUE'),
(63, 'notify_project_assignments', 'TRUE'),
(64, 'notify_message_received', 'TRUE'),
(65, 'notified_user', '[\"1\"]'),
(66, 'navbar_logo_background', NULL),
(67, 'money_format', '1'),
(68, 'mollie_status', 'active'),
(69, 'mollie_partner_id', '3106644'),
(70, 'mollie_api_key', 'test_tkjFqFF6fP92FDSwBDHpeCzBRMBQBD'),
(71, 'max_file_size', '5000'),
(72, 'mark_attendance_from_login', 'Yes'),
(73, 'login_background', 'login_background_77.png'),
(74, 'locale', NULL),
(75, 'last_seen_activities', '0'),
(76, 'languages', 'spanish'),
(77, 'language', 'english'),
(78, 'installed', 'TRUE'),
(79, 'increment_proposal_number', 'TRUE'),
(80, 'increment_invoice_number', 'TRUE'),
(81, 'increment_estimate_number', 'TRUE'),
(82, 'imap_search_for_tickets', NULL),
(83, 'imap_search_for_leads', NULL),
(84, 'imap_search', '0'),
(85, 'holiday_on_calendar', 'on'),
(86, 'gst_state', 'AN'),
(87, 'google_api_key', 'AIzaSyDgnKfYmvV-G--WYMJEC7nX2GyFCWCZtTc'),
(88, 'goal_tracking_on_calendar', 'on'),
(89, 'goal_tracking_color', '#537015'),
(90, 'gcal_id', 'kla83orf1u7hrj6p0u5gdmpji4@group.calendar.google.com'),
(91, 'gcal_api_key', 'AIzaSyBXcmmcboEyAgtoUtXjKXe4TfpsnEtoUDQ'),
(92, 'for_tickets', NULL),
(93, 'file_max_size', '80000'),
(94, 'favicon', 'favicon_77.png'),
(95, 'estimate_language', 'en'),
(96, 'estimate_footer', '<span style=\"font-weight: bold; line-height: 21.4px; text-align: right;\">Estimate&nbsp;</span>was created on a computer and is valid without the signature and seal'),
(97, 'estimate_color', 'rgba(160,29,171,1)'),
(98, 'encryption', 'ssl'),
(99, 'enable_languages', NULL),
(100, 'email_staff_tickets', 'TRUE'),
(101, 'email_invoice_message', 'Hello {CLIENT}<br>Here is the invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
(102, 'email_estimate_message', 'Hi {CLIENT}<br>Thanks for your business inquiry. <br>The estimate EST {REF} is attached with this email. <br>Estimate Overview:<br>Estimate # : EST {REF}<br>Amount: {CURRENCY} {AMOUNT}<br> You can view the estimate online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
(103, 'email_account_details', 'TRUE'),
(104, 'display_invoice_badge', 'FALSE'),
(105, 'display_estimate_badge', '0'),
(106, 'developer', 'ig63Yd/+yuA8127gEyTz9TY4pnoeKq8dtocVP44+BJvtlRp8Vqcetwjk51dhSB6Rx8aVIKOPfUmNyKGWK7C/gg=='),
(107, 'desktop_notifications', '1'),
(108, 'deposit_email', '1'),
(109, 'demo_mode', 'FALSE'),
(110, 'delete_mail_after_import', NULL),
(111, 'default_terms', 'Thank you for <span style=\"font-weight: bold;\">your</span> busasiness. Please process this invoice within the due date.'),
(112, 'default_tax', 'N;'),
(113, 'default_status', 'open'),
(114, 'default_priority', 'Medium'),
(115, 'default_lead_status', '1'),
(116, 'default_lead_permission', 'all'),
(117, 'default_leads_source', '1'),
(118, 'default_language', 'english'),
(119, 'default_department', NULL),
(120, 'default_currency_symbol', '$'),
(121, 'default_currency', '$'),
(122, 'default_account', '1'),
(123, 'decimal_separator', '2'),
(124, 'date_picker_format', NULL),
(125, 'date_php_format', NULL),
(126, 'date_format', 'M j, Y'),
(127, 'currency_position', '1'),
(128, 'cron_key', '34WI2L12L87I1A65M90M9A42N41D08A26I'),
(129, 'country', '0'),
(130, 'contact_person', 'sdf34'),
(131, 'config_ssl', 'on'),
(132, 'config_port', '993'),
(133, 'config_pop3', '0'),
(134, 'config_password', '1c896e7d0fcbf64bb0921dd4bec18c947d34a5397472bb13b9f9ed95e4fd10dea45f365dde644233b2eef83f34e67cfd2fcc29b99c2835b89e8ecde5cdf233081hQfQaY72VtMiijV4wlVI6nmPwdsrMgJHALC3GCDw8E='),
(135, 'config_mailbox', 'INBOX'),
(136, 'config_imap_or_pop', 'on'),
(137, 'config_imap', '0'),
(138, 'config_host', 'mail.coderitems.com'),
(139, 'config_additional_flag', '/novalidate-cert'),
(140, 'company_zip_code', 'sdf'),
(141, 'company_vat', 'dsf'),
(142, 'company_phone_2', ''),
(143, 'company_phone', '12321'),
(144, 'company_name', '123'),
(145, 'company_logo', 'logo_77.png'),
(146, 'company_legal_name', '12312'),
(147, 'company_email', 'wdqwd@gmail.com'),
(148, 'company_domain', '123'),
(149, 'company_country', 'India'),
(150, 'company_city', 'dwq'),
(151, 'company_address', 'sdfsdfewfwefwe'),
(153, 'build', '0'),
(154, 'braintree_status', 'active'),
(155, 'braintree_public_key', '62grv2dnvfpg599v'),
(156, 'braintree_private_key', 'aa804bc269d4a9c8d8170ab8aed353b3'),
(157, 'braintree_merchant_id', '9m2qzhrptx7wyccy'),
(158, 'braintree_live_or_sandbox', 'TRUE'),
(159, 'braintree_default_account', NULL),
(160, 'bitcoin_status', 'active'),
(161, 'bitcoin_address', NULL),
(162, 'bank_cash', '0'),
(163, 'award_email', '1'),
(164, 'auto_close_ticket', NULL),
(165, 'auto_check_for_new_notifications', '0'),
(167, 'automatic_email_on_recur', 'TRUE'),
(168, 'automatic_database_backup', 'on'),
(169, 'authorize_transaction_key', 'transfer key'),
(170, 'authorize_status', 'active'),
(171, 'authorize', 'login id'),
(173, 'aside-float', NULL),
(174, 'aside-collapsed', NULL),
(175, 'api_signature', 'AZxbwZ9bPVPFFf7hCCNemacLJwlCAqoMULHXAenCuJAwtzfjGbkbaIhV'),
(176, 'announcements_email', '1'),
(177, 'amount_to_words_lowercase', 'No'),
(179, 'allow_multiple_client_in_project', NULL),
(180, 'allow_customer_edit_amount', 'No'),
(184, 'allowed_files', 'gif|png|jpeg|jpg|pdf|doc|txt|docx|xls|zip|rar|xls|mp4|ico'),
(185, 'aim_authorize_transaction_key', '64uhZ93mqH6c3MWf'),
(186, 'aim_authorize_status', 'deactive'),
(187, 'aim_authorize_live ', 'FALSE'),
(188, 'aim_api_login_id', '7F6eJh7uFyD'),
(189, 'active_pre_loader', NULL),
(190, 'active_custom_color', '0'),
(191, 'active_cronjob', 'on'),
(192, 'minimum_purchase', '10'),
(193, 'default_language', 'english'),
(194, 'razorpay_key', 'rzp_live_FjzDHNyZd4m6Ha'),
(195, 'instant_delivery', '1'),
(196, 'delivery_tips', 'on'),
(197, 'cancel_timer', '10'),
(198, 'driver_radius', '3000000000'),
(199, 'noticeboard', 'sxfds'),
(200, 'rayzorPay', 'on'),
(201, 'paypal', '12312123123'),
(202, 'stripe', 'on'),
(203, 'flutterWave', 'on'),
(204, 'distance_type', 'km'),
(205, 'dail_code', '+91'),
(206, 'iso_code', 'IN'),
(207, 'customer_support', '1231234'),
(208, 'mpesa', 'on'),
(209, 'mpesaConsumerKey', 'qTNmiZt21oYnRTndv32i4lTkU4LXAUm2'),
(210, 'mpesaConsumerSecret', 'zICKJbR3cWRDzhUZ'),
(211, 'mpesaPasskey', '1231'),
(212, 'paystack', 'on'),
(213, 'cod_mode', '1'),
(214, 'featured_text', 'Top restaurants'),
(215, 'schedule_cancellation', '1'),
(216, 'schedule_cancellation_time_limit', '10'),
(217, 'take_away_cancellation', '1'),
(218, 'take_away_cancellation_time_limit', '10'),
(219, 'fixed_banner', 'fixed_banner_1.png'),
(220, 'fbRdLink', 'discount_upto'),
(221, 'featuredBgColor', '#fff2e5'),
(222, 'featuredTextColor', '#872121'),
(223, 'headerColor', '#570000'),
(224, 'headerBgImage', 'header_image_1.png'),
(225, 'customHeader', 'on'),
(226, 'default_payment_method', NULL),
(227, 'project_details_view', NULL),
(228, 'fbPara', '60'),
(229, 'driver_commission', '10'),
(230, 'paystack_publishable_key', 'csdclkjbskcj1'),
(231, 'paystack_secret_key', 'sdkvjbdsjkvds2'),
(232, 'flutterwave_key', '1232112'),
(267, 'login_position', 'left'),
(268, 'top_bar_background', NULL),
(269, 'top_bar_color', NULL),
(270, 'sidebar_background', NULL),
(271, 'sidebar_color', NULL),
(272, 'sidebar_active_background', NULL),
(273, 'sidebar_active_color', NULL),
(274, 'submenu_open_background', NULL),
(275, 'active_background', NULL),
(276, 'active_color', NULL),
(277, 'body_background', NULL),
(278, 'firebase_web_key', '{\n    apiKey: \"AIzaSyDS-U9CrpPJfG60yqfy0oFZrcHDQ-0m7IU\",\n    authDomain: \"foodzo-6ba58.firebaseapp.com\",\n    projectId: \"foodzo-6ba58\",\n    storageBucket: \"foodzo-6ba58.appspot.com\",\n    messagingSenderId: \"467117159460\",\n    appId: \"1:467117159460:web:4302fa70f0e49a411a54b1\",\n    measurementId: \"G-F30WPYDB7S\"\n}'),
(279, 'task_details_view', NULL),
(280, 'allow_client_registration', NULL),
(281, 'allow_apply_job_from_login', NULL),
(282, 'allow_client_project', NULL),
(283, 'allow_sub_tasks', NULL),
(284, 'attendance_report', NULL),
(285, 'client_default_menu', 'a:1:{s:19:\"client_default_menu\";N;}'),
(287, 'payment_banner', 'payment_banner_1.png'),
(288, 'vendor_commission', '10'),
(289, 'category_title', 'What\'s on your mind ?'),
(290, 'login_text', '#1 Food Delivery ands Takeaway app');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(6) NOT NULL,
  `value` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `value`) VALUES
(1, 'Afghanistan'),
(2, 'Aringland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia and Herzegovina'),
(29, 'Botswana'),
(30, 'Bouvet Island'),
(31, 'Brazil'),
(32, 'British Indian Ocean territory'),
(33, 'Brunei Darussalam'),
(34, 'Bulgaria'),
(35, 'Burkina Faso'),
(36, 'Burundi'),
(37, 'Cambodia'),
(38, 'Cameroon'),
(39, 'Canada'),
(40, 'Cape Verde'),
(41, 'Cayman Islands'),
(42, 'Central African Republic'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Congo'),
(52, ' Democratic Republic'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Ivory Coast (Ivory Coast)'),
(56, 'Croatia (Hrvatska)'),
(57, 'Cuba'),
(58, 'Cyprus'),
(59, 'Czech Republic'),
(60, 'Denmark'),
(61, 'Djibouti'),
(62, 'Dominica'),
(63, 'Dominican Republic'),
(64, 'East Timor'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guinea'),
(93, 'Guinea-Bissau'),
(94, 'Guyana'),
(95, 'Haiti'),
(96, 'Heard and McDonald Islands'),
(97, 'Honduras'),
(98, 'Hong Kong'),
(99, 'Hungary'),
(100, 'Iceland'),
(101, 'India'),
(102, 'Indonesia'),
(103, 'Iran'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Jamaica'),
(109, 'Japan'),
(110, 'Jordan'),
(111, 'Kazakhstan'),
(112, 'Kenya'),
(113, 'Kiribati'),
(114, 'Korea (north)'),
(115, 'Korea (south)'),
(116, 'Kuwait'),
(117, 'Kyrgyzstan'),
(118, 'Lao People\'s Democratic Republic'),
(119, 'Latvia'),
(120, 'Lebanon'),
(121, 'Lesotho'),
(122, 'Liberia'),
(123, 'Libyan Arab Jamahiriya'),
(124, 'Liechtenstein'),
(125, 'Lithuania'),
(126, 'Luxembourg'),
(127, 'Macao'),
(128, 'Macedonia'),
(129, 'Madagascar'),
(130, 'Malawi'),
(131, 'Malaysia'),
(132, 'Maldives'),
(133, 'Mali'),
(134, 'Malta'),
(135, 'Marshall Islands'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mayotte'),
(140, 'Mexico'),
(141, 'Micronesia'),
(142, 'Moldova'),
(143, 'Monaco'),
(144, 'Mongolia'),
(145, 'Montserrat'),
(146, 'Morocco'),
(147, 'Mozambique'),
(148, 'Myanmar'),
(149, 'Namibia'),
(150, 'Nauru'),
(151, 'Nepal'),
(152, 'Netherlands'),
(153, 'Netherlands Antilles'),
(154, 'New Caledonia'),
(155, 'New Zealand'),
(156, 'Nicaragua'),
(157, 'Niger'),
(158, 'Nigeria'),
(159, 'Niue'),
(160, 'Norfolk Island'),
(161, 'Northern Mariana Islands'),
(162, 'Norway'),
(163, 'Oman'),
(164, 'Pakistan'),
(165, 'Palau'),
(166, 'Palestinian Territories'),
(167, 'Panama'),
(168, 'Papua New Guinea'),
(169, 'Paraguay'),
(170, 'Peru'),
(171, 'Philippines'),
(172, 'Pitcairn'),
(173, 'Poland'),
(174, 'Portugal'),
(175, 'Puerto Rico'),
(176, 'Qatar'),
(177, 'Runion'),
(178, 'Romania'),
(179, 'Russian Federation'),
(180, 'Rwanda'),
(181, 'Saint Helena'),
(182, 'Saint Kitts and Nevis'),
(183, 'Saint Lucia'),
(184, 'Saint Pierre and Miquelon'),
(185, 'Saint Vincent and the Grenadines'),
(186, 'Samoa'),
(187, 'San Marino'),
(188, 'Sao Tome and Principe'),
(189, 'Saudi Arabia'),
(190, 'Senegal'),
(191, 'Serbia and Montenegro'),
(192, 'Seychelles'),
(193, 'Sierra Leone'),
(194, 'Singapore'),
(195, 'Slovakia'),
(196, 'Slovenia'),
(197, 'Solomon Islands'),
(198, 'Somalia'),
(199, 'South Africa'),
(200, 'South Georgia and the South Sandwich Islands'),
(201, 'Spain'),
(202, 'Sri Lanka'),
(203, 'Sudan'),
(204, 'Suriname'),
(205, 'Svalbard and Jan Mayen Islands'),
(206, 'Swaziland'),
(207, 'Sweden'),
(208, 'Switzerland'),
(209, 'Syria'),
(210, 'Taiwan'),
(211, 'Tajikistan'),
(212, 'Tanzania'),
(213, 'Thailand'),
(214, 'Togo'),
(215, 'Tokelau'),
(216, 'Tonga'),
(217, 'Trinidad and Tobago'),
(218, 'Tunisia'),
(219, 'Turkey'),
(220, 'Turkmenistan'),
(221, 'Turks and Caicos Islands'),
(222, 'Tuvalu'),
(223, 'Uganda'),
(224, 'Ukraine'),
(225, 'United Arab Emirates'),
(226, 'United Kingdom'),
(227, 'United States of America'),
(228, 'Uruguay'),
(229, 'Uzbekistan'),
(230, 'Vanuatu'),
(231, 'Vatican City'),
(232, 'Venezuela'),
(233, 'Vietnam'),
(234, 'Virgin Islands (British)'),
(235, 'Virgin Islands (US)'),
(236, 'Wallis and Futuna Islands'),
(237, 'Western Sahara'),
(238, 'Yemen'),
(239, 'Zaire'),
(240, 'Zambia'),
(241, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` int(11) NOT NULL,
  `code` varchar(30) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `couponType` varchar(20) NOT NULL,
  `zone_id` int(10) DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `discountType` varchar(10) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `minimumPurchasedAmount` double NOT NULL,
  `limitUser` int(11) NOT NULL,
  `maximum_limit` int(11) DEFAULT 0,
  `current_applied` int(11) DEFAULT 0,
  `start_timestamp` varchar(50) DEFAULT NULL,
  `expired_timestamp` varchar(50) DEFAULT NULL,
  `terms` longtext NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `image` varchar(200) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `added_id` varchar(10) DEFAULT NULL,
  `date` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`coupon_id`, `code`, `title`, `couponType`, `zone_id`, `shop_id`, `discountType`, `discount`, `minimumPurchasedAmount`, `limitUser`, `maximum_limit`, `current_applied`, `start_timestamp`, `expired_timestamp`, `terms`, `status`, `image`, `added_by`, `added_id`, `date`) VALUES
(56, '1234', 'Pongal offer', '2', 93, 288, '%', 10, 50, 34, 234, 2, '1667413800', '1694975400', '123', 1, 'coupon_56.png', NULL, NULL, 1667454310),
(57, '233', 'Marry offer', '3', 93, NULL, '%', 10, 100, 0, 234, 0, '1662057000', '1695022582', '234', 1, 'coupon_57.png', NULL, NULL, 1662128525),
(59, '23', '13', '4', 148, NULL, '%', 0, 100, 34, 34, 0, '1665858600', '1665858600', '3', 1, NULL, NULL, NULL, 1665931163),
(60, '123', '2312312', '2', 93, 335, 'amount', 10, 123, 2, 23, 0, '1668105000', '1668105000', '34', 1, NULL, NULL, NULL, 1668133466),
(61, '123A', 'test', '1', 93, NULL, 'amount', 10, 10, 10, 10, 3, '1668969000', '1669746600', 'jksd', 1, NULL, NULL, NULL, 1669436724);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currencies`
--

CREATE TABLE `tbl_currencies` (
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xrate` decimal(12,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency_method`
--

CREATE TABLE `tbl_currency_method` (
  `currency_method_id` int(11) NOT NULL,
  `currency_symbol` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currency_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `country` varchar(100) CHARACTER SET utf8 NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_currency_method`
--

INSERT INTO `tbl_currency_method` (`currency_method_id`, `currency_symbol`, `currency_name`, `country`, `image`) VALUES
(4, '$', 'Doller', 'India', 'currency_4.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `username` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `faviourt` longtext DEFAULT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `address` longtext DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `selected_address` longtext DEFAULT NULL,
  `latitude` varchar(20) DEFAULT '0',
  `longitude` varchar(20) DEFAULT '0',
  `regVia` varchar(15) DEFAULT NULL,
  `favorite_store` longtext DEFAULT NULL,
  `wallet_balance` double NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custom_addon_group`
--

CREATE TABLE `tbl_custom_addon_group` (
  `custom_addon_group_id` int(20) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hint` longtext CHARACTER SET utf8 DEFAULT NULL,
  `zone_id` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_custom_addon_group`
--

INSERT INTO `tbl_custom_addon_group` (`custom_addon_group_id`, `name`, `photo`, `hint`, `zone_id`, `vendor`, `status`, `date`) VALUES
(1, '123 yryugub', 'custom_addon_group_1.jpg', '                 12312       vhbjkn         ', '148', '288', 1, '1663338288'),
(4, '12321', NULL, '                123', '93', '288', 1, '1665762337'),
(5, '123', NULL, '                213', '93', '335', 1, '1668098636'),
(6, 'Product', NULL, '                123', '93', '320', 1, '1669213860'),
(7, 'test', NULL, '                1232', '147', '324', 1, '1677046236');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custom_field`
--

CREATE TABLE `tbl_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `field_label` varchar(100) NOT NULL,
  `default_value` text DEFAULT NULL,
  `help_text` varchar(200) NOT NULL,
  `field_type` enum('text','textarea','dropdown','date','checkbox','numeric','url','email') NOT NULL,
  `required` varchar(5) NOT NULL DEFAULT 'false',
  `status` enum('active','deactive') NOT NULL DEFAULT 'deactive',
  `show_on_table` varchar(5) DEFAULT NULL,
  `visible_for_admin` varchar(5) DEFAULT NULL,
  `visible_for_client` varchar(11) DEFAULT NULL,
  `show_on_details` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custom_variant_group`
--

CREATE TABLE `tbl_custom_variant_group` (
  `custom_variant_group_id` int(20) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hint` longtext CHARACTER SET utf8 DEFAULT NULL,
  `zone_id` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_custom_variant_group`
--

INSERT INTO `tbl_custom_variant_group` (`custom_variant_group_id`, `name`, `photo`, `hint`, `zone_id`, `vendor`, `status`, `date`) VALUES
(3, 'Crust', 'custom_variant_group_3.jpg', '                                 vhbj         binomp,                                                                                                                skjbfejk                                                                                                                                       ', '148', '288', 1, '1665762954'),
(5, '123', NULL, '                123', '93', '335', 1, '1668098648'),
(6, 'group', NULL, '                123', '147', '324', 1, '1677046246');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dashboard`
--

CREATE TABLE `tbl_dashboard` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `col` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `order_no` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `report` tinyint(1) NOT NULL DEFAULT 0,
  `for_staff` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_dashboard`
--

INSERT INTO `tbl_dashboard` (`id`, `name`, `col`, `order_no`, `status`, `report`, `for_staff`) VALUES
(1, 'income_expenses_report', 'col-sm-4', 1, 1, 1, 1),
(2, 'invoice_payment_report', 'col-sm-4', 2, 1, 1, 1),
(3, 'ticket_tasks_report', 'col-sm-4', 3, 1, 1, 1),
(5, 'goal_report', 'col-md-6 ', 7, 1, 0, 1),
(6, 'overdue_report', 'col-md-12', 3, 1, 0, 1),
(11, 'my_project', 'col-md-6', 23, 1, 0, 1),
(12, 'my_tasks', 'col-md-6', 26, 1, 0, 1),
(14, 'announcements', 'col-md-6', 32, 1, 0, 1),
(15, 'payments_report', 'col-md-6', 41, 1, 0, 1),
(16, 'income_expense', 'col-md-6', 20, 1, 0, 1),
(17, 'income_report', 'col-md-6', 44, 1, 0, 1),
(18, 'expense_report', 'col-md-6', 38, 1, 0, 1),
(19, 'recently_paid_invoices', 'col-md-6', 29, 1, 0, 1),
(20, 'recent_activities', 'col-md-6', 26, 0, 0, 1),
(21, 'finance_overview', 'col-md-6', 17, 0, 0, 1),
(22, 'todo_list', 'col-md-6', 34, 1, 0, 1),
(23, 'paid_amount', 'col-md-3', 2, 1, 2, 1),
(24, 'due_amount', 'col-md-3', 4, 1, 2, 1),
(25, 'invoice_amount', 'col-md-3', 1, 1, 2, 1),
(26, 'paid_percentage', 'col-md-3', 3, 1, 2, 1),
(27, 'recently_paid_invoices', 'col-sm-6', 2, 1, 3, 1),
(28, 'payments', 'col-sm-6', 1, 1, 3, 1),
(29, 'recent_invoice', 'col-sm-6', 3, 1, 3, 1),
(30, 'recent_projects', 'col-sm-6', 4, 1, 3, 1),
(31, 'recent_emails', 'col-sm-4', 5, 1, 3, 1),
(32, 'recent_activities', 'col-sm-4', 6, 1, 3, 1),
(33, 'announcements', 'col-sm-4', 7, 1, 3, 1),
(34, 'my_calendar', 'col-md-6', 15, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_days`
--

CREATE TABLE `tbl_days` (
  `day_id` int(5) NOT NULL,
  `day` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_days`
--

INSERT INTO `tbl_days` (`day_id`, `day`) VALUES
(1, 'Saturday'),
(2, 'Sunday'),
(3, 'Monday'),
(4, 'Tuesday'),
(5, 'Wednesday'),
(6, 'Thursday'),
(7, 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deliverytimeslot`
--

CREATE TABLE `tbl_deliverytimeslot` (
  `deliverytimeslot_id` int(11) NOT NULL,
  `fromTime` varchar(15) NOT NULL,
  `toTime` varchar(15) NOT NULL,
  `time_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `date` int(30) DEFAULT NULL,
  `vendor` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_deliverytimeslot`
--

INSERT INTO `tbl_deliverytimeslot` (`deliverytimeslot_id`, `fromTime`, `toTime`, `time_id`, `status`, `date`, `vendor`) VALUES
(547, '6:30 AM', '9:30 PM', 1, 1, 1668160501, 1),
(552, '6:30 AM', '8:30 AM', 8, 1, 1669262012, 324),
(550, '6:30 AM', '9:30 PM', 1, 1, 1668160901, 335),
(551, '6:30 AM', '10:30 PM', 1, 1, 1668161261, 335),
(553, '10:30 AM', '5:30 PM', 17, 1, 1669262024, 324),
(554, '9:00 AM', '9:00 PM', 21, 0, 1669306133, 345),
(555, '9:00 AM', '9:00 PM', 21, 1, 1669350009, 324),
(556, '9:00 AM', '9:00 PM', 21, 1, 1669350126, 323),
(557, '9:00 AM', '9:00 PM', 21, 1, 1669353239, 345),
(558, '9:00 AM', '9:00 PM', 21, 1, 1669353254, 344),
(559, '9:00 AM', '9:00 PM', 21, 1, 1669353281, 324),
(560, '9:00 AM', '9:00 PM', 21, 1, 1669353303, 323),
(561, '9:00 AM', '9:00 PM', 21, 1, 1669547804, 324),
(562, '9:00 AM', '9:00 PM', 21, 1, 1669625370, 322),
(563, '9:00 AM', '9:00 PM', 21, 1, 1669625631, 322),
(564, '9:00 AM', '9:00 PM', 21, 1, 1669625661, 320),
(565, '9:00 AM', '9:00 PM', 21, 1, 1669625839, 322),
(566, '9:00 AM', '9:00 PM', 21, 1, 1675490178, 324),
(567, '9:00 AM', '9:00 PM', 21, 1, 1675490227, 324),
(568, '9:00 AM', '9:00 PM', 21, 1, 1675490241, 320),
(569, '9:00 AM', '9:00 PM', 21, 1, 1675490379, 348),
(570, '9:00 AM', '9:00 PM', 21, 1, 1677046093, 324),
(571, '9:00 AM', '9:00 PM', 21, 1, 1677136965, 352),
(572, '9:00 AM', '9:00 PM', 21, 1, 1677137135, 352),
(573, '9:00 AM', '9:00 PM', 21, 1, 1677137159, 352),
(574, '9:00 AM', '9:00 PM', 21, 1, 1677137217, 352),
(575, '9:00 AM', '9:00 PM', 21, 1, 1677138903, 352),
(576, '9:00 AM', '9:00 PM', 21, 1, 1677149607, 324);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `departments_id` int(10) NOT NULL,
  `deptname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_head_id` int(11) DEFAULT NULL COMMENT 'department_head_id == user_id',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encryption` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `mailbox` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `unread_email` tinyint(1) NOT NULL DEFAULT 0,
  `description` longtext CHARACTER SET utf8 DEFAULT NULL,
  `delete_mail_after_import` tinyint(1) NOT NULL DEFAULT 0,
  `last_postmaster_run` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`departments_id`, `deptname`, `department_head_id`, `email`, `encryption`, `host`, `username`, `password`, `mailbox`, `unread_email`, `description`, `delete_mail_after_import`, `last_postmaster_run`) VALUES
(1, 'Admin', 3, NULL, '', '', '', '', '', 0, 'skjfbcsjkdf', 0, NULL),
(20, 'Zone Manager', NULL, NULL, '', '', '', '', '', 0, 'kjfjkwe', 0, NULL),
(21, 'Super depart', NULL, NULL, '', '', '', '', '', 0, '123', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designations`
--

CREATE TABLE `tbl_designations` (
  `designations_id` int(5) NOT NULL,
  `departments_id` int(11) NOT NULL,
  `designations` varchar(100) NOT NULL,
  `permission` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_designations`
--

INSERT INTO `tbl_designations` (`designations_id`, `departments_id`, `designations`, `permission`) VALUES
(27, 20, 'Manager', NULL),
(28, 21, '123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_draft`
--

CREATE TABLE `tbl_draft` (
  `draft_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to` text NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` text DEFAULT NULL,
  `attach_file_path` text DEFAULT NULL,
  `attach_filename` text DEFAULT NULL,
  `message_time` datetime NOT NULL,
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver`
--

CREATE TABLE `tbl_driver` (
  `driver_id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `rating_num` int(11) NOT NULL DEFAULT 0,
  `rating_total` decimal(20,0) NOT NULL DEFAULT 0,
  `rating_user` longtext NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `password` longtext CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 DEFAULT NULL,
  `proof_image` longtext CHARACTER SET utf8 DEFAULT NULL,
  `proof_type` varchar(20) DEFAULT NULL,
  `image` longtext CHARACTER SET utf8 DEFAULT NULL,
  `image_type` varchar(20) DEFAULT NULL,
  `livestatus` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `date` int(50) NOT NULL,
  `latitude` varchar(100) DEFAULT '0',
  `longitude` varchar(100) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `drivingMode` int(10) DEFAULT NULL,
  `cin` double DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `vehicle_details` longtext CHARACTER SET utf8 DEFAULT NULL,
  `kyc_details` longtext DEFAULT NULL,
  `wallet_balance` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver_instructions`
--

CREATE TABLE `tbl_driver_instructions` (
  `driver_instructions_id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_driver_instructions`
--

INSERT INTO `tbl_driver_instructions` (`driver_instructions_id`, `title`, `image`, `status`, `date`) VALUES
(2, 'sd', 'driver_instructions_2.png', 1, '1664854755'),
(3, '324', 'driver_instructions_3.png', 1, '1665114761');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver_login_logs`
--

CREATE TABLE `tbl_driver_login_logs` (
  `driver_login_logs_id` int(11) NOT NULL,
  `from_time` int(20) NOT NULL,
  `to_time` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(100) NOT NULL DEFAULT '0',
  `distance` int(11) DEFAULT 0,
  `orders` int(11) NOT NULL DEFAULT 0,
  `driver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver_rating`
--

CREATE TABLE `tbl_driver_rating` (
  `driver_rating_id` int(11) NOT NULL,
  `rating` decimal(20,0) NOT NULL DEFAULT 0,
  `message` longtext CHARACTER SET utf8 DEFAULT NULL,
  `buyer_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `order_id` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_templates`
--

CREATE TABLE `tbl_email_templates` (
  `email_templates_id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_group` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_body` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`email_templates_id`, `code`, `email_group`, `subject`, `template_body`) VALUES
(1, 'en', 'registration', 'Registration successful', '<div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Welcome to {SITE_NAME}</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Thanks for joining {SITE_NAME}. <br>To open your {SITE_NAME} homepage, please follow this link:<br><big><b><a href=\"{SITE_URL}\">{SITE_NAME} Account!</a></b></big><br><p>Your seller profile is off to the great start. Take a moment to complete the following steps, to help build more trust between you and your customer so you get more work.</p><br><br></div></div>'),
(2, 'en', 'forgot_password', 'Forgot Password', '        <div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New Password</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Forgot your password, huh? No big deal.<br>To create a new password, just follow this link:<br><br><big><b><a href=\"{PASS_KEY_URL}\">Create a new password</a></b></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"{PASS_KEY_URL}\">{PASS_KEY_URL}</a><br><br><br>You received this email, because it was requested by a <a href=\"{SITE_URL}\">{SITE_NAME}</a> user. <p></p><p>This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.</p><br>Thank you,<br>The {SITE_NAME} Team</div></div>'),
(3, 'en', 'change_email', 'Change Email', '<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New email address on {SITE_NAME}</div>\r\n\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">You have changed your email address for {SITE_NAME}.<br>Follow this link to confirm your new email address:<br><big><b><a href=\"{NEW_EMAIL_KEY_URL}\">Confirm your new email</a></b></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"{NEW_EMAIL_KEY_URL}\">{NEW_EMAIL_KEY_URL}</a><br><br>Your email address: {NEW_EMAIL}<br><br>You received this email, because it was requested by a <a href=\"{SITE_URL}\">{SITE_NAME}</a> user. If you have received this by mistake, please DO NOT click the confirmation link, and simply delete this email. After a short time, the request will be removed from the system.<br>Thank you,<br>The {SITE_NAME} Team</div>\r\n\r\n</div>'),
(4, 'en', 'activate_account', 'Activate Account', '<p>Welcome to {SITE_NAME}!</p>\r\n\r\n<p>Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.</p>\r\n\r\n<p>To verify your email address, please follow this link:<br />\r\n<big><strong><a href=\"{ACTIVATE_URL}\">Finish your registration...</a></strong></big><br />\r\nLink doesn&#39;t work? Copy the following link to your browser address bar:<br />\r\n<a href=\"{ACTIVATE_URL}\">{ACTIVATE_URL}</a></p>\r\n\r\n<p><br />\r\n<br />\r\nPlease verify your email within {ACTIVATION_PERIOD} hours, otherwise your registration will become invalid and you will have to register again.<br />\r\n<br />\r\n<br />\r\nYour username: {USERNAME}<br />\r\nYour email address: {EMAIL}<br />\r\nYour password: {PASSWORD}<br />\r\n<br />\r\nHave fun!<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(5, 'en', 'reset_password', 'Reset Password', '<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New password on {SITE_NAME}</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>You have changed your password.<br>Please, keep it in your records so you don\'t forget it.<br></p>\r\nYour username: {USERNAME}<br>Your email address: {EMAIL}<br>Your new password: {NEW_PASSWORD}<br><br>Thank you,<br>The {SITE_NAME} Team</div>\r\n</div>'),
(6, 'en', 'bug_assigned', 'New Bug Assigned', '<p>Hi there,</p>\r\n\r\n<p>A new bug &nbsp;{BUG_TITLE} &nbsp;has been assigned to you by {ASSIGNED_BY}.</p>\r\n\r\n<p>You can view this bug by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{BUG_URL}\">View Bug</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(7, 'en', 'bug_updated', 'Bug status changed', '<p>Hi there,</p>\r\n\r\n<p>Bug {BUG_TITLE} has been marked as {STATUS} by {MARKED_BY}.</p>\r\n\r\n<p>You can view this bug by logging in to the portal using the link below.</p>\r\n\r\n<p><big><strong><a href=\"{BUG_URL}\">View Bug</a></strong></big><br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(8, 'en', 'bug_comments', 'New Bug Comment Received', '<p>Hi there,</p>\r\n\r\n<p>A new comment has been posted by {POSTED_BY} to bug {BUG_TITLE}.</p>\r\n\r\n<p>You can view the comment using the link below.</p>\r\n\r\n<p><em>{COMMENT_MESSAGE}</em></p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{COMMENT_URL}\">View Comment</a></strong></big><br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(9, 'en', 'bug_attachment', 'New bug attachment', '<p>Hi there,</p>\r\n\r\n<p>A new attachment&nbsp;has been uploaded by {UPLOADED_BY} to issue {BUG_TITLE}.</p>\r\n\r\n<p>You can view the bug using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{BUG_URL}\">View Bug</a></strong></big></p>\r\n\r\n<p><br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(10, 'en', 'bug_reported', 'New bug Reported', '<p>Hi there,</p>\r\n\r\n<p>A new bug ({BUG_TITLE}) has been reported by {ADDED_BY}.</p>\r\n\r\n<p>You can view the Bug using the Dashboard Page.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{BUG_URL}\">View Bug</a></strong></big></p>\r\n\r\n<p><br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(11, 'en', 'vendor_rejected', 'Application Rejected', '<div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Welcome to {SITE_NAME}</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Sorry! Your application is Rejected<br>To open your {SITE_NAME} homepage, please follow this link:<br><big><b><a href=\"{SITE_URL}\">{SITE_NAME} Account!</a></b></big><br><p>Please contact our admin</p><br><b>Best of Luck</b><br></div></div>'),
(12, 'en', 'vendor_approved', 'Approved successful', '<div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Welcome to {SITE_NAME}</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Congratulations! Your application is approved<br>To open your {SITE_NAME} homepage, please follow this link:<br><big><b><a href=\"{SITE_URL}\">{SITE_NAME} Account!</a></b></big><br><p>Add your items\'s & start your business</p><br><b>Best of Luck</b><br></div></div>'),
(13, 'en', 'refund_confirmation', 'Refund Confirmation', '<p>Refund Confirmation</p>\r\n\r\n<p>Hello {CLIENT}</p>\r\n\r\n<p>This is confirmation that a refund has been processed for Invoice&nbsp; of {CURRENCY} {AMOUNT}&nbsp;sent on {INVOICE_DATE}.<br />\r\nYou can view the invoice online at:<br />\r\n<big><strong><a href=\"{INVOICE_LINK}\">View Invoice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(14, 'en', 'payment_confirmation', 'Payment Confirmation', '<p>Payment Confirmation</p>\r\n\r\n<p>Hello {CLIENT}</p>\r\n\r\n<p>This is a payment receipt for your invoice of {CURRENCY} {AMOUNT}&nbsp;sent on {INVOICE_DATE}.<br />\r\nYou can view the invoice online at:<br />\r\n<big><strong><a href=\"{INVOICE_LINK}\">View Invoice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(15, 'en', 'payment_email', 'Payment Received', '<div style=\"height: 7px; background-color: #535353;\"></div>\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Payment Received</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Dear Customer</p>\n<p>We have received your payment of {INVOICE_CURRENCY} {PAID_AMOUNT}. </p>\n<p>Thank you for your Payment and business. We look forward to working with you again.</p>\n--------------------------<br>Regards<br>The {SITE_NAME} Team</div>\n</div>'),
(16, 'en', 'invoice_overdue_email', 'Invoice Overdue Notice', '<p>Invoice Overdue</p>\r\n\r\n<p>INVOICE {REF}</p>\r\n\r\n<p><strong>Hello {CLIENT}</strong></p>\r\n\r\n<p>This is the notice that your invoice overdue.&nbsp;The invoice {CURRENCY} {AMOUNT}. and Due Date: {DUE_DATE}</p>\r\n\r\n<p>You can view the invoice online at:<br />\r\n<big><strong><a href=\"{INVOICE_LINK}\">View Invoice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(17, 'en', 'invoice_message', 'New Invoice', '<div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">INVOICE {REF}</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">Hello {CLIENT}</span></span><br><br>Here is the invoice of {CURRENCY} {AMOUNT}.<br><br>You can view the invoice online at:<br><big><b><a href=\"{INVOICE_LINK}\">View Invoice</a></b></big><br><br>Best Regards<br><br>The {SITE_NAME} Team</div></div>'),
(18, 'en', 'invoice_reminder', 'Invoice Reminder', '<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Invoice Reminder</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Hello {CLIENT}</p>\r\n<br><p>This is a friendly reminder to pay your invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br><big><b><a href=\"{INVOICE_LINK}\">View Invoice</a></b></big><br><br>Best Regards,<br>The {SITE_NAME} Team</p>\r\n</div>\r\n</div>'),
(19, 'en', 'message_received', 'Message Received', '<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Message Received</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Hi {RECIPIENT},</p>\r\n<p>You have received a message from {SENDER}. </p>\r\n------------------------------------------------------------------<br><blockquote>\r\n{MESSAGE}</blockquote>\r\n<big><b><a href=\"{SITE_URL}\">Go to Account</a></b></big><br><br>Regards<br>The {SITE_NAME} Team</div>\r\n</div>'),
(20, 'en', 'estimate_email', 'New Estimate', '<p>Estimate {ESTIMATE_REF}</p>\r\n\r\n<p>Hi {CLIENT}</p>\r\n\r\n<p>Thanks for your business inquiry.</p>\r\n\r\n<p>The estimate {ESTIMATE_REF} is attached with this email.<br />\r\nEstimate Overview:<br />\r\nEstimate # : {ESTIMATE_REF}<br />\r\nAmount: {CURRENCY} {AMOUNT}<br />\r\n<br />\r\nYou can view the estimate online at:<br />\r\n<big><strong><a href=\"{ESTIMATE_LINK}\">View Estimate</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(21, 'en', 'ticket_staff_email', 'New Ticket [TICKET_CODE]', '<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New Ticket</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Ticket #{TICKET_CODE} has been created by the client.</p>\r\n<p>You may view the ticket by clicking on the following link <br><br>  Client Email : {REPORTER_EMAIL}<br><br> <big><b><a href=\"{TICKET_LINK}\">View Ticket</a></b></big> <br><br>Regards<br><br>{SITE_NAME}</p>\r\n</div>\r\n</div>'),
(22, 'en', 'ticket_client_email', 'Ticket [TICKET_CODE] Opened', '<p>Ticket Opened</p>\r\n\r\n<p>Hello {CLIENT_EMAIL},</p>\r\n\r\n<p>Your ticket has been opened with us.<br />\r\n<br />\r\nTicket # {TICKET_CODE}<br />\r\nStatus : Open<br />\r\n<br />\r\nClick on the below link to see the ticket details and post additional comments.<br />\r\n<br />\r\n<big><strong><a href=\"{TICKET_LINK}\">View Ticket</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(23, 'en', 'ticket_reply_email', 'Ticket [TICKET_CODE] Response', '<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Ticket Response</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>A new response has been added to Ticket #{TICKET_CODE}<br><br> Ticket : #{TICKET_CODE} <br>Status : {TICKET_STATUS} <br><br></p>\r\nTo see the response and post additional comments, click on the link below.<br><br>         <big><b><a href=\"{TICKET_LINK}\">View Reply</a> </b></big><br><br>          Note: Do not reply to this email as this email is not monitored.<br><br>     Regards<br>The {SITE_NAME} Team<br></div>\r\n</div>'),
(24, 'en', 'ticket_closed_email', 'Ticket [TICKET_CODE] Closed', '<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Ticket Closed</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Hi {REPORTER_EMAIL}<br><br>Ticket #{TICKET_CODE} has been closed by {STAFF_USERNAME} <br><br>          Ticket : #{TICKET_CODE} <br>     Status : {TICKET_STATUS}<br><br>Replies : {NO_OF_REPLIES}<br><br>          To see the responses or open the ticket, click on the link below.<br><br>          <big><b><a href=\"{TICKET_LINK}\">View Ticket</a></b></big> <br><br>          Note: Do not reply to this email as this email is not monitored.<br><br>    Regards<br>The {SITE_NAME} Team</div>\r\n</div>'),
(26, 'en', 'task_updated', 'Task updated', '<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Task updated</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Hi there,</p>\r\n<p>{TASK_NAME} in {PROJECT_TITLE} has been updated by {ASSIGNED_BY}.</p>\r\n<p>You can view this project by logging in to the portal using the link below.</p>\r\n-----------------------------------<br><big><b><a href=\"{PROJECT_URL}\">View Project</a></b></big><br><br>Regards<br>The {SITE_NAME} Team</div>\r\n</div>'),
(27, 'en', 'quotations_form', 'Your Quotation Request', '<p>QUOTATION</p>\r\n\r\n<p><strong>Hello {CLIENT}</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Thank you for you for filling in our Quotation Request Form.<br />\r\n<br />\r\nPlease find below are our quotation:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellpadding=\"8\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Quotation Date</td>\r\n			<td><strong>{DATE}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Our Quotation</td>\r\n			<td><strong>{CURRENCY} {AMOUNT}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Addtitional Comments</td>\r\n			<td><strong>{NOTES}</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\nYou can view the estimate online at:<br />\r\n<big><strong><a href=\"{QUOTATION LINK}\">View Quotation</a></strong></big></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nThank you and we look forward to working with you.<br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(28, 'en', 'client_notification', 'New project created', '<p>Hello, <strong>{CLIENT_NAME}</strong>,<br />\r\nwe have created a new project with your account.<br />\r\n<br />\r\nProject name : <strong>{PROJECT_NAME}</strong><br />\r\nYou can login to see the status of your project by using this link:<br />\r\n<big><a href=\"{PROJECT_LINK}\"><strong>View Project</strong></a></big></p>\r\n\r\n<p><br />\r\nBest Regards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(29, 'en', 'assigned_project', 'Assigned Project', '<p>Hi There,</p>\r\n\r\n<p>A<strong> {PROJECT_NAME}</strong> has been assigned by <strong>{ASSIGNED_BY} </strong>to you.You can view this project by logging in to the portal using the link below:<br />\r\n<big><a href=\"{PROJECT_URL}\"><strong>View Project</strong></a></big><br />\r\n<br />\r\nBest Regards<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(30, 'en', 'complete_projects', 'Project Completed', '<p>Hi <strong>{CLIENT_NAME}</strong>,</p>\r\n\r\n<p>Project : <strong>{PROJECT_NAME}</strong> &nbsp;has been completed.<br />\r\nYou can view the project by logging into your portal Account:<br />\r\n<big><a href=\"{PROJECT_LINK}\"><strong>View Project</strong></a></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(31, 'en', 'project_comments', 'New Project Comment Received', '<p>Hi There,</p>\r\n\r\n<p>A new comment has been posted by <strong>{POSTED_BY}</strong> to project <strong>{PROJECT_NAME}</strong>.</p>\r\n\r\n<p>You can view the comment using the link below:<br />\r\n<big><a href=\"{COMMENT_URL}\"><strong>View Project</strong></a></big><br />\r\n<br />\r\n<em>{COMMENT_MESSAGE}</em><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(32, 'en', 'project_attachment', 'New Project  Attachment', '<p>Hi There,</p>\r\n\r\n<p>A new file has been uploaded by <strong>{UPLOADED_BY}</strong> to project <strong>{PROJECT_NAME}</strong>.<br />\r\nYou can view the Project using the link below:<br />\r\n<big><a href=\"{PROJECT_URL}\"><strong>View Project</strong></a></big><br />\r\n<br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(33, 'en', 'responsible_milestone', 'Responsible for a Milestone', '<p>Hi There,</p>\r\n\r\n<p>You are a responsible&nbsp;for a project milestone&nbsp;<strong>{MILESTONE_NAME}</strong>&nbsp; assigned to you by <strong>{ASSIGNED_BY}</strong> in project <strong>{PROJECT_NAME}</strong>.</p>\r\n\r\n<p>You can view this Milestone&nbsp;by logging in to the portal using the link below:<br />\r\n<big><strong><a href=\"{PROJECT_URL}\">View Project</a></strong></big><br />\r\n<br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(34, 'en', 'task_assigned', 'Task assigned', '<p>Hi there,</p>\r\n\r\n<p>A new task <strong>{TASK_NAME}</strong> &nbsp;has been assigned to you by <strong>{ASSIGNED_BY}</strong>.</p>\r\n\r\n<p>You can view this task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{TASK_URL}\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(35, 'en', 'tasks_comments', 'New Task Comment Received', '<p>Hi There,</p>\r\n\r\n<p>A new comment has been posted by <strong>{POSTED_BY}</strong> to <strong>{TASK_NAME}</strong>.</p>\r\n\r\n<p>You can view the comment using the link below:<br />\r\n<big><strong><a href=\"{COMMENT_URL}\">View Comment</a></strong></big><br />\r\n<br />\r\n<em>{COMMENT_MESSAGE}</em><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(36, 'en', 'tasks_attachment', 'New Tasks Attachment', '<p>Hi There,</p>\r\n\r\n<p>A new file has been uploaded by <strong>{UPLOADED_BY} </strong>to Task <strong>{TASK_NAME}</strong>.<br />\r\nYou can view the Task&nbsp;using the link below:</p>\r\n\r\n<p><br />\r\n<big><a href=\"{TASK_URL}\"><strong>View Task</strong></a></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(37, 'en', 'tasks_updated', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>{TASK_NAME}</strong> has been updated by <strong>{ASSIGNED_BY}</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{TASK_URL}\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(38, 'en', 'goal_not_achieve', 'Not Achieve Goal', '<p><strong>Unfortunately!</strong> We failed to achieve goal!</p>\r\n\r\n<p><strong>Here is a Goal Details</strong></p>\r\n\r\n<p>Goal Type :&nbsp;<strong>{Goal_Type}</strong><br />\r\nTarget Achievement:&nbsp;<strong>{achievement}</strong><br />\r\nTotal Achievement:&nbsp;<strong>{total_achievement}</strong><br />\r\nStart Date:&nbsp;<strong>{start_date}</strong><br />\r\nEnd Date:&nbsp;<strong>{End_date}</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(39, 'en', 'goal_achieve', 'Achieve Goal', '<p><strong>Congratulation!</strong> We achieved new goal.</p>\r\n\r\n<p><strong>Here is a Goal Details</strong></p>\r\n\r\n<p>Goal Type :<strong>{Goal_Type}</strong><br />\r\nTarget Achievement:<strong>{achievement}</strong><br />\r\nTotal Achievement:<strong>{total_achievement}</strong><br />\r\nStart Date:<strong>{start_date}</strong><br />\r\nEnd Date:<strong>{End_date}</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(40, 'en', 'leave_request_email', 'A Leave Request from you', '<p>Hi there,</p>\r\n\r\n<p><strong>{NAME}</strong> &nbsp;Want to leave from you.</p>\r\n\r\n<p>You can view this leave request by logging in to the portal using the link below<br />\r\n<big><strong><a href=\"{APPLICATION_LINK}\">View Application</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(41, 'en', 'leave_approve_email', 'Your leave request has been approved', '<h1>Your leave request has been approved</h1>\r\n\r\n<p><strong>Congratulations!</strong> Your leave request from <strong>{START_DATE}</strong> to <strong>{END_DATE}</strong> has been approved by your company management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(42, 'en', 'leave_reject_email', 'Your leave request has been Rejected', '<h1>Your leave request has been Rejected</h1>\r\n\r\n<p><strong>Unfortunately !</strong>&nbsp;Your leave request from&nbsp;<strong>{START_DATE}</strong>&nbsp;to&nbsp;<strong>{END_DATE}</strong>&nbsp;has been Rejected by your company management.</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(43, 'en', 'overtime_request_email', 'Overtime Request', '<p>Hi there,</p>\r\n\r\n<p><strong>{NAME}</strong>&nbsp;&nbsp;to do an overtime.<br />\r\n<br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(44, 'en', 'overtime_approved_email', 'Your overtime request has been approved', '<h1>Your leave request has been approved</h1>\r\n\r\n<p><strong>Congratulations!</strong>&nbsp;Your overtime&nbsp;request at&nbsp;<strong>{DATE}</strong>&nbsp;and&nbsp;<strong>{HOUR}</strong>&nbsp;has been approved by your company management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(45, 'en', 'overtime_reject_email', 'Your Overtime request has been Rejected', '<h1>Your leave request has been Rejected</h1>\r\n\r\n<p><strong>Unfortunately&nbsp;!</strong>&nbsp;Your overtime&nbsp;request at&nbsp;<strong>{DATE}</strong>&nbsp;and&nbsp;<strong>{HOUR}</strong>&nbsp;has been Rejected by your company management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(46, 'en', 'wellcome_email', 'Welcome Email ', '<p>Hello <strong>{NAME}</strong>,</p>\n\n<p>Welcome to <strong>{COMPANY_NAME}</strong> .Thanks for joining <strong>{COMPANY_NAME}</strong>.</p>\n\n<p>We just wanted to say welcome.</p>\n\n<p>Please contact us if you need any help.</p>\n\n<p>Click here to view your profile: <strong>{COMPANY_URL}</strong></p>\n\n<p><br />\nHave fun!<br />\nThe <strong>{COMPANY_NAME}</strong> Team.</p>\n'),
(47, 'en', 'payslip_generated_email', 'Payslip generated', '<p>Hello&nbsp;<strong>{NAME}</strong>,</p>\r\n\r\n<p>Your payslip generated for the month <strong>{MONTH_YEAR} .</strong></p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(48, 'en', 'advance_salary_email', 'Advance Salary Reqeust', '<p>Hi there,</p>\r\n\r\n<p><strong>{NAME}</strong>&nbsp;&nbsp;Want to Advance Salary from you.</p>\r\n\r\n<p>You can view this Advance Salary by logging in to the portal using the link below.<br />\r\n<br />\r\n<big><strong><a href=\"{LINK}\">View Advance Salary</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(49, 'en', 'advance_salary_approve_email', 'Your advance salary request has been approved', '<h1>Your advance salary request has been approved</h1>\r\n\r\n<p><strong>Congratulations!</strong>&nbsp;Your advance salary&nbsp;requested &nbsp;<strong>{AMOUNT}</strong>&nbsp;has been approved by your company management.</p>\r\n\r\n<p>This advance amount will deduct the next <strong>{DEDUCT_MOTNH}</strong> .</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(50, 'en', 'advance_salary_reject_email', 'Your advance salary request has been Rejected', '<h1>Your advance salary request has been Rejected</h1>\r\n\r\n<p><strong>Unfortunately !</strong>&nbsp;Your advance salary requested&nbsp;<strong>{AMOUNT}</strong>&nbsp;has been Rejected by your company management.</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(51, 'en', 'award_email', 'Award Received', '<p>Hello&nbsp;<strong>{NAME}</strong>,</p>\r\n\r\n<p>You have been&nbsp;awarded <strong>{AWARD_NAME} </strong>for this<strong> {MONTH} .</strong></p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(52, 'en', 'new_job_application_email', 'New job application submitted', '<p>Hi there,</p>\r\n\r\n<p>&nbsp;<strong>{NAME}&nbsp;</strong>has submitted the job application</p>\r\n\r\n<p>Please find below are job application Details:</p>\r\n\r\n<table cellpadding=\"8\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Job Title</td>\r\n			<td><strong>{JOB_TITLE}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Email</td>\r\n			<td><strong>{EMAIL}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mobile</td>\r\n			<td><strong>{MOBILE}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cover Latter</td>\r\n			<td><strong>{COVER_LETTER}</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\nYou can view the Job Application online at:<br />\r\n<br />\r\n<big><strong><a href=\"{LINK}\">View Job Application</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(53, 'en', 'new_notice_published', 'New Notice published', '<p>Hello&nbsp;<strong>{NAME}</strong>,</p>\r\n\r\n<p>New Notice Published&nbsp;<strong>{TITLE}</strong></p>\r\n\r\n<p><br />\r\nYou can view the Notice online at:<br />\r\n<br />\r\n<big><strong><a href=\"{LINK}\">View Notice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(54, 'en', 'new_training_email', 'Training  Assigned ', '<p>Hi there,</p>\r\n\r\n<p>A new Training  &nbsp;<strong>{TRAINING_NAME}</strong>&nbsp;&nbsp;has been assigned to you by&nbsp;<strong>{ASSIGNED_BY}</strong>.</p>\r\n\r\n<p>You can view this Training  by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{LINK}\">View Training</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(55, 'en', 'performance_appraisal_email', 'New Performance Appraisal', ''),
(56, 'en', 'expense_request_email', 'A New Expense Request have been Recieved', '<p>Hi there,</p>\r\n\r\n<p><strong>{NAME}</strong> &nbsp;Create a New Expense The Amount is <strong>{AMOUNT}</strong></p>\r\n\r\n<p>You can view this expense by logging in to the portal using the link below.<br />\r\n<br />\r\n<big><strong><a href=\"{URL}\">View Expense</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards,<br />\r\n<br />\r\nThe <strong>{SITE_NAME}</strong> Team</p>\r\n'),
(57, 'en', 'expense_approved_email', 'Expense Approved', '<p>Dear&nbsp;<strong>{NAME} ,</strong></p>\r\n\r\n<h1>Your Expense request has been approved</h1>\r\n\r\n<p><strong>Congratulations!</strong>&nbsp;Your Expense request from&nbsp;<strong>{AMOUNT}</strong>&nbsp;has been approved by your company management.</p>\r\n\r\n<p>Please Contact&nbsp;with our Accountant for collect the amount.</p>\r\n\r\n<p><br />\r\nRegards,<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(58, 'en', 'expense_paid_email', 'Expense have been Paid', '<p>Hi there,</p>\r\n\r\n<p>The&nbsp;<strong>{NAME}</strong>&nbsp;expense&nbsp;<strong>{AMOUNT}&nbsp;</strong>has been paid by <strong>{PAID_BY}.</strong></p>\r\n\r\n<p>You can view this expense by logging in to the portal using the link below.<br />\r\n<br />\r\n<big><strong><a href=\"{URL}\">View Expense</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards,<br />\r\n<br />\r\nThe&nbsp;<strong>{SITE_NAME}</strong>&nbsp;Team</p>\r\n'),
(59, 'en', 'auto_close_ticket', 'Ticket Auto Closed', '<p>Ticket Closed</p>\r\n\r\n<p>Hello <strong>{REPORTER_EMAIL}</strong>,</p>\r\n\r\n<p>Ticket&nbsp;<strong>{SUBJECT}</strong>&nbsp;has been auto closed due to inactivity.&nbsp;<br />\r\n<br />\r\nTicket # <strong>{TICKET_CODE}</strong><br />\r\nStatus : &nbsp;<strong>{TICKET_STATUS}</strong><br />\r\n<br />\r\nTo see the responses or open the ticket, click on the link below:ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€šÃ‚Â¦ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¹<br />\r\n<br />\r\n<big><strong><a href=\"{TICKET_LINK}\">View Ticket</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe <strong>{SITE_NAME}</strong> Team</p>\r\n'),
(60, 'en', 'proposal_email', 'New Proposal', '<p>Proposal <strong>{PROPOSAL_REF}</strong></p> <p>Hi <strong>{CLIENT}</strong></p> <p>Thanks for your business inquiry.</p> <p>The Proposal <strong>{PROPOSAL_REF} </strong>is attached with this email.<br /> Proposal&nbsp;Overview:<br /> Proposal&nbsp;# :<strong> {PROPOSAL_REF}</strong><br /> Amount: <strong>{CURRENCY} {AMOUNT}</strong><br /> <br /> You can view the estimate online at:<br /> <big><strong><a href=\"{PROPOSAL_LINK}\">View Proposal</a></strong></big><br /> <br /> Best Regards,<br /> The <strong>{SITE_NAME}</strong> Team</p> '),
(61, 'en', 'project_overdue_email', 'Project Overdue Notice', '<p>Project Overdue</p>\r\n\r\n<p><strong>Hello {CLIENT}</strong></p>\r\n\r\n<p>This is the notice that your project overdue.&nbsp;<br />\r\n<br />\r\nProject name : <strong>{PROJECT_NAME}</strong><br />\r\nDue date : <strong>{DUE_DATE}</strong><br />\r\nYou can login to see the status of your project by using this link:<br />\r\n<big><a href=\"{PROJECT_LINK}\"><strong>View Project</strong></a></big></p>\r\n\r\n<p><br />\r\nBest Regards<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(62, 'en', 'estimate_overdue_email', 'Estimate Overdue Notice', '<p>Estimate {ESTIMATE_REF}</p>\r\n\r\n<p>Hi {CLIENT}</p>\r\n\r\n<p>This is the notice that your Estimate&nbsp;overdue.&nbsp;ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¹<br />\r\n<br />\r\nEstimate Overview:<br />\r\nEstimate # : {ESTIMATE_REF}<br />\r\nAmount: {DUE_DATE}<br />\r\nAmount: {CURRENCY} {AMOUNT}<br />\r\n<br />\r\nYou can view the estimate online at:<br />\r\n<big><strong><a href=\"{ESTIMATE_LINK}\">View Estimate</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),
(63, 'en', 'proposal_overdue_email', 'New Estimate', '<p>Proposal&nbsp;<strong>{PROPOSAL_REF}</strong></p>\r\n\r\n<p>Hi&nbsp;<strong>{CLIENT}</strong></p>\r\n\r\n<p>This is the notice that your Proposal&nbsp;overdue.&nbsp;<br />\r\n<br />\r\nProposal&nbsp;Overview:<br />\r\nProposal&nbsp;# :<strong>&nbsp;{PROPOSAL_REF}</strong><br />\r\nDue Date: <strong>{DUE_DATE}</strong>ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¹<br />\r\nAmount:&nbsp;<strong>{CURRENCY} {AMOUNT}</strong><br />\r\n<br />\r\nYou can view the estimate online at:<br />\r\n<big><strong><a href=\"{PROPOSAL_LINK}\">View Proposal</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe&nbsp;<strong>{SITE_NAME}</strong>&nbsp;Team</p>\r\n'),
(64, 'en', 'call_for_interview', 'You have an interview offer!!!', '<p>Hello&nbsp;<strong>{NAME}</strong>,</p>\r\n\r\n<p>You have an interview offer for you.please see the details.&nbsp;<br />\r\n<br />\r\n<strong>Job Summary</strong>:<br />\r\nJob Title # :<strong>&nbsp;{JOB_TITLE}</strong><br />\r\nDesignation # :<strong>&nbsp;{DESIGNATION}</strong><br />\r\nInterview Date: <strong>{DATE}</strong></p>\r\n\r\n<p><strong>Postal Address</strong><br />\r\nPO Box 16122 Collins Street West<br />\r\nVictoria 8007 Australia<br />\r\n121 King Street, Melbourne<br />\r\nVictoria 3000 Australia &ndash;&nbsp;<a href=\"https://www.google.com.au/maps/place/Envato/@-37.8173306,144.9534631,17z/data=!3m1!4b1!4m2!3m1!1s0x6ad65d4c2b349649:0xb6899234e561db11\" target=\"_blank\">Map</a></p>\r\n\r\n<p><br />\r\nYou can view the circular details online at:<br />\r\n<big><strong><a href=\"{LINK}\">View Job Circular</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe&nbsp;<strong>{SITE_NAME}</strong>&nbsp;Team</p>\r\n'),
(65, 'en', 'ticket_reopened_email', 'Ticket [SUBJECT] reopened', '<p>Ticket re-opened</p>\r\n\r\n<p>Hi {RECIPIENT},</p>\r\n\r\n<p>Ticket&nbsp;<strong>{SUBJECT}</strong>&nbsp;was re-opened by&nbsp;<strong>{USER}</strong>.<br />\r\nStatus :&nbsp;Open<br />\r\nClick on the below link to see the ticket details and post replies:&nbsp;<br />\r\n<a href=\"{TICKET_LINK}\"><strong>View Ticket</strong></a><br />\r\n<br />\r\n<br />\r\nBest Regards,<br />\r\n{SITE_NAME}</p>\r\n'),
(66, 'en', 'deposit_email', 'A deposit have been Received', '<p>Hi there,</p> <p>The&nbsp;<strong>{NAME}</strong>&nbsp;of deposit&nbsp;<strong>{AMOUNT}&nbsp;</strong>has been Deposit into <strong>{ACCOUNT}</strong> the new balance is <strong>{BALANCE}</strong></p> <p>You can view this deposit by logging in to the portal using the link below.<br /> <br /> <big><strong><a href=\"{URL}\">View Deposit</a></strong></big><br /> <br /> <br /> Regards,<br /> <br /> The&nbsp;<strong>{SITE_NAME}</strong>&nbsp;Team</p>'),
(67, 'en', 'clock_in_email', 'The {NAME} Just clock in', '<p>Hi there,</p>\r\n\r\n<p>TheÃ‚Â <strong>{NAME}</strong> justÃ‚Â Clock In by using The IP. The IP is:Ã‚Â <strong>{IP}</strong> and the time is: Ã‚Â <strong>{TIME}</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"{URL}\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nTheÃ‚Â <strong>{SITE_NAME}</strong>Ã‚Â Team</p>\r\n'),
(68, 'en', 'trying_clock_email', 'The {NAME} Trying to clock', '<p>Hi there,</p>\r\n\r\n<p>TheÃ‚Â <strong>{NAME} </strong> Trying to clockÃ‚Â in by Unknown IP.The IP is: <strong>{IP}</strong> and the time is: <strong>{TIME}</strong></p>\r\n\r\n<p>You can view this IP by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"{URL}\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nTheÃ‚Â <strong>{SITE_NAME}</strong>Ã‚Â Team</p>\r\n'),
(69, 'en', 'clock_out_email', 'The {NAME} Just clock Out', '<p>Hi there,</p>\r\n\r\n<p>TheÃ‚Â <strong>{NAME}</strong>Ã‚Â justÃ‚Â Clock Out by using The IP. The IP is:Ã‚Â <strong>{IP}</strong>Ã‚Â and the time is: Ã‚Â <strong>{TIME}</strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"{URL}\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nTheÃ‚Â <strong>{SITE_NAME}</strong>Ã‚Â Team</p>\r\n'),
(70, 'en', 'invoice_item_refund_request', 'A new Refunded request recived for Invoice {REF}', '<p><strong>Hello </strong><br> <br> A new item refunded request received for Invoice {REF}.<br> <br> You can view the invoice online at:<br> <big><strong><a href=\"{LINK}\">View Refund Stock </a></strong></big><br> <br> Best Regards<br> <br> The {SITE_NAME} Team</p> '),
(71, 'en', 'credit_note_email', 'New Credit Note', '<p>Credit Note {credit_note_REF}</p> <p>Hi {CLIENT}</p> <p>Thanks for your business inquiry.</p> <p>The Credit Note {credit_note_REF} is attached with this email.<br /> Credit Note Overview:<br /> Credit Note # : {credit_note_REF}<br /> Amount: {CURRENCY} {AMOUNT}<br /> <br /> You can view the Credit Note online at:<br /> <big><strong><a href=\"{credit_note_LINK}\">View Credit Note</a></strong></big><br /> <br /> Best Regards,<br /> The {SITE_NAME} Team</p> '),
(72, 'en', 'invoice_item_refund_request', 'A new Refunded request recived for Invoice {REF}', '<p><strong>Hello </strong><br> <br> A new item refunded request received for Invoice {REF}.<br> <br> You can view the invoice online at:<br> <big><strong><a href=\"{LINK}\">View Refund Stock </a></strong></big><br> <br> Best Regards<br> <br> The {SITE_NAME} Team</p> '),
(73, 'en', 'credit_note_email', 'New Credit Note', '<p>Credit Note {credit_note_REF}</p> <p>Hi {CLIENT}</p> <p>Thanks for your business inquiry.</p> <p>The Credit Note {credit_note_REF} is attached with this email.<br /> Credit Note Overview:<br /> Credit Note # : {credit_note_REF}<br /> Amount: {CURRENCY} {AMOUNT}<br /> <br /> You can view the Credit Note online at:<br /> <big><strong><a href=\"{credit_note_LINK}\">View Credit Note</a></strong></big><br /> <br /> Best Regards,<br /> The {SITE_NAME} Team</p> ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estimate_items`
--

CREATE TABLE `tbl_estimate_items` (
  `estimate_items_id` int(11) NOT NULL,
  `estimates_id` int(11) NOT NULL,
  `saved_items_id` int(11) DEFAULT 0,
  `item_tax_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_tax_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `quantity` decimal(10,2) DEFAULT 0.00,
  `item_tax_total` decimal(10,2) DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00,
  `date_saved` timestamp NOT NULL DEFAULT current_timestamp(),
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hsn_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `files_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form`
--

CREATE TABLE `tbl_form` (
  `form_id` int(11) NOT NULL,
  `form_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tbl_name` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `table_id` varchar(110) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_form`
--

INSERT INTO `tbl_form` (`form_id`, `form_name`, `tbl_name`, `table_id`) VALUES
(1, 'deposit', 'tbl_transactions', 'transactions_id'),
(2, 'expense', 'tbl_transactions', 'transactions_id'),
(3, 'tasks', 'tbl_task', 'task_id'),
(4, 'project', 'tbl_project', 'project_id'),
(5, 'leads', 'tbl_leads', 'leads_id'),
(6, 'bugs', 'tbl_bug', 'bug_id'),
(7, 'tickets', 'tbl_tickets', 'tickets_id'),
(8, 'opportunities', 'tbl_opportunities', 'opportunities_id'),
(9, 'invoice', 'tbl_invoices', 'invoices_id'),
(10, 'estimates', 'tbl_estimates', 'estimates_id'),
(11, 'proposal', 'tbl_proposals', 'proposals_id'),
(12, 'client', 'tbl_client', 'client_id'),
(13, 'users', 'tbl_account_details', 'account_details_id'),
(14, 'job_circular', 'tbl_job_circular', 'job_circular_id'),
(15, 'training', 'tbl_training', 'training_id'),
(16, 'announcements', 'tbl_announcements', 'announcements_id'),
(17, 'leave_management', 'tbl_leave_application', 'leave_application_id'),
(18, 'items', 'tbl_saved_items', 'saved_items_id'),
(19, 'supplier', 'tbl_suppliers', 'supplier_id'),
(20, 'purchases', 'tbl_purchases', 'purchase_id'),
(21, 'Account', 'tbl_accounts', 'account_id'),
(22, 'credit_note', 'tbl_credit_note', 'credit_note_id'),
(23, 'items', 'tbl_saved_items', 'saved_items_id'),
(24, 'supplier', 'tbl_suppliers', 'supplier_id'),
(25, 'purchases', 'tbl_purchases', 'purchase_id'),
(26, 'Account', 'tbl_accounts', 'account_id'),
(27, 'credit_note', 'tbl_credit_note', 'credit_note_id');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(50) CHARACTER SET utf8 NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `album` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `title`, `keyword`, `image`, `album`, `date`, `vendor_id`) VALUES
(6, '12', '12', 'gallery_6.png', '1', '1665582884', 0),
(10, 'ew', 'qwe', 'gallery_10.jpeg', '6', '1667718842', 0),
(7, '12', '34', 'gallery_7.png', '1', '1665582911', 0),
(8, '12', '12', 'gallery_8.png', '2', '1665582944', 0),
(11, 'sdefwq', 'q324e', 'gallery_11.jpeg', '6', '1667718850', 0),
(12, 'sef', 'wr', 'gallery_12.png', '6', '1667718859', 0),
(13, 'logo1', 'logo', 'gallery_13.jpg', '6', '1667990630', 0),
(14, 'profile1', 'profile', 'gallery_14.jpg', '6', '1667990656', 0),
(15, 'proof', 'proof', 'gallery_15.jpg', '6', '1667990679', 0),
(16, 'sweet', 'sweet', 'gallery_16.jpg', '6', '1667991111', 0),
(17, 'sweet2', 'sweeet', 'gallery_17.jfif', '6', '1667991133', 0),
(18, 'cfgvbh', 'fyghunj', 'gallery_18.jfif', '6', '1667991151', 0),
(19, 'cgfvhbjn', 'cfvgbhjn', 'gallery_19.jpg', '6', '1667991172', 0),
(20, 'cgfgvbh', 'fgvhbjn', 'gallery_20.png', '6', '1667991193', 0),
(21, 'ctfgvhij', 'cfvgbhnj', 'gallery_21.png', '6', '1667991209', 0),
(22, 'cfgvhbjn', 'sdsxfcgvb', 'gallery_22.jpg', '6', '1667991233', 0),
(23, 'dxcfvgbhn', 'cvgbhn', 'gallery_23.JPG', '6', '1667991264', 0),
(24, 'item1', 'cgfvhbj', 'gallery_24.png', '4', '1667993007', 0),
(25, 'item2', 'vyubhjn', 'gallery_25.jfif', '4', '1667993026', 0),
(26, 'item3', 'cfgvhb', 'gallery_26.jfif', '4', '1667993044', 0),
(27, 'item4', 'cfgvhbjn', 'gallery_27.jpg', '4', '1667993067', 0),
(28, 'item5', 'cfgvbh', 'gallery_28.jpg', '4', '1667993095', 0),
(29, 'Chicken Biryani', 'CBiryani', 'gallery_29.png', '7', '1668008574', 0),
(30, 'Grill Chicken', 'GChicken', 'gallery_30.jpg', '7', '1668008742', 0),
(31, 'Chicken Schezwan Noodles', 'Chicken Schezwan Noodles', 'gallery_31.png', '7', '1668009135', 0),
(32, 'Idly Set', 'Idly Set', 'gallery_32.jpg', '7', '1668009457', 0),
(33, 'Plain Dosa', 'Plain Dosa', 'gallery_33.jpg', '7', '1668009881', 0),
(34, 'Unlimited Meals', 'Unlimited Meals', 'gallery_34.jpg', '7', '1668010412', 0),
(35, 'Chicken Seek Kebab Pizza(7inches)+ Chicken Popcorn', 'Chicken Seek Kebab Pizza(7inches)+ Chicken Popcorn', 'gallery_35.jpg', '7', '1668010585', 0),
(36, 'Strawberry Ice Cream-3 Scoops', 'Strawberry Ice Cream-3 Scoops', 'gallery_36.jpg', '7', '1668011055', 0),
(37, 'Chana masala Gravy', 'Chana masala Gravy', 'gallery_37.jpg', '7', '1668011402', 0),
(38, 'Paanipuri', 'Paanipuri', 'gallery_38.jpg', '7', '1668011577', 0),
(39, 'Chicken Soup', 'Chicken Soup', 'gallery_39.jpg', '7', '1668012034', 0),
(40, 'Burger', 'Burger', 'gallery_40.png', '7', '1668062479', 0),
(41, 'Paratha', 'Paratha', 'gallery_41.jpg', '7', '1668062575', 0),
(42, 'Shakes', 'Shakes', 'gallery_42.png', '7', '1668063743', 0),
(43, 'Sandwich', 'Sandwich', 'gallery_43.jpg', '7', '1668064660', 0),
(44, 'Shawarma', 'Shawarma', 'gallery_44.png', '7', '1668065756', 0),
(45, '123', '12', 'gallery_45.png', '6', '1668101982', 0),
(46, '123', '213', 'gallery_46.png', '6', '1668102063', 0),
(47, '123', '213', 'gallery_47.png', '6', '1668102079', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_manager`
--

CREATE TABLE `tbl_gallery_manager` (
  `gallery_manager_id` int(11) NOT NULL,
  `folder` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery_manager`
--

INSERT INTO `tbl_gallery_manager` (`gallery_manager_id`, `folder`, `status`, `date`) VALUES
(1, 'Banner', 1, '12'),
(2, 'Coupon', 1, '12'),
(3, 'Tags', 1, '3'),
(4, 'Menu', 1, '32'),
(5, 'Item', 1, '12'),
(6, 'Vendor', 1, '1'),
(7, 'Product', 1, '1'),
(8, 'Restaurant', 1, '1'),
(9, 'Driver', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goal_type`
--

CREATE TABLE `tbl_goal_type` (
  `goal_type_id` int(11) NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `tbl_name` varchar(200) NOT NULL,
  `query` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_goal_type`
--

INSERT INTO `tbl_goal_type` (`goal_type_id`, `type_name`, `description`, `tbl_name`, `query`) VALUES
(1, 'achive_total_income', 'to get total income report from this start and end date and notify user. ', 'tbl_transactions', 'Income'),
(2, 'achive_total_income_by_bank', 'to get total income report from this start and end date and notify user. ', 'tbl_transactions', 'Income'),
(3, 'achieve_total_expense', 'to get total expense report from this start and end date and notify user. ', 'tbl_transactions', 'Expense'),
(4, 'achive_total_expense_by_bank', 'to get total expense report from this start and end date and notify user. ', 'tbl_transactions', 'Expense'),
(5, 'make_invoice', 'to get targeted invoice from this start and end date and notify user. ', 'tbl_invoices', NULL),
(6, 'make_estimate', 'to get targeted estimate from this start and end date and notify user.', 'tbl_estimates', NULL),
(7, 'goal_payment', 'to get total payment report from this start and end date and notify user. ', 'tbl_payments', NULL),
(8, 'task_done', 'to get total done tasks report from this start and end date and notify user. ', 'tbl_task', NULL),
(9, 'resolved_bugs', 'to get total resolve bugs report from this start and end date and notify user. ', 'tbl_bug', NULL),
(10, 'convert_leads_to_client', 'to get total Convert leads to client report from this start and end date and notify user. ', 'tbl_client', NULL),
(11, 'direct_client', 'to get total client report from this start and end date and notify user. ', 'tbl_client', NULL),
(12, 'complete_project_goal', 'to get total complete project report from this start and end date and notify user. ', 'tbl_project', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itemcategory`
--

CREATE TABLE `tbl_itemcategory` (
  `itemcategory_id` int(11) NOT NULL,
  `m_category` int(11) NOT NULL DEFAULT 0,
  `m_subcategory` longtext NOT NULL,
  `name` varchar(250) CHARACTER SET utf32 NOT NULL,
  `photo` longtext DEFAULT NULL,
  `image_type` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `vendor` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `date` int(15) NOT NULL,
  `added_by` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_itemcategory`
--

INSERT INTO `tbl_itemcategory` (`itemcategory_id`, `m_category`, `m_subcategory`, `name`, `photo`, `image_type`, `status`, `zone_id`, `vendor`, `sort`, `date`, `added_by`) VALUES
(138, 84, '[\"22\",\"23\",\"24\"]', 'Biryani', 'https://cyanoverse.com/uploads/gallery_image/gallery_29.png', 'external', 1, 93, 324, 0, 1668066335, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(139, 85, '[\"25\",\"26\",\"27\"]', 'Chicken', 'https://cyanoverse.com/uploads/gallery_image/gallery_30.jpg', 'external', 1, 93, 323, 0, 1668066323, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(140, 86, '[\"28\",\"29\",\"30\"]', 'Noodles', 'https://cyanoverse.com/uploads/gallery_image/gallery_31.png', 'external', 1, 93, 323, 0, 1668066312, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(141, 87, '[\"50\",\"51\"]', 'Idly', 'https://cyanoverse.com/uploads/gallery_image/gallery_32.jpg', 'external', 1, 93, 324, 0, 1668066301, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(142, 88, '[\"31\",\"32\"]', 'Dosa', 'https://cyanoverse.com/uploads/gallery_image/gallery_33.jpg', 'external', 1, 93, 324, 0, 1668066291, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(143, 89, '[\"33\",\"34\"]', 'Meals', 'https://cyanoverse.com/uploads/gallery_image/gallery_34.jpg', 'external', 1, 93, 324, 0, 1668066283, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(144, 90, '[\"44\",\"45\"]', 'Pizza', 'https://cyanoverse.com/uploads/gallery_image/gallery_35.jpg', 'external', 1, 93, 322, 0, 1668066263, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(145, 91, '[\"46\",\"47\"]', 'Burger', 'https://cyanoverse.com/uploads/gallery_image/gallery_40.png', 'external', 1, 93, 322, 0, 1668066271, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(146, 92, '[\"48\",\"49\"]', 'Paratha', 'https://cyanoverse.com/uploads/gallery_image/gallery_41.jpg', 'external', 1, 93, 324, 0, 1668066256, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(147, 93, '[\"35\",\"36\"]', 'Ice Cream', 'https://cyanoverse.com/uploads/gallery_image/gallery_36.jpg', 'external', 1, 93, 320, 0, 1668066249, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(148, 97, '[\"41\",\"42\"]', 'Chat Items', 'https://cyanoverse.com/uploads/gallery_image/gallery_38.jpg', 'external', 1, 93, 321, 0, 1668066243, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(149, 95, '[\"39\",\"40\"]', 'Soup', 'https://cyanoverse.com/uploads/gallery_image/gallery_39.jpg', 'external', 1, 93, 324, 0, 1668066230, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(150, 98, '[\"37\",\"38\"]', 'Gravy', 'https://cyanoverse.com/uploads/gallery_image/gallery_37.jpg', 'external', 1, 93, 321, 0, 1668066221, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(151, 94, '[\"52\",\"53\"]', 'Shakes', 'https://cyanoverse.com/uploads/gallery_image/gallery_42.png', 'external', 1, 93, 320, 0, 1668066194, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(152, 99, '[\"54\",\"55\"]', 'Sandwich', 'https://cyanoverse.com/uploads/gallery_image/gallery_43.jpg', 'external', 1, 93, 322, 0, 1668066183, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(153, 100, '[\"56\",\"57\"]', 'Shawarma', 'https://cyanoverse.com/uploads/gallery_image/gallery_44.png', 'external', 1, 93, 323, 0, 1668066171, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(157, 101, '[\"58\"]', '123', 'itemcategory_157.png', 'direct', 1, 186, 324, 0, 1669350028, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(158, 102, '[\"59\"]', 'Mutton bart', 'itemcategory_158.png', 'direct', 1, 187, 323, 0, 1669350337, '{\"type\":\"vendor\",\"id\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `items_id` int(11) NOT NULL,
  `invoices_id` int(11) NOT NULL,
  `item_tax_rate` decimal(18,2) NOT NULL DEFAULT 0.00,
  `item_tax_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_tax_total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `quantity` decimal(18,2) DEFAULT 0.00,
  `total_cost` decimal(18,2) DEFAULT 0.00,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(18,2) DEFAULT 0.00,
  `order` int(11) DEFAULT 0,
  `date_saved` timestamp NOT NULL DEFAULT current_timestamp(),
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hsn_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `saved_items_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`items_id`, `invoices_id`, `item_tax_rate`, `item_tax_name`, `item_tax_total`, `quantity`, `total_cost`, `item_name`, `item_desc`, `unit_cost`, `order`, `date_saved`, `unit`, `hsn_code`, `saved_items_id`) VALUES
(1, 1, '0.00', NULL, '0.00', '1.00', '1000.00', 'item1', '', '1000.00', 1, '2020-11-02 09:19:58', '', NULL, 0),
(2, 1, '0.00', NULL, '0.00', '1.00', '2000.00', 'item2', '', '2000.00', 2, '2020-11-02 09:19:58', '', NULL, 0),
(3, 2, '0.00', NULL, '0.00', '1.00', '123.00', '23421', '123', '123.00', 1, '2022-07-24 13:03:19', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_history`
--

CREATE TABLE `tbl_item_history` (
  `item_history_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `inventory` int(5) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_landingpage_config`
--

CREATE TABLE `tbl_landingpage_config` (
  `landingpage_config_id` int(11) NOT NULL,
  `config_key` varchar(25) CHARACTER SET utf8 NOT NULL,
  `value` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_landingpage_config`
--

INSERT INTO `tbl_landingpage_config` (`landingpage_config_id`, `config_key`, `value`) VALUES
(1, 'title', 'Welcome To Foodzo'),
(2, 'slider_text', 'What would you like to eat'),
(3, 'slider_sub_text', 'You can eat a variety of healthy foods every day to feel good and maintain your health'),
(4, 'about_heading', 'Why we are'),
(5, 'about', 'Market your restaurant with Foodzo to increase the growth of your food stall. Expect high and advanced features frequently. The most demanding and trendy designs may increase your sales count. Enlarge your customer circle with the vast zones.'),
(6, 'food_section_title', 'Food is not just eating energy. It\'s an experience.'),
(7, 'description_point1', 'Food is not only essential for survival, but it also plays a significant role in our social and cultural lives, bringing people together for meals and celebrations. The quality and variety of food available can have a significant impact on health.'),
(11, 'delivery_heading', 'Order Online'),
(12, 'delivery_description1', 'Experience the same great taste and quality of any restaurant from the comfort of your own home with our delivery service.'),
(14, 'feature_heading', 'Foodzo Features'),
(15, 'feature1', 'Live Track'),
(16, 'feature2', 'Voice Search'),
(17, 'feature3', 'Fast Delivery'),
(18, 'feature4', 'Timing Based Menu'),
(19, 'feature5', 'Route Based Delivery Fees'),
(20, 'feature6', 'Smart Login'),
(21, 'feature1_description', 'Know where your order is at all times, from the restaurant to your doorstep'),
(22, 'feature2_description', 'Customers can explore the explore the products by asking the item names or shop names.'),
(23, 'feature3_description', 'Experience Foodzo\'s superfast delivery for food delivered fresh & on time'),
(24, 'feature4_description', 'Customers can easily explore the items as per their mindset of the item.'),
(25, 'feature5_description', 'Customers can give the money for the shortest route from the stall to their location only.'),
(26, 'feature6_description', 'Customers need not to register for their account. They can easily login to the app through their phone number, email or social logins.'),
(27, 'feedback1', '\"I\'ve been using this food app for a few months now, and I absolutely love it! The variety of restaurants and menu options is fantastic, and the app is very user-friendly. I\'ve had several successful orders and have never had any issues with delivery or quality of the food.\"'),
(28, 'feedback2', '\"I\'m so impressed with the customer service of this food app. I had an issue with an order, and the support team responded promptly and resolved the issue to my satisfaction. I appreciate how seriously they take customer satisfaction.\"'),
(29, 'feedback3', 'A digital wallet is an app that stores your credit, debit, and gift card information so that you can make purchases with your mobile device'),
(30, 'customer_name1', 'M. Karthick'),
(31, 'customer_name2', 'V. Venkat'),
(32, 'customer_name3', 'D. Kumar'),
(33, 'customer_detail1', ' Human Resources Manager'),
(34, 'customer_detail2', ' Sales Manager'),
(35, 'customer_detail3', ' Financial Analyst'),
(36, 'footer_heading', 'Foodzo'),
(37, 'footer_description', 'Market your restaurant with Foodzo to increase the growth of your food stall. Expect high and advanced features frequently. The most demanding and trendy designs may increase your sales count.'),
(38, 'android_app_link', 'https://play.google.com/store/apps/details?id=com.cyanofoodzo.user'),
(39, 'ios_app_link', 'https://play.google.com/store/apps/details?id=com.cyanofoodzo.user'),
(40, 'address1', 'Sengunthar street, anna nagar, chennai 6.'),
(41, 'mobile', '1342567899'),
(42, 'email', 'optimaprotech@gmail.com'),
(43, 'facebook', 'https://www.facebook.com/'),
(44, 'twitter', 'https://twitter.com/'),
(45, 'instagram', 'https://www.instagram.com/'),
(47, 'address2', 'Kumaran nagar, dadagapatty salem 6.'),
(48, 'slider_image', 'slider_image_1.png'),
(49, 'about_image', 'about_image_1.png'),
(50, 'delivery_image', 'delivery_image_1.png'),
(51, 'feedback_profile_image1', 'feedback_profile_image1_1.png'),
(52, 'feedback_profile_image2', 'feedback_profile_image2_1.jpg'),
(53, 'feedback_profile_image3', 'feedback_profile_image3_1.jpeg'),
(54, 'footer_image', 'footer_image_1.png'),
(55, 'landing_connection', 'http://localhost/foodzo_v2/'),
(56, 'driver_app_link', 'https://play.google.com/store/apps/details?id=com.cyanofoodzo.user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE `tbl_languages` (
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`code`, `name`, `icon`, `active`) VALUES
('ar', 'arabic', 'ae', 0),
('cs', 'czech', 'cs', 0),
('da', 'danish', 'dk', 0),
('de', 'german', 'de', 0),
('el', 'greek', 'gr', 0),
('en', 'english', 'us', 1),
('es', 'spanish', 'es', 0),
('fr', 'french', 'fr', 0),
('gu', 'gujarati', 'in', 0),
('hi', 'hindi', 'in', 0),
('id', 'indonesian', 'id', 0),
('it', 'italian', 'it', 0),
('ja', 'japanese', 'jp', 0),
('nl', 'dutch', 'nl', 0),
('no', 'norwegian', 'no', 0),
('pl', 'polish', 'pl', 0),
('pt', 'portuguese', 'pt', 0),
('ro', 'romanian', 'ro', 0),
('ru', 'russian', 'ru', 0),
('tr', 'turkish', 'tr', 0),
('vi', 'vietnamese', 'vn', 0),
('zh', 'chinese', 'cn', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locales`
--

CREATE TABLE `tbl_locales` (
  `locale` varchar(10) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `icon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_locales`
--

INSERT INTO `tbl_locales` (`locale`, `code`, `language`, `name`, `icon`) VALUES
('aa_DJ', 'aa', 'afar', 'Afar (Djibouti)', 'dj'),
('aa_ER', 'aa', 'afar', 'Afar (Eritrea)', 'dj'),
('aa_ET', 'aa', 'afar', 'Afar (Ethiopia)', 'dj'),
('af_ZA', 'af', 'afrikaans', 'Afrikaans (South Africa)', 'za'),
('am_ET', 'am', 'amharic', 'Amharic (Ethiopia)', 'et'),
('an_ES', 'an', 'aragonese', 'Aragonese (Spain)', 'es'),
('ar_AE', 'ar', 'arabic', 'Arabic (United Arab Emirates)', 'es'),
('ar_BH', 'ar', 'arabic', 'Arabic (Bahrain)', NULL),
('ar_DZ', 'ar', 'arabic', 'Arabic (Algeria)', NULL),
('ar_EG', 'ar', 'arabic', 'Arabic (Egypt)', NULL),
('ar_IN', 'ar', 'arabic', 'Arabic (India)', NULL),
('ar_IQ', 'ar', 'arabic', 'Arabic (Iraq)', NULL),
('ar_JO', 'ar', 'arabic', 'Arabic (Jordan)', NULL),
('ar_KW', 'ar', 'arabic', 'Arabic (Kuwait)', NULL),
('ar_LB', 'ar', 'arabic', 'Arabic (Lebanon)', NULL),
('ar_LY', 'ar', 'arabic', 'Arabic (Libya)', NULL),
('ar_MA', 'ar', 'arabic', 'Arabic (Morocco)', NULL),
('ar_OM', 'ar', 'arabic', 'Arabic (Oman)', NULL),
('ar_QA', 'ar', 'arabic', 'Arabic (Qatar)', NULL),
('ar_SA', 'ar', 'arabic', 'Arabic (Saudi Arabia)', NULL),
('ar_SD', 'ar', 'arabic', 'Arabic (Sudan)', NULL),
('ar_SY', 'ar', 'arabic', 'Arabic (Syria)', NULL),
('ar_TN', 'ar', 'arabic', 'Arabic (Tunisia)', NULL),
('ar_YE', 'ar', 'arabic', 'Arabic (Yemen)', NULL),
('ast_ES', 'ast', 'asturian', 'Asturian (Spain)', NULL),
('as_IN', 'as', 'assamese', 'Assamese (India)', NULL),
('az_AZ', 'az', 'azerbaijani', 'Azerbaijani (Azerbaijan)', NULL),
('az_TR', 'az', 'azerbaijani', 'Azerbaijani (Turkey)', NULL),
('bem_ZM', 'bem', 'bemba', 'Bemba (Zambia)', NULL),
('ber_DZ', 'ber', 'berber', 'Berber (Algeria)', NULL),
('ber_MA', 'ber', 'berber', 'Berber (Morocco)', NULL),
('be_BY', 'be', 'belarusian', 'Belarusian (Belarus)', NULL),
('bg_BG', 'bg', 'bulgarian', 'Bulgarian (Bulgaria)', NULL),
('bn_BD', 'bn', 'bengali', 'Bengali (Bangladesh)', NULL),
('bn_IN', 'bn', 'bengali', 'Bengali (India)', NULL),
('bo_CN', 'bo', 'tibetan', 'Tibetan (China)', NULL),
('bo_IN', 'bo', 'tibetan', 'Tibetan (India)', NULL),
('br_FR', 'br', 'breton', 'Breton (France)', NULL),
('bs_BA', 'bs', 'bosnian', 'Bosnian (Bosnia and Herzegovina)', NULL),
('byn_ER', 'byn', 'blin', 'Blin (Eritrea)', NULL),
('ca_AD', 'ca', 'catalan', 'Catalan (Andorra)', NULL),
('ca_ES', 'ca', 'catalan', 'Catalan (Spain)', NULL),
('ca_FR', 'ca', 'catalan', 'Catalan (France)', NULL),
('ca_IT', 'ca', 'catalan', 'Catalan (Italy)', NULL),
('crh_UA', 'crh', 'crimean turkish', 'Crimean Turkish (Ukraine)', NULL),
('csb_PL', 'csb', 'kashubian', 'Kashubian (Poland)', NULL),
('cs_CZ', 'cs', 'czech', 'Czech (Czech Republic)', NULL),
('cv_RU', 'cv', 'chuvash', 'Chuvash (Russia)', NULL),
('cy_GB', 'cy', 'welsh', 'Welsh (United Kingdom)', NULL),
('da_DK', 'da', 'danish', 'Danish (Denmark)', NULL),
('de_AT', 'de', 'german', 'German (Austria)', NULL),
('de_BE', 'de', 'german', 'German (Belgium)', NULL),
('de_CH', 'de', 'german', 'German (Switzerland)', NULL),
('de_DE', 'de', 'german', 'German (Germany)', NULL),
('de_LI', 'de', 'german', 'German (Liechtenstein)', NULL),
('de_LU', 'de', 'german', 'German (Luxembourg)', NULL),
('dv_MV', 'dv', 'divehi', 'Divehi (Maldives)', NULL),
('dz_BT', 'dz', 'dzongkha', 'Dzongkha (Bhutan)', NULL),
('ee_GH', 'ee', 'ewe', 'Ewe (Ghana)', NULL),
('el_CY', 'el', 'greek', 'Greek (Cyprus)', NULL),
('el_GR', 'el', 'greek', 'Greek (Greece)', NULL),
('en_AG', 'en', 'english', 'English (Antigua and Barbuda)', NULL),
('en_AS', 'en', 'english', 'English (American Samoa)', NULL),
('en_AU', 'en', 'english', 'English (Australia)', NULL),
('en_BW', 'en', 'english', 'English (Botswana)', NULL),
('en_CA', 'en', 'english', 'English (Canada)', NULL),
('en_DK', 'en', 'english', 'English (Denmark)', NULL),
('en_GB', 'en', 'english', 'English (United Kingdom)', NULL),
('en_GU', 'en', 'english', 'English (Guam)', NULL),
('en_HK', 'en', 'english', 'English (Hong Kong SAR China)', NULL),
('en_IE', 'en', 'english', 'English (Ireland)', NULL),
('en_IN', 'en', 'english', 'English (India)', NULL),
('en_JM', 'en', 'english', 'English (Jamaica)', NULL),
('en_MH', 'en', 'english', 'English (Marshall Islands)', NULL),
('en_MP', 'en', 'english', 'English (Northern Mariana Islands)', NULL),
('en_MU', 'en', 'english', 'English (Mauritius)', NULL),
('en_NG', 'en', 'english', 'English (Nigeria)', NULL),
('en_NZ', 'en', 'english', 'English (New Zealand)', NULL),
('en_PH', 'en', 'english', 'English (Philippines)', NULL),
('en_SG', 'en', 'english', 'English (Singapore)', NULL),
('en_TT', 'en', 'english', 'English (Trinidad and Tobago)', NULL),
('en_US', 'en', 'english', 'English (United States)', NULL),
('en_VI', 'en', 'english', 'English (Virgin Islands)', NULL),
('en_ZA', 'en', 'english', 'English (South Africa)', NULL),
('en_ZM', 'en', 'english', 'English (Zambia)', NULL),
('en_ZW', 'en', 'english', 'English (Zimbabwe)', NULL),
('eo', 'eo', 'esperanto', 'Esperanto', NULL),
('es_AR', 'es', 'spanish', 'Spanish (Argentina)', NULL),
('es_BO', 'es', 'spanish', 'Spanish (Bolivia)', NULL),
('es_CL', 'es', 'spanish', 'Spanish (Chile)', NULL),
('es_CO', 'es', 'spanish', 'Spanish (Colombia)', NULL),
('es_CR', 'es', 'spanish', 'Spanish (Costa Rica)', NULL),
('es_DO', 'es', 'spanish', 'Spanish (Dominican Republic)', NULL),
('es_EC', 'es', 'spanish', 'Spanish (Ecuador)', NULL),
('es_ES', 'es', 'spanish', 'Spanish (Spain)', NULL),
('es_GT', 'es', 'spanish', 'Spanish (Guatemala)', NULL),
('es_HN', 'es', 'spanish', 'Spanish (Honduras)', NULL),
('es_MX', 'es', 'spanish', 'Spanish (Mexico)', NULL),
('es_NI', 'es', 'spanish', 'Spanish (Nicaragua)', NULL),
('es_PA', 'es', 'spanish', 'Spanish (Panama)', NULL),
('es_PE', 'es', 'spanish', 'Spanish (Peru)', NULL),
('es_PR', 'es', 'spanish', 'Spanish (Puerto Rico)', NULL),
('es_PY', 'es', 'spanish', 'Spanish (Paraguay)', NULL),
('es_SV', 'es', 'spanish', 'Spanish (El Salvador)', NULL),
('es_US', 'es', 'spanish', 'Spanish (United States)', NULL),
('es_UY', 'es', 'spanish', 'Spanish (Uruguay)', NULL),
('es_VE', 'es', 'spanish', 'Spanish (Venezuela)', NULL),
('et_EE', 'et', 'estonian', 'Estonian (Estonia)', NULL),
('eu_ES', 'eu', 'basque', 'Basque (Spain)', NULL),
('eu_FR', 'eu', 'basque', 'Basque (France)', NULL),
('fa_AF', 'fa', 'persian', 'Persian (Afghanistan)', NULL),
('fa_IR', 'fa', 'persian', 'Persian (Iran)', NULL),
('ff_SN', 'ff', 'fulah', 'Fulah (Senegal)', NULL),
('fil_PH', 'fil', 'filipino', 'Filipino (Philippines)', NULL),
('fi_FI', 'fi', 'finnish', 'Finnish (Finland)', NULL),
('fo_FO', 'fo', 'faroese', 'Faroese (Faroe Islands)', NULL),
('fr_BE', 'fr', 'french', 'French (Belgium)', NULL),
('fr_BF', 'fr', 'french', 'French (Burkina Faso)', NULL),
('fr_BI', 'fr', 'french', 'French (Burundi)', NULL),
('fr_BJ', 'fr', 'french', 'French (Benin)', NULL),
('fr_CA', 'fr', 'french', 'French (Canada)', NULL),
('fr_CF', 'fr', 'french', 'French (Central African Republic)', NULL),
('fr_CG', 'fr', 'french', 'French (Congo)', NULL),
('fr_CH', 'fr', 'french', 'French (Switzerland)', NULL),
('fr_CM', 'fr', 'french', 'French (Cameroon)', NULL),
('fr_FR', 'fr', 'french', 'French (France)', NULL),
('fr_GA', 'fr', 'french', 'French (Gabon)', NULL),
('fr_GN', 'fr', 'french', 'French (Guinea)', NULL),
('fr_GP', 'fr', 'french', 'French (Guadeloupe)', NULL),
('fr_GQ', 'fr', 'french', 'French (Equatorial Guinea)', NULL),
('fr_KM', 'fr', 'french', 'French (Comoros)', NULL),
('fr_LU', 'fr', 'french', 'French (Luxembourg)', NULL),
('fr_MC', 'fr', 'french', 'French (Monaco)', NULL),
('fr_MG', 'fr', 'french', 'French (Madagascar)', NULL),
('fr_ML', 'fr', 'french', 'French (Mali)', NULL),
('fr_MQ', 'fr', 'french', 'French (Martinique)', NULL),
('fr_NE', 'fr', 'french', 'French (Niger)', NULL),
('fr_SN', 'fr', 'french', 'French (Senegal)', NULL),
('fr_TD', 'fr', 'french', 'French (Chad)', NULL),
('fr_TG', 'fr', 'french', 'French (Togo)', NULL),
('fur_IT', 'fur', 'friulian', 'Friulian (Italy)', NULL),
('fy_DE', 'fy', 'western frisian', 'Western Frisian (Germany)', NULL),
('fy_NL', 'fy', 'western frisian', 'Western Frisian (Netherlands)', NULL),
('ga_IE', 'ga', 'irish', 'Irish (Ireland)', NULL),
('gd_GB', 'gd', 'scottish gaelic', 'Scottish Gaelic (United Kingdom)', NULL),
('gez_ER', 'gez', 'geez', 'Geez (Eritrea)', NULL),
('gez_ET', 'gez', 'geez', 'Geez (Ethiopia)', NULL),
('gl_ES', 'gl', 'galician', 'Galician (Spain)', NULL),
('gu_IN', 'gu', 'gujarati', 'Gujarati (India)', NULL),
('gv_GB', 'gv', 'manx', 'Manx (United Kingdom)', NULL),
('ha_NG', 'ha', 'hausa', 'Hausa (Nigeria)', NULL),
('he_IL', 'he', 'hebrew', 'Hebrew (Israel)', NULL),
('hi_IN', 'hi', 'hindi', 'Hindi (India)', NULL),
('hr_HR', 'hr', 'croatian', 'Croatian (Croatia)', NULL),
('hsb_DE', 'hsb', 'upper sorbian', 'Upper Sorbian (Germany)', NULL),
('ht_HT', 'ht', 'haitian', 'Haitian (Haiti)', NULL),
('hu_HU', 'hu', 'hungarian', 'Hungarian (Hungary)', NULL),
('hy_AM', 'hy', 'armenian', 'Armenian (Armenia)', NULL),
('ia', 'ia', 'interlingua', 'Interlingua', NULL),
('id_ID', 'id', 'indonesian', 'Indonesian (Indonesia)', NULL),
('ig_NG', 'ig', 'igbo', 'Igbo (Nigeria)', NULL),
('ik_CA', 'ik', 'inupiaq', 'Inupiaq (Canada)', NULL),
('is_IS', 'is', 'icelandic', 'Icelandic (Iceland)', NULL),
('it_CH', 'it', 'italian', 'Italian (Switzerland)', NULL),
('it_IT', 'it', 'italian', 'Italian (Italy)', NULL),
('iu_CA', 'iu', 'inuktitut', 'Inuktitut (Canada)', NULL),
('ja_JP', 'ja', 'japanese', 'Japanese (Japan)', NULL),
('ka_GE', 'ka', 'georgian', 'Georgian (Georgia)', NULL),
('kk_KZ', 'kk', 'kazakh', 'Kazakh (Kazakhstan)', NULL),
('kl_GL', 'kl', 'kalaallisut', 'Kalaallisut (Greenland)', NULL),
('km_KH', 'km', 'khmer', 'Khmer (Cambodia)', NULL),
('kn_IN', 'kn', 'kannada', 'Kannada (India)', NULL),
('kok_IN', 'kok', 'konkani', 'Konkani (India)', NULL),
('ko_KR', 'ko', 'korean', 'Korean (South Korea)', NULL),
('ks_IN', 'ks', 'kashmiri', 'Kashmiri (India)', NULL),
('ku_TR', 'ku', 'kurdish', 'Kurdish (Turkey)', NULL),
('kw_GB', 'kw', 'cornish', 'Cornish (United Kingdom)', NULL),
('ky_KG', 'ky', 'kirghiz', 'Kirghiz (Kyrgyzstan)', NULL),
('lg_UG', 'lg', 'ganda', 'Ganda (Uganda)', NULL),
('li_BE', 'li', 'limburgish', 'Limburgish (Belgium)', NULL),
('li_NL', 'li', 'limburgish', 'Limburgish (Netherlands)', NULL),
('lo_LA', 'lo', 'lao', 'Lao (Laos)', NULL),
('lt_LT', 'lt', 'lithuanian', 'Lithuanian (Lithuania)', NULL),
('lv_LV', 'lv', 'latvian', 'Latvian (Latvia)', NULL),
('mai_IN', 'mai', 'maithili', 'Maithili (India)', NULL),
('mg_MG', 'mg', 'malagasy', 'Malagasy (Madagascar)', NULL),
('mi_NZ', 'mi', 'maori', 'Maori (New Zealand)', NULL),
('mk_MK', 'mk', 'macedonian', 'Macedonian (Macedonia)', NULL),
('ml_IN', 'ml', 'malayalam', 'Malayalam (India)', NULL),
('mn_MN', 'mn', 'mongolian', 'Mongolian (Mongolia)', NULL),
('mr_IN', 'mr', 'marathi', 'Marathi (India)', NULL),
('ms_BN', 'ms', 'malay', 'Malay (Brunei)', NULL),
('ms_MY', 'ms', 'malay', 'Malay (Malaysia)', NULL),
('mt_MT', 'mt', 'maltese', 'Maltese (Malta)', NULL),
('my_MM', 'my', 'burmese', 'Burmese (Myanmar)', NULL),
('naq_NA', 'naq', 'namibia', 'Namibia', NULL),
('nb_NO', 'nb', 'norwegian bokm?l', 'Norwegian Bokm?l (Norway)', NULL),
('nds_DE', 'nds', 'low german', 'Low German (Germany)', NULL),
('nds_NL', 'nds', 'low german', 'Low German (Netherlands)', NULL),
('ne_NP', 'ne', 'nepali', 'Nepali (Nepal)', NULL),
('nl_AW', 'nl', 'dutch', 'Dutch (Aruba)', NULL),
('nl_BE', 'nl', 'dutch', 'Dutch (Belgium)', NULL),
('nl_NL', 'nl', 'dutch', 'Dutch (Netherlands)', NULL),
('nn_NO', 'nn', 'norwegian nynorsk', 'Norwegian Nynorsk (Norway)', NULL),
('no_NO', 'no', 'norwegian', 'Norwegian (Norway)', NULL),
('nr_ZA', 'nr', 'south ndebele', 'South Ndebele (South Africa)', NULL),
('nso_ZA', 'nso', 'northern sotho', 'Northern Sotho (South Africa)', NULL),
('oc_FR', 'oc', 'occitan', 'Occitan (France)', NULL),
('om_ET', 'om', 'oromo', 'Oromo (Ethiopia)', NULL),
('om_KE', 'om', 'oromo', 'Oromo (Kenya)', NULL),
('or_IN', 'or', 'oriya', 'Oriya (India)', NULL),
('os_RU', 'os', 'ossetic', 'Ossetic (Russia)', NULL),
('pap_AN', 'pap', 'papiamento', 'Papiamento (Netherlands Antilles)', NULL),
('pa_IN', 'pa', 'punjabi', 'Punjabi (India)', NULL),
('pa_PK', 'pa', 'punjabi', 'Punjabi (Pakistan)', NULL),
('pl_PL', 'pl', 'polish', 'Polish (Poland)', NULL),
('ps_AF', 'ps', 'pashto', 'Pashto (Afghanistan)', NULL),
('pt_BR', 'pt', 'portuguese', 'Portuguese (Brazil)', NULL),
('pt_GW', 'pt', 'portuguese', 'Portuguese (Guinea-Bissau)', NULL),
('pt_PT', 'pt', 'portuguese', 'Portuguese (Portugal)', NULL),
('ro_MD', 'ro', 'romanian', 'Romanian (Moldova)', NULL),
('ro_RO', 'ro', 'romanian', 'Romanian (Romania)', NULL),
('ru_RU', 'ru', 'russian', 'Russian (Russia)', NULL),
('ru_UA', 'ru', 'russian', 'Russian (Ukraine)', NULL),
('rw_RW', 'rw', 'kinyarwanda', 'Kinyarwanda (Rwanda)', NULL),
('sa_IN', 'sa', 'sanskrit', 'Sanskrit (India)', NULL),
('sc_IT', 'sc', 'sardinian', 'Sardinian (Italy)', NULL),
('sd_IN', 'sd', 'sindhi', 'Sindhi (India)', NULL),
('seh_MZ', 'seh', 'sena', 'Sena (Mozambique)', NULL),
('se_NO', 'se', 'northern sami', 'Northern Sami (Norway)', NULL),
('sid_ET', 'sid', 'sidamo', 'Sidamo (Ethiopia)', NULL),
('si_LK', 'si', 'sinhala', 'Sinhala (Sri Lanka)', NULL),
('sk_SK', 'sk', 'slovak', 'Slovak (Slovakia)', NULL),
('sl_SI', 'sl', 'slovenian', 'Slovenian (Slovenia)', NULL),
('sn_ZW', 'sn', 'shona', 'Shona (Zimbabwe)', NULL),
('so_DJ', 'so', 'somali', 'Somali (Djibouti)', NULL),
('so_ET', 'so', 'somali', 'Somali (Ethiopia)', NULL),
('so_KE', 'so', 'somali', 'Somali (Kenya)', NULL),
('so_SO', 'so', 'somali', 'Somali (Somalia)', NULL),
('sq_AL', 'sq', 'albanian', 'Albanian (Albania)', NULL),
('sq_MK', 'sq', 'albanian', 'Albanian (Macedonia)', NULL),
('sr_BA', 'sr', 'serbian', 'Serbian (Bosnia and Herzegovina)', NULL),
('sr_ME', 'sr', 'serbian', 'Serbian (Montenegro)', NULL),
('sr_RS', 'sr', 'serbian', 'Serbian (Serbia)', NULL),
('ss_ZA', 'ss', 'swati', 'Swati (South Africa)', NULL),
('st_ZA', 'st', 'southern sotho', 'Southern Sotho (South Africa)', NULL),
('sv_FI', 'sv', 'swedish', 'Swedish (Finland)', NULL),
('sv_SE', 'sv', 'swedish', 'Swedish (Sweden)', NULL),
('sw_KE', 'sw', 'swahili', 'Swahili (Kenya)', NULL),
('sw_TZ', 'sw', 'swahili', 'Swahili (Tanzania)', NULL),
('ta_IN', 'ta', 'tamil', 'Tamil (India)', NULL),
('teo_UG', 'teo', 'teso', 'Teso (Uganda)', NULL),
('te_IN', 'te', 'telugu', 'Telugu (India)', NULL),
('tg_TJ', 'tg', 'tajik', 'Tajik (Tajikistan)', NULL),
('th_TH', 'th', 'thai', 'Thai (Thailand)', NULL),
('tig_ER', 'tig', 'tigre', 'Tigre (Eritrea)', NULL),
('ti_ER', 'ti', 'tigrinya', 'Tigrinya (Eritrea)', NULL),
('ti_ET', 'ti', 'tigrinya', 'Tigrinya (Ethiopia)', NULL),
('tk_TM', 'tk', 'turkmen', 'Turkmen (Turkmenistan)', NULL),
('tl_PH', 'tl', 'tagalog', 'Tagalog (Philippines)', NULL),
('tn_ZA', 'tn', 'tswana', 'Tswana (South Africa)', NULL),
('to_TO', 'to', 'tongan', 'Tongan (Tonga)', NULL),
('tr_CY', 'tr', 'turkish', 'Turkish (Cyprus)', NULL),
('tr_TR', 'tr', 'turkish', 'Turkish (Turkey)', NULL),
('ts_ZA', 'ts', 'tsonga', 'Tsonga (South Africa)', NULL),
('tt_RU', 'tt', 'tatar', 'Tatar (Russia)', NULL),
('ug_CN', 'ug', 'uighur', 'Uighur (China)', NULL),
('uk_UA', 'uk', 'ukrainian', 'Ukrainian (Ukraine)', NULL),
('ur_PK', 'ur', 'urdu', 'Urdu (Pakistan)', NULL),
('uz_UZ', 'uz', 'uzbek', 'Uzbek (Uzbekistan)', NULL),
('ve_ZA', 've', 'venda', 'Venda (South Africa)', NULL),
('vi_VN', 'vi', 'vietnamese', 'Vietnamese (Vietnam)', NULL),
('wa_BE', 'wa', 'walloon', 'Walloon (Belgium)', NULL),
('wo_SN', 'wo', 'wolof', 'Wolof (Senegal)', NULL),
('xh_ZA', 'xh', 'xhosa', 'Xhosa (South Africa)', NULL),
('yi_US', 'yi', 'yiddish', 'Yiddish (United States)', NULL),
('yo_NG', 'yo', 'yoruba', 'Yoruba (Nigeria)', NULL),
('zh_CN', 'zh', 'chinese', 'Chinese (China)', NULL),
('zh_HK', 'zh', 'chinese', 'Chinese (Hong Kong SAR China)', NULL),
('zh_SG', 'zh', 'chinese', 'Chinese (Singapore)', NULL),
('zh_TW', 'zh', 'chinese', 'Chinese (Taiwan)', NULL),
('zu_ZA', 'zu', 'zulu', 'Zulu (South Africa)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logistics_pricing`
--

CREATE TABLE `tbl_logistics_pricing` (
  `logistics_pricing_id` int(11) NOT NULL,
  `from_range` varchar(10) NOT NULL,
  `to_range` varchar(10) NOT NULL,
  `amount` varchar(15) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logistics_pricing`
--

INSERT INTO `tbl_logistics_pricing` (`logistics_pricing_id`, `from_range`, `to_range`, `amount`, `name`) VALUES
(2, '1', '10', '10', 'Metro Mode'),
(5, '13', '20', '85', 'oeiuf'),
(14, '3', '12', '45', 'best'),
(12, '3', '6', '15', 'sdfsdf'),
(13, '0', '2', '0', 'Short Distance'),
(15, '0', '1000', '500', '6'),
(16, '0', '1', '30', 'Free'),
(17, '1', '5', '3', 'Express'),
(18, '1', '5', '10', 'Birgunj');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `section` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1 COMMENT '1= active 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `label`, `link`, `icon`, `parent`, `sort`, `time`, `section`, `status`) VALUES
(1, 'dashboard', 'admin/dashboard', 'icon-Dinner', 0, 0, '2022-10-05 11:15:47', 1, 1),
(7, 'items', 'admin/items/items_list', 'fa fa-cube', 150, 0, '2022-10-01 16:08:16', NULL, 1),
(8, 'departments', 'admin/departments/index/27', 'icon-Library', 0, 28, '2023-03-01 10:01:47', 9, 1),
(10, 'pull-down', '', '', 0, 0, '2022-10-01 16:08:26', NULL, 0),
(11, 'Settings', 'admin/settings/system', 'fa fa-fw fa-info-circle', 0, 30, '2022-11-04 04:13:14', 10, 1),
(12, 'system_settings', 'admin/settings/system', 'fa fa-fw fa-desktop', 25, 2, '2022-10-01 16:08:32', NULL, 2),
(13, 'email_settings', 'admin/settings/email', 'fa fa-fw fa-envelope', 25, 3, '2022-10-01 16:08:35', NULL, 2),
(14, 'email_templates', 'admin/settings/templates', 'fa fa-fw fa-pencil-square', 25, 4, '2022-10-01 16:08:40', NULL, 2),
(15, 'email_integration', 'admin/settings/email_integration', 'fa fa-fw fa-envelope-o', 25, 5, '2022-10-01 16:08:43', NULL, 2),
(16, 'payment_settings', 'admin/settings/payments', 'fa fa-fw fa-dollar', 25, 6, '2022-10-01 16:08:46', NULL, 2),
(17, 'menu_allocation', 'admin/settings/menu_allocation', 'fa fa-fw fa fa-compass', 25, 0, '2022-10-01 16:08:50', NULL, 2),
(18, 'notification', 'admin/settings/notification', 'fa fa-fw fa-bell-o', 25, 0, '2022-10-01 16:08:54', NULL, 2),
(19, 'email_notification', 'admin/settings/email_notification', 'fa fa-fw fa-bell-o', 25, 0, '2022-10-01 16:08:58', NULL, 2),
(20, 'General Settings', 'admin/settings/', 'fa fa-fw fa-database', 25, 0, '2022-10-08 08:12:16', 10, 1),
(21, 'translations', 'admin/settings/translations', 'fa fa-fw fa-language', 25, 0, '2022-10-01 16:09:03', NULL, 2),
(22, 'system_update', 'admin/settings/system_update', 'fa fa-fw fa-pencil-square-o', 25, 0, '2022-10-01 16:09:05', NULL, 2),
(23, 'dashboard_settings', 'admin/settings/dashboard', 'fa fa-fw fa-dashboard', 25, 11, '2022-10-02 06:55:27', 3, 2),
(24, 'allowed_ip', 'admin/settings/allowed_ip', 'fa fa-server', 25, 1, '2022-10-01 16:09:11', NULL, 2),
(25, 'supplier', 'admin/supplier', 'icon-briefcase', 150, 1, '2022-10-01 16:09:14', NULL, 1),
(26, 'purchase_payment', 'admin/purchase/all_payments', 'icon-credit-card', 150, 4, '2022-10-01 16:09:16', NULL, 1),
(27, 'POS', 'admin/pos', 'icon-Printer', 0, 3, '2023-03-01 10:07:45', 2, 0),
(28, 'Zone', 'admin/zone', 'icon-Marker1', 0, 1, '2022-10-05 11:23:30', 1, 1),
(29, 'Customer list', 'admin/customer', 'icon-Add-user', 0, 11, '2023-03-01 10:01:47', 4, 1),
(30, 'Push Notification', 'admin/push_notification', 'icon-Notification ', 0, 24, '2023-03-01 10:01:47', 7, 1),
(31, 'Orders', 'admin/orders', 'icon-Box1', 0, 2, '2022-10-08 07:58:53', 2, 1),
(32, 'Vendor', 'admin/vendor', 'icon-Thunder1', 0, 18, '2023-03-01 10:01:47', 6, 1),
(33, 'Item', 'admin/item', 'icon-Dinner', 0, 7, '2023-03-01 10:01:47', 3, 1),
(35, 'Category', 'admin/category', 'icon-Rolling-pin ', 0, 4, '2023-03-01 10:01:47', 3, 1),
(36, 'Subcategory', 'admin/subcategory', 'icon-Saucepan', 0, 5, '2023-03-01 10:01:47', 3, 1),
(37, 'Addon', 'admin/addon', 'icon-Fork-spoon', 0, 8, '2023-03-01 10:01:47', 3, 1),
(38, 'Tax', 'admin/tax', 'icon-Layout-horizontal', 0, 33, '2022-11-02 05:11:52', 10, 1),
(40, 'menu', 'admin/itemcategory', 'icon-Chart-bar1', 0, 6, '2023-03-01 10:01:47', 3, 1),
(41, 'Shop review', 'admin/vendor/review', 'icon-Star', 0, 21, '2023-03-01 10:01:47', 6, 1),
(42, 'Customer Wallet\n', 'admin/customer/wallet_transaction', 'icon-Price1', 0, 12, '2023-03-01 10:01:47', 4, 1),
(44, 'Banner', 'admin/bannermaster', 'icon-Display', 0, 22, '2023-03-01 10:01:47', 7, 1),
(45, 'Coupons', 'admin/coupon', 'icon-Ticket', 0, 23, '2023-03-01 10:01:47', 7, 1),
(47, 'Restaurant Settlement\r\n', 'admin/settlement', 'icon-Credit-card', 0, 19, '2023-03-01 10:01:47', 6, 1),
(48, 'Driver', 'admin/driver', 'icon-Shield-user', 0, 14, '2022-11-02 05:11:52', 5, 1),
(49, 'Driver Instructions', 'admin/driver_instructions', 'icon-Clipboard', 0, 17, '2022-11-02 05:11:52', 5, 1),
(50, 'Tips', 'admin/tips', 'icon-MC', 0, 15, '2022-11-02 05:11:52', 5, 1),
(51, 'Gallery', 'admin/gallery', 'icon-Image', 0, 34, '2022-11-04 08:03:11', 10, 1),
(52, 'Currency', 'admin/currency', 'icon-Money', 0, 31, '2022-11-02 05:11:52', 10, 1),
(53, 'Delivery Fees', 'admin/deliveryfees', 'icon-Bitcoin', 0, 16, '2022-11-02 05:11:52', 5, 1),
(54, 'Cash in Hand', 'admin/cash_on_hand', 'icon-Money', 0, 20, '2023-03-01 10:01:47', 6, 1),
(55, 'Pos order', 'sdf', 'we', 0, 2, '2023-03-01 10:01:47', 2, 0),
(56, 'Custom Addon group', 'admin/Custom_addon_group', 'icon-Cheese', 0, 9, '2023-03-01 10:01:47', 3, 1),
(57, 'Custom Variant group', 'admin/Custom_variant_group', 'icon-Glass-martini', 0, 10, '2023-03-01 10:01:47', 3, 1),
(58, 'Clean Database', 'admin/reset_db', 'icon-Equalizer', 0, 32, '2022-11-02 05:11:52', 10, 1),
(60, 'Sales report', 'admin/report/sales_report', 'icon-Chart-bar', 0, 25, '2023-03-01 10:01:47', 8, 1),
(61, 'Item report', 'admin/report/item_report', 'icon-Diagnostics ', 0, 26, '2023-03-01 10:01:47', 8, 1),
(62, 'Analytics', 'sf', 'icon-Pixels', 0, 1, '2022-11-02 04:41:14', 8, 0),
(63, 'Policy', 'admin/policy', 'icon-Edit', 0, 27, '2023-03-01 10:01:47', 8, 1),
(64, 'Placed', 'admin/orders/index/Placed', 'icon-Circle', 31, 1, '2023-02-23 05:26:46', 0, 1),
(65, 'Accepted', 'admin/orders/index/Accepted', 'icon-Circle', 31, 2, '2022-11-02 05:12:09', 0, 1),
(66, 'Processing', 'admin/orders/index/Processing', 'icon-Circle', 31, 3, '2022-11-02 05:12:13', 0, 1),
(67, 'Ready', 'admin/orders/index/Ready', 'icon-Circle', 31, 4, '2022-11-02 05:12:17', 0, 1),
(68, 'Shipped', 'admin/orders/index/Shipped', 'icon-Circle', 31, 5, '2022-11-02 05:12:21', 0, 1),
(69, 'Completed', 'admin/orders/index/Completed', 'icon-Circle', 31, 6, '2022-11-02 05:12:28', 0, 1),
(70, 'Cancelled', 'admin/orders/index/Cancelled', 'icon-Circle', 31, 7, '2022-11-02 05:12:34', 0, 1),
(71, 'All', 'admin/orders/index/All', 'icon-Circle', 31, 0, '2022-11-02 05:12:39', 0, 1),
(72, 'Landingpage Settings', 'admin/landingpage_settings', 'fa fa-fw fa-info-circle', 0, 29, '2023-03-01 10:01:47', 10, 1),
(73, 'Refund', 'admin/orders/index/Refund', 'icon-Circle', 31, 8, '2023-02-23 06:40:24', 0, 1),
(74, 'Scheduled', 'admin/orders/index/scheduled', 'icon-Circle', 31, 9, '2023-02-23 06:40:24', 0, 1),
(75, 'Takeaway', 'admin/orders/index/takeaway', 'icon-Circle', 31, 10, '2023-02-23 06:42:31', 0, 1),
(76, 'Vehicle Type', 'admin/vehicle_type', 'icon-Circle', 0, 13, '2023-03-01 10:03:18', 5, 1),
(77, 'Campaign', 'admin/campaign', 'icon-Circle', 31, 11, '2023-03-01 10:08:05', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_section`
--

CREATE TABLE `tbl_menu_section` (
  `menu_section_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_menu_section`
--

INSERT INTO `tbl_menu_section` (`menu_section_id`, `name`, `icon`) VALUES
(1, 'Menu', 'menu.png'),
(2, 'Orders section', 'order.png'),
(3, 'Food Section', 'food.png'),
(4, 'Customer Section', 'user.png'),
(5, 'Delivery Section', 'driver.png'),
(6, 'Business Section', 'vendor.png'),
(7, 'Marketing Section', 'marketing.png'),
(8, 'Report', 'report.png'),
(9, 'Employee Section', 'employee.png'),
(10, 'General Setting', 'setting.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `notifications_id` int(11) NOT NULL,
  `read` int(11) NOT NULL DEFAULT 0,
  `read_inline` tinyint(1) NOT NULL DEFAULT 0,
  `date` int(25) NOT NULL,
  `description` text NOT NULL,
  `from_user_id` int(11) NOT NULL DEFAULT 0,
  `to_user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`notifications_id`, `read`, `read_inline`, `date`, `description`, `from_user_id`, `to_user_id`, `name`, `link`, `icon`, `value`) VALUES
(1, 1, 1, 1605086803, 'You have received a notification for vendor approval', 5, 1, 'Vendor approval', 'admin/vendor/', 'vendor.png', '123'),
(2, 1, 1, 3454535, 'You have received a notification for driver approval', 2, 1, 'Driver approval', 'admin/driver', 'driver.png', '123'),
(3, 1, 1, 1605086804, 'You have received a notification for vendor profile edits.', 3, 1, 'Vendor profile edit', 'admin/vendor', 'vendor_profile.png', '123'),
(4, 1, 1, 3454535, 'You have received a notification for driver profile edits.', 4, 1, 'Driver profile edit', 'admin/driver', 'driver_profile.png', '12345'),
(5, 1, 0, 1605086803, 'You have received a notification to withdraw the amount.', 1, 1, 'Amount withdraw', 'admin/item', 'amount_withdraw.jpg', '12345fg'),
(6, 1, 0, 1668154030, 'You have received a notification for vendor approval', 1, 1, 'Vendor approval', 'admin/vendor/vendorDetails/340', 'vendor.png', '123'),
(7, 1, 0, 1668154686, 'You have received a notification to withdraw the amount', 335, 1, 'Amount withdraw', 'admin/settlement', 'amount_withdraw.jpg', '123'),
(8, 1, 0, 1668158835, 'You have received a notification to withdraw the amount', 335, 1, 'Amount withdraw', 'admin/settlement/index', 'amount_withdraw.jpg', '123'),
(9, 1, 0, 1668437151, 'You have received a notification for vendor approval', 341, 1, 'Vendor approval', 'admin/vendor/vendorDetails/341', 'vendor.png', '123'),
(10, 1, 0, 1668484979, 'You have received a notification for vendor approval', 342, 1, 'Vendor approval', 'admin/vendor/vendorDetails/342', 'vendor.png', '123'),
(11, 1, 0, 1668485706, 'You have received a notification for vendor approval', 343, 1, 'Vendor approval', 'admin/vendor/vendorDetails/343', 'vendor.png', '123'),
(12, 1, 0, 1669306133, 'You have received a notification for vendor approval', 345, 1, 'Vendor approval', 'admin/vendor/vendorDetails/345', 'vendor.png', '123'),
(13, 1, 0, 1677555391, 'You have received a notification to withdraw the amount', 165, 1, 'Amount withdraw', 'admin/settlement/index', 'amount_withdraw.jpg', '123'),
(14, 0, 0, 1677556199, 'You have received a notification to withdraw the amount', 165, 1, 'Amount withdraw', 'admin/settlement/driver', 'amount_withdraw.jpg', '123'),
(15, 0, 0, 1677556429, 'You have received a notification to withdraw the amount', 165, 1, 'Amount withdraw', 'admin/settlement/driver', 'amount_withdraw.jpg', '123'),
(16, 0, 0, 1677557651, 'You have received a notification to withdraw the amount', 165, 1, 'Amount withdraw', 'admin/settlement/driver', 'amount_withdraw.jpg', '123'),
(17, 0, 0, 1677557874, 'You have received a notification to withdraw the amount', 165, 1, 'Amount withdraw', 'admin/settlement/driver', 'amount_withdraw.jpg', '123'),
(18, 0, 0, 1677557914, 'You have received a notification to withdraw the amount', 165, 1, 'Amount withdraw', 'admin/settlement/driver', 'amount_withdraw.jpg', '123'),
(19, 0, 0, 1677558525, 'You have received a notification to withdraw the amount', 165, 1, 'Amount withdraw', 'admin/settlement/driver', 'amount_withdraw.jpg', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outgoing_emails`
--

CREATE TABLE `tbl_outgoing_emails` (
  `id` int(11) UNSIGNED NOT NULL,
  `sent_to` varchar(64) DEFAULT NULL,
  `sent_from` varchar(64) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `date_sent` timestamp NULL DEFAULT current_timestamp(),
  `delivered` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_outgoing_emails`
--

INSERT INTO `tbl_outgoing_emails` (`id`, `sent_to`, `sent_from`, `subject`, `message`, `date_sent`, `delivered`) VALUES
(1, 'demo@demo.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>test</strong> has been updated by <strong>Balaji</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost/tanjodemo/admin/tasks/view_task_details/1\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2020-11-02 09:15:08', 0),
(2, 'demo@demo.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>test</strong> has been updated by <strong>Balaji</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost/tanjodemo/admin/tasks/view_task_details/2\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2020-11-02 09:15:30', 0),
(3, 'baljai30nsit@gmail.com', 'admin@promake.in Promake', 'New project created', '<p>Hello, <strong>PROMAKE</strong>,<br />\r\nwe have created a new project with your account.<br />\r\n<br />\r\nProject name : <strong>project1</strong><br />\r\nYou can login to see the status of your project by using this link:<br />\r\n<big><a href=\"http://localhost/tanjodemo/admin/projects/project_details/1\"><strong>View Project</strong></a></big></p>\r\n\r\n<p><br />\r\nBest Regards<br />\r\n<br />\r\nThe Promake Team</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-04-01 16:33:28', 0),
(4, 'demo@demo.com', 'admin@promake.in Promake', 'Assigned Project', '<p>Hi There,</p>\r\n\r\n<p>A<strong> project1</strong> has been assigned by <strong>Karthi </strong>to you.You can view this project by logging in to the portal using the link below:<br />\r\n<big><a href=\"http://localhost/tanjodemo/admin/projects/project_details/1\"><strong>View Project</strong></a></big><br />\r\n<br />\r\nBest Regards<br />\r\nThe Promake Team</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-04-01 16:33:49', 0),
(5, 'karthi@gmail.com', 'admin@promake.in Promake', 'Assigned Project', '<p>Hi There,</p>\r\n\r\n<p>A<strong> project1</strong> has been assigned by <strong>Karthi </strong>to you.You can view this project by logging in to the portal using the link below:<br />\r\n<big><a href=\"http://localhost/tanjodemo/admin/projects/project_details/1\"><strong>View Project</strong></a></big><br />\r\n<br />\r\nBest Regards<br />\r\nThe Promake Team</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-04-01 16:34:11', 0),
(6, 'demo@demo.com', 'admin@promake.in Promake', 'New Bug Assigned', '<p>Hi there,</p>\r\n\r\n<p>A new bug &nbsp;oo &nbsp;has been assigned to you by Karthi.</p>\r\n\r\n<p>You can view this bug by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost/tanjodemo/admin/bugs/view_bug_details/1\">View Bug</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2021-04-01 16:38:30', 0),
(7, 'karthi@gmail.com', 'admin@promake.in Promake', 'New Bug Assigned', '<p>Hi there,</p>\r\n\r\n<p>A new bug &nbsp;oo &nbsp;has been assigned to you by Karthi.</p>\r\n\r\n<p>You can view this bug by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost/tanjodemo/admin/bugs/view_bug_details/1\">View Bug</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2021-04-01 16:38:51', 0),
(8, 'karthi@gmail.com', 'admin@promake.in Promake', 'New bug Reported', '<p>Hi there,</p>\r\n\r\n<p>A new bug (oo) has been reported by Karthi.</p>\r\n\r\n<p>You can view the Bug using the Dashboard Page.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost/tanjodemo/admin/bugs/view_bug_details/1\">View Bug</a></strong></big></p>\r\n\r\n<p><br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2021-04-01 16:39:12', 0),
(9, 'demo@demo.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>karthikeyan</strong> has been updated by <strong>Karthi</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://tanjodemo2.promaketechnologies.com/admin/tasks/view_task_details/3\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2021-04-09 08:55:01', 0),
(10, 'karthi@gmail.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>karthikeyan</strong> has been updated by <strong>Karthi</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://tanjodemo2.promaketechnologies.com/admin/tasks/view_task_details/3\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2021-04-09 08:55:02', 0),
(11, 'demo@demo.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>karthick</strong> has been updated by <strong>Karthi</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://tanjodemo2.promaketechnologies.com/admin/tasks/view_task_details/4\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2021-05-12 08:50:53', 0),
(12, 'karthi@gmail.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>karthick</strong> has been updated by <strong>Karthi</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://tanjodemo2.promaketechnologies.com/admin/tasks/view_task_details/4\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2021-05-12 08:50:54', 0),
(13, 'company1@gmail.com', 'admin@promake.in Promake', '[ Promake ] Registration successful', '<div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Welcome to Promake</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Thanks for joining Promake. We listed your sign in details below, make sure you keep them safe.<br>To open your Promake homepage, please follow this link:<br><big><b><a href=\"http://tanjodemo2.promaketechnologies.com/\">Promake Account!</a></b></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"http://tanjodemo2.promaketechnologies.com/\">http://tanjodemo2.promaketechnologies.com/</a><br>Your username: company1<br>Your email address: company1@gmail.com<br>Your password: 123<br>Have fun!<br>The Promake Team.<br><br></div></div>', '2021-06-07 11:57:57', 0),
(14, 'demo@demo.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>restaurant</strong> has been updated by <strong>Admin</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/tasks/view_task_details/5\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2022-05-02 10:21:56', 0),
(15, 'karthi@gmail.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>restaurant</strong> has been updated by <strong>Admin</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/tasks/view_task_details/5\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2022-05-02 10:22:18', 0),
(16, 'demo@demo.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>naga</strong> has been updated by <strong>Admin</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/tasks/view_task_details/6\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2022-05-03 06:48:51', 0),
(17, 'karthi@gmail.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>naga</strong> has been updated by <strong>Admin</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/tasks/view_task_details/6\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2022-05-03 06:49:12', 0),
(18, 'demo@demo.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>naga</strong> has been updated by <strong>Admin</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/tasks/view_task_details/6\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2022-06-25 09:32:19', 0),
(19, 'karthi@gmail.com', 'admin@promake.in Promake', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>naga</strong> has been updated by <strong>Admin</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/tasks/view_task_details/6\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe Promake Team</p>\r\n', '2022-06-25 09:32:40', 0),
(20, 'demo@demo.com', 'admin@promake.in Promake', 'New Notice published', '<p>Hello&nbsp;<strong>Admin</strong>,</p>\r\n\r\n<p>New Notice Published&nbsp;<strong>zssd</strong></p>\r\n\r\n<p><br />\r\nYou can view the Notice online at:<br />\r\n<br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/announcements/view_announcements_details/1\">View Notice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe Promake Team</p>\r\n', '2022-07-01 05:02:46', 0),
(21, 'balaji30@gmail.com', 'admin@promake.in Promake', 'New Notice published', '<p>Hello&nbsp;<strong>balaji</strong>,</p>\r\n\r\n<p>New Notice Published&nbsp;<strong>zssd</strong></p>\r\n\r\n<p><br />\r\nYou can view the Notice online at:<br />\r\n<br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/announcements/view_announcements_details/1\">View Notice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe Promake Team</p>\r\n', '2022-07-01 05:03:07', 0),
(22, 'karthi@gmail.com', 'admin@promake.in Promake', 'New Notice published', '<p>Hello&nbsp;<strong>Karthi</strong>,</p>\r\n\r\n<p>New Notice Published&nbsp;<strong>zssd</strong></p>\r\n\r\n<p><br />\r\nYou can view the Notice online at:<br />\r\n<br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/announcements/view_announcements_details/1\">View Notice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe Promake Team</p>\r\n', '2022-07-01 05:03:28', 0),
(23, 'company1@gmail.com', 'admin@promake.in Promake', 'New Notice published', '<p>Hello&nbsp;<strong>company1</strong>,</p>\r\n\r\n<p>New Notice Published&nbsp;<strong>zssd</strong></p>\r\n\r\n<p><br />\r\nYou can view the Notice online at:<br />\r\n<br />\r\n<big><strong><a href=\"http://localhost:8080/tanjo/admin/announcements/view_announcements_details/1\">View Notice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe Promake Team</p>\r\n', '2022-07-01 05:03:49', 0),
(24, 'demo@demo.com', ' 1232', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>test</strong> has been updated by <strong>Admin</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost/foodzo_alpha3/admin/tasks/view_task_details/1\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe 1232 Team</p>\r\n', '2022-07-15 08:05:59', 0),
(25, 'karthi@gmail.com', ' 1232', 'Task updated', '<p>Hi there,</p>\r\n\r\n<p><strong>test</strong> has been updated by <strong>Admin</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"http://localhost/foodzo_alpha3/admin/tasks/view_task_details/1\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe 1232 Team</p>\r\n', '2022-07-15 08:06:29', 0),
(26, 'demo@demo.com', ' 1232', 'New Notice published', '<p>Hello&nbsp;<strong>Admin</strong>,</p>\r\n\r\n<p>New Notice Published&nbsp;<strong></strong></p>\r\n\r\n<p><br />\r\nYou can view the Notice online at:<br />\r\n<br />\r\n<big><strong><a href=\"http://localhost/foodzo_alpha3/admin/announcements/view_announcements_details/2\">View Notice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe 1232 Team</p>\r\n', '2022-07-15 08:07:29', 0),
(27, 'karthi@gmail.com', ' 1232', 'New Notice published', '<p>Hello&nbsp;<strong>Karthi</strong>,</p>\r\n\r\n<p>New Notice Published&nbsp;<strong></strong></p>\r\n\r\n<p><br />\r\nYou can view the Notice online at:<br />\r\n<br />\r\n<big><strong><a href=\"http://localhost/foodzo_alpha3/admin/announcements/view_announcements_details/2\">View Notice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe 1232 Team</p>\r\n', '2022-07-15 08:08:01', 0),
(28, 'balaji30nsit@gmail.com', ' 1232', '[ 1232 ] Forgot Password', '        <div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New Password</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Forgot your password, huh? No big deal.<br>To create a new password, just follow this link:<br><br><big><b><a href=\"http://localhost/foodzo_alpha3/login/reset_password/1/7d14a4de0056d84b3f2851d5e09598fb\">Create a new password</a></b></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"http://localhost/foodzo_alpha3/login/reset_password/1/7d14a4de0056d84b3f2851d5e09598fb\">http://localhost/foodzo_alpha3/login/reset_password/1/7d14a4de0056d84b3f2851d5e09598fb</a><br><br><br>You received this email, because it was requested by a <a href=\"http://localhost/foodzo_alpha3/login\">1232</a> user. <p></p><p>This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.</p><br>Thank you,<br>The 1232 Team</div></div>', '2022-08-17 14:22:21', 0),
(29, 'balaji30nsit@gmail.com', ' 1232', '[ 1232 ] Forgot Password', '        <div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New Password</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Forgot your password, huh? No big deal.<br>To create a new password, just follow this link:<br><br><big><b><a href=\"http://localhost/foodzo_alpha3/login/reset_password/1/9727aaf723df2f594726273a15853335\">Create a new password</a></b></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"http://localhost/foodzo_alpha3/login/reset_password/1/9727aaf723df2f594726273a15853335\">http://localhost/foodzo_alpha3/login/reset_password/1/9727aaf723df2f594726273a15853335</a><br><br><br>You received this email, because it was requested by a <a href=\"http://localhost/foodzo_alpha3/login\">1232</a> user. <p></p><p>This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.</p><br>Thank you,<br>The 1232 Team</div></div>', '2022-08-17 14:22:51', 0),
(30, 'balaji30nsit@gmail.com', 'wdqwd@gmail.com 12321', '[ 12321 ] Forgot Password', '        <div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New Password</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Forgot your password, huh? No big deal.<br>To create a new password, just follow this link:<br><br><big><b><a href=\"http://localhost/foodzo_beta1/login/reset_password/1/cea78b35d20b14510251d5dadd64bb16\">Create a new password</a></b></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"http://localhost/foodzo_beta1/login/reset_password/1/cea78b35d20b14510251d5dadd64bb16\">http://localhost/foodzo_beta1/login/reset_password/1/cea78b35d20b14510251d5dadd64bb16</a><br><br><br>You received this email, because it was requested by a <a href=\"http://localhost/foodzo_beta1/login\">12321</a> user. <p></p><p>This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.</p><br>Thank you,<br>The 12321 Team</div></div>', '2022-11-12 05:27:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `payments_id` int(11) NOT NULL,
  `invoices_id` int(11) NOT NULL,
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(64) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `account_id` int(11) NOT NULL DEFAULT 0 COMMENT 'account_id means tracking deposit from which account'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinaction`
--

CREATE TABLE `tbl_pinaction` (
  `pinaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policy`
--

CREATE TABLE `tbl_policy` (
  `policy_id` int(11) NOT NULL,
  `policy` longtext CHARACTER SET utf8 DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_policy`
--

INSERT INTO `tbl_policy` (`policy_id`, `policy`, `value`) VALUES
(1, 'Terms & Condition', '<p>hello hkcks</p><p><br></p><p>ljkbskjfbwe oiwefew</p><p>keuwbfkwe</p>'),
(2, 'Privacy Policy', '<p>Hello</p><p>ewfklewf</p><p>wefew</p>'),
(3, 'Return Policy', '<p>Refund policy\n\nWe’re so convinced you’ll absolutely love our services, that we’re willing to offer a 14 day risk-free money back guarantee. If you are not satisfied with the service for any reason you can get a refund within 14 days of making a purchase. Please keep in mind that even though we offer a full money back guarantee, we will issue a refund only for the unused portion of the service.\n\nContacting us</p><p><br></p><p>\n\nIf you have any questions, concerns, or complaints regarding this refund policy, we encourage you to contact us using the details below:\n\nhttp://www.doordrop2u.in\nsupport@doordrop2u.in\n\nThis document was last updated on December 20, 2021</p>'),
(4, 'About us', '<p>Privacy Policy for DD2U\nAt DD2U, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by DD2U and how we use it.\n\nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.\n\nLog Files\nDD2U follows a standard procedure of using log files. These files log visitors when they use app. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the app, tracking users\' movement on the app, and gathering demographic information.\n\nOur Advertising Partners\nSome of advertisers in our app may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.\n\nGoogle\n\nhttps://policies.google.com/technologies/ads\n\nPrivacy Policies\nYou may consult this list to find the Privacy Policy for each of the advertising partners of DD2U.\n\nThird-party ad servers or ad networks uses technologies like cookies, JavaScript, or Beacons that are used in their respective advertisements and links that appear on DD2U. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on this app or other apps or websites.\n\nNote that DD2U has no access to or control over these cookies that are used by third-party advertisers.\n\nThird Party Privacy Policies\nDD2U\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.\n\nChildren\'s Information\nAnother part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.\n\nDD2U does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our App, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.\n\nOnline Privacy Policy Only\nThis Privacy Policy applies only to our online activities and is valid for visitors to our App with regards to the </p><p><br></p><p>information that they shared and/or collect in DD2U. This policy is not applicable to any information collected offline or via channels other than this app. Our Privacy Policy was created with the help of the App Privacy Policy Generator from App-Privacy-Policy.com\n\nConsent\nBy using our app, you hereby consent to our Privacy Policy and agree to its Terms and Conditions.</p>'),
(5, 'Vendor Policy', '<p>SmartBharat Services (SmartBharat One) is India’s largest online food and grocery store. With over 18,000 products and over 1000 brands in our catalog, you will find everything you are looking for. Right from fresh Fruits and Vegetables, Rice and Dals, Spices and Seasonings to Packaged products, </p><p><br></p><p>Beverages, Personal care products, and Meats – we have it all.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_private_chat`
--

CREATE TABLE `tbl_private_chat` (
  `private_chat_id` int(11) NOT NULL,
  `chat_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_private_chat`
--

INSERT INTO `tbl_private_chat` (`private_chat_id`, `chat_title`, `user_id`, `time`) VALUES
(1, '', 1, '2019-12-13 16:14:03'),
(2, '', 1, '2022-04-27 06:23:50'),
(3, '', 1, '2022-04-27 06:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_private_chat_messages`
--

CREATE TABLE `tbl_private_chat_messages` (
  `private_chat_messages_id` int(11) NOT NULL,
  `private_chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_private_chat_messages`
--

INSERT INTO `tbl_private_chat_messages` (`private_chat_messages_id`, `private_chat_id`, `user_id`, `message`, `message_time`) VALUES
(1, 1, 1, 'hi', '2019-12-13 16:14:12'),
(2, 2, 1, 'hi', '2022-04-27 06:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_private_chat_users`
--

CREATE TABLE `tbl_private_chat_users` (
  `private_chat_users_id` int(11) NOT NULL,
  `private_chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `active` int(11) NOT NULL COMMENT '0 == minimize chat,1 == open chat and  2 == close chat ',
  `unread` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT 'keep last message id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_private_chat_users`
--

INSERT INTO `tbl_private_chat_users` (`private_chat_users_id`, `private_chat_id`, `user_id`, `to_user_id`, `active`, `unread`, `title`, `deleted`) VALUES
(1, 1, 1, 2, 2, 0, ' <strong>demo</strong>', 0),
(2, 2, 1, 4, 2, 0, ' <strong>company1</strong>', 0),
(3, 2, 4, 1, 1, 1, ' <strong>Admin</strong>', 0),
(4, 3, 1, 3, 2, 0, ' <strong>Karthi</strong>', 0),
(5, 3, 3, 1, 2, 1, ' <strong>Admin</strong>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_payments`
--

CREATE TABLE `tbl_purchase_payments` (
  `payments_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(64) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `month_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_to` int(11) NOT NULL,
  `paid_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `account_id` int(11) NOT NULL DEFAULT 0 COMMENT 'account_id means tracking deduct from which account'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pushnotification`
--

CREATE TABLE `tbl_pushnotification` (
  `pushnotification_id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `message` longtext CHARACTER SET utf8 NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `date` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pushnotification`
--

INSERT INTO `tbl_pushnotification` (`pushnotification_id`, `title`, `message`, `user_type`, `image`, `date`) VALUES
(1, 'f hwejfhjwe', 'weh fjewh', NULL, NULL, 1667399996),
(2, '1232', '12321', 'user', NULL, 1667400309),
(3, '12321', 'qeq23', 'user', NULL, 1667400350),
(4, '12321', '213', 'user', NULL, 1667400363),
(5, '12312', '213', 'user', NULL, 1667400386),
(6, 'sdcds', 'sdfds', 'user', NULL, 1667400416),
(7, 'sekjbewkjfwef', 'ewfkjhewifu bweiufgwef ewiufgieuwfiewufwweiufweuifbewiufgweiufweiufewiufewiufgwefiuew', 'user', NULL, 1667401024),
(8, 'sekjbewkjfwef', 'ewfkjhewifu bweiufgwef ewiufgieuwfiewufwweiufweuifbewiufgweiufweiufewiufewiufgwefiuew', 'user', NULL, 1667401056),
(9, 'jkkjb', '', 'user', NULL, 1667401542),
(10, '23423', '234', 'user', NULL, 1667401554),
(11, 'jhbjh', 'lknlkk', 'driver', NULL, 1667401814),
(12, 'wekjbfjkwe', 'wejkfew', 'user', NULL, 1667401835),
(13, '1232', '21312', 'user', NULL, 1667401859),
(14, 'kjbjk', 'kjjkjkb', 'user', NULL, 1667407983),
(15, 'jbbjvk', 'jbj', 'user', NULL, 1667408113),
(16, 'wewe', 'wewre', 'user', NULL, 1667408309),
(17, 'weqweqw', 'wwqewe', 'User', NULL, 1667408339),
(18, 'efwe', 'ewrwer', 'User', NULL, 1667408476),
(19, 'ewfrew', 'werew', 'User', NULL, 1667408736),
(20, 'jkbkjbjb', 'm, m,knlk', 'User', NULL, 1667409042),
(21, 'sefesdf', 'ewfwe', 'User', NULL, 1667409068),
(22, '12', '12', 'User', NULL, 1668487522),
(23, '23', '23', 'User', NULL, 1668487568),
(24, '213', '123', 'User', NULL, 1668489950);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reminders`
--

CREATE TABLE `tbl_reminders` (
  `reminder_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `notified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `module` varchar(200) NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `notify_by_email` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_restaurantproduct`
--

CREATE TABLE `tbl_restaurantproduct` (
  `restaurantproduct_id` int(11) NOT NULL,
  `rating_num` decimal(20,0) NOT NULL DEFAULT 0,
  `rating_total` int(11) NOT NULL DEFAULT 0,
  `rating_user` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `foodType` varchar(30) DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `packing_charge` float NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `sale_price` float NOT NULL DEFAULT 0,
  `default_price` float NOT NULL,
  `added_by` varchar(30) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `add_timestamp` longtext DEFAULT NULL,
  `multiple_variant` tinyint(1) NOT NULL DEFAULT 0,
  `variant` longtext DEFAULT NULL,
  `combination` longtext DEFAULT NULL,
  `addon_group` longtext DEFAULT NULL,
  `availableType` int(10) NOT NULL DEFAULT 0,
  `itemTiming` longtext DEFAULT NULL,
  `timing_code` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `out_of_stock` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(150) DEFAULT NULL,
  `product_type` int(11) NOT NULL,
  `today_deals` tinyint(1) DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `sales_count` int(50) DEFAULT 0,
  `vendor` int(11) NOT NULL DEFAULT 0,
  `tag` varchar(15) DEFAULT NULL,
  `stack` longtext DEFAULT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_restaurantproduct`
--

INSERT INTO `tbl_restaurantproduct` (`restaurantproduct_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `foodType`, `price`, `discount`, `packing_charge`, `tax`, `sale_price`, `default_price`, `added_by`, `category`, `description`, `add_timestamp`, `multiple_variant`, `variant`, `combination`, `addon_group`, `availableType`, `itemTiming`, `timing_code`, `status`, `out_of_stock`, `image`, `product_type`, `today_deals`, `featured`, `sales_count`, `vendor`, `tag`, `stack`, `zone_id`) VALUES
(276, '0', 0, '[]', 'Banana Bonkers Milkshake', 'Veg', 70, 1, 5, 9, 69.3, 69.3, NULL, 151, 'Banana Bonkers Milkshake', '1668791900', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:48 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:48 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_276.jpg', 2, 0, 0, 0, 320, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(277, '0', 0, '[]', 'Musk Melon Milkshake', 'Veg', 65, 0, 5, 9, 65, 65, NULL, 151, 'Musk Melon Milkshake', '1668791887', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:47 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:47 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_277.png', 2, 0, 0, 1, 320, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(270, '0', 1, '[\"840\"]', 'Chicken Biryani', 'NON Veg', 231, 0, 1, 9, 231, 231, NULL, 138, 'Slow cooked aromatic rice layered with marinated chicken pieces in a delicate blend of whole spices served with raita.', '1668067326', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:23 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:23 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_270.jpg', 2, 0, 0, 0, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(271, '0', 0, '[]', 'Choco Brownie Fudge', 'Veg', 319, 2, 10, 9, 312.62, 312.62, NULL, 147, 'Choco Brownie Fudge', '1668791933', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:48 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:48 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_271.png', 2, 0, 0, 0, 320, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(272, '0', 0, '[]', 'Kal Dosai', 'Veg', 46, 0, 1, 9, 46, 46, NULL, 142, 'Incredibly soft and spongy 2 kal dosai served with 3 types of flavorful chutney and sambar', '1668067652', 0, '', '', '[]', 2, '[{\"fromAvailableTime\":\"10:30 AM\",\"toAvailableTime\":\"6:32 PM\"}]', '[{\"fromAvailableTime\":\"10:30 AM\",\"toAvailableTime\":\"6:32 PM\",\"dayId\":\"all\"}]', 1, 0, 'restaurantproduct_272.jpg', 2, 0, 0, 0, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(273, '0', 0, '[]', 'Full Meals', 'Veg', 145, 0, 0, 9, 145, 145, NULL, 143, 'Meals with sambar, poriyal, kootu, appalam(2), rasam, mor kulambu or puli kulambu, buttermilk and pickle (2 banana leaf included to feel the authentic taste of having it sitting at our restaurant but back home)', '1668068167', 0, '', '', '[]', 2, '[{\"fromAvailableTime\":\"1:30 AM\",\"toAvailableTime\":\"5:37 PM\"}]', '[{\"fromAvailableTime\":\"1:30 AM\",\"toAvailableTime\":\"5:37 PM\",\"dayId\":\"all\"}]', 1, 0, 'restaurantproduct_273.jpg', 2, 0, 0, 1, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(274, '0', 0, '[]', 'Blushing Strawberry', 'Veg', 215, 2, 5, 9, 210.7, 210.7, NULL, 147, 'Blushing Strawberry', '1668791915', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:48 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:48 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_274.png', 2, 0, 0, 1, 320, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(275, '0', 0, '[]', 'Bun parotta', 'NON Veg', 46, 0, 0, 9, 46, 46, NULL, 146, '', '1668068575', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:47 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:47 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_275.jpg', 2, 0, 0, 1, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(278, '0', 0, '[]', 'Very Berry Strawberry Mocktail', 'Veg', 75, 0, 5, 9, 0, 0, NULL, 151, 'Very Berry Strawberry Mocktail', '1668791869', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:47 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:47 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_278.jpg', 2, 0, 0, 0, 320, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(279, '0', 0, '[]', 'Cornetto Oreo', 'Veg', 70, 1, 5, 9, 69.3, 69.3, NULL, 147, 'Cornetto Oreo', '1669783310', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:46 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:46 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_279.png', 2, 0, 0, 0, 320, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(280, '0', 0, '[]', 'Veg Pizza Extravaganza New Hand Tossed', 'Veg', 200, 5, 5, 9, 0, 0, NULL, 144, 'Veg Pizza Extravaganza New Hand Tossed', '1669783259', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:52 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:52 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_280.jpg', 2, 0, 0, 1, 322, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(281, '0', 0, '[]', 'Crab Chettinad Soup', 'NON Veg', 150, 0, 1, 9, 0, 0, NULL, 149, '', '1668069882', 0, '', '', '[]', 2, '[{\"fromAvailableTime\":\"8:30 AM\",\"toAvailableTime\":\"9:37 PM\"}]', '[{\"fromAvailableTime\":\"8:30 AM\",\"toAvailableTime\":\"9:37 PM\",\"dayId\":\"all\"}]', 1, 0, 'restaurantproduct_281.jpg', 2, 0, 0, 0, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(282, '0', 0, '[]', 'Veggie Paradise Wheet Thin Crust Pizza', 'Veg', 180, 5, 5, 9, 171, 171, NULL, 144, 'Veggie Paradise Wheet Thin Crust Pizza', '1669783280', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:52 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:52 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_282.png', 2, 0, 1, 1, 322, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(283, '0', 0, '[]', 'Large Combo - Chicken Burger', 'NON Veg', 300, 6, 10, 9, 0, 0, NULL, 145, 'Large Combo - Chicken Burger', '1668792118', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:51 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:51 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_283.png', 2, 0, 0, 0, 322, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(284, '0', 0, '[]', 'Crispy Chicken Burger', 'NON Veg', 150, 5, 0, 9, 142.5, 142.5, NULL, 145, 'Crispy Chicken Burger', '1668792105', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:51 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:51 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_284.jpg', 2, 0, 0, 0, 322, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(285, '0', 0, '[]', 'Paneer Masala Sandwich', 'Veg', 85, 2, 0, 9, 83.3, 83.3, NULL, 152, 'Paneer Masala Sandwich', '1668792090', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"9:51 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"9:51 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_285.png', 2, 0, 0, 0, 322, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(286, '0', 0, '[]', 'Chicken Mayo Sandwich', 'NON Veg', 90, 0, 0, 9, 90, 90, NULL, 152, 'Chicken Mayo Sandwich\n', '1668792079', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:51 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:51 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_286.png', 2, 0, 0, 0, 322, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(287, '0', 1, '[\"840\"]', 'Idli', 'Veg', 45, 0, 1, 9, 45, 45, NULL, 141, 'Served with fresh chutney', '1668071011', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"8:30 AM\",\"toAvailableTime\":\"2:37 PM\"}', '[{\"fromAvailableTime\":\"8:30 AM\",\"toAvailableTime\":\"2:37 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_287.jpg', 2, 0, 0, 1, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(288, '1', 1, '[\"840\"]', 'Egg Biryani', 'Veg', 176, 0, 1, 9, 176, 176, NULL, 138, 'Healthy yet wholesome boiled eggs covered in flavor-packed masala and slow cooked rice.', '1668072598', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:33 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:33 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_288.jpg', 2, 0, 1, 29, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(289, '0', 0, '[]', 'Podi idli', 'Veg', 140, 0, 1, 9, 140, 140, NULL, 141, 'Deep fried', '1668073104', 0, '', '', '[]', 3, '{\"monDay\":[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:00 AM\"}],\"tueDay\":[{\"fromAvailableTime\":\"8:30 AM\",\"toAvailableTime\":\"11:00 AM\"}],\"wedDay\":[{\"fromAvailableTime\":\"7:30 AM\",\"toAvailableTime\":\"10:00 AM\"}],\"thurDay\":[{\"fromAvailableTime\":\"9:30 AM\",\"toAvailableTime\":\"1:00 PM\"}],\"friDay\":[{\"fromAvailableTime\":\"9:30 AM\",\"toAvailableTime\":\"12:00 PM\"}],\"satDay\":[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"2:00 PM\"}],\"sunDay\":[]}', '[{\"fromAvailableTime\":\"7:30 AM\",\"toAvailableTime\":\"10:00 AM\",\"dayId\":3},{\"fromAvailableTime\":\"8:30 AM\",\"toAvailableTime\":\"11:00 AM\",\"dayId\":2},{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:00 AM\",\"dayId\":1},{\"fromAvailableTime\":\"9:30 AM\",\"toAvailableTime\":\"1:00 PM\",\"dayId\":4},{\"fromAvailableTime\":\"9:30 AM\",\"toAvailableTime\":\"12:00 PM\",\"dayId\":5},{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"2:00 PM\",\"dayId\":6}]', 1, 0, 'restaurantproduct_289.jpg', 2, 0, 0, 0, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(290, '0', 0, '[]', 'Chicken Curry Dosai', 'Veg', 239, 0, 1, 9, 239, 239, NULL, 142, 'Serves 1, 1 Pc || Medium spicy || Dry || Served with Curry/ Gravy|| Pan Fried | Rice flour pancakes topped with minced chicken mixed with other spices.', '1668073969', 0, '', '', '[]', 2, '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:08 PM\"}]', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:08 PM\",\"dayId\":\"all\"}]', 1, 0, 'restaurantproduct_290.jpg', 2, 0, 0, 0, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(291, '0', 0, '[]', 'Pepper Chicken Gravy', 'NON Veg', 239, 0, 5, 9, 239, 239, NULL, 150, 'Pepper Chicken Gravy', '1669200925', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:25 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:25 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_291.jpg', 2, 0, 0, 0, 321, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(292, '0', 0, '[]', 'Special Mutton Gravy', 'NON Veg', 300, 0, 0, 9, 300, 300, NULL, 150, 'Special Mutton Gravy', '1669200907', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:24 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:24 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_292.jpg', 2, 0, 0, 0, 321, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(293, '0', 0, '[]', 'Pani Poori', 'Veg', 60, 0, 0, 9, 60, 60, NULL, 148, 'Pani Poori', '1668792005', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:49 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:49 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_293.jpg', 2, 0, 0, 0, 321, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(294, '0', 0, '[]', 'Baked Paneer Samosa', 'Veg', 99, 0, 0, 9, 99, 99, NULL, 148, 'Baked Paneer Samosa', '1668791992', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:49 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:49 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_294.jpg', 2, 0, 0, 0, 321, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(295, '0', 0, '[]', 'Medu Vada with Sambar', 'Veg', 40, 0, 0, 9, 40, 40, NULL, 148, 'Sambar Vadai', '1668792049', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:50 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:50 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_295.jpg', 2, 0, 0, 0, 321, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(296, '0', 0, '[]', 'Curd Vadai(1 Pcs)', 'Veg', 38, 0, 0, 9, 38, 38, NULL, 148, 'Curd Vadai(1 Pcs)', '1668791976', 0, '', '', '[]', 1, '{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:49 PM\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:49 PM\",\"dayId\":\"single\"}]', 1, 0, 'restaurantproduct_296.jpg', 2, 0, 0, 0, 321, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(297, '0', 0, '[]', 'Non Veg Meals', 'NON Veg', 299, 0, 0, 9, 299, 299, NULL, 143, '', '1677222902', 1, '[{\"groupName\":\"Quantity\",\"step\":1,\"boxType\":\"tabbox\",\"relation\":\"parent\",\"variantbox\":\"Full chciken,half chicken\",\"variant\":[{\"variantId\":\"1\",\"step\":1,\"variantName\":\"Full chciken\",\"selected\":true,\"productId\":\"1\"},{\"variantId\":\"1\",\"step\":1,\"variantName\":\"half chicken\",\"selected\":false,\"productId\":\"1\"}]},{\"groupName\":\"Preparation type\",\"step\":2,\"boxType\":\"tabbox\",\"relation\":\"child\",\"variantbox\":\"boiled,stream\",\"variant\":[{\"variantId\":\"1\",\"step\":2,\"variantName\":\"boiled\",\"selected\":true,\"productId\":\"1\"},{\"variantId\":\"1\",\"step\":2,\"variantName\":\"stream\",\"selected\":false,\"productId\":\"1\"}]}]', '[{\"cname\":\"-Full chciken-boiled\",\"variantPrice\":\"0\",\"salesPrice\":\"299\",\"selected\":true,\"productId\":\"1\",\"variantName\":\"boiled\",\"matchKey\":\"-Full chciken-boiled\"},{\"cname\":\"-Full chciken-stream\",\"variantPrice\":\"100\",\"salesPrice\":\"399\",\"selected\":false,\"productId\":\"1\",\"variantName\":\"stream\",\"matchKey\":\"-Full chciken-stream\"},{\"cname\":\"-half chicken-boiled\",\"variantPrice\":\"20\",\"salesPrice\":\"319\",\"selected\":false,\"productId\":\"1\",\"variantName\":\"boiled\",\"matchKey\":\"-half chicken-boiled\"},{\"cname\":\"-half chicken-stream\",\"variantPrice\":\"0\",\"salesPrice\":\"299\",\"selected\":false,\"productId\":\"1\",\"variantName\":\"stream\",\"matchKey\":\"-half chicken-stream\"}]', '[{\"name\":\"addon\",\"product_id\":297,\"addon\":[{\"addon_id\":\"20\",\"product_id\":297,\"name\":\"Addon1\",\"price\":\"10\",\"type\":\"2\",\"foodType\":\"Veg\",\"status\":true},{\"addon_id\":\"21\",\"product_id\":297,\"name\":\"Addon2\",\"price\":\"100\",\"type\":\"2\",\"foodType\":\"Veg\",\"status\":true}],\"vendor\":\"324\",\"date\":1677222902}]', 2, '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"3:22 PM\"}]', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"3:22 PM\",\"dayId\":\"all\"}]', 1, 0, 'restaurantproduct_297.jpg', 2, 0, 0, 0, 324, NULL, '{\"variant\":\"Quantity,Preparation type\",\"combination_count\":\"4\",\"default_varaint\":\",Full chciken,boiled\",\"addon\":\",addon\"}', 93),
(298, '0', 0, '[]', 'Chilli Parotta', 'Veg', 138, 0, 1, 9, 138, 138, NULL, 146, 'A hearty combo of chilli parotta accompanied by onion raitha.', '1668077251', 0, '', '', '[]', 2, '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"8:11 PM\"}]', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"8:11 PM\",\"dayId\":\"all\"}]', 1, 0, 'restaurantproduct_298.jpg', 2, 0, 0, 0, 324, NULL, '{\"variant\":\"\",\"combination_count\":\"\",\"default_varaint\":\"\",\"addon\":\"\"}', 93),
(299, '0', 0, '[]', 'Mutton chettinad soup', 'NON Veg', 150, 0, 1, 9, 150, 150, NULL, 138, '', '1677148675', 1, '[{\"groupName\":\"Quantity\",\"step\":1,\"boxType\":\"tabbox\",\"relation\":\"parent\",\"variantbox\":\"6 inch,7 inch\",\"variant\":[{\"variantId\":\"1\",\"step\":1,\"variantName\":\"6 inch\",\"selected\":true,\"productId\":\"1\"},{\"variantId\":\"1\",\"step\":1,\"variantName\":\"7 inch\",\"selected\":false,\"productId\":\"1\"}]},{\"groupName\":\"Size\",\"step\":2,\"boxType\":\"tabbox\",\"relation\":\"child\",\"variantbox\":\"6\",\"variant\":[{\"variantId\":\"1\",\"step\":2,\"variantName\":\"6\",\"selected\":true,\"productId\":\"1\"}]}]', '[{\"cname\":\"-6 inch-6\",\"variantPrice\":\"0\",\"salesPrice\":\"150\",\"selected\":true,\"productId\":\"1\",\"variantName\":\"6\",\"matchKey\":\"-6 inch-6\"},{\"cname\":\"-7 inch-6\",\"variantPrice\":\"0\",\"salesPrice\":\"150\",\"selected\":false,\"productId\":\"1\",\"variantName\":\"6\",\"matchKey\":\"-7 inch-6\"}]', '[]', 2, '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"9:17 PM\"}]', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"9:17 PM\",\"dayId\":\"all\"}]', 1, 1, 'restaurantproduct_299.jpg', 2, 0, 0, 1, 324, NULL, '{\"variant\":\"Quantity,Size\",\"combination_count\":\"2\",\"default_varaint\":\",6 inch,6\",\"addon\":\"\"}', 147);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale`
--

CREATE TABLE `tbl_sale` (
  `sale_id` int(11) NOT NULL,
  `sale_code` longtext DEFAULT NULL,
  `buyer` longtext DEFAULT NULL,
  `product_details` longtext DEFAULT NULL,
  `shipping_address` longtext DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `shipping` longtext DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext DEFAULT NULL,
  `payment_timestamp` longtext DEFAULT NULL,
  `item_total` longtext DEFAULT NULL,
  `grand_total` longtext DEFAULT NULL,
  `sale_datetime` longtext DEFAULT NULL,
  `delivary_datetime` longtext DEFAULT NULL,
  `delivery_status` longtext DEFAULT NULL,
  `exp_delivertime` int(11) DEFAULT 0,
  `viewed` longtext DEFAULT NULL,
  `delivery_assigned` int(15) DEFAULT NULL,
  `delivery_state` varchar(20) DEFAULT NULL,
  `deliver_assignedtime` varchar(20) DEFAULT NULL,
  `completed_timestamp` int(25) NOT NULL DEFAULT 0,
  `status` varchar(30) DEFAULT NULL,
  `otp` varchar(20) DEFAULT NULL,
  `delivery_slot` varchar(40) DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `driver_charge` varchar(11) NOT NULL,
  `order_type` int(5) DEFAULT NULL,
  `focus_id` int(11) DEFAULT NULL,
  `p_image` varchar(50) DEFAULT NULL,
  `rating` int(4) DEFAULT 0,
  `driver_rating` int(11) NOT NULL DEFAULT 0,
  `instruction` longtext DEFAULT NULL,
  `delivery_instruction` varchar(150) DEFAULT NULL,
  `zone_id` int(11) DEFAULT 0,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_details` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saved_items`
--

CREATE TABLE `tbl_saved_items` (
  `saved_items_id` int(11) NOT NULL,
  `item_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(18,2) DEFAULT 0.00,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `unit_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_rates_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_tax_rate` decimal(18,2) DEFAULT 0.00,
  `item_tax_total` decimal(18,2) DEFAULT 0.00,
  `quantity` decimal(18,2) DEFAULT 0.00,
  `total_cost` decimal(18,2) DEFAULT 0.00,
  `hsn_code` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sent`
--

CREATE TABLE `tbl_sent` (
  `sent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` text DEFAULT NULL,
  `attach_file_path` text DEFAULT NULL,
  `attach_filename` text DEFAULT NULL,
  `message_time` datetime NOT NULL,
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sessions`
--

CREATE TABLE `tbl_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sessions`
--

INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0621a7b798477df896371c2866b7365b830e631b', '192.168.1.3', 1677686212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363231323b),
('11ab5a155d825bd2d8e8d7c7146c5825ea978ea0', '::1', 1677687192, ''),
('171176e3a771d9788f5b5a4192af9b6ea4add71c', '192.168.1.6', 1677686187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138373b),
('1f429fef0d9c6291c9d78a21e613e6087499a1a1', '192.168.1.6', 1677686185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138353b),
('245c6ec390e34c309a1c2ba41b8f4f58f1c2f7b9', '::1', 1677689466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638393431393b6d656e755f6163746976655f69647c613a323a7b693a303b733a323a223238223b693a313b733a313a2230223b7d757365725f6e616d657c733a353a2261646d696e223b656d61696c7c733a32323a2262616c616a6933306e73697440676d61696c2e636f6d223b6e616d657c733a353a2241646d696e223b70686f746f7c733a31343a22656d706c6f7965655f312e706e67223b64657369676e6174696f6e735f69647c733a313a2230223b757365725f69647c733a313a2231223b6c6173745f6c6f67696e7c733a31393a22323032332d30332d30312031343a32393a3130223b6f6e6c696e655f74696d657c693a313637373638393432353b6c6f67676564696e7c623a313b757365725f747970657c733a313a2231223b757365725f666c61677c693a313b646972656374696f6e7c733a333a226c7472223b6c6f676765645f747970657c733a353a2261646d696e223b7a6f6e655f69647c4e3b75726c7c733a31353a2261646d696e2f64617368626f617264223b757365725f726f6c6c7c613a36363a7b693a303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a313a2231223b733a353a226c6162656c223b733a393a2264617368626f617264223b733a343a226c696e6b223b733a31353a2261646d696e2f64617368626f617264223b733a343a2269636f6e223b733a31313a2269636f6e2d44696e6e6572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30352031363a34353a3437223b733a373a2273656374696f6e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b7d693a313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a313a2237223b733a353a226c6162656c223b733a353a226974656d73223b733a343a226c696e6b223b733a32323a2261646d696e2f6974656d732f6974656d735f6c697374223b733a343a2269636f6e223b733a31303a2266612066612d63756265223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3136223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2231223b7d693a323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a313a2238223b733a353a226c6162656c223b733a31313a226465706172746d656e7473223b733a343a226c696e6b223b733a32363a2261646d696e2f6465706172746d656e74732f696e6465782f3237223b733a343a2269636f6e223b733a31323a2269636f6e2d4c696272617279223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223238223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2239223b733a363a22737461747573223b733a313a2231223b7d693a333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223130223b733a353a226c6162656c223b733a393a2270756c6c2d646f776e223b733a343a226c696e6b223b733a303a22223b733a343a2269636f6e223b733a303a22223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3236223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2230223b7d693a343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223131223b733a353a226c6162656c223b733a383a2253657474696e6773223b733a343a226c696e6b223b733a32313a2261646d696e2f73657474696e67732f73797374656d223b733a343a2269636f6e223b733a32333a2266612066612d66772066612d696e666f2d636972636c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223330223b733a343a2274696d65223b733a31393a22323032322d31312d30342030393a34333a3134223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223132223b733a353a226c6162656c223b733a31353a2273797374656d5f73657474696e6773223b733a343a226c696e6b223b733a32313a2261646d696e2f73657474696e67732f73797374656d223b733a343a2269636f6e223b733a31393a2266612066612d66772066612d6465736b746f70223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3332223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223133223b733a353a226c6162656c223b733a31343a22656d61696c5f73657474696e6773223b733a343a226c696e6b223b733a32303a2261646d696e2f73657474696e67732f656d61696c223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d656e76656c6f7065223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3335223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223134223b733a353a226c6162656c223b733a31353a22656d61696c5f74656d706c61746573223b733a343a226c696e6b223b733a32343a2261646d696e2f73657474696e67732f74656d706c61746573223b733a343a2269636f6e223b733a32353a2266612066612d66772066612d70656e63696c2d737175617265223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3430223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223135223b733a353a226c6162656c223b733a31373a22656d61696c5f696e746567726174696f6e223b733a343a226c696e6b223b733a33323a2261646d696e2f73657474696e67732f656d61696c5f696e746567726174696f6e223b733a343a2269636f6e223b733a32323a2266612066612d66772066612d656e76656c6f70652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3433223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223136223b733a353a226c6162656c223b733a31363a227061796d656e745f73657474696e6773223b733a343a226c696e6b223b733a32333a2261646d696e2f73657474696e67732f7061796d656e7473223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d646f6c6c6172223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3436223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223137223b733a353a226c6162656c223b733a31353a226d656e755f616c6c6f636174696f6e223b733a343a226c696e6b223b733a33303a2261646d696e2f73657474696e67732f6d656e755f616c6c6f636174696f6e223b733a343a2269636f6e223b733a32323a2266612066612d66772066612066612d636f6d70617373223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3530223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223138223b733a353a226c6162656c223b733a31323a226e6f74696669636174696f6e223b733a343a226c696e6b223b733a32373a2261646d696e2f73657474696e67732f6e6f74696669636174696f6e223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d62656c6c2d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3534223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223139223b733a353a226c6162656c223b733a31383a22656d61696c5f6e6f74696669636174696f6e223b733a343a226c696e6b223b733a33333a2261646d696e2f73657474696e67732f656d61696c5f6e6f74696669636174696f6e223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d62656c6c2d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3538223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223230223b733a353a226c6162656c223b733a31363a2247656e6572616c2053657474696e6773223b733a343a226c696e6b223b733a31353a2261646d696e2f73657474696e67732f223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d6461746162617365223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30382031333a34323a3136223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a31343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223231223b733a353a226c6162656c223b733a31323a227472616e736c6174696f6e73223b733a343a226c696e6b223b733a32373a2261646d696e2f73657474696e67732f7472616e736c6174696f6e73223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d6c616e6775616765223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3033223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223232223b733a353a226c6162656c223b733a31333a2273797374656d5f757064617465223b733a343a226c696e6b223b733a32383a2261646d696e2f73657474696e67732f73797374656d5f757064617465223b733a343a2269636f6e223b733a32373a2266612066612d66772066612d70656e63696c2d7371756172652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3035223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223233223b733a353a226c6162656c223b733a31383a2264617368626f6172645f73657474696e6773223b733a343a226c696e6b223b733a32343a2261646d696e2f73657474696e67732f64617368626f617264223b733a343a2269636f6e223b733a32313a2266612066612d66772066612d64617368626f617264223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323032322d31302d30322031323a32353a3237223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2232223b7d693a31373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223234223b733a353a226c6162656c223b733a31303a22616c6c6f7765645f6970223b733a343a226c696e6b223b733a32353a2261646d696e2f73657474696e67732f616c6c6f7765645f6970223b733a343a2269636f6e223b733a31323a2266612066612d736572766572223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3131223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223235223b733a353a226c6162656c223b733a383a22737570706c696572223b733a343a226c696e6b223b733a31343a2261646d696e2f737570706c696572223b733a343a2269636f6e223b733a31343a2269636f6e2d627269656663617365223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3134223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2231223b7d693a31393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223236223b733a353a226c6162656c223b733a31363a2270757263686173655f7061796d656e74223b733a343a226c696e6b223b733a32373a2261646d696e2f70757263686173652f616c6c5f7061796d656e7473223b733a343a2269636f6e223b733a31363a2269636f6e2d6372656469742d63617264223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3136223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2231223b7d693a32303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223237223b733a353a226c6162656c223b733a333a22504f53223b733a343a226c696e6b223b733a393a2261646d696e2f706f73223b733a343a2269636f6e223b733a31323a2269636f6e2d5072696e746572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33373a3435223b733a373a2273656374696f6e223b733a313a2232223b733a363a22737461747573223b733a313a2230223b7d693a32313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223238223b733a353a226c6162656c223b733a343a225a6f6e65223b733a343a226c696e6b223b733a31303a2261646d696e2f7a6f6e65223b733a343a2269636f6e223b733a31323a2269636f6e2d4d61726b657231223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31302d30352031363a35333a3330223b733a373a2273656374696f6e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b7d693a32323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223239223b733a353a226c6162656c223b733a31333a22437573746f6d6572206c697374223b733a343a226c696e6b223b733a31343a2261646d696e2f637573746f6d6572223b733a343a2269636f6e223b733a31333a2269636f6e2d4164642d75736572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2234223b733a363a22737461747573223b733a313a2231223b7d693a32333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223330223b733a353a226c6162656c223b733a31373a2250757368204e6f74696669636174696f6e223b733a343a226c696e6b223b733a32333a2261646d696e2f707573685f6e6f74696669636174696f6e223b733a343a2269636f6e223b733a31383a2269636f6e2d4e6f74696669636174696f6e20223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223234223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2237223b733a363a22737461747573223b733a313a2231223b7d693a32343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223331223b733a353a226c6162656c223b733a363a224f7264657273223b733a343a226c696e6b223b733a31323a2261646d696e2f6f7264657273223b733a343a2269636f6e223b733a393a2269636f6e2d426f7831223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032322d31302d30382031333a32383a3533223b733a373a2273656374696f6e223b733a313a2232223b733a363a22737461747573223b733a313a2231223b7d693a32353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223332223b733a353a226c6162656c223b733a363a2256656e646f72223b733a343a226c696e6b223b733a31323a2261646d696e2f76656e646f72223b733a343a2269636f6e223b733a31333a2269636f6e2d5468756e64657231223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223138223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2236223b733a363a22737461747573223b733a313a2231223b7d693a32363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223333223b733a353a226c6162656c223b733a343a224974656d223b733a343a226c696e6b223b733a31303a2261646d696e2f6974656d223b733a343a2269636f6e223b733a31313a2269636f6e2d44696e6e6572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2237223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a32373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223335223b733a353a226c6162656c223b733a383a2243617465676f7279223b733a343a226c696e6b223b733a31343a2261646d696e2f63617465676f7279223b733a343a2269636f6e223b733a31373a2269636f6e2d526f6c6c696e672d70696e20223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a32383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223336223b733a353a226c6162656c223b733a31313a2253756263617465676f7279223b733a343a226c696e6b223b733a31373a2261646d696e2f73756263617465676f7279223b733a343a2269636f6e223b733a31333a2269636f6e2d536175636570616e223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a32393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223337223b733a353a226c6162656c223b733a353a224164646f6e223b733a343a226c696e6b223b733a31313a2261646d696e2f6164646f6e223b733a343a2269636f6e223b733a31353a2269636f6e2d466f726b2d73706f6f6e223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2238223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a33303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223338223b733a353a226c6162656c223b733a333a22546178223b733a343a226c696e6b223b733a393a2261646d696e2f746178223b733a343a2269636f6e223b733a32323a2269636f6e2d4c61796f75742d686f72697a6f6e74616c223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223333223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a33313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223430223b733a353a226c6162656c223b733a343a226d656e75223b733a343a226c696e6b223b733a31383a2261646d696e2f6974656d63617465676f7279223b733a343a2269636f6e223b733a31353a2269636f6e2d43686172742d62617231223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a33323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223431223b733a353a226c6162656c223b733a31313a2253686f7020726576696577223b733a343a226c696e6b223b733a31393a2261646d696e2f76656e646f722f726576696577223b733a343a2269636f6e223b733a393a2269636f6e2d53746172223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223231223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2236223b733a363a22737461747573223b733a313a2231223b7d693a33333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223432223b733a353a226c6162656c223b733a31363a22437573746f6d65722057616c6c65740a223b733a343a226c696e6b223b733a33333a2261646d696e2f637573746f6d65722f77616c6c65745f7472616e73616374696f6e223b733a343a2269636f6e223b733a31313a2269636f6e2d507269636531223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223132223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2234223b733a363a22737461747573223b733a313a2231223b7d693a33343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223434223b733a353a226c6162656c223b733a363a2242616e6e6572223b733a343a226c696e6b223b733a31383a2261646d696e2f62616e6e65726d6173746572223b733a343a2269636f6e223b733a31323a2269636f6e2d446973706c6179223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223232223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2237223b733a363a22737461747573223b733a313a2231223b7d693a33353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223435223b733a353a226c6162656c223b733a373a22436f75706f6e73223b733a343a226c696e6b223b733a31323a2261646d696e2f636f75706f6e223b733a343a2269636f6e223b733a31313a2269636f6e2d5469636b6574223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223233223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2237223b733a363a22737461747573223b733a313a2231223b7d693a33363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223437223b733a353a226c6162656c223b733a32333a2252657374617572616e7420536574746c656d656e740d0a223b733a343a226c696e6b223b733a31363a2261646d696e2f736574746c656d656e74223b733a343a2269636f6e223b733a31363a2269636f6e2d4372656469742d63617264223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223139223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2236223b733a363a22737461747573223b733a313a2231223b7d693a33373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223438223b733a353a226c6162656c223b733a363a22447269766572223b733a343a226c696e6b223b733a31323a2261646d696e2f647269766572223b733a343a2269636f6e223b733a31363a2269636f6e2d536869656c642d75736572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223134223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a33383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223439223b733a353a226c6162656c223b733a31393a2244726976657220496e737472756374696f6e73223b733a343a226c696e6b223b733a32353a2261646d696e2f6472697665725f696e737472756374696f6e73223b733a343a2269636f6e223b733a31343a2269636f6e2d436c6970626f617264223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223137223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a33393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223530223b733a353a226c6162656c223b733a343a2254697073223b733a343a226c696e6b223b733a31303a2261646d696e2f74697073223b733a343a2269636f6e223b733a373a2269636f6e2d4d43223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223135223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a34303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223531223b733a353a226c6162656c223b733a373a2247616c6c657279223b733a343a226c696e6b223b733a31333a2261646d696e2f67616c6c657279223b733a343a2269636f6e223b733a31303a2269636f6e2d496d616765223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223334223b733a343a2274696d65223b733a31393a22323032322d31312d30342031333a33333a3131223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a34313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223532223b733a353a226c6162656c223b733a383a2243757272656e6379223b733a343a226c696e6b223b733a31343a2261646d696e2f63757272656e6379223b733a343a2269636f6e223b733a31303a2269636f6e2d4d6f6e6579223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223331223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a34323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223533223b733a353a226c6162656c223b733a31333a2244656c69766572792046656573223b733a343a226c696e6b223b733a31383a2261646d696e2f64656c697665727966656573223b733a343a2269636f6e223b733a31323a2269636f6e2d426974636f696e223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223136223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a34333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223534223b733a353a226c6162656c223b733a31323a224361736820696e2048616e64223b733a343a226c696e6b223b733a31383a2261646d696e2f636173685f6f6e5f68616e64223b733a343a2269636f6e223b733a31303a2269636f6e2d4d6f6e6579223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223230223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2236223b733a363a22737461747573223b733a313a2231223b7d693a34343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223535223b733a353a226c6162656c223b733a393a22506f73206f72646572223b733a343a226c696e6b223b733a333a22736466223b733a343a2269636f6e223b733a323a227765223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2232223b733a363a22737461747573223b733a313a2230223b7d693a34353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223536223b733a353a226c6162656c223b733a31383a22437573746f6d204164646f6e2067726f7570223b733a343a226c696e6b223b733a32343a2261646d696e2f437573746f6d5f6164646f6e5f67726f7570223b733a343a2269636f6e223b733a31313a2269636f6e2d436865657365223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2239223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a34363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223537223b733a353a226c6162656c223b733a32303a22437573746f6d2056617269616e742067726f7570223b733a343a226c696e6b223b733a32363a2261646d696e2f437573746f6d5f76617269616e745f67726f7570223b733a343a2269636f6e223b733a31383a2269636f6e2d476c6173732d6d617274696e69223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223130223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a34373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223538223b733a353a226c6162656c223b733a31343a22436c65616e204461746162617365223b733a343a226c696e6b223b733a31343a2261646d696e2f72657365745f6462223b733a343a2269636f6e223b733a31343a2269636f6e2d457175616c697a6572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223332223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a34383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223630223b733a353a226c6162656c223b733a31323a2253616c6573207265706f7274223b733a343a226c696e6b223b733a32353a2261646d696e2f7265706f72742f73616c65735f7265706f7274223b733a343a2269636f6e223b733a31343a2269636f6e2d43686172742d626172223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223235223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2238223b733a363a22737461747573223b733a313a2231223b7d693a34393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223631223b733a353a226c6162656c223b733a31313a224974656d207265706f7274223b733a343a226c696e6b223b733a32343a2261646d696e2f7265706f72742f6974656d5f7265706f7274223b733a343a2269636f6e223b733a31373a2269636f6e2d446961676e6f737469637320223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223236223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2238223b733a363a22737461747573223b733a313a2231223b7d693a35303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223632223b733a353a226c6162656c223b733a393a22416e616c7974696373223b733a343a226c696e6b223b733a323a227366223b733a343a2269636f6e223b733a31313a2269636f6e2d506978656c73223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a31313a3134223b733a373a2273656374696f6e223b733a313a2238223b733a363a22737461747573223b733a313a2230223b7d693a35313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223633223b733a353a226c6162656c223b733a363a22506f6c696379223b733a343a226c696e6b223b733a31323a2261646d696e2f706f6c696379223b733a343a2269636f6e223b733a393a2269636f6e2d45646974223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223237223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2238223b733a363a22737461747573223b733a313a2231223b7d693a35323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223634223b733a353a226c6162656c223b733a363a22506c61636564223b733a343a226c696e6b223b733a32353a2261646d696e2f6f72646572732f696e6465782f506c61636564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032332d30322d32332031303a35363a3436223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223635223b733a353a226c6162656c223b733a383a224163636570746564223b733a343a226c696e6b223b733a32373a2261646d696e2f6f72646572732f696e6465782f4163636570746564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3039223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223636223b733a353a226c6162656c223b733a31303a2250726f63657373696e67223b733a343a226c696e6b223b733a32393a2261646d696e2f6f72646572732f696e6465782f50726f63657373696e67223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3133223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223637223b733a353a226c6162656c223b733a353a225265616479223b733a343a226c696e6b223b733a32343a2261646d696e2f6f72646572732f696e6465782f5265616479223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3137223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223638223b733a353a226c6162656c223b733a373a2253686970706564223b733a343a226c696e6b223b733a32363a2261646d696e2f6f72646572732f696e6465782f53686970706564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3231223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223639223b733a353a226c6162656c223b733a393a22436f6d706c65746564223b733a343a226c696e6b223b733a32383a2261646d696e2f6f72646572732f696e6465782f436f6d706c65746564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3238223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223730223b733a353a226c6162656c223b733a393a2243616e63656c6c6564223b733a343a226c696e6b223b733a32383a2261646d696e2f6f72646572732f696e6465782f43616e63656c6c6564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2237223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3334223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223731223b733a353a226c6162656c223b733a333a22416c6c223b733a343a226c696e6b223b733a32323a2261646d696e2f6f72646572732f696e6465782f416c6c223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3339223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a36303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223732223b733a353a226c6162656c223b733a32303a224c616e64696e67706167652053657474696e6773223b733a343a226c696e6b223b733a32363a2261646d696e2f6c616e64696e67706167655f73657474696e6773223b733a343a2269636f6e223b733a32333a2266612066612d66772066612d696e666f2d636972636c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223239223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a36313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223733223b733a353a226c6162656c223b733a363a22526566756e64223b733a343a226c696e6b223b733a32353a2261646d696e2f6f72646572732f696e6465782f526566756e64223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2238223b733a343a2274696d65223b733a31393a22323032332d30322d32332031323a31303a3234223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a36323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223734223b733a353a226c6162656c223b733a393a225363686564756c6564223b733a343a226c696e6b223b733a32383a2261646d696e2f6f72646572732f696e6465782f7363686564756c6564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2239223b733a343a2274696d65223b733a31393a22323032332d30322d32332031323a31303a3234223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a36333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223735223b733a353a226c6162656c223b733a383a2254616b6561776179223b733a343a226c696e6b223b733a32373a2261646d696e2f6f72646572732f696e6465782f74616b6561776179223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a323a223130223b733a343a2274696d65223b733a31393a22323032332d30322d32332031323a31323a3331223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a36343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223736223b733a353a226c6162656c223b733a31323a2256656869636c652054797065223b733a343a226c696e6b223b733a31383a2261646d696e2f76656869636c655f74797065223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223133223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33333a3138223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a36353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223737223b733a353a226c6162656c223b733a383a2243616d706169676e223b733a343a226c696e6b223b733a31343a2261646d696e2f63616d706169676e223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33383a3035223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2230223b7d7d),
('24a7f648452c62074413c6e13f31741f81e08997', '192.168.1.6', 1677686298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363239383b),
('293a7ab2e8d11ed83757d39a5dadd1949507028c', '192.168.1.6', 1677685740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638353734303b),
('2c10c4c8394dca1b3a4d9f3d00eb8a698bade47e', '192.168.1.6', 1677686176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137363b),
('2c169c6747aeca4cae9dff5fca1d2c63a0dd2742', '192.168.1.6', 1677686168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363136383b),
('2e9f7a5f4a20ad14b0c75da24c6ab906e3eb348d', '192.168.1.6', 1677686059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363035393b),
('305a6968b61fa2de00fa8116447e9734f907ee92', '192.168.1.6', 1677686066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363036363b),
('30fee9ddf5d749eefee5eac466626348de9971c6', '192.168.1.6', 1677686172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137323b),
('418508f28acd7ff3d24331f0ff7156f7cbaee6f6', '192.168.1.6', 1677686374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363337343b),
('42725070edaaba3fd18ec15f5ba31df3f8baad58', '192.168.1.6', 1677686281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363238313b),
('466abe24c22d4625df2a40b8e03cb34fba617381', '192.168.1.6', 1677686187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138363b),
('4791381693ee47955f6c7ffe3e24ce7ecfe8e69b', '192.168.1.6', 1677686193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363139333b),
('5efe832a5f60382990e42ba492ca118ebbbb56ad', '192.168.1.6', 1677686261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363236313b),
('61fcf6618df9bf8ff9ba39c4c00851b8344bc8d4', '192.168.1.6', 1677686188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138383b),
('70688452d868deb7919d9166aa201657ef58aeac', '192.168.1.6', 1677685740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638353734303b),
('7112d51a5842967606b9bfceb5a766b5aa76d0b9', '192.168.1.6', 1677686171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137313b),
('78877e914fdbd2f06f1053af0252c803186f1999', '192.168.1.6', 1677686168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363136383b);
INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('7fca71496bc813a7effb4cb810949dccfc418f0d', '::1', 1677689463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373637363833313b6d656e755f6163746976655f69647c613a323a7b693a303b733a313a2231223b693a313b733a313a2230223b7d757365725f6e616d657c733a353a2261646d696e223b656d61696c7c733a32323a2262616c616a6933306e73697440676d61696c2e636f6d223b6e616d657c733a353a2241646d696e223b70686f746f7c733a31343a22656d706c6f7965655f312e706e67223b64657369676e6174696f6e735f69647c733a313a2230223b757365725f69647c733a313a2231223b6c6173745f6c6f67696e7c733a31393a22323032332d30322d32332031353a34323a3030223b6f6e6c696e655f74696d657c693a313637373635313539303b6c6f67676564696e7c623a313b757365725f747970657c733a313a2231223b757365725f666c61677c693a313b646972656374696f6e7c733a333a226c7472223b6c6f676765645f747970657c733a353a2261646d696e223b7a6f6e655f69647c4e3b75726c7c733a31353a2261646d696e2f64617368626f617264223b757365725f726f6c6c7c613a36363a7b693a303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a313a2231223b733a353a226c6162656c223b733a393a2264617368626f617264223b733a343a226c696e6b223b733a31353a2261646d696e2f64617368626f617264223b733a343a2269636f6e223b733a31313a2269636f6e2d44696e6e6572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30352031363a34353a3437223b733a373a2273656374696f6e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b7d693a313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a313a2237223b733a353a226c6162656c223b733a353a226974656d73223b733a343a226c696e6b223b733a32323a2261646d696e2f6974656d732f6974656d735f6c697374223b733a343a2269636f6e223b733a31303a2266612066612d63756265223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3136223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2231223b7d693a323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a313a2238223b733a353a226c6162656c223b733a31313a226465706172746d656e7473223b733a343a226c696e6b223b733a32363a2261646d696e2f6465706172746d656e74732f696e6465782f3237223b733a343a2269636f6e223b733a31323a2269636f6e2d4c696272617279223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223238223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2239223b733a363a22737461747573223b733a313a2231223b7d693a333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223130223b733a353a226c6162656c223b733a393a2270756c6c2d646f776e223b733a343a226c696e6b223b733a303a22223b733a343a2269636f6e223b733a303a22223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3236223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2230223b7d693a343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223131223b733a353a226c6162656c223b733a383a2253657474696e6773223b733a343a226c696e6b223b733a32313a2261646d696e2f73657474696e67732f73797374656d223b733a343a2269636f6e223b733a32333a2266612066612d66772066612d696e666f2d636972636c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223330223b733a343a2274696d65223b733a31393a22323032322d31312d30342030393a34333a3134223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223132223b733a353a226c6162656c223b733a31353a2273797374656d5f73657474696e6773223b733a343a226c696e6b223b733a32313a2261646d696e2f73657474696e67732f73797374656d223b733a343a2269636f6e223b733a31393a2266612066612d66772066612d6465736b746f70223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3332223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223133223b733a353a226c6162656c223b733a31343a22656d61696c5f73657474696e6773223b733a343a226c696e6b223b733a32303a2261646d696e2f73657474696e67732f656d61696c223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d656e76656c6f7065223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3335223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223134223b733a353a226c6162656c223b733a31353a22656d61696c5f74656d706c61746573223b733a343a226c696e6b223b733a32343a2261646d696e2f73657474696e67732f74656d706c61746573223b733a343a2269636f6e223b733a32353a2266612066612d66772066612d70656e63696c2d737175617265223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3430223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223135223b733a353a226c6162656c223b733a31373a22656d61696c5f696e746567726174696f6e223b733a343a226c696e6b223b733a33323a2261646d696e2f73657474696e67732f656d61696c5f696e746567726174696f6e223b733a343a2269636f6e223b733a32323a2266612066612d66772066612d656e76656c6f70652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3433223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223136223b733a353a226c6162656c223b733a31363a227061796d656e745f73657474696e6773223b733a343a226c696e6b223b733a32333a2261646d696e2f73657474696e67732f7061796d656e7473223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d646f6c6c6172223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3436223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223137223b733a353a226c6162656c223b733a31353a226d656e755f616c6c6f636174696f6e223b733a343a226c696e6b223b733a33303a2261646d696e2f73657474696e67732f6d656e755f616c6c6f636174696f6e223b733a343a2269636f6e223b733a32323a2266612066612d66772066612066612d636f6d70617373223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3530223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223138223b733a353a226c6162656c223b733a31323a226e6f74696669636174696f6e223b733a343a226c696e6b223b733a32373a2261646d696e2f73657474696e67732f6e6f74696669636174696f6e223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d62656c6c2d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3534223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223139223b733a353a226c6162656c223b733a31383a22656d61696c5f6e6f74696669636174696f6e223b733a343a226c696e6b223b733a33333a2261646d696e2f73657474696e67732f656d61696c5f6e6f74696669636174696f6e223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d62656c6c2d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33383a3538223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223230223b733a353a226c6162656c223b733a31363a2247656e6572616c2053657474696e6773223b733a343a226c696e6b223b733a31353a2261646d696e2f73657474696e67732f223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d6461746162617365223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30382031333a34323a3136223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a31343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223231223b733a353a226c6162656c223b733a31323a227472616e736c6174696f6e73223b733a343a226c696e6b223b733a32373a2261646d696e2f73657474696e67732f7472616e736c6174696f6e73223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d6c616e6775616765223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3033223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223232223b733a353a226c6162656c223b733a31333a2273797374656d5f757064617465223b733a343a226c696e6b223b733a32383a2261646d696e2f73657474696e67732f73797374656d5f757064617465223b733a343a2269636f6e223b733a32373a2266612066612d66772066612d70656e63696c2d7371756172652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3035223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223233223b733a353a226c6162656c223b733a31383a2264617368626f6172645f73657474696e6773223b733a343a226c696e6b223b733a32343a2261646d696e2f73657474696e67732f64617368626f617264223b733a343a2269636f6e223b733a32313a2266612066612d66772066612d64617368626f617264223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323032322d31302d30322031323a32353a3237223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2232223b7d693a31373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223234223b733a353a226c6162656c223b733a31303a22616c6c6f7765645f6970223b733a343a226c696e6b223b733a32353a2261646d696e2f73657474696e67732f616c6c6f7765645f6970223b733a343a2269636f6e223b733a31323a2266612066612d736572766572223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3131223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2232223b7d693a31383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223235223b733a353a226c6162656c223b733a383a22737570706c696572223b733a343a226c696e6b223b733a31343a2261646d696e2f737570706c696572223b733a343a2269636f6e223b733a31343a2269636f6e2d627269656663617365223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3134223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2231223b7d693a31393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223236223b733a353a226c6162656c223b733a31363a2270757263686173655f7061796d656e74223b733a343a226c696e6b223b733a32373a2261646d696e2f70757263686173652f616c6c5f7061796d656e7473223b733a343a2269636f6e223b733a31363a2269636f6e2d6372656469742d63617264223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323032322d31302d30312032313a33393a3136223b733a373a2273656374696f6e223b4e3b733a363a22737461747573223b733a313a2231223b7d693a32303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223237223b733a353a226c6162656c223b733a333a22504f53223b733a343a226c696e6b223b733a393a2261646d696e2f706f73223b733a343a2269636f6e223b733a31323a2269636f6e2d5072696e746572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33373a3435223b733a373a2273656374696f6e223b733a313a2232223b733a363a22737461747573223b733a313a2230223b7d693a32313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223238223b733a353a226c6162656c223b733a343a225a6f6e65223b733a343a226c696e6b223b733a31303a2261646d696e2f7a6f6e65223b733a343a2269636f6e223b733a31323a2269636f6e2d4d61726b657231223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31302d30352031363a35333a3330223b733a373a2273656374696f6e223b733a313a2231223b733a363a22737461747573223b733a313a2231223b7d693a32323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223239223b733a353a226c6162656c223b733a31333a22437573746f6d6572206c697374223b733a343a226c696e6b223b733a31343a2261646d696e2f637573746f6d6572223b733a343a2269636f6e223b733a31333a2269636f6e2d4164642d75736572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2234223b733a363a22737461747573223b733a313a2231223b7d693a32333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223330223b733a353a226c6162656c223b733a31373a2250757368204e6f74696669636174696f6e223b733a343a226c696e6b223b733a32333a2261646d696e2f707573685f6e6f74696669636174696f6e223b733a343a2269636f6e223b733a31383a2269636f6e2d4e6f74696669636174696f6e20223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223234223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2237223b733a363a22737461747573223b733a313a2231223b7d693a32343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223331223b733a353a226c6162656c223b733a363a224f7264657273223b733a343a226c696e6b223b733a31323a2261646d696e2f6f7264657273223b733a343a2269636f6e223b733a393a2269636f6e2d426f7831223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032322d31302d30382031333a32383a3533223b733a373a2273656374696f6e223b733a313a2232223b733a363a22737461747573223b733a313a2231223b7d693a32353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223332223b733a353a226c6162656c223b733a363a2256656e646f72223b733a343a226c696e6b223b733a31323a2261646d696e2f76656e646f72223b733a343a2269636f6e223b733a31333a2269636f6e2d5468756e64657231223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223138223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2236223b733a363a22737461747573223b733a313a2231223b7d693a32363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223333223b733a353a226c6162656c223b733a343a224974656d223b733a343a226c696e6b223b733a31303a2261646d696e2f6974656d223b733a343a2269636f6e223b733a31313a2269636f6e2d44696e6e6572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2237223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a32373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223335223b733a353a226c6162656c223b733a383a2243617465676f7279223b733a343a226c696e6b223b733a31343a2261646d696e2f63617465676f7279223b733a343a2269636f6e223b733a31373a2269636f6e2d526f6c6c696e672d70696e20223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a32383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223336223b733a353a226c6162656c223b733a31313a2253756263617465676f7279223b733a343a226c696e6b223b733a31373a2261646d696e2f73756263617465676f7279223b733a343a2269636f6e223b733a31333a2269636f6e2d536175636570616e223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a32393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223337223b733a353a226c6162656c223b733a353a224164646f6e223b733a343a226c696e6b223b733a31313a2261646d696e2f6164646f6e223b733a343a2269636f6e223b733a31353a2269636f6e2d466f726b2d73706f6f6e223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2238223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a33303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223338223b733a353a226c6162656c223b733a333a22546178223b733a343a226c696e6b223b733a393a2261646d696e2f746178223b733a343a2269636f6e223b733a32323a2269636f6e2d4c61796f75742d686f72697a6f6e74616c223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223333223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a33313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223430223b733a353a226c6162656c223b733a343a226d656e75223b733a343a226c696e6b223b733a31383a2261646d696e2f6974656d63617465676f7279223b733a343a2269636f6e223b733a31353a2269636f6e2d43686172742d62617231223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a33323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223431223b733a353a226c6162656c223b733a31313a2253686f7020726576696577223b733a343a226c696e6b223b733a31393a2261646d696e2f76656e646f722f726576696577223b733a343a2269636f6e223b733a393a2269636f6e2d53746172223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223231223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2236223b733a363a22737461747573223b733a313a2231223b7d693a33333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223432223b733a353a226c6162656c223b733a31363a22437573746f6d65722057616c6c65740a223b733a343a226c696e6b223b733a33333a2261646d696e2f637573746f6d65722f77616c6c65745f7472616e73616374696f6e223b733a343a2269636f6e223b733a31313a2269636f6e2d507269636531223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223132223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2234223b733a363a22737461747573223b733a313a2231223b7d693a33343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223434223b733a353a226c6162656c223b733a363a2242616e6e6572223b733a343a226c696e6b223b733a31383a2261646d696e2f62616e6e65726d6173746572223b733a343a2269636f6e223b733a31323a2269636f6e2d446973706c6179223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223232223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2237223b733a363a22737461747573223b733a313a2231223b7d693a33353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223435223b733a353a226c6162656c223b733a373a22436f75706f6e73223b733a343a226c696e6b223b733a31323a2261646d696e2f636f75706f6e223b733a343a2269636f6e223b733a31313a2269636f6e2d5469636b6574223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223233223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2237223b733a363a22737461747573223b733a313a2231223b7d693a33363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223437223b733a353a226c6162656c223b733a32333a2252657374617572616e7420536574746c656d656e740d0a223b733a343a226c696e6b223b733a31363a2261646d696e2f736574746c656d656e74223b733a343a2269636f6e223b733a31363a2269636f6e2d4372656469742d63617264223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223139223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2236223b733a363a22737461747573223b733a313a2231223b7d693a33373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223438223b733a353a226c6162656c223b733a363a22447269766572223b733a343a226c696e6b223b733a31323a2261646d696e2f647269766572223b733a343a2269636f6e223b733a31363a2269636f6e2d536869656c642d75736572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223134223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a33383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223439223b733a353a226c6162656c223b733a31393a2244726976657220496e737472756374696f6e73223b733a343a226c696e6b223b733a32353a2261646d696e2f6472697665725f696e737472756374696f6e73223b733a343a2269636f6e223b733a31343a2269636f6e2d436c6970626f617264223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223137223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a33393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223530223b733a353a226c6162656c223b733a343a2254697073223b733a343a226c696e6b223b733a31303a2261646d696e2f74697073223b733a343a2269636f6e223b733a373a2269636f6e2d4d43223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223135223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a34303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223531223b733a353a226c6162656c223b733a373a2247616c6c657279223b733a343a226c696e6b223b733a31333a2261646d696e2f67616c6c657279223b733a343a2269636f6e223b733a31303a2269636f6e2d496d616765223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223334223b733a343a2274696d65223b733a31393a22323032322d31312d30342031333a33333a3131223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a34313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223532223b733a353a226c6162656c223b733a383a2243757272656e6379223b733a343a226c696e6b223b733a31343a2261646d696e2f63757272656e6379223b733a343a2269636f6e223b733a31303a2269636f6e2d4d6f6e6579223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223331223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a34323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223533223b733a353a226c6162656c223b733a31333a2244656c69766572792046656573223b733a343a226c696e6b223b733a31383a2261646d696e2f64656c697665727966656573223b733a343a2269636f6e223b733a31323a2269636f6e2d426974636f696e223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223136223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a34333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223534223b733a353a226c6162656c223b733a31323a224361736820696e2048616e64223b733a343a226c696e6b223b733a31383a2261646d696e2f636173685f6f6e5f68616e64223b733a343a2269636f6e223b733a31303a2269636f6e2d4d6f6e6579223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223230223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2236223b733a363a22737461747573223b733a313a2231223b7d693a34343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223535223b733a353a226c6162656c223b733a393a22506f73206f72646572223b733a343a226c696e6b223b733a333a22736466223b733a343a2269636f6e223b733a323a227765223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2232223b733a363a22737461747573223b733a313a2230223b7d693a34353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223536223b733a353a226c6162656c223b733a31383a22437573746f6d204164646f6e2067726f7570223b733a343a226c696e6b223b733a32343a2261646d696e2f437573746f6d5f6164646f6e5f67726f7570223b733a343a2269636f6e223b733a31313a2269636f6e2d436865657365223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2239223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a34363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223537223b733a353a226c6162656c223b733a32303a22437573746f6d2056617269616e742067726f7570223b733a343a226c696e6b223b733a32363a2261646d696e2f437573746f6d5f76617269616e745f67726f7570223b733a343a2269636f6e223b733a31383a2269636f6e2d476c6173732d6d617274696e69223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223130223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2233223b733a363a22737461747573223b733a313a2231223b7d693a34373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223538223b733a353a226c6162656c223b733a31343a22436c65616e204461746162617365223b733a343a226c696e6b223b733a31343a2261646d696e2f72657365745f6462223b733a343a2269636f6e223b733a31343a2269636f6e2d457175616c697a6572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223332223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34313a3532223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a34383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223630223b733a353a226c6162656c223b733a31323a2253616c6573207265706f7274223b733a343a226c696e6b223b733a32353a2261646d696e2f7265706f72742f73616c65735f7265706f7274223b733a343a2269636f6e223b733a31343a2269636f6e2d43686172742d626172223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223235223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2238223b733a363a22737461747573223b733a313a2231223b7d693a34393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223631223b733a353a226c6162656c223b733a31313a224974656d207265706f7274223b733a343a226c696e6b223b733a32343a2261646d696e2f7265706f72742f6974656d5f7265706f7274223b733a343a2269636f6e223b733a31373a2269636f6e2d446961676e6f737469637320223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223236223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2238223b733a363a22737461747573223b733a313a2231223b7d693a35303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223632223b733a353a226c6162656c223b733a393a22416e616c7974696373223b733a343a226c696e6b223b733a323a227366223b733a343a2269636f6e223b733a31313a2269636f6e2d506978656c73223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a31313a3134223b733a373a2273656374696f6e223b733a313a2238223b733a363a22737461747573223b733a313a2230223b7d693a35313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223633223b733a353a226c6162656c223b733a363a22506f6c696379223b733a343a226c696e6b223b733a31323a2261646d696e2f706f6c696379223b733a343a2269636f6e223b733a393a2269636f6e2d45646974223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223237223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a313a2238223b733a363a22737461747573223b733a313a2231223b7d693a35323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223634223b733a353a226c6162656c223b733a363a22506c61636564223b733a343a226c696e6b223b733a32353a2261646d696e2f6f72646572732f696e6465782f506c61636564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032332d30322d32332031303a35363a3436223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223635223b733a353a226c6162656c223b733a383a224163636570746564223b733a343a226c696e6b223b733a32373a2261646d696e2f6f72646572732f696e6465782f4163636570746564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3039223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223636223b733a353a226c6162656c223b733a31303a2250726f63657373696e67223b733a343a226c696e6b223b733a32393a2261646d696e2f6f72646572732f696e6465782f50726f63657373696e67223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3133223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223637223b733a353a226c6162656c223b733a353a225265616479223b733a343a226c696e6b223b733a32343a2261646d696e2f6f72646572732f696e6465782f5265616479223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3137223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35363b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223638223b733a353a226c6162656c223b733a373a2253686970706564223b733a343a226c696e6b223b733a32363a2261646d696e2f6f72646572732f696e6465782f53686970706564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3231223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35373b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223639223b733a353a226c6162656c223b733a393a22436f6d706c65746564223b733a343a226c696e6b223b733a32383a2261646d696e2f6f72646572732f696e6465782f436f6d706c65746564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3238223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35383b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223730223b733a353a226c6162656c223b733a393a2243616e63656c6c6564223b733a343a226c696e6b223b733a32383a2261646d696e2f6f72646572732f696e6465782f43616e63656c6c6564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2237223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3334223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a35393b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223731223b733a353a226c6162656c223b733a333a22416c6c223b733a343a226c696e6b223b733a32323a2261646d696e2f6f72646572732f696e6465782f416c6c223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31312d30322031303a34323a3339223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a36303b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223732223b733a353a226c6162656c223b733a32303a224c616e64696e67706167652053657474696e6773223b733a343a226c696e6b223b733a32363a2261646d696e2f6c616e64696e67706167655f73657474696e6773223b733a343a2269636f6e223b733a32333a2266612066612d66772066612d696e666f2d636972636c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223239223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33313a3437223b733a373a2273656374696f6e223b733a323a223130223b733a363a22737461747573223b733a313a2231223b7d693a36313b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223733223b733a353a226c6162656c223b733a363a22526566756e64223b733a343a226c696e6b223b733a32353a2261646d696e2f6f72646572732f696e6465782f526566756e64223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2238223b733a343a2274696d65223b733a31393a22323032332d30322d32332031323a31303a3234223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a36323b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223734223b733a353a226c6162656c223b733a393a225363686564756c6564223b733a343a226c696e6b223b733a32383a2261646d696e2f6f72646572732f696e6465782f7363686564756c6564223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a313a2239223b733a343a2274696d65223b733a31393a22323032332d30322d32332031323a31303a3234223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a36333b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223735223b733a353a226c6162656c223b733a383a2254616b6561776179223b733a343a226c696e6b223b733a32373a2261646d696e2f6f72646572732f696e6465782f74616b6561776179223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a323a223130223b733a343a2274696d65223b733a31393a22323032332d30322d32332031323a31323a3331223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2231223b7d693a36343b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223736223b733a353a226c6162656c223b733a31323a2256656869636c652054797065223b733a343a226c696e6b223b733a31383a2261646d696e2f76656869636c655f74797065223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223133223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33333a3138223b733a373a2273656374696f6e223b733a313a2235223b733a363a22737461747573223b733a313a2231223b7d693a36353b4f3a383a22737464436c617373223a393a7b733a373a226d656e755f6964223b733a323a223737223b733a353a226c6162656c223b733a383a2243616d706169676e223b733a343a226c696e6b223b733a31343a2261646d696e2f63616d706169676e223b733a343a2269636f6e223b733a31313a2269636f6e2d436972636c65223b733a363a22706172656e74223b733a323a223331223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323032332d30332d30312031353a33383a3035223b733a373a2273656374696f6e223b733a313a2230223b733a363a22737461747573223b733a313a2230223b7d7d),
('8113c54c2c4217f8e6e9d9929d91d2a183408824', '192.168.1.6', 1677686181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138313b),
('85b1fb1f91a7d8deb8c7154fcae20cb7ad4ddff5', '192.168.1.6', 1677686190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363139303b),
('878e16eacc22445a9fb7033a13a761bd3c6b8d67', '192.168.1.6', 1677686188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138383b),
('8c10cc587e9b56a49df4f55477590a49657fab6a', '192.168.1.6', 1677686266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363236363b),
('8d5442d0a4c07b914f3d5dd7d17447c6c148182e', '192.168.1.6', 1677686171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137313b),
('9dc5904de24e7aea08379a0afa542c73232ac98b', '192.168.1.6', 1677686180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138303b),
('9e6c821aa8bfe4c03ddbbf6b679bbdee6a16f101', '192.168.1.6', 1677685737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638353733373b),
('9e77f2c1c8401793b734168cef2ef69c871c4927', '192.168.1.6', 1677686261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363236313b),
('a449ac81805b6912dea9164812c559fc1def10c7', '192.168.1.6', 1677686196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363139363b),
('a5a1cd0a43c7b335c6d17d7f71a69f2b18377c74', '192.168.1.6', 1677686170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137303b),
('a9d00fea98fc5a8e0eaa3a07098405cf6e6c0f16', '192.168.1.6', 1677686176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137363b),
('abfb3bf67c50314286ca227993a2c9c7576f21f1', '192.168.1.6', 1677686175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137353b),
('ad96e2314666ba90fd4f6d3b7f612607511efedd', '192.168.1.6', 1677686252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363235323b),
('b34f4c53715a5c755978277d8745dc077c1c18dc', '192.168.1.6', 1677686185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138353b),
('b70947a863391eb42ebe2c1504a644b61edfb959', '192.168.1.6', 1677686181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138313b),
('b8d91cdb4458d88de1f2b891b73e4ee026c91cfc', '192.168.1.6', 1677686252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363235323b),
('c4855e1e1387da95bf202c2e2381456ae0bd6fe7', '192.168.1.6', 1677686073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363037333b),
('c66fc480ba15a263c6d339e25579c2f3de52c609', '192.168.1.6', 1677686266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363236363b),
('cca5eefc19c1e71772477406f62cfcb12d791655', '192.168.1.6', 1677686169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363136393b),
('d83088d8d407a38e8e27370fade12159be2bfad8', '192.168.1.6', 1677686365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363336353b),
('d867a0be1fa1c69dfb882c8fff5ab4d685d0aab0', '192.168.1.6', 1677685740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638353733393b),
('d97b304e63540824404085b509bf88651daae6c2', '192.168.1.6', 1677686178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137383b),
('ddb112ec817541cb7e0124c5924ec8b15c881b09', '192.168.1.6', 1677685893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638353839333b),
('df49a8575070eed5dbea9e43b03ed58f38618f40', '192.168.1.6', 1677686180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363138303b),
('dfaec487e24fa3763726e93d6d2746721835474d', '192.168.1.6', 1677685761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638353736313b),
('e77921573396ff0700eee06507725ba6acda3220', '192.168.1.6', 1677686196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363139363b),
('ea6eab3477bf2293ba8a11c9409d914f91d17428', '192.168.1.6', 1677686171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363137313b),
('fba8fd327cca45eaf58d265f749dda11a0fe26b9', '192.168.1.6', 1677686388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363338383b),
('fcb71f53e98b302d8c037dbd666496598d256375', '192.168.1.6', 1677686196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637373638363139363b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_review`
--

CREATE TABLE `tbl_shop_review` (
  `shop_review_id` int(11) NOT NULL,
  `rating` decimal(20,0) NOT NULL DEFAULT 0,
  `message` longtext CHARACTER SET utf8 DEFAULT NULL,
  `buyer` int(11) NOT NULL,
  `vendor` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `order_id` int(11) DEFAULT NULL,
  `item_review` longtext CHARACTER SET utf8 DEFAULT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shop_review`
--

INSERT INTO `tbl_shop_review` (`shop_review_id`, `rating`, `message`, `buyer`, `vendor`, `status`, `order_id`, `item_review`, `date`) VALUES
(79, '4', 'ghh sldknvskjr rnveow inewoinfoiwe foiewfnewionfewfie erkjvbe', 830, 324, 1, 2051, '[{\"productId\":\"253\",\"rating\":\"3.0\",\"message\":null,\"image\":\"http:\\/\\/192.168.1.2\\/foodzo_alpha6\\/uploads\\/restaurantproduct_image\\/restaurantproduct_253.png\",\"productName\":\"Non veg\"}]', 1666244975),
(78, '4', 'ghh sldknvskjr rnveow inewoinfoiwe foiewfnewionfewfie erkjvbe', 830, 324, 1, 2051, '[{\"productId\":\"253\",\"rating\":\"3.0\",\"message\":null,\"image\":\"http:\\/\\/192.168.1.2\\/foodzo_alpha6\\/uploads\\/restaurantproduct_image\\/restaurantproduct_253.png\",\"productName\":\"Non veg\"}]', 1666244962),
(77, '4', 'ghh sldknvskjr rnveow inewoinfoiwe foiewfnewionfewfie erkjvbe', 830, 324, 1, 2051, '[{\"productId\":\"253\",\"rating\":\"3.0\",\"message\":null,\"image\":\"http:\\/\\/192.168.1.2\\/foodzo_alpha6\\/uploads\\/restaurantproduct_image\\/restaurantproduct_253.png\",\"productName\":\"Non veg\"}]', 1666244950),
(129, '4', 'Hhdhd', 840, 324, 1, 2144, '[{\"productId\":\"270\",\"rating\":null,\"message\":\"Bfb\",\"image\":\"http:\\/\\/192.168.1.5\\/foodzo_beta1\\/uploads\\/restaurantproduct_image\\/restaurantproduct_270.jpg\",\"productName\":\"Chicken Biryani\"},{\"productId\":\"288\",\"rating\":null,\"message\":\"Hhf\",\"image\":\"http:\\/\\/192.168.1.5\\/foodzo_beta1\\/uploads\\/restaurantproduct_image\\/restaurantproduct_288.jpg\",\"productName\":\"Egg Biryani\"},{\"productId\":\"287\",\"rating\":null,\"message\":null,\"image\":\"http:\\/\\/192.168.1.5\\/foodzo_beta1\\/uploads\\/restaurantproduct_image\\/restaurantproduct_287.jpg\",\"productName\":\"Idli\"}]', 1669178707),
(130, '4', NULL, 839, 324, 1, 2185, '[{\"productId\":\"316\",\"rating\":null,\"message\":\"Vv\",\"image\":\"http:\\/\\/192.168.1.5\\/foodzo_beta1\\/uploads\\/restaurantproduct_image\\/restaurantproduct_316.jpeg\",\"productName\":\"Customize \\u201cBoss Veg Value Combo\\u201d\"}]', 1669631536);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status`) VALUES
(1, 'answered'),
(2, 'closed'),
(3, 'open'),
(5, 'in_progress');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(11) NOT NULL,
  `stock_sub_category_id` int(11) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `total_stock` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `category` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `added_by` longtext DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_category_id`, `sub_category_name`, `category`, `photo`, `status`, `zone_id`, `added_by`, `date`, `sort`) VALUES
(22, 'Chicken Biryani', 84, 'sub_category_22.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667987850, 0),
(23, 'Mutton Biryani', 84, 'sub_category_23.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667987922, 0),
(24, 'Veg Biryani', 84, 'sub_category_24.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667987962, 0),
(25, 'Grill Chicken', 85, 'sub_category_25.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667988871, 0),
(26, 'Tandoori Chicken', 85, 'sub_category_26.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667989140, 0),
(27, 'Chicken65', 85, 'sub_category_27.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667989237, 0),
(28, 'Noodles', 86, 'sub_category_28.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667990018, 0),
(29, 'Maggie', 86, 'sub_category_29.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667990069, 0),
(30, 'Pasta', 86, 'sub_category_30.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667990114, 0),
(31, 'Masal Dosa', 88, 'sub_category_31.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667991446, 0),
(32, 'Onion Dosa', 88, 'sub_category_32.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667991490, 0),
(33, 'White Rice', 89, 'sub_category_33.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668010112, 0),
(34, 'Variety Rice', 89, 'sub_category_34.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668059608, 0),
(35, 'Cup Icecream', 93, 'sub_category_35.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667991929, 0),
(36, 'Cone Icecream', 93, 'sub_category_36.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667991963, 0),
(37, 'Doughnuts', 98, 'sub_category_37.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667992283, 0),
(38, 'Paanipuri', 98, 'sub_category_38.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667992412, 0),
(39, 'Veg Soup', 95, 'sub_category_39.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667992874, 0),
(40, 'Chicken Soup', 95, 'sub_category_40.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667992916, 0),
(41, 'Veg Gravy', 97, 'sub_category_41.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667993043, 0),
(42, 'Chicken Gravy', 97, 'sub_category_42.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667993084, 0),
(43, 'Prawn Gravy', 97, 'sub_category_43.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1667993168, 0),
(44, 'Chicken Pizza', 90, 'sub_category_44.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668010775, 0),
(45, 'Veg Pizza', 90, 'sub_category_45.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668059706, 0),
(46, 'Cheese Burger', 91, 'sub_category_46.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668060437, 0),
(47, 'Green Chile Cheese Burger', 91, 'sub_category_47.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668060573, 0),
(48, 'Ceylon Paratha', 92, 'sub_category_48.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668061574, 0),
(49, 'Wheat Paratha', 92, 'sub_category_49.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668061745, 0),
(50, 'Idly', 87, 'sub_category_50.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668061875, 0),
(51, 'Rava Idly', 87, 'sub_category_51.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668062303, 0),
(52, 'Cold Coffee', 94, 'sub_category_52.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668063459, 0),
(53, 'Milk Shake', 94, 'sub_category_53.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668063664, 0),
(54, 'Chicken Sandwich', 99, 'sub_category_54.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668064466, 0),
(55, 'Cheese Sandwich', 99, 'sub_category_55.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668064530, 0),
(56, 'Beef Shawarma', 100, 'sub_category_56.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668065831, 0),
(57, 'Chicken Shawarma', 100, 'sub_category_57.png', 1, 93, '{\"type\":\"vendor\",\"id\":\"1\"}', 1668065560, 0),
(58, 'Veg chicken', 101, NULL, 1, 186, '{\"type\":\"vendor\",\"id\":\"1\"}', 1669349961, 0),
(59, 'Super mutton', 102, NULL, 1, 187, '{\"type\":\"vendor\",\"id\":\"1\"}', 1669350093, 0),
(60, '213', 104, NULL, 1, 147, '{\"type\":\"vendor\",\"id\":\"1\"}', 1677046062, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `permission` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `tax_id` int(11) NOT NULL,
  `tax` varchar(20) NOT NULL,
  `date` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`tax_id`, `tax`, `date`) VALUES
(18, '9', 1648790856),
(19, '5', 1649846029),
(20, '50', 1649874933),
(21, '9.', 1650736471),
(22, '10', 1651641230),
(23, '2', 1652337136),
(24, '10', 0),
(25, '12', 0),
(26, '13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax_rates`
--

CREATE TABLE `tbl_tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_rate_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `tax_rate_percent` decimal(10,2) NOT NULL DEFAULT 0.00,
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tickets`
--

CREATE TABLE `tbl_tickets` (
  `tickets_id` int(10) NOT NULL,
  `project_id` int(11) DEFAULT 0,
  `ticket_code` varchar(32) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `departments_id` int(11) DEFAULT NULL,
  `reporter` int(10) DEFAULT 0,
  `priority` varchar(50) DEFAULT NULL,
  `upload_file` text DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `permission` text DEFAULT NULL,
  `last_reply` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tickets_replies`
--

CREATE TABLE `tbl_tickets_replies` (
  `tickets_replies_id` int(10) NOT NULL,
  `tickets_id` bigint(10) DEFAULT NULL,
  `ticket_reply_id` int(11) DEFAULT 0,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `replier` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replierid` int(10) DEFAULT NULL,
  `attachment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tips`
--

CREATE TABLE `tbl_tips` (
  `tips_id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `date` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tips`
--

INSERT INTO `tbl_tips` (`tips_id`, `amount`, `name`, `date`) VALUES
(10, '23', '123', 1665895402),
(6, '10', 'juse', 1633224056),
(7, '15', 'tet', 1633230696),
(8, '20', 'just', 1641445059),
(9, '2', 'tuos', 1665760341),
(11, '5', '3', 1665895409);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_todo`
--

CREATE TABLE `tbl_todo` (
  `todo_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `due_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1= in_progress 2= on hold 3= done',
  `assigned` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `transactions_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `invoices_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `recurring_type` varchar(20) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` enum('Yes','No') DEFAULT NULL,
  `total_cycles` int(11) DEFAULT NULL,
  `done_cycles` int(11) DEFAULT NULL,
  `custom_recurring` tinyint(1) DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `paid_by` int(11) NOT NULL DEFAULT 0,
  `payment_methods_id` int(11) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `status` enum('non_approved','paid','unpaid') DEFAULT 'non_approved',
  `notes` text NOT NULL,
  `tags` text NOT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `debit` decimal(18,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `transfer_id` int(11) NOT NULL DEFAULT 0,
  `permission` text DEFAULT NULL,
  `attachement` text DEFAULT NULL,
  `client_visible` enum('Yes','No') NOT NULL DEFAULT 'No',
  `added_by` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0,
  `billable` enum('Yes','No') NOT NULL DEFAULT 'No',
  `deposit` text DEFAULT NULL,
  `deposit_2` text DEFAULT NULL,
  `under_55` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`transactions_id`, `project_id`, `account_id`, `invoices_id`, `name`, `type`, `category_id`, `amount`, `recurring_type`, `repeat_every`, `recurring`, `total_cycles`, `done_cycles`, `custom_recurring`, `last_recurring_date`, `recurring_from`, `paid_by`, `payment_methods_id`, `reference`, `status`, `notes`, `tags`, `tax`, `date`, `create_date`, `debit`, `credit`, `total_balance`, `transfer_id`, `permission`, `attachement`, `client_visible`, `added_by`, `paid`, `billable`, `deposit`, `deposit_2`, `under_55`) VALUES
(1, NULL, 1, 0, 'capital amount', 'Income', 1, '1000.00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 14, '', 'non_approved', '', '', '0.00', '2020-11-02', NULL, '0.00', '1000.00', '2000.00', 0, 'all', NULL, 'No', 0, 0, 'No', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploaded_files`
--

CREATE TABLE `tbl_uploaded_files` (
  `uploaded_files_id` int(11) NOT NULL,
  `files_id` int(11) NOT NULL,
  `files` text NOT NULL,
  `uploaded_path` text NOT NULL,
  `file_name` text NOT NULL,
  `size` int(10) NOT NULL,
  `ext` varchar(100) NOT NULL,
  `is_image` int(2) NOT NULL,
  `image_width` int(5) NOT NULL,
  `image_height` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `online_time` int(32) NOT NULL DEFAULT 0 COMMENT '1 = online 0 = offline ',
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_email` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_email_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_encription` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_action` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_host_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_additional_flag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_postmaster_run` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_path_slug` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `password`, `email`, `role_id`, `activated`, `banned`, `ban_reason`, `zone_id`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `online_time`, `permission`, `active_email`, `smtp_email_type`, `smtp_encription`, `smtp_action`, `smtp_host_name`, `smtp_username`, `smtp_password`, `smtp_port`, `smtp_additional_flag`, `last_postmaster_run`, `media_path_slug`) VALUES
(1, 'admin', '17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466', 'balaji30nsit@gmail.com', 1, 1, 0, NULL, NULL, '4633da053dd7052c094d82a52c71c86d', '2022-11-12 13:05:21', 'sssss0t@rediffmail.com', '19a0a854f2d7a5802cffb1d7ad72bb78', NULL, '2023-03-01 14:29:10', '2019-09-06 16:55:13', '2023-03-01 16:50:53', 1677689453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'test2', 'b4f31801acdbc4b0c2da6b599542322dc3e96f952535ec02b8463fc1d41748b8310c2d6940f39b51444e78dbef73ff9e196a89c13e80df6efc6eabf393deec49', 'admin123@admin.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, NULL, '2022-11-02 06:58:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'ramraj1', '0bda0a2de7572f1231bbfd02ce76c270a88687f928f62229cbec2421c9725d67bf6d9d66936bcfc2b33b2beadbfebbc4013266a8f7d1bfab42e4cee02b39031a', 'ramraj@gmail.com', 27, 1, 0, NULL, 185, NULL, NULL, NULL, NULL, '::1', '2022-11-07 19:36:56', NULL, '2022-11-07 14:06:56', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'product', '0bda0a2de7572f1231bbfd02ce76c270a88687f928f62229cbec2421c9725d67bf6d9d66936bcfc2b33b2beadbfebbc4013266a8f7d1bfab42e4cee02b39031a', 'product@gmail.com', 28, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '::1', '2022-11-02 14:25:55', NULL, '2022-11-02 08:55:55', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '12312', '62ef0e35079c5cc5f5c110b74c81ddec7e1d254e78aa33749738bba0b3e007b8368ad0d0d5705f7c083aaa3940e2b939567fea61a817841aa8e783cfeddf7677', 'manger@admin.com', 27, 1, 0, NULL, 93, NULL, NULL, NULL, NULL, '::1', NULL, NULL, '2022-11-03 17:36:38', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'jhone', '0bda0a2de7572f1231bbfd02ce76c270a88687f928f62229cbec2421c9725d67bf6d9d66936bcfc2b33b2beadbfebbc4013266a8f7d1bfab42e4cee02b39031a', 'jhone@gmail.com', 27, 1, 0, NULL, 93, NULL, NULL, NULL, NULL, '::1', '2022-11-07 21:01:44', NULL, '2022-11-07 15:31:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usertransaction`
--

CREATE TABLE `tbl_usertransaction` (
  `usertransaction_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `balance` double NOT NULL DEFAULT 0,
  `message` longtext CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) NOT NULL,
  `date` int(20) NOT NULL,
  `made_by` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_usertransaction`
--

INSERT INTO `tbl_usertransaction` (`usertransaction_id`, `type`, `user_id`, `amount`, `balance`, `message`, `status`, `date`, `made_by`) VALUES
(6, 'Cr', 829, 114.5, 2591.5, '1667546303883829- Refund amound', 'success', 1667546882, 'Auto'),
(7, 'Cr', 830, 10, 0, '23', 'success', 1668225023, 'Admin'),
(8, 'Cr', 830, 10, 0, '123', 'success', 1668226495, 'Admin'),
(9, 'Cr', 830, 23, 0, '23', 'success', 1668226581, 'Admin'),
(10, 'Cr', 830, 2, 0, '', 'success', 1668226676, 'Admin'),
(11, 'Cr', 832, 200, 0, '23', 'success', 1669029359, 'Admin'),
(12, 'Cr', 832, 10, 0, '23', 'success', 1669029821, 'Admin'),
(13, 'Cr', 832, 20, 230, '', 'success', 1669029957, 'Admin'),
(14, 'Cr', 842, 474.44, 974.44, '2188- Refund amound', 'Success', 1677134395, 'Auto'),
(15, 'Dr', 842, 85.85, 888.59, '', 'success', 1677139585, 'user'),
(16, 'Dr', 842, 692.84, 195.75, '', 'success', 1677139671, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `user_role_id` int(11) NOT NULL,
  `designations_id` int(11) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `view` int(11) DEFAULT 0,
  `created` int(11) DEFAULT 0,
  `edited` int(11) DEFAULT 0,
  `deleted` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`user_role_id`, `designations_id`, `menu_id`, `view`, `created`, `edited`, `deleted`) VALUES
(8, 2, 1, 1, 0, 0, 0),
(9, 2, 28, 28, 28, 28, 28),
(10, 2, 31, 31, 31, 31, 31),
(11, 2, 43, 43, 43, 43, 43),
(12, 2, 27, 27, 27, 27, 27),
(13, 2, 55, 55, 55, 55, 55),
(14, 2, 35, 35, 35, 35, 35),
(15, 2, 36, 36, 36, 36, 36),
(16, 2, 40, 40, 40, 40, 40),
(17, 2, 33, 33, 33, 33, 33),
(18, 2, 37, 37, 37, 37, 37),
(19, 2, 56, 56, 56, 56, 56),
(20, 2, 57, 57, 57, 57, 57),
(21, 2, 29, 29, 29, 29, 29),
(22, 2, 46, 46, 46, 46, 46),
(23, 2, 48, 48, 48, 48, 48),
(24, 2, 50, 50, 50, 1, 1),
(25, 2, 53, 53, 53, 53, 53),
(26, 2, 49, 49, 49, 49, 49),
(27, 2, 59, 59, 59, 59, 59),
(28, 2, 32, 32, 32, 32, 32),
(29, 2, 47, 47, 47, 47, 47),
(30, 2, 54, 54, 54, 54, 54),
(31, 2, 41, 41, 41, 41, 41),
(32, 2, 44, 44, 44, 44, 44),
(33, 2, 45, 45, 45, 45, 45),
(34, 2, 30, 30, 30, 30, 30),
(35, 2, 60, 60, 60, 60, 60),
(36, 2, 61, 61, 61, 61, 61),
(37, 2, 62, 62, 62, 62, 62),
(38, 2, 34, 34, 34, 34, 34),
(39, 2, 8, 8, 8, 8, 8),
(40, 2, 5, 5, 5, 5, 5),
(41, 2, 2, 2, 2, 2, 2),
(42, 2, 52, 52, 52, 52, 52),
(43, 2, 58, 58, 58, 58, 58),
(44, 2, 38, 38, 38, 38, 38),
(45, 2, 42, 42, 42, 42, 42),
(46, 2, 51, 51, 51, 51, 51),
(47, 2, 39, 39, 39, 39, 39),
(48, 2, 9, 9, 9, 9, 9),
(49, 2, 6, 6, 0, 0, 0),
(50, 2, 3, 3, 0, 0, 0),
(51, 2, 4, 4, 4, 4, 4),
(52, 3, 1, 1, 0, 0, 0),
(53, 3, 28, 28, 0, 0, 0),
(54, 3, 31, 31, 0, 0, 0),
(55, 3, 43, 43, 0, 0, 0),
(56, 3, 27, 27, 0, 0, 0),
(57, 3, 55, 55, 0, 0, 0),
(58, 3, 35, 35, 0, 0, 0),
(59, 3, 36, 36, 0, 0, 0),
(60, 3, 40, 40, 0, 0, 0),
(61, 3, 33, 33, 0, 0, 0),
(62, 3, 37, 37, 0, 0, 0),
(63, 3, 56, 56, 0, 0, 0),
(64, 3, 57, 57, 0, 0, 0),
(65, 3, 29, 29, 0, 0, 0),
(66, 3, 46, 46, 0, 0, 0),
(67, 3, 48, 48, 0, 0, 0),
(68, 3, 50, 50, 0, 0, 0),
(69, 3, 53, 53, 0, 0, 0),
(70, 3, 49, 49, 0, 0, 0),
(71, 3, 59, 59, 0, 0, 0),
(72, 3, 32, 32, 0, 0, 0),
(73, 3, 47, 47, 0, 0, 0),
(74, 3, 54, 54, 0, 0, 0),
(75, 3, 41, 41, 0, 0, 0),
(76, 3, 44, 44, 0, 0, 0),
(77, 3, 45, 45, 0, 0, 0),
(78, 3, 30, 30, 0, 0, 0),
(79, 3, 60, 60, 0, 0, 0),
(80, 3, 61, 61, 0, 0, 0),
(81, 3, 62, 62, 0, 0, 0),
(82, 3, 34, 34, 0, 0, 0),
(83, 3, 8, 8, 0, 0, 0),
(84, 3, 5, 5, 0, 0, 0),
(85, 3, 2, 2, 0, 0, 0),
(86, 3, 52, 52, 0, 0, 0),
(87, 3, 58, 58, 0, 0, 0),
(88, 3, 38, 38, 0, 0, 0),
(89, 3, 42, 42, 0, 0, 0),
(90, 3, 51, 51, 0, 0, 0),
(91, 3, 39, 39, 0, 0, 0),
(92, 3, 9, 9, 0, 0, 0),
(93, 3, 6, 6, 0, 0, 0),
(94, 3, 3, 3, 0, 0, 0),
(95, 3, 4, 4, 0, 0, 0),
(96, 4, 1, 1, 0, 0, 0),
(97, 4, 28, 0, 28, 0, 0),
(98, 4, 31, 0, 31, 0, 0),
(99, 4, 43, 0, 43, 0, 0),
(100, 4, 27, 0, 27, 0, 0),
(101, 4, 55, 0, 55, 0, 0),
(102, 4, 35, 0, 35, 0, 0),
(103, 4, 36, 0, 36, 0, 0),
(104, 4, 40, 0, 40, 0, 0),
(105, 4, 33, 0, 33, 0, 0),
(106, 4, 37, 0, 37, 0, 0),
(107, 4, 56, 0, 56, 0, 0),
(108, 4, 57, 0, 57, 0, 0),
(109, 4, 29, 0, 29, 0, 0),
(110, 4, 46, 0, 46, 0, 0),
(111, 4, 48, 0, 48, 0, 0),
(112, 4, 50, 0, 50, 0, 0),
(113, 4, 53, 0, 53, 0, 0),
(114, 4, 49, 0, 49, 0, 0),
(115, 4, 59, 0, 59, 0, 0),
(116, 4, 32, 0, 32, 0, 0),
(117, 4, 47, 0, 47, 0, 0),
(118, 4, 54, 0, 54, 0, 0),
(119, 4, 41, 0, 41, 0, 0),
(120, 4, 44, 0, 44, 0, 0),
(121, 4, 45, 0, 45, 0, 0),
(122, 4, 30, 0, 30, 0, 0),
(123, 4, 60, 0, 60, 0, 0),
(124, 4, 61, 0, 61, 0, 0),
(125, 4, 62, 0, 62, 0, 0),
(126, 4, 34, 0, 34, 0, 0),
(127, 4, 8, 0, 8, 0, 0),
(128, 4, 5, 0, 5, 0, 0),
(129, 4, 2, 0, 2, 0, 0),
(130, 4, 52, 0, 52, 0, 0),
(131, 4, 58, 0, 58, 0, 0),
(132, 4, 38, 0, 38, 0, 0),
(133, 4, 42, 0, 42, 0, 0),
(134, 4, 51, 0, 51, 0, 0),
(135, 4, 39, 0, 39, 0, 0),
(136, 4, 9, 0, 9, 0, 0),
(137, 4, 6, 0, 0, 0, 0),
(138, 4, 3, 0, 0, 0, 0),
(139, 4, 4, 0, 4, 0, 0),
(140, 5, 1, 1, 0, 0, 0),
(141, 5, 28, 0, 0, 28, 0),
(142, 5, 31, 0, 0, 31, 0),
(143, 5, 43, 0, 0, 43, 0),
(144, 5, 27, 0, 0, 27, 0),
(145, 5, 55, 0, 0, 55, 0),
(146, 5, 35, 0, 0, 35, 0),
(147, 5, 36, 0, 0, 36, 0),
(148, 5, 40, 0, 0, 40, 0),
(149, 5, 33, 0, 0, 33, 0),
(150, 5, 37, 0, 0, 37, 0),
(151, 5, 56, 0, 0, 56, 0),
(152, 5, 57, 0, 0, 57, 0),
(153, 5, 29, 0, 0, 29, 0),
(154, 5, 46, 0, 0, 46, 0),
(155, 5, 48, 0, 0, 48, 0),
(156, 5, 50, 0, 0, 50, 0),
(157, 5, 53, 0, 0, 53, 0),
(158, 5, 49, 0, 0, 49, 0),
(159, 5, 59, 0, 0, 59, 0),
(160, 5, 32, 0, 0, 32, 0),
(161, 5, 47, 0, 0, 47, 0),
(162, 5, 54, 0, 0, 54, 0),
(163, 5, 41, 0, 0, 41, 0),
(164, 5, 44, 0, 0, 44, 0),
(165, 5, 45, 0, 0, 45, 0),
(166, 5, 30, 0, 0, 30, 0),
(167, 5, 60, 0, 0, 60, 0),
(168, 5, 61, 0, 0, 61, 0),
(169, 5, 62, 0, 0, 62, 0),
(170, 5, 34, 0, 0, 34, 0),
(171, 5, 8, 0, 0, 8, 0),
(172, 5, 5, 0, 0, 5, 0),
(173, 5, 2, 0, 0, 2, 0),
(174, 5, 52, 0, 0, 52, 0),
(175, 5, 58, 0, 0, 58, 0),
(176, 5, 38, 0, 0, 38, 0),
(177, 5, 42, 0, 0, 42, 0),
(178, 5, 51, 0, 0, 51, 0),
(179, 5, 39, 0, 0, 39, 0),
(180, 5, 9, 0, 0, 9, 0),
(181, 5, 6, 0, 0, 0, 0),
(182, 5, 3, 0, 0, 0, 0),
(183, 5, 4, 0, 0, 4, 0),
(193, 6, 1, 1, 0, 0, 0),
(194, 6, 28, 28, 28, 28, 28),
(195, 6, 31, 31, 31, 31, 31),
(196, 6, 43, 43, 43, 43, 43),
(197, 6, 27, 27, 27, 27, 27),
(198, 6, 33, 33, 33, 33, 33),
(199, 6, 50, 50, 50, 50, 0),
(200, 6, 62, 62, 62, 62, 62),
(201, 6, 2, 2, 0, 0, 0),
(202, 7, 2, 0, 0, 0, 0),
(203, 7, 1, 1, 0, 0, 0),
(204, 7, 31, 31, 0, 0, 0),
(205, 7, 43, 43, 0, 0, 0),
(206, 8, 2, 0, 0, 0, 0),
(207, 8, 1, 1, 0, 0, 0),
(208, 8, 28, 0, 28, 0, 0),
(209, 8, 27, 0, 27, 0, 0),
(210, 9, 2, 0, 0, 0, 0),
(211, 9, 1, 1, 0, 0, 0),
(212, 9, 28, 28, 0, 0, 0),
(213, 9, 31, 31, 0, 0, 0),
(214, 9, 43, 43, 0, 0, 0),
(215, 9, 27, 27, 0, 0, 0),
(216, 9, 55, 55, 0, 0, 0),
(217, 9, 35, 35, 0, 0, 0),
(218, 9, 36, 36, 0, 0, 0),
(219, 9, 40, 40, 0, 0, 0),
(220, 9, 33, 33, 0, 0, 0),
(221, 9, 37, 37, 0, 0, 0),
(222, 9, 56, 56, 0, 0, 0),
(223, 9, 57, 57, 0, 0, 0),
(224, 9, 29, 29, 0, 0, 0),
(225, 9, 46, 46, 0, 0, 0),
(226, 9, 48, 48, 0, 0, 0),
(227, 9, 50, 50, 0, 0, 0),
(228, 9, 53, 53, 0, 0, 0),
(229, 9, 49, 49, 0, 0, 0),
(230, 9, 59, 59, 0, 0, 0),
(231, 9, 32, 32, 0, 0, 0),
(232, 9, 47, 47, 0, 0, 0),
(233, 9, 54, 54, 0, 0, 0),
(234, 9, 41, 41, 0, 0, 0),
(235, 9, 44, 44, 0, 0, 0),
(236, 9, 45, 45, 0, 0, 0),
(237, 9, 30, 30, 0, 0, 0),
(238, 9, 60, 60, 0, 0, 0),
(239, 9, 61, 61, 0, 0, 0),
(240, 9, 62, 62, 0, 0, 0),
(241, 9, 63, 63, 0, 0, 0),
(242, 9, 8, 8, 0, 0, 0),
(243, 9, 5, 5, 0, 0, 0),
(244, 9, 11, 11, 0, 0, 0),
(245, 9, 52, 52, 0, 0, 0),
(246, 9, 58, 58, 0, 0, 0),
(247, 9, 38, 38, 0, 0, 0),
(248, 9, 42, 42, 0, 0, 0),
(249, 9, 51, 51, 0, 0, 0),
(250, 10, 2, 0, 0, 0, 0),
(251, 10, 1, 1, 0, 0, 0),
(252, 10, 28, 0, 28, 0, 0),
(253, 10, 31, 0, 31, 0, 0),
(254, 10, 43, 0, 43, 0, 0),
(255, 10, 27, 0, 27, 0, 0),
(256, 10, 55, 0, 55, 0, 0),
(257, 10, 35, 0, 35, 0, 0),
(258, 10, 36, 0, 36, 0, 0),
(259, 10, 40, 0, 40, 0, 0),
(260, 10, 33, 0, 33, 0, 0),
(261, 10, 37, 0, 37, 0, 0),
(262, 10, 56, 0, 56, 0, 0),
(263, 10, 57, 0, 57, 0, 0),
(264, 10, 29, 0, 29, 0, 0),
(265, 10, 46, 0, 46, 0, 0),
(266, 10, 48, 0, 48, 0, 0),
(267, 10, 50, 0, 50, 0, 0),
(268, 10, 53, 0, 53, 0, 0),
(269, 10, 49, 0, 49, 0, 0),
(270, 10, 59, 0, 59, 0, 0),
(271, 10, 32, 0, 32, 0, 0),
(272, 10, 47, 0, 47, 0, 0),
(273, 10, 54, 0, 54, 0, 0),
(274, 10, 41, 0, 41, 0, 0),
(275, 10, 44, 0, 44, 0, 0),
(276, 10, 45, 0, 45, 0, 0),
(277, 10, 30, 0, 30, 0, 0),
(278, 10, 60, 0, 60, 0, 0),
(279, 10, 61, 0, 61, 0, 0),
(280, 10, 62, 0, 62, 0, 0),
(281, 10, 63, 0, 63, 0, 0),
(282, 10, 8, 0, 8, 0, 0),
(283, 10, 5, 0, 5, 0, 0),
(284, 10, 11, 0, 11, 0, 0),
(285, 10, 52, 0, 52, 0, 0),
(286, 10, 58, 0, 58, 0, 0),
(287, 10, 38, 0, 38, 0, 0),
(288, 10, 42, 0, 42, 0, 0),
(289, 10, 51, 0, 51, 0, 0),
(290, 11, 2, 0, 0, 0, 0),
(291, 11, 1, 1, 0, 0, 0),
(292, 11, 28, 0, 28, 0, 0),
(293, 11, 31, 0, 31, 0, 0),
(294, 12, 2, 0, 0, 0, 0),
(295, 12, 1, 1, 0, 0, 0),
(296, 12, 28, 28, 0, 0, 0),
(297, 12, 31, 31, 0, 0, 0),
(298, 12, 43, 43, 0, 0, 0),
(299, 12, 27, 27, 0, 0, 0),
(300, 12, 55, 55, 0, 0, 0),
(301, 12, 35, 35, 0, 0, 0),
(302, 12, 36, 36, 0, 0, 0),
(303, 12, 40, 40, 0, 0, 0),
(304, 12, 33, 33, 0, 0, 0),
(305, 12, 37, 37, 0, 0, 0),
(306, 12, 56, 56, 0, 0, 0),
(307, 12, 57, 57, 0, 0, 0),
(308, 12, 29, 29, 0, 0, 0),
(309, 12, 46, 46, 0, 0, 0),
(310, 12, 48, 48, 0, 0, 0),
(311, 12, 50, 50, 0, 0, 0),
(312, 12, 53, 53, 0, 0, 0),
(313, 12, 49, 49, 0, 0, 0),
(314, 12, 59, 59, 0, 0, 0),
(315, 12, 32, 32, 0, 0, 0),
(316, 12, 47, 47, 0, 0, 0),
(317, 12, 54, 54, 0, 0, 0),
(318, 12, 41, 41, 0, 0, 0),
(319, 12, 44, 44, 0, 0, 0),
(320, 12, 45, 45, 0, 0, 0),
(321, 12, 30, 30, 0, 0, 0),
(322, 12, 60, 60, 0, 0, 0),
(323, 12, 61, 61, 0, 0, 0),
(324, 12, 62, 62, 0, 0, 0),
(325, 12, 63, 63, 0, 0, 0),
(326, 12, 8, 8, 0, 0, 0),
(327, 12, 5, 5, 0, 0, 0),
(328, 12, 11, 11, 0, 0, 0),
(329, 12, 52, 52, 0, 0, 0),
(330, 12, 58, 58, 0, 0, 0),
(331, 12, 38, 38, 0, 0, 0),
(332, 12, 42, 42, 0, 0, 0),
(333, 12, 51, 51, 0, 0, 0),
(374, 14, 1, 1, 0, 0, 0),
(375, 14, 28, 0, 28, 0, 0),
(376, 14, 31, 0, 31, 0, 0),
(377, 14, 43, 0, 43, 0, 0),
(378, 14, 27, 0, 27, 0, 0),
(379, 14, 55, 0, 55, 0, 0),
(380, 14, 35, 0, 35, 0, 0),
(381, 14, 36, 0, 36, 0, 0),
(382, 14, 40, 0, 40, 0, 0),
(383, 14, 33, 0, 33, 0, 0),
(384, 14, 37, 0, 37, 0, 0),
(385, 14, 56, 0, 56, 0, 0),
(386, 14, 57, 0, 57, 0, 0),
(387, 14, 29, 0, 29, 0, 0),
(388, 14, 46, 0, 46, 0, 0),
(389, 14, 48, 0, 48, 0, 0),
(390, 14, 50, 0, 50, 0, 0),
(391, 14, 53, 0, 53, 0, 0),
(392, 14, 49, 0, 49, 0, 0),
(393, 14, 59, 0, 59, 0, 0),
(394, 14, 32, 0, 32, 0, 0),
(395, 14, 47, 0, 47, 0, 0),
(396, 14, 54, 0, 54, 0, 0),
(397, 14, 41, 0, 41, 0, 0),
(398, 14, 44, 0, 44, 0, 0),
(399, 14, 45, 0, 45, 0, 0),
(400, 14, 30, 0, 30, 0, 0),
(401, 14, 60, 0, 60, 0, 0),
(402, 14, 61, 0, 61, 0, 0),
(403, 14, 62, 0, 62, 0, 0),
(404, 14, 63, 0, 63, 0, 0),
(405, 14, 8, 0, 8, 0, 0),
(406, 14, 5, 0, 5, 0, 0),
(407, 14, 11, 0, 11, 0, 0),
(408, 14, 52, 0, 52, 0, 0),
(409, 14, 58, 0, 58, 0, 0),
(410, 14, 38, 0, 38, 0, 0),
(411, 14, 42, 0, 42, 0, 0),
(412, 14, 51, 0, 51, 0, 0),
(413, 15, 1, 1, 0, 0, 0),
(414, 15, 28, 28, 28, 0, 0),
(415, 15, 31, 31, 31, 0, 0),
(416, 15, 43, 43, 43, 0, 0),
(417, 15, 27, 27, 27, 0, 0),
(418, 15, 55, 55, 55, 0, 0),
(419, 15, 35, 35, 35, 0, 0),
(420, 15, 36, 36, 36, 0, 0),
(421, 15, 40, 40, 40, 0, 0),
(422, 15, 33, 33, 33, 0, 0),
(423, 15, 37, 37, 37, 0, 0),
(424, 15, 56, 56, 56, 0, 0),
(425, 15, 57, 57, 57, 0, 0),
(426, 15, 29, 29, 29, 0, 0),
(427, 15, 46, 46, 46, 0, 0),
(428, 15, 48, 48, 48, 0, 0),
(429, 15, 50, 50, 50, 0, 0),
(430, 15, 53, 53, 53, 0, 0),
(431, 15, 49, 49, 49, 0, 0),
(432, 15, 59, 59, 59, 0, 0),
(433, 15, 32, 32, 32, 0, 0),
(434, 15, 47, 47, 47, 0, 0),
(435, 15, 54, 54, 54, 0, 0),
(436, 15, 41, 41, 41, 0, 0),
(437, 15, 44, 44, 44, 0, 0),
(438, 15, 45, 45, 45, 0, 0),
(439, 15, 30, 30, 30, 0, 0),
(440, 15, 60, 60, 60, 0, 0),
(441, 15, 61, 61, 61, 0, 0),
(442, 15, 62, 62, 62, 0, 0),
(443, 15, 63, 63, 63, 0, 0),
(444, 15, 8, 8, 8, 0, 0),
(445, 15, 5, 5, 5, 0, 0),
(446, 15, 11, 11, 11, 0, 0),
(447, 15, 52, 52, 52, 0, 0),
(448, 15, 58, 58, 58, 0, 0),
(449, 15, 38, 38, 38, 0, 0),
(450, 15, 42, 42, 42, 0, 0),
(451, 15, 51, 51, 51, 0, 0),
(452, 16, 1, 1, 0, 0, 0),
(453, 16, 28, 28, 28, 0, 0),
(454, 16, 31, 31, 31, 0, 0),
(455, 16, 43, 43, 43, 0, 0),
(456, 16, 27, 27, 27, 0, 0),
(457, 16, 55, 55, 55, 0, 0),
(458, 16, 35, 35, 35, 0, 0),
(459, 16, 36, 36, 36, 0, 0),
(460, 16, 40, 40, 40, 0, 0),
(461, 16, 33, 33, 33, 0, 0),
(462, 16, 37, 37, 37, 0, 0),
(463, 16, 56, 56, 56, 0, 0),
(464, 16, 57, 57, 57, 0, 0),
(465, 16, 29, 29, 29, 0, 0),
(466, 16, 46, 46, 46, 0, 0),
(467, 16, 48, 48, 48, 0, 0),
(468, 16, 50, 50, 50, 0, 0),
(469, 16, 53, 53, 53, 0, 0),
(470, 16, 49, 49, 49, 0, 0),
(471, 16, 59, 59, 59, 0, 0),
(472, 16, 32, 32, 32, 0, 0),
(473, 16, 47, 47, 47, 0, 0),
(474, 16, 54, 54, 54, 0, 0),
(475, 16, 41, 41, 41, 0, 0),
(476, 16, 44, 44, 44, 0, 0),
(477, 16, 45, 45, 45, 0, 0),
(478, 16, 30, 30, 30, 0, 0),
(479, 16, 60, 60, 60, 0, 0),
(480, 16, 61, 61, 61, 0, 0),
(481, 16, 62, 62, 62, 0, 0),
(482, 16, 63, 63, 63, 0, 0),
(483, 16, 8, 8, 8, 0, 0),
(484, 16, 5, 5, 5, 0, 0),
(485, 16, 11, 11, 11, 0, 0),
(486, 16, 52, 52, 52, 0, 0),
(487, 16, 58, 58, 58, 0, 0),
(488, 16, 38, 38, 38, 0, 0),
(489, 16, 42, 42, 42, 0, 0),
(490, 16, 51, 51, 51, 0, 0),
(803, 17, 1, 0, 0, 0, 0),
(804, 17, 28, 0, 0, 28, 0),
(805, 17, 31, 0, 0, 31, 0),
(806, 17, 35, 0, 0, 35, 0),
(807, 17, 36, 0, 0, 36, 0),
(808, 18, 1, 1, 0, 0, 0),
(809, 18, 28, 28, 0, 0, 0),
(810, 18, 31, 31, 0, 0, 0),
(811, 18, 43, 43, 0, 0, 0),
(812, 18, 42, 42, 0, 0, 0),
(813, 18, 51, 51, 0, 0, 0),
(814, 1, 1, 1, 0, 0, 0),
(815, 1, 28, 28, 0, 0, 0),
(816, 1, 31, 31, 0, 0, 0),
(817, 1, 43, 43, 0, 0, 0),
(818, 1, 27, 27, 0, 0, 0),
(819, 1, 55, 55, 0, 0, 0),
(820, 1, 35, 35, 0, 0, 0),
(821, 1, 36, 36, 0, 0, 0),
(822, 1, 40, 40, 0, 0, 0),
(823, 1, 33, 33, 0, 0, 0),
(824, 1, 37, 37, 0, 0, 0),
(825, 1, 56, 56, 0, 0, 0),
(826, 1, 57, 57, 0, 0, 0),
(827, 1, 29, 29, 0, 0, 0),
(828, 1, 46, 46, 0, 0, 0),
(829, 1, 48, 48, 0, 0, 0),
(830, 1, 50, 50, 0, 0, 0),
(831, 1, 53, 53, 0, 0, 0),
(832, 1, 49, 49, 0, 0, 0),
(833, 1, 59, 59, 0, 0, 0),
(834, 1, 32, 32, 0, 0, 0),
(835, 1, 47, 47, 0, 0, 0),
(836, 1, 54, 54, 0, 0, 0),
(837, 1, 41, 41, 0, 0, 0),
(838, 1, 44, 44, 0, 0, 0),
(839, 1, 45, 45, 0, 0, 0),
(840, 1, 30, 30, 0, 0, 0),
(841, 1, 60, 60, 0, 0, 0),
(842, 1, 61, 61, 0, 0, 0),
(843, 1, 62, 62, 0, 0, 0),
(844, 1, 63, 63, 0, 0, 0),
(845, 1, 8, 8, 0, 0, 0),
(846, 1, 5, 5, 0, 0, 0),
(847, 1, 11, 11, 0, 0, 0),
(848, 1, 52, 52, 0, 0, 0),
(849, 1, 58, 58, 0, 0, 0),
(850, 1, 38, 38, 0, 0, 0),
(851, 1, 42, 42, 0, 0, 0),
(852, 1, 51, 51, 0, 0, 0),
(856, 19, 1, 1, 0, 0, 0),
(857, 19, 28, 28, 28, 28, 28),
(858, 19, 31, 31, 31, 31, 31),
(859, 19, 43, 43, 43, 43, 43),
(860, 19, 27, 27, 27, 27, 27),
(861, 19, 55, 55, 55, 55, 55),
(862, 19, 35, 35, 35, 35, 35),
(863, 19, 36, 36, 36, 36, 36),
(864, 19, 40, 40, 40, 40, 40),
(865, 19, 33, 33, 33, 33, 33),
(866, 19, 37, 37, 37, 37, 37),
(867, 19, 56, 56, 56, 56, 56),
(868, 19, 57, 57, 57, 57, 57),
(869, 19, 29, 29, 29, 29, 29),
(870, 19, 46, 46, 46, 46, 46),
(871, 19, 48, 48, 48, 48, 48),
(872, 19, 50, 50, 50, 50, 50),
(873, 19, 53, 53, 53, 53, 53),
(874, 19, 49, 49, 49, 49, 49),
(875, 19, 59, 59, 59, 59, 59),
(876, 19, 32, 32, 32, 32, 32),
(877, 19, 47, 47, 47, 47, 47),
(878, 19, 54, 54, 54, 54, 54),
(879, 19, 41, 41, 41, 41, 41),
(880, 19, 44, 44, 44, 44, 44),
(881, 19, 45, 45, 45, 45, 45),
(882, 19, 30, 30, 30, 30, 30),
(883, 19, 60, 60, 60, 60, 60),
(884, 19, 61, 61, 61, 61, 61),
(885, 19, 62, 62, 62, 62, 62),
(886, 19, 63, 63, 63, 63, 63),
(887, 19, 8, 8, 8, 8, 8),
(888, 19, 11, 11, 11, 11, 11),
(889, 19, 52, 52, 52, 52, 52),
(890, 19, 58, 58, 58, 58, 58),
(891, 19, 38, 38, 38, 38, 38),
(892, 19, 42, 42, 42, 42, 42),
(893, 19, 51, 51, 51, 51, 51),
(894, 20, 1, 1, 0, 0, 0),
(895, 20, 28, 0, 28, 0, 0),
(896, 20, 31, 0, 31, 0, 0),
(897, 20, 43, 0, 43, 0, 0),
(898, 20, 27, 0, 27, 0, 0),
(899, 20, 55, 0, 55, 0, 0),
(900, 20, 35, 0, 35, 0, 0),
(901, 20, 36, 0, 36, 0, 0),
(902, 20, 40, 0, 40, 0, 0),
(903, 20, 33, 0, 33, 0, 0),
(904, 20, 37, 0, 37, 0, 0),
(905, 20, 56, 0, 56, 0, 0),
(906, 20, 57, 0, 57, 0, 0),
(907, 20, 29, 0, 29, 0, 0),
(908, 20, 46, 0, 46, 0, 0),
(909, 20, 48, 0, 48, 0, 0),
(910, 20, 50, 0, 50, 0, 0),
(911, 20, 53, 0, 53, 0, 0),
(912, 20, 49, 0, 49, 0, 0),
(913, 20, 59, 0, 59, 0, 0),
(914, 20, 32, 0, 32, 0, 0),
(915, 20, 47, 0, 47, 0, 0),
(916, 20, 54, 0, 54, 0, 0),
(917, 20, 41, 0, 41, 0, 0),
(918, 20, 44, 0, 44, 0, 0),
(919, 20, 45, 0, 45, 0, 0),
(920, 20, 30, 0, 30, 0, 0),
(921, 20, 60, 0, 60, 0, 0),
(922, 20, 61, 0, 61, 0, 0),
(923, 20, 62, 0, 62, 0, 0),
(924, 20, 63, 0, 63, 0, 0),
(925, 20, 8, 0, 8, 0, 0),
(926, 20, 11, 0, 11, 0, 0),
(927, 20, 52, 0, 52, 0, 0),
(928, 20, 58, 0, 58, 0, 0),
(929, 20, 38, 0, 38, 0, 0),
(930, 20, 42, 0, 42, 0, 0),
(931, 20, 51, 0, 51, 0, 0),
(932, 21, 1, 1, 0, 0, 0),
(933, 21, 28, 28, 28, 28, 28),
(934, 21, 31, 31, 31, 31, 31),
(935, 21, 43, 43, 43, 43, 43),
(936, 21, 27, 27, 27, 27, 27),
(937, 21, 55, 55, 55, 55, 55),
(938, 21, 35, 35, 35, 35, 35),
(939, 21, 36, 36, 36, 36, 36),
(940, 21, 40, 40, 40, 40, 40),
(941, 21, 33, 33, 33, 33, 33),
(942, 21, 37, 37, 37, 37, 37),
(943, 21, 56, 56, 56, 56, 56),
(944, 21, 57, 57, 57, 57, 57),
(945, 21, 29, 29, 29, 29, 29),
(946, 21, 46, 46, 46, 46, 46),
(947, 21, 48, 48, 48, 48, 48),
(948, 21, 50, 50, 50, 50, 50),
(949, 21, 53, 53, 53, 53, 53),
(950, 21, 49, 49, 49, 49, 49),
(951, 21, 59, 59, 59, 59, 59),
(952, 21, 32, 32, 32, 32, 32),
(953, 21, 47, 47, 47, 47, 47),
(954, 21, 54, 54, 54, 54, 54),
(955, 21, 41, 41, 41, 41, 41),
(956, 21, 44, 44, 44, 44, 44),
(957, 21, 45, 45, 45, 45, 45),
(958, 21, 30, 30, 30, 30, 30),
(959, 21, 60, 60, 60, 60, 60),
(960, 21, 61, 61, 61, 61, 61),
(961, 21, 62, 62, 62, 62, 62),
(962, 21, 63, 63, 63, 63, 63),
(963, 21, 8, 8, 8, 8, 8),
(964, 21, 11, 11, 11, 11, 11),
(965, 21, 52, 52, 52, 52, 52),
(966, 21, 58, 58, 58, 58, 58),
(967, 21, 38, 38, 38, 38, 38),
(968, 21, 42, 42, 42, 42, 42),
(969, 21, 51, 51, 51, 51, 51),
(970, 22, 1, 1, 0, 0, 0),
(971, 22, 28, 28, 28, 28, 28),
(972, 22, 31, 31, 31, 31, 31),
(973, 22, 71, 71, 71, 71, 71),
(974, 22, 64, 64, 64, 64, 64),
(975, 22, 65, 65, 65, 65, 65),
(976, 22, 66, 66, 66, 66, 66),
(977, 22, 67, 67, 67, 67, 67),
(978, 22, 68, 68, 68, 68, 68),
(979, 22, 69, 69, 69, 69, 69),
(980, 22, 70, 70, 70, 70, 70),
(981, 22, 27, 27, 27, 27, 27),
(982, 22, 55, 55, 55, 55, 55),
(983, 22, 35, 35, 35, 35, 35),
(984, 22, 36, 36, 36, 36, 36),
(985, 22, 40, 40, 40, 40, 40),
(986, 22, 33, 33, 33, 33, 33),
(987, 22, 37, 37, 37, 37, 37),
(988, 22, 56, 56, 56, 56, 56),
(989, 22, 57, 57, 57, 57, 57),
(990, 22, 29, 29, 29, 29, 29),
(991, 22, 46, 46, 46, 46, 46),
(992, 22, 48, 48, 48, 48, 48),
(993, 22, 50, 50, 50, 50, 50),
(994, 22, 53, 53, 53, 53, 53),
(995, 22, 49, 49, 49, 49, 49),
(996, 22, 59, 59, 59, 59, 59),
(997, 22, 32, 32, 32, 32, 32),
(998, 22, 47, 47, 47, 47, 47),
(999, 22, 54, 54, 54, 54, 54),
(1000, 22, 41, 41, 41, 41, 41),
(1001, 22, 44, 44, 44, 44, 44),
(1002, 22, 45, 45, 45, 45, 45),
(1003, 22, 30, 30, 30, 30, 30),
(1004, 22, 60, 60, 60, 60, 60),
(1005, 22, 61, 61, 61, 61, 61),
(1006, 22, 63, 63, 63, 63, 63),
(1007, 22, 8, 8, 8, 8, 8),
(1008, 22, 11, 11, 11, 11, 11),
(1009, 22, 52, 52, 52, 52, 52),
(1010, 22, 58, 58, 58, 58, 58),
(1011, 22, 38, 38, 38, 38, 38),
(1012, 22, 42, 42, 42, 42, 42),
(1013, 22, 51, 51, 51, 51, 51),
(1058, 24, 1, 1, 0, 0, 0),
(1059, 24, 38, 38, 0, 0, 0),
(1060, 25, 1, 1, 0, 0, 0),
(1061, 25, 28, 0, 28, 0, 0),
(1062, 25, 31, 0, 31, 0, 0),
(1063, 25, 71, 0, 71, 0, 0),
(1064, 25, 64, 0, 64, 0, 0),
(1065, 25, 65, 0, 65, 0, 0),
(1066, 25, 66, 0, 66, 0, 0),
(1067, 25, 67, 0, 67, 0, 0),
(1068, 25, 68, 0, 68, 0, 0),
(1069, 25, 69, 0, 69, 0, 0),
(1070, 25, 70, 0, 70, 0, 0),
(1071, 25, 27, 0, 27, 0, 0),
(1072, 25, 55, 0, 55, 0, 0),
(1073, 25, 35, 0, 35, 0, 0),
(1074, 25, 36, 0, 36, 0, 0),
(1075, 25, 40, 0, 40, 0, 0),
(1076, 25, 33, 0, 33, 0, 0),
(1077, 25, 37, 0, 37, 0, 0),
(1078, 25, 56, 0, 56, 0, 0),
(1079, 25, 57, 0, 57, 0, 0),
(1080, 25, 29, 0, 29, 0, 0),
(1081, 25, 46, 0, 46, 0, 0),
(1082, 25, 48, 0, 48, 0, 0),
(1083, 25, 50, 0, 50, 0, 0),
(1084, 25, 53, 0, 53, 0, 0),
(1085, 25, 49, 0, 49, 0, 0),
(1086, 25, 59, 0, 59, 0, 0),
(1087, 25, 32, 0, 32, 0, 0),
(1088, 25, 47, 0, 47, 0, 0),
(1089, 25, 54, 0, 54, 0, 0),
(1090, 25, 41, 0, 41, 0, 0),
(1091, 25, 44, 0, 44, 0, 0),
(1092, 25, 45, 0, 45, 0, 0),
(1093, 25, 30, 0, 30, 0, 0),
(1094, 25, 60, 0, 60, 0, 0),
(1095, 25, 61, 0, 61, 0, 0),
(1096, 25, 63, 0, 63, 0, 0),
(1097, 25, 8, 0, 8, 0, 0),
(1098, 25, 11, 0, 11, 0, 0),
(1099, 25, 52, 0, 52, 0, 0),
(1100, 25, 58, 0, 58, 0, 0),
(1101, 25, 38, 0, 38, 0, 0),
(1102, 25, 42, 0, 42, 0, 0),
(1103, 25, 51, 0, 51, 0, 0),
(1236, 28, 1, 1, 0, 0, 0),
(1237, 28, 28, 28, 28, 0, 0),
(1238, 28, 31, 31, 31, 0, 0),
(1239, 28, 71, 71, 71, 0, 0),
(1240, 28, 64, 64, 64, 0, 0),
(1241, 28, 65, 65, 65, 0, 0),
(1242, 28, 66, 66, 66, 0, 0),
(1243, 28, 67, 67, 67, 0, 0),
(1244, 28, 68, 68, 68, 0, 0),
(1245, 28, 69, 69, 69, 0, 0),
(1246, 28, 70, 70, 70, 0, 0),
(1247, 28, 27, 27, 27, 0, 0),
(1248, 28, 55, 55, 55, 0, 0),
(1249, 28, 35, 35, 35, 0, 0),
(1250, 28, 36, 36, 36, 0, 0),
(1251, 28, 40, 40, 40, 0, 0),
(1252, 28, 33, 33, 33, 0, 0),
(1253, 28, 37, 37, 37, 0, 0),
(1254, 28, 56, 56, 56, 0, 0),
(1255, 28, 57, 57, 57, 0, 0),
(1256, 28, 29, 29, 29, 0, 0),
(1257, 28, 46, 46, 46, 0, 0),
(1258, 28, 48, 48, 48, 0, 0),
(1259, 28, 50, 50, 50, 0, 0),
(1260, 28, 53, 53, 53, 0, 0),
(1261, 28, 49, 49, 49, 0, 0),
(1262, 28, 59, 59, 59, 0, 0),
(1263, 28, 32, 32, 32, 0, 0),
(1264, 28, 47, 47, 47, 0, 0),
(1265, 28, 54, 54, 54, 0, 0),
(1266, 28, 41, 41, 41, 0, 0),
(1267, 28, 44, 44, 44, 0, 0),
(1268, 28, 45, 45, 45, 0, 0),
(1269, 28, 30, 30, 30, 0, 0),
(1270, 28, 60, 60, 60, 0, 0),
(1271, 28, 61, 61, 61, 0, 0),
(1272, 28, 63, 63, 63, 0, 0),
(1273, 28, 8, 8, 8, 0, 0),
(1274, 28, 11, 11, 11, 0, 0),
(1275, 28, 52, 52, 52, 0, 0),
(1276, 28, 58, 58, 58, 0, 0),
(1277, 28, 38, 38, 38, 0, 0),
(1278, 28, 42, 42, 42, 0, 0),
(1279, 28, 51, 51, 51, 0, 0),
(1324, 27, 1, 1, 0, 0, 0),
(1325, 27, 28, 28, 28, 28, 28),
(1326, 27, 31, 0, 0, 0, 0),
(1327, 27, 71, 71, 71, 71, 71),
(1328, 27, 64, 64, 64, 64, 64),
(1329, 27, 65, 65, 65, 65, 65),
(1330, 27, 66, 66, 66, 66, 66),
(1331, 27, 67, 67, 67, 67, 67),
(1332, 27, 68, 68, 68, 68, 68),
(1333, 27, 69, 69, 69, 69, 69),
(1334, 27, 70, 70, 70, 70, 70),
(1335, 27, 27, 27, 27, 27, 27),
(1336, 27, 55, 55, 55, 55, 55),
(1337, 27, 35, 35, 35, 35, 35),
(1338, 27, 36, 36, 36, 36, 36),
(1339, 27, 40, 40, 40, 40, 40),
(1340, 27, 33, 33, 33, 33, 33),
(1341, 27, 37, 37, 37, 37, 37),
(1342, 27, 56, 56, 56, 56, 56),
(1343, 27, 57, 57, 57, 57, 57),
(1345, 27, 46, 46, 46, 46, 46),
(1346, 27, 48, 48, 48, 48, 48),
(1350, 27, 59, 59, 59, 59, 59),
(1351, 27, 32, 32, 32, 32, 32),
(1352, 27, 47, 47, 47, 47, 47),
(1353, 27, 54, 54, 54, 54, 54),
(1354, 27, 41, 41, 41, 41, 41),
(1355, 27, 44, 44, 44, 44, 44),
(1356, 27, 45, 45, 45, 45, 45),
(1358, 27, 60, 60, 60, 60, 60),
(1359, 27, 61, 61, 61, 61, 61),
(1362, 27, 11, 11, 11, 11, 11),
(1367, 27, 51, 51, 51, 51, 51);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_type`
--

CREATE TABLE `tbl_vehicle_type` (
  `vehicle_type_id` int(11) NOT NULL,
  `vehicle_type` varchar(500) CHARACTER SET utf8 NOT NULL,
  `extra_charges` varchar(300) CHARACTER SET utf8 DEFAULT '0',
  `image` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vehicle_type`
--

INSERT INTO `tbl_vehicle_type` (`vehicle_type_id`, `vehicle_type`, `extra_charges`, `image`, `status`, `date`) VALUES
(10, 'Cycle', '0', 'vehicle_type_10.png', 1, 1677678927),
(9, 'Bike', '0', 'vehicle_type_9.png', 1, 1677678944);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `rating_num` int(11) NOT NULL DEFAULT 0,
  `rating_total` decimal(20,0) NOT NULL DEFAULT 0,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `address1` longtext DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` varchar(20) DEFAULT NULL,
  `commission` float NOT NULL DEFAULT 0,
  `details` longtext DEFAULT NULL,
  `last_login` int(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `general_detail` longtext DEFAULT NULL,
  `shoptiming_code` longtext DEFAULT NULL,
  `kyc_seller` longtext DEFAULT NULL,
  `setting_agreement` longtext DEFAULT NULL,
  `social_setting` longtext DEFAULT NULL,
  `logo` longtext DEFAULT NULL,
  `logo_type` varchar(25) DEFAULT NULL,
  `subtitle` varchar(60) DEFAULT NULL,
  `livestatus` varchar(20) DEFAULT NULL,
  `cover_image` longtext DEFAULT NULL,
  `cover_type` varchar(25) DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `proof_image` longtext DEFAULT NULL,
  `proof_type` varchar(25) DEFAULT NULL,
  `profile_complete` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `driver_assign` tinyint(1) DEFAULT NULL,
  `auto_assign` tinyint(1) NOT NULL DEFAULT 0,
  `instant` tinyint(1) DEFAULT 1,
  `takeaway` tinyint(1) DEFAULT 1,
  `schedule` tinyint(1) NOT NULL DEFAULT 1,
  `manage_food` tinyint(1) NOT NULL DEFAULT 1,
  `review_panel` tinyint(1) NOT NULL DEFAULT 1,
  `pos` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `zone_id` varchar(11) DEFAULT NULL,
  `cin` double NOT NULL DEFAULT 0,
  `wallet_balance` float NOT NULL DEFAULT 0,
  `handover_time` int(11) DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`vendor_id`, `name`, `rating_num`, `rating_total`, `email`, `password`, `company`, `display_name`, `address1`, `status`, `create_timestamp`, `approve_timestamp`, `member_expire_timestamp`, `commission`, `details`, `last_login`, `phone`, `description`, `latitude`, `longitude`, `general_detail`, `shoptiming_code`, `kyc_seller`, `setting_agreement`, `social_setting`, `logo`, `logo_type`, `subtitle`, `livestatus`, `cover_image`, `cover_type`, `token`, `proof_image`, `proof_type`, `profile_complete`, `type`, `driver_assign`, `auto_assign`, `instant`, `takeaway`, `schedule`, `manage_food`, `review_panel`, `pos`, `featured`, `best_seller`, `zone_id`, `cin`, `wallet_balance`, `handover_time`, `email_verification`) VALUES
(320, 'Smith', 0, '0', 'kwality@gmail.com', '0bda0a2de7572f1231bbfd02ce76c270a88687f928f62229cbec2421c9725d67bf6d9d66936bcfc2b33b2beadbfebbc4013266a8f7d1bfab42e4cee02b39031a', '123', 'Kwality Walls Frozen ', 'Chennai', 'approved', 1675490241, 1668011828, NULL, 0, NULL, NULL, '45675678768', NULL, '55.876789', '22.678768', '{\"id\":null,\"storeName\":\"Kwality Walls Frozen \",\"subtitle\":\"Delicious deserts\",\"email\":\"kwality@gmail.com\",\"ownerName\":\"Smith\",\"companyLegalName\":\"123\",\"proofId\":\"National ID\",\"logo\":null,\"mobile\":\"45675678768\",\"alterMobile\":\"5646757678\",\"pickupAddress\":\"Chennai\",\"pinCode\":\"576786\",\"landmark\":\"Mall\",\"latitude\":\"55.876789\",\"longitude\":\"22.678768\",\"addressProofImage\":null,\"business\":\"Startup\",\"zoneId\":\"93\",\"handOverTime\":\"15\",\"availableType\":\"1\",\"shopTiming\":{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:58 PM\"},\"foodType\":\"NON Veg\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:58 PM\",\"dayId\":\"single\"}]', '{\"id\":null,\"personalProof\":\"National ID\",\"selectedYear\":\"2017\",\"businessType\":\"Private Limited Company\",\"holdersName\":\"Smith\",\"accountNumber\":\"546456456\",\"bankCode\":\"4565t7yuhj\",\"branch\":\"gyvhbjn\",\"bankName\":\"cfvgybhunijmk\"}', '1', NULL, 'https://cyanoverse.com/uploads/gallery_image/gallery_13.jpg', 'external', 'Delicious deserts', 'Open', 'cover_320.png', 'direct', NULL, 'http://version1.cyanoverse.com/uploads/gallery_image/gallery_15.jpg', 'external', 1, 2, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 0, '93', 0, 75.85, 15, 0),
(321, 'Gopal', 0, '0', 'gupta@gmail.com', '1234', '1234', 'Shri Gupta Sweets', 'Chennai', 'approved', 1668010024, 1668011822, NULL, 0, NULL, NULL, '45674538768', NULL, '55.876789', '22.678768', '{\"id\":null,\"storeName\":\"Shri Gupta Sweets\",\"subtitle\":\"Best sweets\",\"email\":\"gupta@gmail.com\",\"ownerName\":\"Gopal\",\"companyLegalName\":\"Gupta Sweets\",\"proofId\":\"National ID\",\"logo\":\"http:\\/\\/version1.cyanoverse.com\\/uploads\\/gallery_image\\/gallery_16.jpg\",\"mobile\":\"7895766788\",\"alterMobile\":\"53455757678\",\"pickupAddress\":\"Chennai\",\"pinCode\":\"576886\",\"landmark\":\"Temple\",\"latitude\":\"55.876789\",\"longitude\":\"22.678768\",\"addressProofImage\":null,\"business\":\"Startup\",\"zoneId\":\"93\",\"handOverTime\":\"25\",\"availableType\":\"1\",\"shopTiming\":{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:57 PM\"},\"foodType\":\"Veg\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:57 PM\",\"dayId\":\"single\"}]', '{\"id\":null,\"personalProof\":\"National ID\",\"selectedYear\":\"2017\",\"businessType\":\"Private Limited Company\",\"holdersName\":\"Gopal\",\"accountNumber\":\"5678456456\",\"bankCode\":\"4565t7yuhj\",\"branch\":\"gyvhbjn\",\"bankName\":\"cfvgybhunijmk\"}', '1', NULL, 'https://cyanoverse.com/uploads/gallery_image/gallery_16.jpg', 'external', 'Best sweets', 'Open', 'https://cyanoverse.com/uploads/gallery_image/gallery_17.jfif', 'external', NULL, 'http://version1.cyanoverse.com/uploads/gallery_image/gallery_15.jpg', 'external', 1, 2, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 0, '93', 0, 0, 25, 0),
(322, 'Robert', 0, '0', 'henry@gmail.com', '3df50f77f4b1719b86b8d7929d0cec3365b3d5c73cf504b1071aeafefc579eebcb2f36dfa9301708791a0696c829f0d7a92516a8dc7e44a51dc29a0560ceb202', '12345', 'Henry & Wolsey', 'Chennai', 'approved', 1669625839, 1668011814, NULL, 0, NULL, NULL, '45454678768', NULL, '55.876789', '22.678768', '{\"id\":null,\"storeName\":\"Henry & Wolsey\",\"subtitle\":\"Hygene\",\"email\":\"henry@gmail.com\",\"ownerName\":\"Robert\",\"companyLegalName\":\"12345\",\"proofId\":\"National ID\",\"logo\":null,\"mobile\":\"45454678768\",\"alterMobile\":\"5896757678\",\"pickupAddress\":\"Chennai\",\"pinCode\":\"576386\",\"landmark\":\"Hotel\",\"latitude\":\"55.876789\",\"longitude\":\"22.678768\",\"addressProofImage\":null,\"business\":\"Startup\",\"zoneId\":\"93\",\"handOverTime\":\"15\",\"availableType\":\"1\",\"shopTiming\":{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:30 PM\"},\"foodType\":\"Veg\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"10:30 PM\",\"dayId\":\"single\"}]', '{\"id\":null,\"personalProof\":\"National ID\",\"selectedYear\":\"2017\",\"businessType\":\"Private Limited Company\",\"holdersName\":\"Robert\",\"accountNumber\":\"546456456\",\"bankCode\":\"4565t7yuhj\",\"branch\":\"gyvhbjn\",\"bankName\":\"cfvgybhunijmk\"}', '1', NULL, 'https://cyanoverse.com/uploads/gallery_image/gallery_18.jfif', 'external', 'Hygene', 'Open', 'cover_322.png', 'direct', NULL, 'http://version1.cyanoverse.com/uploads/gallery_image/gallery_15.jpg', 'external', 1, 2, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 0, '93', 0, 191.39, 15, 0),
(323, 'Chan', 0, '0', 'barbe@gmail.com', '3df50f77f4b1719b86b8d7929d0cec3365b3d5c73cf504b1071aeafefc579eebcb2f36dfa9301708791a0696c829f0d7a92516a8dc7e44a51dc29a0560ceb202', '123456', 'Barbequeen Restaurant', 'Chennai, Tamil Nadu, India', 'approved', 1669353303, 1668011809, NULL, 0, NULL, NULL, '45678978768', NULL, '13.0826802', '80.2707184', '{\"id\":null,\"storeName\":\"Barbequeen Restaurant\",\"subtitle\":\"Tasty and Healthy\",\"email\":\"barbe@gmail.com\",\"ownerName\":\"Chan\",\"companyLegalName\":\"123456\",\"proofId\":\"National ID\",\"logo\":null,\"mobile\":\"45678978768\",\"alterMobile\":\"89086757678\",\"pickupAddress\":\"Chennai, Tamil Nadu, India\",\"pinCode\":\"576796\",\"landmark\":\"station\",\"latitude\":\"13.0826802\",\"longitude\":\"80.2707184\",\"addressProofImage\":null,\"business\":\"Startup\",\"zoneId\":\"93\",\"handOverTime\":\"25\",\"availableType\":\"1\",\"shopTiming\":{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:40 PM\"},\"foodType\":\"Veg\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:40 PM\",\"dayId\":\"single\"}]', '{\"id\":null,\"personalProof\":\"National ID\",\"selectedYear\":\"2017\",\"businessType\":\"Private Limited Company\",\"holdersName\":\"Chan\",\"accountNumber\":\"546456456\",\"bankCode\":\"4565t7yuhj\",\"branch\":\"gyvhbjn\",\"bankName\":\"cfvgybhunijmk\"}', '1', NULL, 'https://cyanoverse.com/uploads/gallery_image/gallery_20.png', 'external', 'Tasty and Healthy', 'Open', 'https://cyanoverse.com/uploads/gallery_image/gallery_21.png', 'external', NULL, 'http://version1.cyanoverse.com/uploads/gallery_image/gallery_15.jpg', 'external', 1, 2, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 0, '93', 0, 0, 25, 0),
(324, 'Hendry', 4, '5', 'rasikas@gmail.com', '0bda0a2de7572f1231bbfd02ce76c270a88687f928f62229cbec2421c9725d67bf6d9d66936bcfc2b33b2beadbfebbc4013266a8f7d1bfab42e4cee02b39031a', '1234567', 'Rasikas Restaurant', '4VC3P8CG+8F', 'approved', 1677149607, 1668011795, NULL, 0, NULL, NULL, '45645678768', NULL, '-41.2791399789355', '161.3262102592163', '{\"id\":null,\"storeName\":\"Rasikas Restaurant\",\"subtitle\":\"Halal food\",\"email\":\"rasikas@gmail.com\",\"ownerName\":\"Hendry\",\"companyLegalName\":\"1234567\",\"proofId\":\"National ID\",\"logo\":null,\"mobile\":\"45645678768\",\"alterMobile\":\"56462342678\",\"pickupAddress\":\"4VC3P8CG+8F\",\"pinCode\":\"576786\",\"landmark\":\"Bus stand\",\"latitude\":\"-41.2791399789355\",\"longitude\":\"161.3262102592163\",\"addressProofImage\":null,\"business\":\"Startup\",\"zoneId\":\"93\",\"handOverTime\":\"15\",\"availableType\":\"1\",\"shopTiming\":{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:22 PM\"},\"foodType\":\"NON Veg\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"11:22 PM\",\"dayId\":\"single\"}]', '{\"id\":null,\"personalProof\":\"National ID\",\"selectedYear\":\"2017\",\"businessType\":\"Private Limited Company\",\"holdersName\":\"Hendry\",\"accountNumber\":\"5324556456\",\"bankCode\":\"4565t7yuhj\",\"branch\":\"gyvhbjn\",\"bankName\":\"cfvgybhunijmk\"}', '1', NULL, 'https://cyanoverse.com/uploads/gallery_image/gallery_22.jpg', 'external', 'Halal food', 'Open', 'cover_324.jpeg', 'direct', NULL, 'http://version1.cyanoverse.com/uploads/gallery_image/gallery_15.jpg', 'external', 1, 2, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 0, '93', 0, 2859, 15, 0),
(352, '123', 0, '0', 'teststore@gmail.com', '0bda0a2de7572f1231bbfd02ce76c270a88687f928f62229cbec2421c9725d67bf6d9d66936bcfc2b33b2beadbfebbc4013266a8f7d1bfab42e4cee02b39031a', 'test', 'test store', 'Chennai, Tamil Nadu, India', 'approved', 1677138903, 1677136850, NULL, 10, NULL, NULL, '123', NULL, '13.0826802', '80.2707184', '{\"id\":null,\"storeName\":\"test store\",\"subtitle\":\"test\",\"email\":\"teststore@gmail.com\",\"ownerName\":\"123\",\"companyLegalName\":\"test\",\"proofId\":\"National ID\",\"logo\":null,\"mobile\":\"123\",\"alterMobile\":\"123\",\"pickupAddress\":\"Chennai, Tamil Nadu, India\",\"pinCode\":\"213\",\"landmark\":\"123\",\"latitude\":\"13.0826802\",\"longitude\":\"80.2707184\",\"addressProofImage\":null,\"business\":\"Government registered\",\"zoneId\":\"93\",\"handOverTime\":\"12\",\"availableType\":\"1\",\"shopTiming\":{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"12:49 PM\"},\"foodType\":\"NON Veg\"}', '[{\"fromAvailableTime\":\"6:30 AM\",\"toAvailableTime\":\"12:49 PM\",\"dayId\":\"single\"}]', '{\"id\":null,\"personalProof\":\"National ID\",\"selectedYear\":\"123\",\"businessType\":\"Private Limited Company\",\"holdersName\":\"123\",\"accountNumber\":\"123\",\"bankCode\":\"123\",\"branch\":\"213\",\"bankName\":\"123\"}', NULL, NULL, 'vendor_352.png', 'direct', 'test', 'Open', 'cover_352.png', 'direct', NULL, 'proof_352.png', 'direct', 1, 2, NULL, 0, 1, 1, 1, 1, 1, 1, 0, 0, '93', 0, 0, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_invoice`
--

CREATE TABLE `tbl_vendor_invoice` (
  `vendor_invoice_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `invoice_id` varchar(100) DEFAULT NULL,
  `order_amount` double DEFAULT 0,
  `commission` double DEFAULT 0,
  `settlement_value` varchar(100) DEFAULT NULL,
  `driver_fees` double DEFAULT 0,
  `driver_tips` double DEFAULT 0,
  `driver_comission` double DEFAULT 0,
  `driver_settlement_value` double DEFAULT NULL,
  `km` varchar(15) DEFAULT NULL,
  `paid_date` varchar(100) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `drivertransaction_id` varchar(150) DEFAULT NULL,
  `cus_trans` int(10) DEFAULT NULL,
  `buyer_id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `deliver_assignedtime` int(30) DEFAULT NULL,
  `deliverycompleted_time` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_menu`
--

CREATE TABLE `tbl_vendor_menu` (
  `menu_id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `section` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1 COMMENT '1= active 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_vendor_menu`
--

INSERT INTO `tbl_vendor_menu` (`menu_id`, `label`, `link`, `icon`, `parent`, `sort`, `time`, `section`, `status`) VALUES
(1, 'dashboard', 'vendor/dashboard', 'icon-Dinner', 0, 0, '2022-11-07 17:10:14', 1, 1),
(7, 'items', 'vendor/items/items_list', 'fa fa-cube', 150, 0, '2022-11-07 17:10:18', NULL, 1),
(10, 'pull-down', '', '', 0, 0, '2022-10-01 16:08:26', NULL, 0),
(11, 'Settings', 'vendor/settings/profile_setting', 'fa fa-fw fa-info-circle', 0, 30, '2022-11-10 16:54:46', 10, 1),
(12, 'system_settings', 'admin/settings/system', 'fa fa-fw fa-desktop', 25, 2, '2022-10-01 16:08:32', NULL, 2),
(13, 'email_settings', 'admin/settings/email', 'fa fa-fw fa-envelope', 25, 3, '2022-10-01 16:08:35', NULL, 2),
(14, 'email_templates', 'admin/settings/templates', 'fa fa-fw fa-pencil-square', 25, 4, '2022-10-01 16:08:40', NULL, 2),
(15, 'email_integration', 'admin/settings/email_integration', 'fa fa-fw fa-envelope-o', 25, 5, '2022-10-01 16:08:43', NULL, 2),
(16, 'payment_settings', 'admin/settings/payments', 'fa fa-fw fa-dollar', 25, 6, '2022-10-01 16:08:46', NULL, 2),
(17, 'menu_allocation', 'admin/settings/menu_allocation', 'fa fa-fw fa fa-compass', 25, 0, '2022-10-01 16:08:50', NULL, 2),
(18, 'notification', 'admin/settings/notification', 'fa fa-fw fa-bell-o', 25, 0, '2022-10-01 16:08:54', NULL, 2),
(19, 'email_notification', 'admin/settings/email_notification', 'fa fa-fw fa-bell-o', 25, 0, '2022-10-01 16:08:58', NULL, 2),
(20, 'General Settings', 'admin/settings/', 'fa fa-fw fa-database', 25, 0, '2022-10-08 08:12:16', 10, 1),
(21, 'translations', 'admin/settings/translations', 'fa fa-fw fa-language', 25, 0, '2022-10-01 16:09:03', NULL, 2),
(22, 'system_update', 'admin/settings/system_update', 'fa fa-fw fa-pencil-square-o', 25, 0, '2022-10-01 16:09:05', NULL, 2),
(23, 'dashboard_settings', 'admin/settings/dashboard', 'fa fa-fw fa-dashboard', 25, 11, '2022-10-02 06:55:27', 3, 2),
(24, 'allowed_ip', 'admin/settings/allowed_ip', 'fa fa-server', 25, 1, '2022-10-01 16:09:11', NULL, 2),
(25, 'supplier', 'admin/supplier', 'icon-briefcase', 150, 1, '2022-10-01 16:09:14', NULL, 1),
(26, 'purchase_payment', 'admin/purchase/all_payments', 'icon-credit-card', 150, 4, '2022-10-01 16:09:16', NULL, 1),
(27, 'POS', 'admin/pos', 'icon-Printer', 0, 3, '2022-11-05 09:30:22', 2, 0),
(31, 'Orders', 'vendor/orders', 'icon-Box1', 0, 2, '2022-11-07 17:10:37', 2, 1),
(33, 'Item', 'vendor/item', 'icon-Dinner', 0, 8, '2022-11-07 17:10:42', 3, 1),
(37, 'Addon', 'vendor/addon', 'icon-Fork-spoon', 0, 9, '2022-11-07 17:10:56', 3, 1),
(40, 'menu', 'vendor/itemcategory', 'icon-Chart-bar1', 0, 7, '2022-11-07 17:11:04', 3, 1),
(45, 'Coupons', 'vendor/coupon', 'icon-Ticket', 0, 24, '2022-11-07 17:11:08', 7, 1),
(47, 'My Wallet', 'vendor/settlement', 'icon-Credit-card', 0, 20, '2022-11-11 02:25:53', 6, 1),
(48, 'Driver', 'vendor/driver', 'icon-Shield-user', 0, 14, '2022-11-07 17:11:19', 5, 1),
(51, 'Gallery', 'vendor/gallery', 'icon-Image', 0, 34, '2022-11-07 17:11:24', 10, 1),
(54, 'Cash in Hand', 'vendor/cash_on_hand', 'icon-Money', 0, 21, '2022-11-07 17:11:36', 6, 1),
(55, 'Pos order', 'sdf', 'we', 0, 4, '2022-11-05 09:30:24', 2, 0),
(56, 'Custom Addon group', 'vendor/Custom_addon_group', 'icon-Cheese', 0, 10, '2022-11-07 17:11:47', 3, 1),
(57, 'Custom Variant group', 'vendor/Custom_variant_group', 'icon-Glass-martini', 0, 11, '2022-11-07 17:11:50', 3, 1),
(60, 'Sales report', 'vendor/report/sales_report', 'icon-Chart-bar', 0, 26, '2022-11-07 17:11:59', 8, 1),
(61, 'Item report', 'vendor/report/item_report', 'icon-Diagnostics ', 0, 27, '2022-11-07 17:12:02', 8, 1),
(62, 'Analytics', 'sf', 'icon-Pixels', 0, 1, '2022-11-02 04:41:14', 8, 0),
(64, 'Placed', 'vendor/orders/index/Placed', 'icon-Circle', 31, 1, '2022-11-07 17:12:16', 0, 1),
(65, 'Accepted', 'vendor/orders/index/Accepted', 'icon-Circle', 31, 2, '2022-11-07 17:13:02', 0, 1),
(66, 'Processing', 'vendor/orders/index/Processing', 'icon-Circle', 31, 3, '2022-11-07 17:13:06', 0, 1),
(67, 'Ready', 'vendor/orders/index/Ready', 'icon-Circle', 31, 4, '2022-11-07 17:13:11', 0, 1),
(68, 'Shipped', 'vendor/orders/index/Shipped', 'icon-Circle', 31, 5, '2022-11-07 17:13:15', 0, 1),
(69, 'Completed', 'vendor/orders/index/Completed', 'icon-Circle', 31, 6, '2022-11-07 17:13:21', 0, 1),
(70, 'Cancelled', 'vendor/orders/index/Cancelled', 'icon-Circle', 31, 7, '2022-11-07 17:13:24', 0, 1),
(71, 'All', 'vendor/orders/index/All', 'icon-Circle', 31, 0, '2022-11-07 17:13:27', 0, 1),
(72, 'Delivery timeslot', 'vendor/deliverytimeslot', 'icon-Alarm-clock', 0, 14, '2022-11-11 09:37:34', 5, 1),
(74, 'Refund', 'vendor/orders/index/Refund', 'icon-Circle', 31, 8, '2022-11-07 17:12:16', 0, 1),
(75, 'Scheduled', 'vendor/orders/index/scheduled', 'icon-Circle', 31, 9, '2022-11-07 17:12:16', 0, 1),
(76, 'Takeaway', 'vendor/orders/index/takeaway', 'icon-Circle', 31, 10, '2022-11-07 17:12:16', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_version_control`
--

CREATE TABLE `tbl_version_control` (
  `version_control_id` int(11) NOT NULL,
  `app` varchar(100) NOT NULL,
  `app_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `version` varchar(150) NOT NULL,
  `app_link` longtext CHARACTER SET utf16 NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_version_control`
--

INSERT INTO `tbl_version_control` (`version_control_id`, `app`, `app_name`, `version`, `app_link`, `status`) VALUES
(1, 'user', 'Super User', '2.5', 'https://play.google.com/store/apps/details?id=com.multisuperstore21.protech', 1),
(2, 'driver', '', '2.2.10', 'https://play.google.com/store/apps/details?id=com.doordrop.user', 0),
(3, 'vendor', '', '2.2.10', 'https://play.google.com/store/apps/details?id=com.doordrop.user', 0),
(4, 'provider', '', '2.2.10', 'https://play.google.com/store/apps/details?id=com.doordrop.user', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet_transactions`
--

CREATE TABLE `tbl_wallet_transactions` (
  `wallet_transactions_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `message` longtext CHARACTER SET utf8 DEFAULT NULL,
  `made_by` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `date` int(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zone`
--

CREATE TABLE `tbl_zone` (
  `zone_id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `positions` longtext CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `original_position` longtext DEFAULT NULL,
  `position_array` longtext NOT NULL,
  `description` longtext CHARACTER SET utf8 DEFAULT NULL,
  `today_visits` int(11) NOT NULL DEFAULT 0,
  `date` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_zone`
--

INSERT INTO `tbl_zone` (`zone_id`, `title`, `positions`, `status`, `original_position`, `position_array`, `description`, `today_visits`, `date`) VALUES
(93, 'World', '[\"61.751004 169.769418\",\"78.962439 72.035043\",\"61.078188 -35.543082\",\"72.698005 -152.964957\",\"48.193518 -142.418082\",\"-12.943056 -84.058707\",\"-57.540922 -69.996207\",\"5.919255 -14.449332\",\"-48.721812 17.191293\",\"8.012938 92.425668\",\"-43.86824 119.144418\",\"-41.279914 161.331918\"]', 1, '\"61.751004,169.769418,78.962439,72.035043,61.078188,-35.543082,72.698005,-152.964957,48.193518,-142.418082,-12.943056,-84.058707,-57.540922,-69.996207,5.919255,-14.449332,-48.721812,17.191293,8.012938,92.425668,-43.86824,119.144418,-41.279914,161.331918\"', '[ 61.751004,169.769418 , 78.962439,72.035043 , 61.078188,-35.543082 , 72.698005,-152.964957 , 48.193518,-142.418082 , -12.943056,-84.058707 , -57.540922,-69.996207 , 5.919255,-14.449332 , -48.721812,17.191293 , 8.012938,92.425668 , -43.86824,119.144418 , -41.279914,161.331918 , ]', 'esfwe', 9, 1647002651),
(147, 'salem', '[\"11.685801 78.176312\",\"11.691012 78.117518\",\"11.652767 78.103185\",\"11.637047 78.142238\",\"11.635702 78.181977\",\"11.682775 78.195109\"]', 0, '\"11.685801,78.176312,11.691012,78.117518,11.652767,78.103185,11.637047,78.142238,11.635702,78.181977,11.682775,78.195109\"', '[ 11.685801,78.176312 , 11.691012,78.117518 , 11.652767,78.103185 , 11.637047,78.142238 , 11.635702,78.181977 , 11.682775,78.195109 , ]', 'werew', 0, 1661962502);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `installer`
--
ALTER TABLE `installer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_account_details`
--
ALTER TABLE `tbl_account_details`
  ADD PRIMARY KEY (`account_details_id`);

--
-- Indexes for table `tbl_activities`
--
ALTER TABLE `tbl_activities`
  ADD PRIMARY KEY (`activities_id`);

--
-- Indexes for table `tbl_addon`
--
ALTER TABLE `tbl_addon`
  ADD PRIMARY KEY (`addon_id`);

--
-- Indexes for table `tbl_allowed_ip`
--
ALTER TABLE `tbl_allowed_ip`
  ADD PRIMARY KEY (`allowed_ip_id`);

--
-- Indexes for table `tbl_announcements`
--
ALTER TABLE `tbl_announcements`
  ADD PRIMARY KEY (`announcements_id`);

--
-- Indexes for table `tbl_banner_master`
--
ALTER TABLE `tbl_banner_master`
  ADD PRIMARY KEY (`banner_master_id`);

--
-- Indexes for table `tbl_campaign`
--
ALTER TABLE `tbl_campaign`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `tbl_cancelled_order`
--
ALTER TABLE `tbl_cancelled_order`
  ADD PRIMARY KEY (`cancelled_order_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_chistory`
--
ALTER TABLE `tbl_chistory`
  ADD PRIMARY KEY (`chistory_id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_client_menu`
--
ALTER TABLE `tbl_client_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_client_role`
--
ALTER TABLE `tbl_client_role`
  ADD PRIMARY KEY (`client_role_id`);

--
-- Indexes for table `tbl_clock`
--
ALTER TABLE `tbl_clock`
  ADD PRIMARY KEY (`clock_id`);

--
-- Indexes for table `tbl_clock_history`
--
ALTER TABLE `tbl_clock_history`
  ADD PRIMARY KEY (`clock_history_id`);

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `tbl_currencies`
--
ALTER TABLE `tbl_currencies`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `tbl_currency_method`
--
ALTER TABLE `tbl_currency_method`
  ADD PRIMARY KEY (`currency_method_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_custom_addon_group`
--
ALTER TABLE `tbl_custom_addon_group`
  ADD PRIMARY KEY (`custom_addon_group_id`);

--
-- Indexes for table `tbl_custom_field`
--
ALTER TABLE `tbl_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `tbl_custom_variant_group`
--
ALTER TABLE `tbl_custom_variant_group`
  ADD PRIMARY KEY (`custom_variant_group_id`);

--
-- Indexes for table `tbl_dashboard`
--
ALTER TABLE `tbl_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_days`
--
ALTER TABLE `tbl_days`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `tbl_deliverytimeslot`
--
ALTER TABLE `tbl_deliverytimeslot`
  ADD PRIMARY KEY (`deliverytimeslot_id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`departments_id`);

--
-- Indexes for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  ADD PRIMARY KEY (`designations_id`);

--
-- Indexes for table `tbl_draft`
--
ALTER TABLE `tbl_draft`
  ADD PRIMARY KEY (`draft_id`);

--
-- Indexes for table `tbl_driver`
--
ALTER TABLE `tbl_driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `tbl_driver_instructions`
--
ALTER TABLE `tbl_driver_instructions`
  ADD PRIMARY KEY (`driver_instructions_id`);

--
-- Indexes for table `tbl_driver_login_logs`
--
ALTER TABLE `tbl_driver_login_logs`
  ADD PRIMARY KEY (`driver_login_logs_id`);

--
-- Indexes for table `tbl_driver_rating`
--
ALTER TABLE `tbl_driver_rating`
  ADD PRIMARY KEY (`driver_rating_id`);

--
-- Indexes for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  ADD PRIMARY KEY (`email_templates_id`);

--
-- Indexes for table `tbl_estimate_items`
--
ALTER TABLE `tbl_estimate_items`
  ADD PRIMARY KEY (`estimate_items_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`files_id`);

--
-- Indexes for table `tbl_form`
--
ALTER TABLE `tbl_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_gallery_manager`
--
ALTER TABLE `tbl_gallery_manager`
  ADD PRIMARY KEY (`gallery_manager_id`);

--
-- Indexes for table `tbl_goal_type`
--
ALTER TABLE `tbl_goal_type`
  ADD PRIMARY KEY (`goal_type_id`);

--
-- Indexes for table `tbl_itemcategory`
--
ALTER TABLE `tbl_itemcategory`
  ADD PRIMARY KEY (`itemcategory_id`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`items_id`);

--
-- Indexes for table `tbl_item_history`
--
ALTER TABLE `tbl_item_history`
  ADD PRIMARY KEY (`item_history_id`);

--
-- Indexes for table `tbl_landingpage_config`
--
ALTER TABLE `tbl_landingpage_config`
  ADD PRIMARY KEY (`landingpage_config_id`);

--
-- Indexes for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `tbl_locales`
--
ALTER TABLE `tbl_locales`
  ADD PRIMARY KEY (`locale`);

--
-- Indexes for table `tbl_logistics_pricing`
--
ALTER TABLE `tbl_logistics_pricing`
  ADD PRIMARY KEY (`logistics_pricing_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `sort` (`sort`);

--
-- Indexes for table `tbl_menu_section`
--
ALTER TABLE `tbl_menu_section`
  ADD PRIMARY KEY (`menu_section_id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`notifications_id`);

--
-- Indexes for table `tbl_outgoing_emails`
--
ALTER TABLE `tbl_outgoing_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `tbl_pinaction`
--
ALTER TABLE `tbl_pinaction`
  ADD PRIMARY KEY (`pinaction_id`);

--
-- Indexes for table `tbl_policy`
--
ALTER TABLE `tbl_policy`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `tbl_private_chat`
--
ALTER TABLE `tbl_private_chat`
  ADD PRIMARY KEY (`private_chat_id`);

--
-- Indexes for table `tbl_private_chat_messages`
--
ALTER TABLE `tbl_private_chat_messages`
  ADD PRIMARY KEY (`private_chat_messages_id`);

--
-- Indexes for table `tbl_private_chat_users`
--
ALTER TABLE `tbl_private_chat_users`
  ADD PRIMARY KEY (`private_chat_users_id`);

--
-- Indexes for table `tbl_purchase_payments`
--
ALTER TABLE `tbl_purchase_payments`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `tbl_pushnotification`
--
ALTER TABLE `tbl_pushnotification`
  ADD PRIMARY KEY (`pushnotification_id`);

--
-- Indexes for table `tbl_reminders`
--
ALTER TABLE `tbl_reminders`
  ADD PRIMARY KEY (`reminder_id`),
  ADD KEY `rel_id` (`module`),
  ADD KEY `rel_type` (`user_id`);

--
-- Indexes for table `tbl_restaurantproduct`
--
ALTER TABLE `tbl_restaurantproduct`
  ADD PRIMARY KEY (`restaurantproduct_id`),
  ADD KEY `title` (`title`(333)),
  ADD KEY `vendor` (`vendor`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `tbl_sale`
--
ALTER TABLE `tbl_sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `tbl_saved_items`
--
ALTER TABLE `tbl_saved_items`
  ADD PRIMARY KEY (`saved_items_id`);

--
-- Indexes for table `tbl_sent`
--
ALTER TABLE `tbl_sent`
  ADD PRIMARY KEY (`sent_id`);

--
-- Indexes for table `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_shop_review`
--
ALTER TABLE `tbl_shop_review`
  ADD PRIMARY KEY (`shop_review_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `tbl_tax_rates`
--
ALTER TABLE `tbl_tax_rates`
  ADD KEY `Index 1` (`tax_rates_id`);

--
-- Indexes for table `tbl_tickets`
--
ALTER TABLE `tbl_tickets`
  ADD PRIMARY KEY (`tickets_id`);

--
-- Indexes for table `tbl_tickets_replies`
--
ALTER TABLE `tbl_tickets_replies`
  ADD PRIMARY KEY (`tickets_replies_id`);

--
-- Indexes for table `tbl_tips`
--
ALTER TABLE `tbl_tips`
  ADD PRIMARY KEY (`tips_id`);

--
-- Indexes for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  ADD PRIMARY KEY (`todo_id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`transactions_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_usertransaction`
--
ALTER TABLE `tbl_usertransaction`
  ADD PRIMARY KEY (`usertransaction_id`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`user_role_id`);

--
-- Indexes for table `tbl_vehicle_type`
--
ALTER TABLE `tbl_vehicle_type`
  ADD PRIMARY KEY (`vehicle_type_id`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `vendor_id_2` (`vendor_id`);

--
-- Indexes for table `tbl_vendor_invoice`
--
ALTER TABLE `tbl_vendor_invoice`
  ADD PRIMARY KEY (`vendor_invoice_id`);

--
-- Indexes for table `tbl_vendor_menu`
--
ALTER TABLE `tbl_vendor_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_version_control`
--
ALTER TABLE `tbl_version_control`
  ADD PRIMARY KEY (`version_control_id`);

--
-- Indexes for table `tbl_wallet_transactions`
--
ALTER TABLE `tbl_wallet_transactions`
  ADD PRIMARY KEY (`wallet_transactions_id`);

--
-- Indexes for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_account_details`
--
ALTER TABLE `tbl_account_details`
  MODIFY `account_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_activities`
--
ALTER TABLE `tbl_activities`
  MODIFY `activities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `tbl_addon`
--
ALTER TABLE `tbl_addon`
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_allowed_ip`
--
ALTER TABLE `tbl_allowed_ip`
  MODIFY `allowed_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_announcements`
--
ALTER TABLE `tbl_announcements`
  MODIFY `announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_banner_master`
--
ALTER TABLE `tbl_banner_master`
  MODIFY `banner_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbl_campaign`
--
ALTER TABLE `tbl_campaign`
  MODIFY `campaign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cancelled_order`
--
ALTER TABLE `tbl_cancelled_order`
  MODIFY `cancelled_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_chistory`
--
ALTER TABLE `tbl_chistory`
  MODIFY `chistory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_client_menu`
--
ALTER TABLE `tbl_client_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_client_role`
--
ALTER TABLE `tbl_client_role`
  MODIFY `client_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_clock`
--
ALTER TABLE `tbl_clock`
  MODIFY `clock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_clock_history`
--
ALTER TABLE `tbl_clock_history`
  MODIFY `clock_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_config`
--
ALTER TABLE `tbl_config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_currency_method`
--
ALTER TABLE `tbl_currency_method`
  MODIFY `currency_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=856;

--
-- AUTO_INCREMENT for table `tbl_custom_addon_group`
--
ALTER TABLE `tbl_custom_addon_group`
  MODIFY `custom_addon_group_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_custom_field`
--
ALTER TABLE `tbl_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_custom_variant_group`
--
ALTER TABLE `tbl_custom_variant_group`
  MODIFY `custom_variant_group_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_dashboard`
--
ALTER TABLE `tbl_dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_days`
--
ALTER TABLE `tbl_days`
  MODIFY `day_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_deliverytimeslot`
--
ALTER TABLE `tbl_deliverytimeslot`
  MODIFY `deliverytimeslot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `departments_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  MODIFY `designations_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_draft`
--
ALTER TABLE `tbl_draft`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_driver`
--
ALTER TABLE `tbl_driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `tbl_driver_instructions`
--
ALTER TABLE `tbl_driver_instructions`
  MODIFY `driver_instructions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_driver_login_logs`
--
ALTER TABLE `tbl_driver_login_logs`
  MODIFY `driver_login_logs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_driver_rating`
--
ALTER TABLE `tbl_driver_rating`
  MODIFY `driver_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  MODIFY `email_templates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_estimate_items`
--
ALTER TABLE `tbl_estimate_items`
  MODIFY `estimate_items_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `files_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_form`
--
ALTER TABLE `tbl_form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_gallery_manager`
--
ALTER TABLE `tbl_gallery_manager`
  MODIFY `gallery_manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_goal_type`
--
ALTER TABLE `tbl_goal_type`
  MODIFY `goal_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_itemcategory`
--
ALTER TABLE `tbl_itemcategory`
  MODIFY `itemcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_item_history`
--
ALTER TABLE `tbl_item_history`
  MODIFY `item_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_landingpage_config`
--
ALTER TABLE `tbl_landingpage_config`
  MODIFY `landingpage_config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_logistics_pricing`
--
ALTER TABLE `tbl_logistics_pricing`
  MODIFY `logistics_pricing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `tbl_menu_section`
--
ALTER TABLE `tbl_menu_section`
  MODIFY `menu_section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `notifications_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_outgoing_emails`
--
ALTER TABLE `tbl_outgoing_emails`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `payments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pinaction`
--
ALTER TABLE `tbl_pinaction`
  MODIFY `pinaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_policy`
--
ALTER TABLE `tbl_policy`
  MODIFY `policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_private_chat`
--
ALTER TABLE `tbl_private_chat`
  MODIFY `private_chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_private_chat_messages`
--
ALTER TABLE `tbl_private_chat_messages`
  MODIFY `private_chat_messages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_private_chat_users`
--
ALTER TABLE `tbl_private_chat_users`
  MODIFY `private_chat_users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_purchase_payments`
--
ALTER TABLE `tbl_purchase_payments`
  MODIFY `payments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pushnotification`
--
ALTER TABLE `tbl_pushnotification`
  MODIFY `pushnotification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_reminders`
--
ALTER TABLE `tbl_reminders`
  MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_restaurantproduct`
--
ALTER TABLE `tbl_restaurantproduct`
  MODIFY `restaurantproduct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `tbl_sale`
--
ALTER TABLE `tbl_sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2193;

--
-- AUTO_INCREMENT for table `tbl_saved_items`
--
ALTER TABLE `tbl_saved_items`
  MODIFY `saved_items_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sent`
--
ALTER TABLE `tbl_sent`
  MODIFY `sent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_shop_review`
--
ALTER TABLE `tbl_shop_review`
  MODIFY `shop_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_tax_rates`
--
ALTER TABLE `tbl_tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tickets`
--
ALTER TABLE `tbl_tickets`
  MODIFY `tickets_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tickets_replies`
--
ALTER TABLE `tbl_tickets_replies`
  MODIFY `tickets_replies_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tips`
--
ALTER TABLE `tbl_tips`
  MODIFY `tips_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  MODIFY `todo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `transactions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_usertransaction`
--
ALTER TABLE `tbl_usertransaction`
  MODIFY `usertransaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1368;

--
-- AUTO_INCREMENT for table `tbl_vehicle_type`
--
ALTER TABLE `tbl_vehicle_type`
  MODIFY `vehicle_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `tbl_vendor_invoice`
--
ALTER TABLE `tbl_vendor_invoice`
  MODIFY `vendor_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2093;

--
-- AUTO_INCREMENT for table `tbl_vendor_menu`
--
ALTER TABLE `tbl_vendor_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `tbl_version_control`
--
ALTER TABLE `tbl_version_control`
  MODIFY `version_control_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_wallet_transactions`
--
ALTER TABLE `tbl_wallet_transactions`
  MODIFY `wallet_transactions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
