-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 05:38 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding-project-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jv_assets`
--

CREATE TABLE `jv_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_assets`
--

INSERT INTO `jv_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 181, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(8, 1, 17, 40, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(9, 1, 41, 42, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 43, 44, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 45, 46, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}'),
(12, 1, 47, 48, 1, 'com_login', 'com_login', '{}'),
(13, 1, 49, 50, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 51, 52, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 53, 54, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 55, 60, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}'),
(17, 1, 61, 62, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 63, 144, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}'),
(19, 1, 145, 148, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(20, 1, 149, 150, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}'),
(21, 1, 151, 152, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}'),
(22, 1, 153, 154, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 155, 156, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}'),
(24, 1, 157, 160, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}'),
(26, 1, 161, 162, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 146, 147, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 158, 159, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 163, 164, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 165, 166, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 167, 168, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 169, 170, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 171, 172, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 173, 174, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 64, 65, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 66, 67, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 68, 69, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 70, 71, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 72, 73, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 74, 75, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 76, 77, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 78, 79, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 80, 81, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 82, 83, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 84, 85, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 86, 87, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 88, 89, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 90, 91, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 92, 93, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 56, 57, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 94, 95, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 175, 176, 1, 'com_jvframework', 'JVFRAMEWORK', '{}'),
(57, 16, 58, 59, 2, 'com_menus.menu.2', 'Hidden menu', '{}'),
(58, 18, 96, 97, 2, 'com_modules.module.88', 'Slider textinfo', '{}'),
(59, 8, 20, 31, 2, 'com_content.category.8', 'Our true love story', '{}'),
(60, 59, 21, 22, 3, 'com_content.article.1', 'Our First Met', '{}'),
(61, 59, 23, 24, 3, 'com_content.article.2', 'Our First Dating', '{}'),
(62, 59, 25, 26, 3, 'com_content.article.3', 'How He Proposed', '{}'),
(63, 59, 27, 28, 3, 'com_content.article.4', 'Our First Kiss', '{}'),
(64, 59, 29, 30, 3, 'com_content.article.5', 'Now We Together', '{}'),
(65, 18, 98, 99, 2, 'com_modules.module.89', 'OUR TRUE LOVE STORY || Are getting married!', '{}'),
(66, 18, 100, 101, 2, 'com_modules.module.90', 'GROOM AND BRIDE || ARE GETTING MARRIED!', '{}'),
(67, 18, 102, 103, 2, 'com_modules.module.91', 'CountDown', '{}'),
(68, 18, 104, 105, 2, 'com_modules.module.92', 'BE OUR GUEST! || RSVP', '{}'),
(69, 18, 106, 107, 2, 'com_modules.module.93', 'You’re Invited Jenny & Mark Wedding', '{}'),
(70, 18, 108, 109, 2, 'com_modules.module.94', 'JV Contact', '{}'),
(71, 8, 32, 39, 2, 'com_content.category.9', 'From our blog', '{}'),
(72, 18, 110, 111, 2, 'com_modules.module.95', 'Contact Us', '{}'),
(73, 18, 112, 113, 2, 'com_modules.module.96', 'Logo footer', '{}'),
(74, 71, 33, 34, 3, 'com_content.article.6', 'Planning Honeymoon Trip', '{}'),
(75, 71, 35, 36, 3, 'com_content.article.7', 'Surprises For Guests', '{}'),
(76, 71, 37, 38, 3, 'com_content.article.8', 'Bachelor Party!', '{}'),
(77, 1, 177, 178, 1, 'com_jkcustomfields', 'com_jkcustomfields', '{}'),
(78, 18, 114, 115, 2, 'com_modules.module.97', 'MEMORABLE PHOTO GALLERY || JENNY & MARK', '{}'),
(79, 18, 116, 117, 2, 'com_modules.module.98', 'LOVABLE FAMILY || MOST IMP. PERSONS', '{}'),
(80, 18, 118, 119, 2, 'com_modules.module.99', 'JK Testimonial', '{}'),
(81, 18, 120, 121, 2, 'com_modules.module.100', 'Client slider (home)', '{}'),
(82, 18, 122, 123, 2, 'com_modules.module.101', 'Lovable family members', '{}'),
(83, 18, 124, 125, 2, 'com_modules.module.102', 'CONTACT US || IF ANY QUERY', '{}'),
(84, 18, 126, 127, 2, 'com_modules.module.103', 'FROM OUR BLOG || WEDDING JOURNAL', '{}'),
(85, 18, 128, 129, 2, 'com_modules.module.104', 'THE WEDDING EVENT || CEREMONY & PARTY', '{}'),
(86, 1, 179, 180, 1, 'com_k2', 'COM_K2', '{}'),
(87, 18, 130, 131, 2, 'com_modules.module.105', 'K2 Comments', '{}'),
(88, 18, 132, 133, 2, 'com_modules.module.106', 'K2 Content', '{}'),
(89, 18, 134, 135, 2, 'com_modules.module.107', 'K2 Tools', '{}'),
(90, 18, 136, 137, 2, 'com_modules.module.108', 'K2 Users', '{}'),
(91, 18, 138, 139, 2, 'com_modules.module.109', 'K2 User', '{}'),
(92, 18, 140, 141, 2, 'com_modules.module.110', 'K2 Quick Icons (admin)', '{}'),
(93, 18, 142, 143, 2, 'com_modules.module.111', 'K2 Stats (admin)', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `jv_associations`
--

CREATE TABLE `jv_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_banners`
--

CREATE TABLE `jv_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_banner_clients`
--

CREATE TABLE `jv_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_banner_tracks`
--

CREATE TABLE `jv_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_categories`
--

CREATE TABLE `jv_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_categories`
--

INSERT INTO `jv_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 196, '2018-03-19 14:07:55', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 196, '2018-03-19 14:07:55', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 196, '2018-03-19 14:07:55', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 196, '2018-03-19 14:07:55', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 196, '2018-03-19 14:07:55', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 196, '2018-03-19 14:07:55', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 59, 1, 11, 12, 1, 'our-true-love-story', 'com_content', 'Our true love story', 'our-true-love-story', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 196, '2018-03-20 14:17:08', 0, '2018-03-20 14:17:08', 0, '*', 1),
(9, 71, 1, 13, 14, 1, 'our-blog', 'com_content', 'From our blog', 'our-blog', '', '<p>Wedding journal</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 196, '2018-03-23 15:41:20', 196, '2018-03-24 03:30:39', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jv_contact_details`
--

CREATE TABLE `jv_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_content`
--

CREATE TABLE `jv_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_content`
--

INSERT INTO `jv_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 60, 'Our First Met', 'our-first-met', '<p class="wd_story_highlight">That day changed life</p>\r\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...</p>', '', 1, 8, '2010-05-20 21:18:56', 196, '', '2018-03-20 14:32:45', 196, 0, '0000-00-00 00:00:00', '2010-03-20 14:25:24', '0000-00-00 00:00:00', '{"image_intro":"images\\/jv-sampledata\\/content\\/story_1.jpg","float_intro":"left","image_intro_alt":"Our First Met","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 61, 'Our First Dating', 'our-first-dating', '<p class="wd_story_highlight">Our best dinner ever</p>\r\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...</p>', '', 1, 8, '2012-05-20 21:18:56', 196, '', '2018-03-20 14:32:07', 196, 0, '0000-00-00 00:00:00', '2012-05-20 21:18:56', '0000-00-00 00:00:00', '{"image_intro":"images\\/jv-sampledata\\/content\\/story_2.jpg","float_intro":"left","image_intro_alt":"Our First Dating","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 62, 'How He Proposed', 'how-he-proposed', '<p class="wd_story_highlight">That was so wonderful</p>\r\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...</p>', '', 1, 8, '2014-05-10 21:18:56', 196, '', '2018-03-21 14:44:08', 196, 0, '0000-00-00 00:00:00', '2014-03-20 14:25:24', '0000-00-00 00:00:00', '{"image_intro":"images\\/jv-sampledata\\/content\\/story_3.jpg","float_intro":"left","image_intro_alt":"How He Proposed","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 63, 'Our First Kiss', 'our-first-kiss', '<p class="wd_story_highlight">Feeling awesome :)</p>\r\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...</p>', '', 1, 8, '2016-03-20 21:18:56', 196, '', '2018-03-21 14:44:39', 196, 0, '0000-00-00 00:00:00', '2016-03-20 14:25:24', '0000-00-00 00:00:00', '{"image_intro":"images\\/jv-sampledata\\/content\\/story_4.jpg","float_intro":"left","image_intro_alt":"Our First Kiss","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 64, 'Now We Together', 'now-we-together', '<p class="wd_story_highlight">We''re waiting for the best</p>\r\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...</p>', '', 1, 8, '2018-03-20 21:18:56', 196, '', '2018-03-21 14:44:59', 196, 0, '0000-00-00 00:00:00', '2018-03-20 14:25:24', '0000-00-00 00:00:00', '{"image_intro":"images\\/jv-sampledata\\/content\\/story_5.jpg","float_intro":"left","image_intro_alt":"Now We Together","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 74, 'Planning Honeymoon Trip', 'planning-honeymoon-trip', '<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit..</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.</p>\r\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.</p>\r\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.</p>\r\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.</p>', -2, 9, '2013-05-20 22:52:31', 196, '', '2018-03-23 16:00:20', 196, 0, '0000-00-00 00:00:00', '2013-05-20 22:52:31', '0000-00-00 00:00:00', '{"image_intro":"images\\/jv-sampledata\\/content\\/blog1.jpg","float_intro":"","image_intro_alt":"Planning Honeymoon Trip","image_intro_caption":"","image_fulltext":"images\\/jv-sampledata\\/content\\/blog1.jpg","float_fulltext":"none","image_fulltext_alt":"Planning Honeymoon Trip","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 20, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(7, 75, 'Surprises For Guests', 'surprises-for-guests', '<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.</p>\r\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.</p>\r\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.</p>\r\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.</p>', -2, 9, '2015-05-20 22:52:31', 196, '', '2018-03-23 15:59:57', 196, 0, '0000-00-00 00:00:00', '2015-05-20 22:52:31', '0000-00-00 00:00:00', '{"image_intro":"images\\/jv-sampledata\\/content\\/blog2.jpg","float_intro":"","image_intro_alt":"Surprises For Guests","image_intro_caption":"","image_fulltext":"images\\/jv-sampledata\\/content\\/blog2.jpg","float_fulltext":"","image_fulltext_alt":"Surprises For Guests","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(8, 76, 'Bachelor Party!', 'bachelor-party', '<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.</p>\r\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.</p>\r\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.</p>\r\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.</p>', -2, 9, '2015-05-20 22:52:31', 196, '', '2018-03-23 15:59:35', 196, 0, '0000-00-00 00:00:00', '2015-05-20 22:52:31', '0000-00-00 00:00:00', '{"image_intro":"images\\/jv-sampledata\\/content\\/blog3.jpg","float_intro":"","image_intro_alt":"Bachelor Party!","image_intro_caption":"","image_fulltext":"images\\/jv-sampledata\\/content\\/blog3.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `jv_contentitem_tag_map`
--

CREATE TABLE `jv_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `jv_content_frontpage`
--

CREATE TABLE `jv_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_content_frontpage`
--

INSERT INTO `jv_content_frontpage` (`content_id`, `ordering`) VALUES
(6, 1),
(7, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jv_content_rating`
--

CREATE TABLE `jv_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_content_types`
--

CREATE TABLE `jv_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_content_types`
--

INSERT INTO `jv_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `jv_core_log_searches`
--

CREATE TABLE `jv_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_extensions`
--

CREATE TABLE `jv_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_extensions`
--

INSERT INTO `jv_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_tags":"1","show_info":"1","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","show_misc":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,sass","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","info_block_show_title":"1","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_associations":"0","flags":"1","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","captcha":"","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"4d511c9cff8c3b88f6b8a35edeacba75"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{"name":"mod_sampledata","type":"module","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"MOD_SAMPLEDATA_XML_DESCRIPTION","group":"","filename":"mod_sampledata"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.34.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `jv_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.8","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","formatselect","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styleselect","|","formatselect","fontselect","fontsizeselect","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","template","|","print","preview","codesample","insertdatetime","removeformat"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550","html_width":"750"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1522769772}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1522309788,"unique_id":"5fa285d0841f9a33a41fd6f84a2b72de3f341230","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{"name":"plg_sampledata_blog","type":"plugin","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION","group":"","filename":"blog"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{"name":"plg_system_sessiongc","type":"plugin","creationDate":"February 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION","group":"","filename":"sessiongc"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"March 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"March 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"March 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'JVFRAMEWORK', 'component', 'com_jvframework', '', 1, 1, 0, 0, '{"name":"JVFRAMEWORK","type":"component","creationDate":"April 2016","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved.","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"4.2.6","description":"\\n\\t\\n\\t<style type=\\"text\\/css\\">\\n\\t.icon-wrapper {width: auto; height: auto}\\n\\t.adminform {text-align: left}\\n  \\t.edit-template { display: none}\\n  \\t#template-manager #adminForm .edit-template {  display: block}\\n  \\t#adminForm .adminform > a > img {border: 1px solid #CCC; margin-right: 20px}\\n  \\t#adminForm h2 {text-transform: uppercase; color: #7FB11F}\\n  \\t#adminForm ul li {padding: 2px}\\n  \\t#style-form > div, .width-40, .width-60 {width: 100% !important; text-align: left}\\n  \\tfieldset.adminform > label { display: none}\\n  \\t#style-form .mod-desc {margin-left: 0 !important}\\n  \\t\\n  \\t#controlpanel {background: #FFF; overflow: hidden; padding: 30px 0; clear: both}\\n\\t#controlpanel div.icon a{ text-align: center; height: inherit; text-decoration: none; width: 125px; float: left; margin-right: 15px; border: 1px solid #CCC; background: #FFF}\\n\\t\\n\\t#controlpanel img {padding: 0; float: none;}\\n\\t#controlpanel span { display: block; height: 25px; background: #2c2c2c; color: #FFF; line-height: 25px; text-align: center;}\\n\\t\\n\\t#controlpanel .about { line-height:20px; border: medium none; clear: both; }\\n\\t#controlpanel .about h3 {margin: 0 0 10px; color: #7fb11f; font-size: 18px}\\n\\t#controlpanel .about .about-inner { }\\n\\t#controlpanel .about .about-inner > div { padding:15px}\\n\\t#controlpanel .about .cpanel-inner { border-bottom: 1px solid #CCC; padding: 20px 0 !important;}\\n\\t\\n\\t#controlpanel .about p { margin: 10px 0 0; font-size: 12px;}\\n\\t#controlpanel .about ul { padding-left:0; color:#909090}\\n\\t#controlpanel .about ul li { list-style-type:none; padding: 0}\\n\\t\\n\\t.company-info a { display:block; padding-top:10px; text-align:right; float:right}\\n  <\\/style>\\n  <script type=\\"text\\/javascript\\">\\n  \\tfunction getUrlVars() {var vars = {}; var parts = window.location.href.replace(\\/[?&]+([^=&]+)=([^&]*)\\/gi, function(m,key,value) { vars[key] = value; }); return vars; }\\n\\t \\n\\t window.addEvent(''domready'', function(){\\n\\t\\tvar btn_edit = $(''edit-template'');  \\n\\t\\tif(btn_edit)\\t\\t \\n\\t\\t\\tbtn_edit.set(''href'',  btn_edit.get(''href'')  + ''&id='' + getUrlVars()[\\"id\\"] );\\n\\t }); \\n  <\\/script>\\n\\t <ul>\\n\\t\\t<li><em>Version: 4.2.6<\\/em><\\/li>\\n\\t\\t<li><em>Release date: April 2016<\\/em><\\/li>\\n\\t    <li><em>Contact us: <a href=\\"mailto:info@phpkungfu.club\\">info@phpkungfu.club<\\/a><\\/em><\\/li>\\n\\t<\\/ul>\\n\\t  <div id=\\"controlpanel\\">\\n\\t<div class=\\"width-60 fltlft\\">\\n\\t\\t<div class=\\"cpanel-icon\\">\\n\\t\\t\\t<div class=\\"icon-wrapper\\">\\n\\t\\t\\t\\t<div class=\\"icon\\">\\n\\t\\t\\t\\t\\t<a href=\\"index.php?option=com_templates&view=styles\\" class=\\"hasTip\\" title=\\"Style::The \\u201cStyle\\u201d manager allows you to create, delete and edit styles \\u2013 instances of the theme with their own setting, which you can apply to the entire site or a single page.\\">\\n\\t\\t\\t\\t\\t\\t<img alt=\\"\\" src=\\"components\\/com_jvframework\\/assets\\/images\\/cpanel\\/style.png\\">\\n\\t\\t\\t\\t\\t\\t<span>Style<\\/span>\\n\\t\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<div class=\\"icon-wrapper\\">\\n\\t\\t\\t\\t<div class=\\"icon\\">\\n\\t\\t\\t\\t\\t<a title=\\"Typographies::The \\u201cTypography\\u201d manager allows you to set up, edit and delete the typographies that will be used on your site.\\" class=\\"hasTip\\" href=\\"index.php?option=com_jvframework&amp;view=typographies\\">\\n\\t\\t\\t\\t\\t\\t<img src=\\"components\\/com_jvframework\\/assets\\/images\\/cpanel\\/typographies.png\\" alt=\\"\\">\\n\\t\\t\\t\\t\\t\\t<span>Typographies<\\/span>\\n\\t\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<div class=\\"icon-wrapper\\">\\n\\t\\t\\t\\t<div class=\\"icon\\">\\n\\t\\t\\t\\t\\t<a title=\\"Extensions::This manager list all the JV Framework extensions that were installed on your site.\\" class=\\"hasTip\\" href=\\"index.php?option=com_jvframework&amp;view=extensions\\">\\n\\t\\t\\t\\t\\t\\t<img src=\\"components\\/com_jvframework\\/assets\\/images\\/cpanel\\/extension.png\\" alt=\\"\\">\\n\\t\\t\\t\\t\\t\\t<span>Extensions<\\/span>\\n\\t\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<div class=\\"icon-wrapper\\">\\n\\t\\t\\t\\t<div class=\\"icon\\">\\n\\t\\t\\t\\t<a title=\\"Install::Use Joomla''s Installer to install JV-Framework''s Extension.\\" class=\\"hasTip\\" href=\\"index.php?option=com_installer\\">\\n\\t\\t\\t\\t\\t<img src=\\"components\\/com_jvframework\\/assets\\/images\\/cpanel\\/install.png\\" alt=\\"\\">\\n\\t\\t\\t\\t\\t<span>Install<\\/span>\\n\\t\\t\\t\\t<\\/a>\\t\\t\\t\\t\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t<\\/div>\\n\\t<\\/div>\\n\\t<div class=\\"width-60 about\\">\\n    \\t<div class=\\"about-inner\\">\\n\\t\\t<div class=\\"cpanel-inner\\">\\n\\t\\t\\t<h3>\\/\\/\\/\\/ JV Framework<\\/h3>\\n\\t\\t\\t\\n\\t\\t\\t<p>Flexible, customizable, high performance and developer-friendly.\\nJV Framework 4.2.6 is a steep improvemence over our old Framework. While dropping some functions like drag and drop, it had gained several new ones, more up-to-date functions like a Grid layout control, a Responsive Design and a modular nature, allowing developers to improve or create new features with ease.\\n<br>Try it out and experience the improvemence.<\\/p>\\n\\t\\t<\\/div>\\n        <div class=\\"cpanel-logo\\"><a href=\\"http:\\/\\/phpkungfu.club\\" target=\\"_blank\\"><img alt=\\"Logo\\" src=\\"components\\/com_jvframework\\/assets\\/images\\/logo2.png\\"><\\/a><\\/div>\\n        <\\/div>\\n\\t<\\/div>\\t\\t\\n<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"jvframework"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 0, 'System - JVFramework ', 'plugin', 'jvframework', 'system', 0, 1, 1, 0, '{"name":"System - JVFramework ","type":"plugin","creationDate":"April 2016","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"4.2.5","description":"","group":"","filename":"jvframework"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'System - JV Libraries', 'plugin', 'jvlibs', 'system', 0, 1, 1, 0, '{"name":"System - JV Libraries","type":"plugin","creationDate":"April 2016","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"4.2.5","description":"\\n    \\n        Libraries: jquery, jquery ui, jquery plugins, bootstraps, mootools <br\\/>\\n        Customfield for joomla.\\n    \\n    ","group":"","filename":"jvlibs"}', '{"bootstrapstyle":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `jv_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10003, 0, 'JV-Melody-III', 'template', 'jv-melody-iii', '', 0, 1, 1, 0, '{"name":"JV-Melody-III","type":"template","creationDate":"June 2014","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"4.0","description":"\\n  <style type=\\"text\\/css\\">\\n  \\t.icon-wrapper {width: auto; height: auto}\\n\\t.adminform {text-align: left}\\n  \\t.edit-template { display: none}\\n  \\t#template-manager .edit-template {  display: block}\\n  \\t#template-manager > ul {  float: left; list-style: none; margin: 0;}\\n  \\t#template-manager .pull-left {margin-right: 10px}\\n  \\t#adminForm .adminform > a > img {border: 1px solid #CCC; margin-right: 20px}\\n  \\t#adminForm h2 {text-transform: uppercase; color: #7FB11F}\\n  \\t#adminForm ul li {padding: 2px}\\n  \\t#style-form > div, .width-40, .width-60 {width: 100% !important}\\n  \\tfieldset.adminform > label { display: none}\\n  \\t#style-form .mod-desc {margin-left: 0 !important}\\n  \\t\\n  \\t#controlpanel {background: #FFF; overflow: hidden; padding: 30px 0; clear: both}\\n\\t#controlpanel div.icon a{ text-align: center; height: inherit; text-decoration: none; width: 125px; float: left; margin-right: 15px; border: 1px solid #CCC; background: #FFF}\\n\\t\\n\\t#controlpanel img {padding: 0; float: none;}\\n\\t#controlpanel span { display: block; height: 25px; background: #2c2c2c; color: #FFF; line-height: 25px; text-align: center;}\\n\\t\\n\\t#controlpanel .about { line-height:20px; border: medium none; clear: both; }\\n\\t#controlpanel .about h3 {margin: 0 0 10px; color: #7fb11f; font-size: 18px}\\n\\t#controlpanel .about .about-inner { }\\n\\t#controlpanel .about .about-inner > div { padding:15px}\\n\\t#controlpanel .about .cpanel-inner { border-bottom: 1px solid #CCC; padding: 20px 0 !important;}\\n\\t\\n\\t#controlpanel .about p { margin: 10px 0 0; font-size: 12px;}\\n\\t#controlpanel .about ul { padding-left:0; color:#909090}\\n\\t#controlpanel .about ul li { list-style-type:none; padding: 0}\\n\\t\\n\\t.company-info a { display:block; padding-top:10px; text-align:right; float:right}\\n  <\\/style>\\n  <script type=\\"text\\/javascript\\">\\n  \\tfunction getUrlVars() {var vars = {}; var parts = window.location.href.replace(\\/[?&]+([^=&]+)=([^&]*)\\/gi, function(m,key,value) { vars[key] = value; }); return vars; }\\n\\t \\n\\t window.addEvent(''domready'', function(){\\n\\t\\t var btn_edit = $(''edit-template'');  \\t  \\n\\t  \\t btn_edit.set(''href'',  btn_edit.get(''href'')  + ''&id='' + getUrlVars()[\\"id\\"] );\\n\\t }); \\n  <\\/script>\\n\\t <ul>\\n\\t\\t\\t\\t<li><em>Version: 4.0<\\/em><\\/li>\\n\\t\\t\\t\\t<li><em>Release date: 12\\/22\\/2014<\\/em><\\/li>\\n\\t    <li><em>Contact us: <a href=\\"mailto:info@phpkungfu.club\\">info@phpkungfu.club<\\/a><\\/em><\\/li>\\n\\t<\\/ul>\\n\\t  <div id=\\"controlpanel\\">\\n\\t<form name=\\"adminForm\\" method=\\"post\\" action=\\"\\/jv-framework\\/administrator\\/index.php?option=com_jvframework\\">\\n\\t<div class=\\"width-60 fltlft\\">\\n\\t\\t<div class=\\"cpanel-icon\\">\\n\\t\\t\\t<div class=\\"icon-wrapper edit-template\\">\\n\\t\\t\\t\\t<div class=\\"icon\\">\\n\\t\\t\\t\\t\\t<a title=\\"Edit template::Edit template using JV Framework template editor\\" id=\\"edit-template\\" class=\\"modal hasTip\\" rel=\\"{handler: ''iframe'', size: {x: 875, y: 550}, onClose: function() {}}\\" href=\\"index.php?option=com_jvframework&view=theme&layout=edit&tmpl=component\\">\\n\\t\\t\\t\\t\\t\\t<img alt=\\"\\" src=\\"components\\/com_jvframework\\/assets\\/images\\/cpanel\\/thememanager.png\\">\\n\\t\\t\\t\\t\\t\\t<span>Edit template<\\/span>\\n\\t\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<div class=\\"icon-wrapper\\">\\n\\t\\t\\t\\t<div class=\\"icon\\">\\n\\t\\t\\t\\t\\t<a title=\\"Typographies::The \\u201cTypography\\u201d manager allows you to set up, edit and delete the typographies that will be used on your site.\\" class=\\"hasTip\\" href=\\"index.php?option=com_jvframework&amp;view=typographies\\">\\n\\t\\t\\t\\t\\t\\t<img src=\\"components\\/com_jvframework\\/assets\\/images\\/cpanel\\/typographies.png\\" alt=\\"\\">\\n\\t\\t\\t\\t\\t\\t<span>Typographies<\\/span>\\n\\t\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<div class=\\"icon-wrapper\\">\\n\\t\\t\\t\\t<div class=\\"icon\\">\\n\\t\\t\\t\\t\\t<a title=\\"Extensions::This manager list all the JV Framework extensions that were installed on your site.\\" class=\\"hasTip\\" href=\\"index.php?option=com_jvframework&amp;view=extensions\\">\\n\\t\\t\\t\\t\\t\\t<img src=\\"components\\/com_jvframework\\/assets\\/images\\/cpanel\\/extension.png\\" alt=\\"\\">\\n\\t\\t\\t\\t\\t\\t<span>Extensions<\\/span>\\n\\t\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<div class=\\"icon-wrapper\\">\\n\\t\\t\\t\\t<div class=\\"icon\\">\\n\\t\\t\\t\\t<a title=\\"Install::Use Joomla''s Installer to install JV-Framework''s Extension.\\" class=\\"hasTip\\" href=\\"index.php?option=com_installer\\">\\n\\t\\t\\t\\t\\t<img src=\\"components\\/com_jvframework\\/assets\\/images\\/cpanel\\/install.png\\" alt=\\"\\">\\n\\t\\t\\t\\t\\t<span>Install<\\/span>\\n\\t\\t\\t\\t<\\/a>\\t\\t\\t\\t\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\t\\t<\\/div>\\n\\t<\\/div>\\n\\t<div class=\\"width-60 about\\">\\n    \\t<div class=\\"about-inner\\">\\n\\t\\t<div class=\\"cpanel-inner\\">\\n\\t\\t\\t<h3>\\/\\/\\/\\/ JV Framework<\\/h3>\\n\\t\\t\\t\\n\\t\\t\\t<p>Flexible, customizable, high performance and developer-friendly.\\nJV Framework 4.2.5 is a steep improvemence over our old Framework. While dropping some functions like drag and drop, it had gained several new ones, more up-to-date functions like a Grid layout control, a Responsive Design and a modular nature, allowing developers to improve or create new features with ease.\\n<br>Try it out and experience the improvemence.<\\/p>\\n\\t\\t<\\/div>\\n        <div class=\\"cpanel-logo\\"><a href=\\"http:\\/\\/phpkungfu.club\\" target=\\"_blank\\"><img alt=\\"Logo\\" src=\\"components\\/com_jvframework\\/assets\\/images\\/logo2.png\\"><\\/a><\\/div>\\n        <\\/div>\\n\\t<\\/div>\\t\\n\\t<div>\\n    \\t<input type=\\"hidden\\" value=\\"\\" name=\\"task\\">\\t\\n        <input type=\\"hidden\\" value=\\"styles\\" name=\\"view\\">\\n    <\\/div>\\n\\t<\\/form>\\t\\n<\\/div>\\n  ","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'JV Framework - Analytic', 'extension', 'analytic', '', 0, 1, 0, 0, '{"name":"JV Framework - Analytic","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Analytic extension for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'JV Framework - Bootstrap', 'extension', 'bootstrap', '', 0, 1, 0, 0, '{"name":"JV Framework - Bootstrap","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Bootstrap extension for JV Framework","group":"","filename":"config"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'JV Framework - Breadcrumb', 'extension', 'breadcrumb', '', 0, 1, 0, 0, '{"name":"JV Framework - Breadcrumb","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Breadcrumb extension for JV Framework","group":"","filename":"config"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'JV Framework - Copyright', 'extension', 'copyright', '', 0, 1, 0, 0, '{"name":"JV Framework - Copyright","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Copyright extension for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'JV Framework - Date', 'extension', 'date', '', 0, 1, 0, 0, '{"name":"JV Framework - Date","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Date extension for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'JV Framework - JS Fonts', 'extension', 'fonts', '', 0, 1, 0, 0, '{"name":"JV Framework - JS Fonts","type":"extension","creationDate":"April 2016","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0.3","description":"Google Fonts extension for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'JV Framework - Fontsizer', 'extension', 'fontsizer', '', 0, 1, 0, 0, '{"name":"JV Framework - Fontsizer","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Fontsizer extension for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'JV Framework - JS Custom', 'extension', 'jscustom', '', 0, 1, 0, 0, '{"name":"JV Framework - JS Custom","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"jscustom extension for JV Framework","group":"","filename":"config"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'JV Framework - Layout Manager', 'extension', 'layout', '', 0, 1, 0, 0, '{"name":"JV Framework - Layout Manager","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Layout Manager For JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 0, 'JV Framework - Lazyload', 'extension', 'lazyload', '', 0, 1, 0, 0, '{"name":"JV Framework - Lazyload","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Lazyload for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 0, 'JV Framework - Logo', 'extension', 'logo', '', 0, 1, 0, 0, '{"name":"JV Framework - Logo","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Site logo extension for JV Framework","group":"","filename":"config"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 0, 'JV Framework - Menu System', 'extension', 'menu', '', 0, 1, 0, 0, '{"name":"JV Framework - Menu System","type":"extension","creationDate":"July 31, 2015","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0.2","description":"Menu System Feature","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 0, 'JV Framework - Message', 'extension', 'message', '', 0, 1, 0, 0, '{"name":"JV Framework - Message","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"System message extension for JV Framework","group":"","filename":"config"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 0, 'JV Framework - Mobile', 'extension', 'mobile', '', 0, 1, 0, 0, '{"name":"JV Framework - Mobile","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Mobile Support for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 0, 'JV Framework - Module Assignment', 'extension', 'module_assignment', '', 0, 1, 0, 0, '{"name":"JV Framework - Module Assignment","type":"extension","creationDate":"24\\/12\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Module Assignment","group":"","filename":"config"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 0, 'JV Framework - Performance', 'extension', 'performance', '', 0, 1, 0, 0, '{"name":"JV Framework - Performance","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Performance Optimizing For JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 0, 'JV Framework - Related article', 'extension', 'related', '', 0, 1, 0, 0, '{"name":"JV Framework - Related article","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Related article extension for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'JV Framework - Scrolling Effect', 'extension', 'scrolling', '', 0, 1, 0, 0, '{"name":"JV Framework - Scrolling Effect","type":"extension","creationDate":"28\\/06\\/2014","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Scrolling Effect extension for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 0, 'JV Framework - Style', 'extension', 'style', '', 0, 1, 0, 0, '{"name":"JV Framework - Style","type":"extension","creationDate":"July 31, 2015","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0.1","description":"Style ","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 0, 'JV Framework - Totop', 'extension', 'totop', '', 0, 1, 0, 0, '{"name":"JV Framework - Totop","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Totop extension for JV Framework","group":"","filename":"config"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'JV Framework - Typography', 'extension', 'typo', '', 0, 1, 0, 0, '{"name":"JV Framework - Typography","type":"extension","creationDate":"14\\/7\\/2012","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club","version":"1.0","description":"Typography extension for JV Framework","group":"","filename":"config"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 0, 'JV Latest News', 'module', 'mod_jvlatest_news', '', 0, 1, 0, 0, '{"name":"JV Latest News","type":"module","creationDate":"Feb 2013","author":"JoomlaVi! Project","copyright":"Copyright (C) JoomlaVi. All rights reserved","authorEmail":"info@joomlavi.com","authorUrl":"www.joomlavi.com","version":"1.0.0","description":"JV Latest News for joomla 2.5 and joomla 3.0","group":"","filename":"mod_jvlatest_news"}', '{"source":"content","catid":"","k2catid":"","group_cat":"0","css_bootstrap":"0","num_intro":"5","nums_link":"3","columns":"1","type_content":"0","show_title_intro":"1","title_link_intro":"1","show_intro_date":"1","show_intro_author":"1","show_readmore_intro":"1","show_link_all":"0","orderby_sec":"published","show_tag":"0","show_content_intro":"1","cut_intro":"150","readmore_text":"","intro_thumbnail":"resize","intro_thumbnail_align":"none","intro_thumbnail_position":"before","intro_thumbnail_width":"100","intro_thumbnail_height":"100","item":"","items":"","show_paging":"1","auto":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 0, 'JK Invitation', 'module', 'mod_jkinvitation', '', 0, 1, 0, 0, '{"name":"JK Invitation","type":"module","creationDate":"May 2014","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"1.0.0","description":"JK Invitation","group":"","filename":"mod_jkinvitation"}', '{"day":"Monday"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 0, 'JK CountDown', 'module', 'mod_jkcountdown', '', 0, 1, 0, 0, '{"name":"JK CountDown","type":"module","creationDate":"May 2014","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"1.0.0","description":"JK Wedding","group":"","filename":"mod_jkcountdown"}', '{"gtm":"+0700"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 0, 'MOD_JVCONTACT', 'module', 'mod_jvcontact', '', 0, 1, 0, 0, '{"name":"MOD_JVCONTACT","type":"module","creationDate":"11\\/2015","author":"PHPKungfu Solutions Co","copyright":"Copyright \\u00a9 2008-2015 phpkungfu.club. All Rights Reserved.","authorEmail":"info@phpkungfu.club","authorUrl":"http:\\/\\/www.phpkungfu.club\\/my-tickets.html","version":"3.4","description":"MOD_JVCONTACT_XML_DESCRIPTION","group":"","filename":"mod_jvcontact"}', '{"thankyou":"Thank you!","textsubmit":"Submit","mailsubject":"Mail from JV Contact module","mailcopy":"","mailto":"","mailto2":"","showform":"1","textinfield":"1","showsocial":"0","showfacebook":"1","showtweeter":"1","showgplus":"1","showlikein":"1","showaddthismore":"1","showcaptcha":"0","captcha_version":"1","captchatheme":"white","captcha_instructions_visual":"Instructions visual","captcha_instructions_audio":"Instructions audio","captcha_play_again":"Play again","captcha_cant_hear_this":"Cant hear this","captcha_visual_challenge":"Visual challenge","captcha_audio_challenge":"Audio challenge","captcha_refresh_btn":"Refresh","captcha_help_btn":"Help","captcha_incorrect_try_again":"Incorrect try again","showmap":"0","map_apikey":"AIzaSyD7KJAbPjbKDmQxCVsiTlVOmQihmbOoFdY","map_width":"100%","map_height":"200px","map_zoom":"17","map_icon":"","map_lat":"10.784513","map_long":"106.630744","map_infotext":"I''m here!"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 0, 'com_jkcustomfields', 'component', 'com_jkcustomfields', '', 1, 1, 0, 0, '{"name":"com_jkcustomfields","type":"component","creationDate":"May 2014","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"1.0.0","description":"JK Customfields","group":"","filename":"jkcustomfields"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 0, 'JK Gallery', 'module', 'mod_jkgallery', '', 0, 1, 0, 0, '{"name":"JK Gallery","type":"module","creationDate":"March 2018","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"1.0.0","description":"JK Gallery","group":"","filename":"mod_jkgallery"}', '{"cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 0, 'JK Member', 'module', 'mod_jkmember', '', 0, 1, 0, 0, '{"name":"JK Member","type":"module","creationDate":"March 2018","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"1.0.0","description":"JK Member","group":"","filename":"mod_jkmember"}', '{"cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 0, 'JK Testimonial', 'module', 'mod_jktestimonial', '', 0, 1, 0, 0, '{"name":"JK Testimonial","type":"module","creationDate":"March 2018","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"1.0.0","description":"JK Testimonial","group":"","filename":"mod_jktestimonial"}', '{"cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 0, 'JK Event', 'module', 'mod_jkevent', '', 0, 1, 0, 0, '{"name":"JK Event","type":"module","creationDate":"May 2014","author":"PHPKungfu! Project","copyright":"Copyright (C) PHPKungfu. All rights reserved","authorEmail":"info@phpkungfu.club","authorUrl":"www.phpkungfu.club","version":"1.0.0","description":"JK Event","group":"","filename":"mod_jkevent"}', '{"key":"AIzaSyBGBtfnKJ3Bbn5ITz9L4i1UedivZVRPBJk","main_map":"1","party_map":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 0, 'COM_K2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"name":"COM_K2","type":"component","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla","group":"","filename":"k2"}', '{"enable_css":"1","jQueryHandling":"1.9.1","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"0","userFeedIcon":"0","userItemCount":"10","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"1","userItemTags":"1","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"10","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"1","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","genericItemCount":"10","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"1","genericFeedIcon":"1","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"100","itemImageS":"200","itemImageM":"400","itemImageL":"600","itemImageXL":"900","itemImageGeneric":"300","catImageWidth":"100","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"48","onlineImageEditor":"picozu","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookMetatags":"1","facebookImage":"Medium","comments":"1","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"0","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","antispam":"recaptcha","recaptchaForRegistered":"1","akismetForRegistered":"1","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","redirect":"106","adminSearch":"simple","cookieDomain":"","gatherStatistics":"1","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaV2":"1","recaptchaOnRegistration":"0","akismetApiKey":"","stopForumSpam":"0","stopForumSpamApiKey":"","profilePageDisplay":"0","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"\\u00c0|A, \\u00c1|A, \\u00c2|A, \\u00c3|A, \\u00c4|A, \\u00c5|A, \\u00e0|a, \\u00e1|a, \\u00e2|a, \\u00e3|a, \\u00e4|a, \\u00e5|a, \\u0100|A, \\u0101|a, \\u0102|A, \\u0103|a, \\u0104|A, \\u0105|a, \\u00c7|C, \\u00e7|c, \\u0106|C, \\u0107|c, \\u0108|C, \\u0109|c, \\u010a|C, \\u010b|c, \\u010c|C, \\u010d|c, \\u00d0|D, \\u00f0|d, \\u010e|D, \\u010f|d, \\u0110|D, \\u0111|d, \\u00c8|E, \\u00c9|E, \\u00ca|E, \\u00cb|E, \\u00e8|e, \\u00e9|e, \\u00ea|e, \\u00eb|e, \\u0112|E, \\u0113|e, \\u0114|E, \\u0115|e, \\u0116|E, \\u0117|e, \\u0118|E, \\u0119|e, \\u011a|E, \\u011b|e, \\u011c|G, \\u011d|g, \\u011e|G, \\u011f|g, \\u0120|G, \\u0121|g, \\u0122|G, \\u0123|g, \\u0124|H, \\u0125|h, \\u0126|H, \\u0127|h, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u0128|I, \\u0129|i, \\u012a|I, \\u012b|i, \\u012c|I, \\u012d|i, \\u012e|I, \\u012f|i, \\u0130|I, \\u0131|i, \\u0134|J, \\u0135|j, \\u0136|K, \\u0137|k, \\u0138|k, \\u0139|L, \\u013a|l, \\u013b|L, \\u013c|l, \\u013d|L, \\u013e|l, \\u013f|L, \\u0140|l, \\u0141|L, \\u0142|l, \\u00d1|N, \\u00f1|n, \\u0143|N, \\u0144|n, \\u0145|N, \\u0146|n, \\u0147|N, \\u0148|n, \\u0149|n, \\u014a|N, \\u014b|n, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u00f5|o, \\u00f6|o, \\u00f8|o, \\u014c|O, \\u014d|o, \\u014e|O, \\u014f|o, \\u0150|O, \\u0151|o, \\u0154|R, \\u0155|r, \\u0156|R, \\u0157|r, \\u0158|R, \\u0159|r, \\u015a|S, \\u015b|s, \\u015c|S, \\u015d|s, \\u015e|S, \\u015f|s, \\u0160|S, \\u0161|s, \\u017f|s, \\u0162|T, \\u0163|t, \\u0164|T, \\u0165|t, \\u0166|T, \\u0167|t, \\u00d9|U, \\u00da|U, \\u00db|U, \\u00dc|U, \\u00f9|u, \\u00fa|u, \\u00fb|u, \\u00fc|u, \\u0168|U, \\u0169|u, \\u016a|U, \\u016b|u, \\u016c|U, \\u016d|u, \\u016e|U, \\u016f|u, \\u0170|U, \\u0171|u, \\u0172|U, \\u0173|u, \\u0174|W, \\u0175|w, \\u00dd|Y, \\u00fd|y, \\u00ff|y, \\u0176|Y, \\u0177|y, \\u0178|Y, \\u0179|Z, \\u017a|z, \\u017b|Z, \\u017c|z, \\u017d|Z, \\u017e|z, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|h, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|x, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|y, \\u03c6|f, \\u03c7|ch, \\u03c8|ps, \\u03c9|w, \\u0391|A, \\u0392|B, \\u0393|G, \\u0394|D, \\u0395|E, \\u0396|Z, \\u0397|H, \\u0398|Th, \\u0399|I, \\u039a|K, \\u039b|L, \\u039c|M, \\u039e|X, \\u039f|O, \\u03a0|P, \\u03a1|R, \\u03a3|S, \\u03a4|T, \\u03a5|Y, \\u03a6|F, \\u03a7|Ch, \\u03a8|Ps, \\u03a9|W, \\u03ac|a, \\u03ad|e, \\u03ae|h, \\u03af|i, \\u03cc|o, \\u03cd|y, \\u03ce|w, \\u0386|A, \\u0388|E, \\u0389|H, \\u038a|I, \\u038c|O, \\u038e|Y, \\u038f|W, \\u03ca|i, \\u0390|i, \\u03cb|y, \\u03c2|s, \\u0410|A, \\u04d0|A, \\u04d2|A, \\u04d8|E, \\u04da|E, \\u04d4|E, \\u0411|B, \\u0412|V, \\u0413|G, \\u0490|G, \\u0403|G, \\u0492|G, \\u04f6|G, y|Y, \\u0414|D, \\u0415|E, \\u0400|E, \\u0401|YO, \\u04d6|E, \\u04bc|E, \\u04be|E, \\u0404|YE, \\u0416|ZH, \\u04c1|DZH, \\u0496|ZH, \\u04dc|DZH, \\u0417|Z, \\u0498|Z, \\u04de|DZ, \\u04e0|DZ, \\u0405|DZ, \\u0418|I, \\u040d|I, \\u04e4|I, \\u04e2|I, \\u0406|I, \\u0407|JI, \\u04c0|I, \\u0419|Y, \\u048a|Y, \\u0408|J, \\u041a|K, \\u049a|Q, \\u049e|Q, \\u04a0|K, \\u04c3|Q, \\u049c|K, \\u041b|L, \\u04c5|L, \\u0409|L, \\u041c|M, \\u04cd|M, \\u041d|N, \\u04c9|N, \\u04a2|N, \\u04c7|N, \\u04a4|N, \\u040a|N, \\u041e|O, \\u04e6|O, \\u04e8|O, \\u04ea|O, \\u04a8|O, \\u041f|P, \\u04a6|PF, \\u0420|P, \\u048e|P, \\u0421|S, \\u04aa|S, \\u0422|T, \\u04ac|TH, \\u040b|T, \\u040c|K, \\u0423|U, \\u040e|U, \\u04f2|U, \\u04f0|U, \\u04ee|U, \\u04ae|U, \\u04b0|U, \\u0424|F, \\u0425|H, \\u04b2|H, \\u04ba|H, \\u0426|TS, \\u04b4|TS, \\u0427|CH, \\u04f4|CH, \\u04b6|CH, \\u04cb|CH, \\u04b8|CH, \\u040f|DZ, \\u0428|SH, \\u0429|SHT, \\u042a|A, \\u042b|Y, \\u04f8|Y, \\u042c|Y, \\u048c|Y, \\u042d|E, \\u04ec|E, \\u042e|YU, \\u042f|YA, \\u0430|a, \\u04d1|a, \\u04d3|a, \\u04d9|e, \\u04db|e, \\u04d5|e, \\u0431|b, \\u0432|v, \\u0433|g, \\u0491|g, \\u0453|g, \\u0493|g, \\u04f7|g, y|y, \\u0434|d, \\u0435|e, \\u0450|e, \\u0451|yo, \\u04d7|e, \\u04bd|e, \\u04bf|e, \\u0454|ye, \\u0436|zh, \\u04c2|dzh, \\u0497|zh, \\u04dd|dzh, \\u0437|z, \\u0499|z, \\u04df|dz, \\u04e1|dz, \\u0455|dz, \\u0438|i, \\u045d|i, \\u04e5|i, \\u04e3|i, \\u0456|i, \\u0457|ji, \\u04c0|i, \\u0439|y, \\u048b|y, \\u0458|j, \\u043a|k, \\u049b|q, \\u049f|q, \\u04a1|k, \\u04c4|q, \\u049d|k, \\u043b|l, \\u04c6|l, \\u0459|l, \\u043c|m, \\u04ce|m, \\u043d|n, \\u04ca|n, \\u04a3|n, \\u04c8|n, \\u04a5|n, \\u045a|n, \\u043e|o, \\u04e7|o, \\u04e9|o, \\u04eb|o, \\u04a9|o, \\u043f|p, \\u04a7|pf, \\u0440|p, \\u048f|p, \\u0441|s, \\u04ab|s, \\u0442|t, \\u04ad|th, \\u045b|t, \\u045c|k, \\u0443|u, \\u045e|u, \\u04f3|u, \\u04f1|u, \\u04ef|u, \\u04af|u, \\u04b1|u, \\u0444|f, \\u0445|h, \\u04b3|h, \\u04bb|h, \\u0446|ts, \\u04b5|ts, \\u0447|ch, \\u04f5|ch, \\u04b7|ch, \\u04cc|ch, \\u04b9|ch, \\u045f|dz, \\u0448|sh, \\u0449|sht, \\u044a|a, \\u044b|y, \\u04f9|y, \\u044c|y, \\u048d|y, \\u044d|e, \\u04ed|e, \\u044e|yu, \\u044f|ya","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 0, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_k2","type":"plugin","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"PLG_FINDER_K2_DESCRIPTION","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 0, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"name":"Search - K2","type":"plugin","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":"","filename":"k2"}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 0, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"name":"System - K2","type":"plugin","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 0, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"name":"User - K2","type":"plugin","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 0, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"name":"K2 Comments","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"MOD_K2_COMMENTS_DESCRIPTION","group":"","filename":"mod_k2_comments.j25"}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 0, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"name":"K2 Content","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":"","filename":"mod_k2_content.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 0, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"name":"K2 Tools","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_TOOLS","group":"","filename":"mod_k2_tools.j25"}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"0","text":"","button":"0","imagebutton":"0","button_text":"","searchItemId":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 0, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"name":"K2 Users","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":"","filename":"mod_k2_users.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 0, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"name":"K2 User","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_MOD_K2_USER_DESCRIPTION","group":"","filename":"mod_k2_user.j25"}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 0, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"name":"K2 Quick Icons (admin)","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":"","filename":"mod_k2_quickicons.j25"}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 0, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"name":"K2 Stats (admin)","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":"","filename":"mod_k2_stats.j25"}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jv_fields`
--

CREATE TABLE `jv_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_fields_categories`
--

CREATE TABLE `jv_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_fields_groups`
--

CREATE TABLE `jv_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_fields_values`
--

CREATE TABLE `jv_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_filters`
--

CREATE TABLE `jv_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links`
--

CREATE TABLE `jv_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms0`
--

CREATE TABLE `jv_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms1`
--

CREATE TABLE `jv_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms2`
--

CREATE TABLE `jv_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms3`
--

CREATE TABLE `jv_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms4`
--

CREATE TABLE `jv_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms5`
--

CREATE TABLE `jv_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms6`
--

CREATE TABLE `jv_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms7`
--

CREATE TABLE `jv_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms8`
--

CREATE TABLE `jv_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_terms9`
--

CREATE TABLE `jv_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_termsa`
--

CREATE TABLE `jv_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_termsb`
--

CREATE TABLE `jv_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_termsc`
--

CREATE TABLE `jv_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_termsd`
--

CREATE TABLE `jv_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_termse`
--

CREATE TABLE `jv_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_links_termsf`
--

CREATE TABLE `jv_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_taxonomy`
--

CREATE TABLE `jv_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jv_finder_taxonomy`
--

INSERT INTO `jv_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_taxonomy_map`
--

CREATE TABLE `jv_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_terms`
--

CREATE TABLE `jv_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_terms_common`
--

CREATE TABLE `jv_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jv_finder_terms_common`
--

INSERT INTO `jv_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_tokens`
--

CREATE TABLE `jv_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_tokens_aggregate`
--

CREATE TABLE `jv_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jv_finder_types`
--

CREATE TABLE `jv_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jv_finder_types`
--

INSERT INTO `jv_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', '');

-- --------------------------------------------------------

--
-- Table structure for table `jv_jkcustomfields_categories`
--

CREATE TABLE `jv_jkcustomfields_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `access` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jv_jkcustomfields_categories`
--

INSERT INTO `jv_jkcustomfields_categories` (`id`, `title`, `alias`, `description`, `access`, `state`, `created`, `created_by`, `modified`) VALUES
(5, 'Be our guest! (col-left)', 'be-our-guest-col-left', '', 1, 1, '2018-03-26 12:55:15', 196, '0000-00-00 00:00:00'),
(6, 'Testimonial', 'testimonial', '', 1, 1, '2018-03-26 12:55:33', 196, '0000-00-00 00:00:00'),
(7, 'LOVABLE FAMILY (Man)', 'lovable-family', '', 1, 1, '2018-03-26 13:45:11', 196, '0000-00-00 00:00:00'),
(8, 'LOVABLE FAMILY (Woman)', 'lovable-family-woman', '', 1, 1, '2018-03-26 15:53:23', 196, '0000-00-00 00:00:00'),
(9, 'MEMORABLE PHOTO GALLERY', 'memorable-photo-gallery', '', 1, 1, '2018-03-28 13:09:27', 196, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jv_jkcustomfields_config`
--

CREATE TABLE `jv_jkcustomfields_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_jkcustomfields_customfields`
--

CREATE TABLE `jv_jkcustomfields_customfields` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `description` text NOT NULL,
  `fields` text NOT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_jkcustomfields_items`
--

CREATE TABLE `jv_jkcustomfields_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `description` text NOT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `created` datetime NOT NULL,
  `state` tinyint(1) NOT NULL,
  `icon_fb` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `icon_tw` varchar(255) DEFAULT NULL,
  `icon_ins` varchar(255) DEFAULT NULL,
  `customfields` text NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jv_jkcustomfields_items`
--

INSERT INTO `jv_jkcustomfields_items` (`id`, `title`, `catid`, `description`, `thumb`, `image`, `short_desc`, `created`, `state`, `icon_fb`, `created_by`, `icon_tw`, `icon_ins`, `customfields`, `subtitle`, `ordering`) VALUES
(5, 'Testimonial 02', 0, 'Better to have loved and lost, than to have never loved', '', '', '', '2018-03-26 12:52:26', 1, '', 196, '', '', '', '~ Akshay H ~', 1),
(6, 'Testimonial 01', 6, 'I look at you and see the rest of my life in front of my eyes.', '', '', '', '2018-03-26 12:53:21', 1, '', 196, '', '', '', '~ Akshay H ~', 14),
(7, 'Guest 01', 5, '', 'images/jv-sampledata/content/gue1.png', '', '', '2018-03-26 13:30:36', 1, '', 196, '', '', '', '', 24),
(8, 'Guest 02', 5, '', 'images/jv-sampledata/content/gue2.png', '', '', '2018-03-26 13:32:16', 1, '', 196, '', '', '', '', 15),
(9, 'Guest 03', 5, '', 'images/jv-sampledata/content/gue3.png', '', '', '2018-03-26 13:32:39', 1, '', 196, '', '', '', '', 16),
(10, 'Guest 04', 5, '', 'images/jv-sampledata/content/gue1.png', '', '', '2018-03-26 13:38:16', 1, '', 196, '', '', '', '', 17),
(11, 'Guest 05', 5, '', 'images/jv-sampledata/content/gue2.png', '', '', '2018-03-26 13:38:37', 1, '', 196, '', '', '', '', 18),
(12, 'Guest 06', 5, '', 'images/jv-sampledata/content/gue3.png', '', '', '2018-03-26 13:38:55', 1, '', 196, '', '', '', '', 19),
(13, 'Mr. Clark Wills', 7, '', 'images/jv-sampledata/content/fm1.jpg', '', '', '2018-03-26 15:36:25', 1, '#', 196, '#', '#', '', '(Mark’s Father)', 20),
(14, 'Jeniffer Wills', 7, '', 'images/jv-sampledata/content/fm2.jpg', '', '', '2018-03-26 15:40:14', 1, '#', 196, '#', '#', '', '(Mark’s Mother)', 21),
(15, 'Carolyn', 7, '', 'images/jv-sampledata/content/fm3.jpg', '', '', '2018-03-26 15:49:47', 1, '#', 196, '#', '#', '', '(Mark’s Sister)', 23),
(16, 'Donald', 7, '', 'images/jv-sampledata/content/fm4.jpg', '', '', '2018-03-26 15:50:23', 1, '#', 196, '#', '#', '', '(Mark’s Brother)', 22),
(17, 'Mr. Clark Wills', 8, '', 'images/jv-sampledata/content/fm5.jpg', '', '', '2018-03-26 15:54:11', 1, '#', 196, '#', '#', '', '(Jenny’s Father)', 2),
(18, 'Jeniffer Wills', 8, '', 'images/jv-sampledata/content/fm6.jpg', '', '', '2018-03-26 15:55:01', 1, '#', 196, '#', '#', '', '(Jenny’s Mother)', 3),
(19, 'Carolyn', 8, '', 'images/jv-sampledata/content/fm7.jpg', '', '', '2018-03-26 15:55:29', 1, '#', 196, '#', '#', '', '(Jenny’s Sister)', 4),
(20, 'Donald', 8, '', 'images/jv-sampledata/content/fm8.jpg', '', '', '2018-03-26 15:56:15', 1, '#', 196, '#', '#', '', '(Jenny’s Brother)', 5),
(21, 'Making A Love 01', 9, '', 'images/jv-sampledata/content/image_1_zoom.jpg', 'images/jv-sampledata/content/image_1.jpg', '', '2018-03-28 13:09:35', 1, '', 196, '', '', '', '', 6),
(22, 'Making A Love 02', 9, '', 'images/jv-sampledata/content/image_small_1.jpg', 'images/jv-sampledata/content/image_small_1_zoom.jpg', '', '2018-03-28 13:12:51', 1, '', 196, '', '', '', '', 7),
(23, 'Making A Love 03', 9, '', 'images/jv-sampledata/content/image_small_2.jpg', 'images/jv-sampledata/content/image_small_2_zoom.jpg', '', '2018-03-28 13:13:17', 1, '', 196, '', '', '', '', 8),
(24, 'Making A Love 04', 9, '', 'images/jv-sampledata/content/image_2_zoom.jpg', 'images/jv-sampledata/content/image_2.jpg', '', '2018-03-28 13:21:25', 1, '', 196, '', '', '', '', 9),
(25, 'Making A Love 05', 9, '', 'images/jv-sampledata/content/image_small_3.jpg', 'images/jv-sampledata/content/image_small_3_zoom.jpg', '', '2018-03-28 13:22:37', 1, '', 196, '', '', '', '', 10),
(26, 'Making A Love 06', 9, '', 'images/jv-sampledata/content/image_small_4.jpg', 'images/jv-sampledata/content/image_small_4_zoom.jpg', '', '2018-03-28 13:23:35', 1, '', 196, '', '', '', '', 11),
(27, 'Making A Love 07', 9, '', 'images/jv-sampledata/content/image_3_zoom.jpg', 'images/jv-sampledata/content/image_3.jpg', '', '2018-03-28 13:25:27', 1, '', 196, '', '', '', '', 12),
(28, 'Making A Love 08', 9, '', 'images/jv-sampledata/content/image_small_5.jpg', 'images/jv-sampledata/content/image_small_5_zoom.jpg', '', '2018-03-28 13:28:03', 1, '', 196, '', '', '', '', 13),
(29, 'Making A Love 09', 9, '', 'images/jv-sampledata/content/image_small_6.jpg', 'images/jv-sampledata/content/image_small_6_zoom.jpg', '', '2018-03-28 13:28:50', 1, '', 196, '', '', '', '', 25);

-- --------------------------------------------------------

--
-- Table structure for table `jv_jv_typos`
--

CREATE TABLE `jv_jv_typos` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `replacement` text NOT NULL,
  `example` text,
  `ordering` int(11) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jv_jv_typos`
--

INSERT INTO `jv_jv_typos` (`id`, `title`, `tag`, `replacement`, `example`, `ordering`, `published`) VALUES
(42, 'h3', 'h3', '<h3>{param}</h3>', '[h3]H3[/h3]', 1, 1),
(43, 'h2', 'h2', '<h2 class="{option}">{param}</h2>', '[h2=hidden1]abc1[/h2]', 2, 1),
(44, 'Blocknumber 1', 'blocknumber1', '<p class="blocknumber"><span class="bignumber-1">{option}</span>{param}</p>', '[blocknumber1=01]Your content goes here![/blocknumber1]', 5, 1),
(45, 'notice', 'notice', '<p class="error bg1"><span class="icon"> </span>{param}</p>', '[notice]Notice[/notice]', 11, 1),
(46, 'url', 'url', '<a href="{option}">{param}</a>', '[url=http://phpkungfu.club]phpkungfu.club[/url]', 3, 1),
(47, 'Paragraph Style - Message', 'message', '<p class="message bg2"><span class="icon"></span>{param}</p>', '[message]Your text here[/message]', 12, 1),
(48, 'Box Style - Sticky', 'sticky', '<p class="box-sticky">{param}</p>', '[sticky]Your clip note goes here![/sticky]', 4, 1),
(49, 'Paragraph Style - Photo', 'photo', '<p class="photo bg3"><span class="icon"> </span>{param}</p>', '[photo]Your message goes here![/photo]', 18, 1),
(50, 'Blocknumber 2', 'blocknumber2', '<p class="blocknumber"><span class="bignumber-2">{option}</span>{param}</p>', '[blocknumber2=01]Your content goes here![/blocknumber2]', 6, 1),
(51, 'Blocknumber 3', 'blocknumber3', '<p class="blocknumber"><span class="bignumber-3">{option}</span>{param}</p>', '[blocknumber3=01]Your content goes here![/blocknumber3]', 7, 1),
(52, 'Tips', 'tips', '<p class="tips bg1"><span class="icon"> </span>{param}</p>', '[tips]Your content goes here![/tips]', 19, 1),
(53, 'Key', 'key', '<p class="key bg2"><span class="icon"> </span>{param}</p>', '[key]Your content goes here![/key]', 20, 1),
(54, 'Tag', 'tag', '<p class="tag bg4"><span class="icon"> </span>{param}</p>', '[tag]Your content goes here![/tag]', 17, 1),
(55, 'Cart', 'cart', '<p class="cart bg1"><span class="icon"> </span>{param}</p>', '[cart]Your content goes here![/cart]', 15, 1),
(56, 'Doc', 'doc', '<p class="doc bg5"><span class="icon"> </span>{param}</p>', '[doc]Your content goes here![/doc]', 14, 1),
(57, 'Note', 'note', '<p class="note bg3"><span class="icon"> </span>{param}</p>', '[note]Your content goes here![/note]', 10, 1),
(58, 'Mobi', 'mobi', '<p class="mobi bg2"><span class="icon"> </span>{param}</p>', '[mobi]Your content goes here![/mobi]', 16, 1),
(59, 'Download', 'download', '<p class="download bg4"><span class="icon"></span>{param}</p>', '[download]Your content goes here![/download]', 13, 1),
(60, 'Box Grey', 'box-grey', '<p class="box-grey">{param}</p>', '[box-grey]Your content goes here![/box-grey]', 8, 1),
(61, 'Box Hilite', 'box-hilite', '<p class="box-hilite">{param}</p>', '[box-hilite]Your content goes here![/box-hilite]', 9, 1),
(62, 'Legend', 'legend', '<div class="legend"><h3 class="legend-title">{option}</h3><p>{param}</p></div>', '[legend=Legend style]Your content goes here![/legend]', 26, 1),
(63, 'Legend-Hilite', 'legend-hilite', '<div class="legend-hilite"><h3 class="legend-title">{option}</h3><p>{param}</p></div>', '[legend-hilite=style highlight]Your content goes here![/legend-hilite]', 27, 1),
(64, 'badge', 'badge', '<div class="jv-module module-badge badge-{option}"><span class="badge"></span>{param}</div>', '[badge=top]<div style="padding: 30px 25px;">Use module suffix: <strong>_badge badge-top</strong> to put this badge on any module you like!</div>[/badge]\r\n[badge=new]<div style="padding: 30px 25px;">Use module suffix: <strong>_badge badge-new</strong> to put this badge on any module you like!</div>[/badge]\r\n[badge=hot]<div style="padding: 30px 25px;">Use module suffix: <strong>_badge badge-hot</strong> to put this badge on any module you like!</div>[/badge]\r\n[badge=pick]<div style="padding: 30px 25px;">Use module suffix: <strong>_badge badge-pick</strong> to put this badge on any module you like!</div>[/badge]', 22, 1),
(65, 'Youtube', 'youtube', '<a class="btn" data-toggle="modal" href="#md{param}">Watch Video</a>\r\n<div class="btmodal fade hide" id="md{param}">\r\n    <div class="modal-body">\r\n        <iframe {option} src="http://www.youtube.com/embed/{param}" frameborder="0" allowfullscreen></iframe>\r\n    </div>\r\n</div>\r\n', '[youtube=width="530" height="350"]DgwtRpf60xI[/youtube]', 23, 1),
(66, 'Vimeo', 'vimeo', '<a class="btn" data-toggle="modal" href="#md{param}">Watch Video</a>\r\n<div class="btmodal fade hide" id="md{param}">\r\n    <div class="modal-body">\r\n       <iframe {option} src="http://player.vimeo.com/video/{param}" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>\r\n    </div>\r\n</div>\r\n', '[vimeo=width="500" height="281"]46497874[/vimeo]', 24, 1),
(67, 'Alerts ', 'alert', '<div class="alert {option}">\r\n	<button class="close" data-dismiss="alert">×</button>\r\n	{param}\r\n</div>', '[alert=alert-block]<h4 class="alert-heading">Warning!</h4> Best check yo self, you''re not looking too good.[/alert]\r\n[alert=alert-error alert-block]<h4 class="alert-heading">Oh snap!</h4> Change a few things up and try submitting again.[/alert]\r\n[alert=alert-success alert-block]<h4 class="alert-heading">Well done!</h4> You successfully read this important alert message.[/alert]\r\n[alert=alert-info alert-block]<h4 class="alert-heading">Heads up!</h4> This alert needs your attention, but it''s not super important.[/alert]', 25, 1),
(68, 'Icon', 'icon', '<i class="icon-{option}">{param}</i>', '[icon=search][/icon]Graciously provided by Glyphicons\r\n<div class="input-prepend"><span class="add-on">[icon=envelope][/icon]</span><input type="text" id="inputIcon" class="span2"></div>\r\n<a href="#" class="btn btn-large">[icon=comment][/icon] Comment</a>\r\n<a href="#" class="btn btn-primary">[icon=user icon-white][/icon] User</a>', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_attachments`
--

CREATE TABLE `jv_k2_attachments` (
  `id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_categories`
--

CREATE TABLE `jv_k2_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jv_k2_categories`
--

INSERT INTO `jv_k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(1, 'From our blog', 'from-our-blog', '', 0, 0, 1, 1, 1, '', '{"inheritFrom":"0","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":"","theme":"","num_leading_items":"0","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"3","num_primary_columns":"1","primaryImgSize":"Large","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"0","catFeedIcon":"0","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1"}', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_comments`
--

CREATE TABLE `jv_k2_comments` (
  `id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_extra_fields`
--

CREATE TABLE `jv_k2_extra_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_extra_fields_groups`
--

CREATE TABLE `jv_k2_extra_fields_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_items`
--

CREATE TABLE `jv_k2_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jv_k2_items`
--

INSERT INTO `jv_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(1, 'Bachelor Party!', 'bachelor-party', 1, 1, '<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et doloe magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comdo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium. Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto tae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed qia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n<blockquote>\r\n<p>" The Education of Tomorrow, Rooted in Tradition Invite You Learning Management System"<br />- by Jhon Doe</p>\r\n</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et doloe magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comdo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.</p>\r\n<p><img src="blog_sinlge01.jpg" alt="" /><img src="images/jv-sampledata/content/blog_sinlge01.jpg" width="300" height="218" />Duis et nibh blat, eifend liberost amet, suscipit enim. Sed rutrum suere orci. Lorem ipsum dolor sitt amet.  This is Photoshop''s version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliqet. Aenean sollicitudin, lorem quis bibendum.</p>\r\n<ul>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n</ul>\r\n<p><img class="pull-right" src="images/jv-sampledata/content/blog_sinlge02.jpg" alt="" />Duis et nibh blat, eifend liberost amet, suscipit enim. Sed rutrum suere orci. Lorem ipsum dolor sitt amet.  This is Photoshop''s version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliqet. Aenean sollicitudin, lorem quis bibendum.</p>\r\n<ul>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin</li>\r\n<li>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</li>\r\n</ul>\r\n<p> </p>', NULL, NULL, '[]', '', '2018-04-03 09:48:24', 196, '', 0, '0000-00-00 00:00:00', '2018-04-03 14:58:59', 196, '2018-04-03 09:48:24', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 14, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(2, 'Surprises For Guests', 'surprises-for-guests', 1, 1, '<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et doloe magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comdo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium. Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto tae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed qia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n<blockquote>\r\n<p>" The Education of Tomorrow, Rooted in Tradition Invite You Learning Management System"<br />- by Jhon Doe</p>\r\n</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et doloe magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comdo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.</p>\r\n<p><img src="blog_sinlge01.jpg" alt="" /><img src="images/jv-sampledata/content/blog_sinlge01.jpg" width="300" height="218" />Duis et nibh blat, eifend liberost amet, suscipit enim. Sed rutrum suere orci. Lorem ipsum dolor sitt amet.  This is Photoshop''s version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliqet. Aenean sollicitudin, lorem quis bibendum.</p>\r\n<ul>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n</ul>\r\n<p><img class="pull-right" src="images/jv-sampledata/content/blog_sinlge02.jpg" alt="" />Duis et nibh blat, eifend liberost amet, suscipit enim. Sed rutrum suere orci. Lorem ipsum dolor sitt amet.  This is Photoshop''s version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliqet. Aenean sollicitudin, lorem quis bibendum.</p>\r\n<ul>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin</li>\r\n<li>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</li>\r\n</ul>\r\n<p> </p>', NULL, NULL, '[]', '', '2018-04-03 14:59:48', 196, '', 0, '0000-00-00 00:00:00', '2018-04-03 15:03:37', 196, '2018-04-03 09:48:24', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(3, 'Planning Honeymoon Trip', 'planning-honeymoon-trip', 1, 1, '<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et doloe magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comdo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium. Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto tae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed qia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>\r\n<blockquote>\r\n<p>" The Education of Tomorrow, Rooted in Tradition Invite You Learning Management System"<br />- by Jhon Doe</p>\r\n</blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et doloe magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comdo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.</p>\r\n<p><img src="blog_sinlge01.jpg" alt="" /><img src="images/jv-sampledata/content/blog_sinlge01.jpg" width="300" height="218" />Duis et nibh blat, eifend liberost amet, suscipit enim. Sed rutrum suere orci. Lorem ipsum dolor sitt amet.  This is Photoshop''s version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliqet. Aenean sollicitudin, lorem quis bibendum.</p>\r\n<ul>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n</ul>\r\n<p><img class="pull-right" src="images/jv-sampledata/content/blog_sinlge02.jpg" alt="" />Duis et nibh blat, eifend liberost amet, suscipit enim. Sed rutrum suere orci. Lorem ipsum dolor sitt amet.  This is Photoshop''s version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliqet. Aenean sollicitudin, lorem quis bibendum.</p>\r\n<ul>\r\n<li>Sollicitudin, lorem quis bibendum auctor, nisi elit consequat</li>\r\n<li>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin</li>\r\n<li>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</li>\r\n</ul>\r\n<p> </p>', NULL, NULL, '[]', '', '2018-04-03 15:04:14', 196, '', 0, '0000-00-00 00:00:00', '2018-04-03 15:04:47', 196, '2018-04-03 09:48:24', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 8, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_log`
--

CREATE TABLE `jv_k2_log` (
  `status` int(11) NOT NULL,
  `response` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jv_k2_log`
--

INSERT INTO `jv_k2_log` (`status`, `response`, `timestamp`) VALUES
(200, 'OK', '2018-04-03 09:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_rating`
--

CREATE TABLE `jv_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_tags`
--

CREATE TABLE `jv_k2_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_tags_xref`
--

CREATE TABLE `jv_k2_tags_xref` (
  `id` int(11) NOT NULL,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_users`
--

CREATE TABLE `jv_k2_users` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_k2_user_groups`
--

CREATE TABLE `jv_k2_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jv_languages`
--

CREATE TABLE `jv_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_languages`
--

INSERT INTO `jv_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jv_menu`
--

CREATE TABLE `jv_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_menu`
--

INSERT INTO `jv_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 89, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":["9"],"layout_type":"blog","num_leading_articles":"0","num_intro_articles":"0","num_columns":"1","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"0","show_pagination_results":"0","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"1","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 41, 42, 1, '*', 0),
(103, 'mainmenu', 'Home', 'home-main', '', 'home-main', '0', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 43, 44, 0, '*', 0),
(104, 'mainmenu', 'About Us', 'about', '', 'about', '#down', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":" menu-scroll","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 45, 46, 0, '*', 0),
(105, 'main', 'COM_JVFRAMEWORK_MENU', 'com-jvframework-menu', '', 'com-jvframework-menu', 'index.php?option=com_jvframework', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jvframework/assets/images/jv.ico', 0, '{}', 47, 48, 0, '', 1),
(106, 'hidden', 'Our blog', 'our-blog', '', 'our-blog', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1', 'component', 1, 1, 1, 10034, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"categories":["1"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"Blog categories","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 49, 50, 0, '*', 0),
(107, 'main', 'COM_JKCUSTOMFIELDS', 'com-jkcustomfields', '', 'com-jkcustomfields', 'index.php?option=com_jkcustomfields', 'component', 1, 1, 1, 10029, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 51, 52, 0, '', 1),
(108, 'mainmenu', 'Love Story', 'love-story', '', 'love-story', '#block-story', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 53, 54, 0, '*', 0),
(109, 'mainmenu', 'Events', 'events', '', 'events', '#block-event', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 55, 56, 0, '*', 0),
(110, 'mainmenu', 'RSVP', 'rsvp', '', 'rsvp', '#block-top', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 57, 58, 0, '*', 0),
(111, 'mainmenu', 'Family', 'family', '', 'family', '#block-topb', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 59, 60, 0, '*', 0),
(112, 'mainmenu', 'Gallery', 'gallery', '', 'gallery', '#block-gallery', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 61, 62, 0, '*', 0),
(113, 'mainmenu', 'Blog', 'blog', '', 'blog', '#block-blog', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 63, 64, 0, '*', 0),
(114, 'mainmenu', 'Contact us', 'contact-us', '', 'contact-us', '#block-bottomb', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"menu_image_type":"img","fxmenu_item":"0","fxmenu_title":"1","fxmenu_description":"","fxmenu_column":"1","fxmenu_width":"","fxmenu_module_style":"jvxhtml"}', 65, 66, 0, '*', 0),
(115, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 1, 1, 1, 10034, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/backend/k2_logo_16x16.png', 0, '{}', 67, 88, 0, '', 1),
(116, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 68, 69, 0, '', 1),
(117, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 70, 71, 0, '', 1),
(118, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 72, 73, 0, '', 1),
(119, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 74, 75, 0, '', 1),
(120, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1),
(121, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 78, 79, 0, '', 1),
(122, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 80, 81, 0, '', 1),
(123, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 82, 83, 0, '', 1),
(124, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 84, 85, 0, '', 1),
(125, 'main', 'K2_INFORMATION', 'k2-information', '', 'com-k2/k2-information', 'index.php?option=com_k2&view=info', 'component', 1, 115, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 86, 87, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jv_menu_types`
--

CREATE TABLE `jv_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_menu_types`
--

INSERT INTO `jv_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 57, 'hidden', 'Hidden menu', 'Menu not to navigation ( not show on frontend)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jv_messages`
--

CREATE TABLE `jv_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_messages_cfg`
--

CREATE TABLE `jv_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_modules`
--

CREATE TABLE `jv_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_modules`
--

INSERT INTO `jv_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":" wd_main_menu wd_single_index_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","jvmenutyle":"css","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"","showLast":"0","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"0","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'Slider textinfo', '', '<div class="wd_slider_textinfo">\r\n<div class="inner"><img class="img-responsive" src="images/jv-sampledata/header/name.png" alt="Jenny and Mark" />\r\n<h3>20 may 2018</h3>\r\n<h1>Save The Date</h1>\r\n</div>\r\n</div>', 1, 'slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(89, 65, 'OUR TRUE LOVE STORY || Are getting married!', '', '', 1, 'full-webding-conent-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jvlatest_news', 1, 1, '{"moduleclass_sfx":" wd_story_wrapper wd_toppadder90 wd_bottompadder90","template":"jv-melody-iii:story-news","description":"","source":"content","catid":["8"],"num_intro":"5","type_content":"0","show_title_intro":"1","title_link_intro":"0","show_intro_date":"1","show_intro_author":"1","show_readmore_intro":"1","orderby_sec":"date","show_content_intro":"1","cut_intro":"150","readmore_text":"Read more","intro_thumbnail":"original","intro_thumbnail_width":"220","intro_thumbnail_height":"320","sp_article_0":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(90, 66, 'GROOM AND BRIDE || ARE GETTING MARRIED!', '', '', 1, 'full-webding-conent-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jkinvitation', 1, 1, '{"name":"Invitation","desc":"We Inviting You And Your Family On","day":"Saturday","date":"2018-05-20","location":"At St. Thomas''s Church, London, U.K.","rsvp":"#","moduleclass_sfx":"","man_image":"images\\/jv-sampledata\\/content\\/groom.png","man_name":"Mark Wills","man_surname":"(S\\/O Mrs. Jeniffer & Mr. Clark Wills)","man_fb":"#","man_tw":"#","man_ins":"#","woman_image":"images\\/jv-sampledata\\/content\\/bride.png","woman_name":"Jenny Bellucci","woman_surname":"(D\\/O Mrs. Merry & Mr. Jhon Bellucci)","woman_fb":"#","woman_tw":"#","woman_ins":"#","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(91, 67, 'CountDown', '', '', 1, 'full-webding-conent-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jkcountdown', 1, 0, '{"header":"DON''T MISS IT!","date":"2018-05-20 21:23:07","gtm":"+0700","footer":"UNTIL WE GET MARRIED!","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(92, 68, 'BE OUR GUEST! || RSVP', '', '', 1, 'top-title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(93, 69, 'You’re Invited Jenny & Mark Wedding', '', '<div class="wd_guest_infobox">\r\n<h2>You’re Invited <span class="color">Jenny &amp; Mark</span> Wedding</h2>\r\n<h4>Please Rsvp Before 15 May 2017</h4>\r\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor This is Photoshop''s version of Lorem Ipsum.</p>\r\n<h2><span class="color">Gift Registry</span></h2>\r\n<p>What we want most for our wedding is to have our friends and family there to celebrate the occasion with us. If you would like to get us something, w’d love that too. you can find our registries here :</p>\r\n</div>', 1, 'top-1', 196, '2018-03-22 14:45:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(94, 70, 'JV Contact', '', '', 1, 'top-2', 196, '2018-03-23 16:14:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jvcontact', 1, 0, '{"moduleclass_sfx":" wd_guest_formbox","textheader":"Are You Attending?","textfooter":"","thankyou":"Thank you!","textsubmit":"Send a Message","moreinfo":"","mailsubject":"Mail from Jenny & Mark Wedding","mailcopy":"","layout":"_:custom","customlayout":"<h2>{headertext}<\\/h2>\\r\\n<h4>Rsvp Here!<\\/h4>\\r\\n<div class=\\"wd_guest_form\\">\\r\\n  <div class=\\"form-group\\">\\r\\n    <label>{lbname}<\\/label>\\r\\n    {inpname}\\r\\n  <\\/div>\\r\\n  <div class=\\"form-group\\">\\r\\n    <label>{lbemail}<\\/label>\\r\\n    {inpemail}\\r\\n  <\\/div>\\r\\n  <div class=\\"row\\">\\r\\n    <div class=\\"col-sm-6 form-group\\">\\r\\n      <label>{lbguest}<\\/label>\\r\\n      {inpguest}\\r\\n    <\\/div>\\r\\n    <div class=\\"col-sm-6 form-group\\">\\r\\n      <label>{lbevent}<\\/label>\\r\\n      {inpevent}\\r\\n    <\\/div>\\r\\n  <\\/div>\\r\\n  <div class=\\"response\\"><\\/div>\\r\\n  <div class=\\"form-group\\">\\r\\n    <div class=\\"wd_btn\\">\\r\\n      {submitbutton}\\r\\n    <\\/div>    \\r\\n  <\\/div>\\r\\n<\\/div>\\r\\n","customcss":"","mailto":["196"],"mailto2":"","showform":"1","textinfield":"0","customfield":{"1":{"type":"name","name":"name","title":"Full Name","validate":"require"},"2":{"type":"email","name":"email","title":"Email","validate":"email"},"3":{"type":"select","name":"guest","title":"Guests","option":"00\\r\\n01\\r\\n02","validate":"require"},"4":{"type":"select","name":"event","title":"Event","option":"All Events\\r\\nParty Events\\r\\nMarriage Events","validate":"require"}},"showsocial":"0","showfacebook":"1","showtweeter":"1","showgplus":"1","showlikein":"1","showaddthismore":"1","showcaptcha":"0","captcha_version":"1","captchapublickey":"","captchaprivatekey":"","captchatheme":"white","captcha_instructions_visual":"Instructions visual","captcha_instructions_audio":"Instructions audio","captcha_play_again":"Play again","captcha_cant_hear_this":"Cant hear this","captcha_visual_challenge":"Visual challenge","captcha_audio_challenge":"Audio challenge","captcha_refresh_btn":"Refresh","captcha_help_btn":"Help","captcha_incorrect_try_again":"Incorrect try again","showmap":"0","map_apikey":"AIzaSyD7KJAbPjbKDmQxCVsiTlVOmQihmbOoFdY","map_width":"100%","map_height":"200px","map_zoom":"17","map_icon":"","map_lat":"10.784513","map_long":"106.630744","map_infotext":"I''m here!","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(95, 72, 'Contact Us', '', '<div class="row">\r\n<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">\r\n<div class="wd_footer_infobox">\r\n<div class="wd_footicon"><i class="fa fa-map-marker"><span class="hidden">Address</span></i></div>\r\n<h2>Home</h2>\r\n<p>110, B Kalani Bagh, Dewas M.P. INDIA #455001</p>\r\n</div>\r\n</div>\r\n<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">\r\n<div class="wd_footer_infobox">\r\n<div class="wd_footicon"><i class="fa fa-phone"><span class="hidden">Phone</span></i></div>\r\n<h2>Phone</h2>\r\n<p>+ 91 12345 67890 <br /> +91 12345 78945</p>\r\n</div>\r\n</div>\r\n<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">\r\n<div class="wd_footer_infobox">\r\n<div class="wd_footicon"><i class="fa fa-envelope"><span class="hidden">Email</span></i></div>\r\n<h2>Email Us</h2>\r\n<p>wedding@example.com <br />event@example.com</p>\r\n</div>\r\n</div>\r\n</div>', 1, 'footer-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(96, 73, 'Logo footer', '', '<p><img src="images/jv-sampledata/content/flogo.png" alt="" /></p>', 1, 'footer', 0, '0000-00-00 00:00:00', '2018-03-26 15:53:48', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(97, 78, 'MEMORABLE PHOTO GALLERY || JENNY & MARK', '', '', 1, 'full-webding-conent-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jkgallery', 1, 1, '{"catid":"9","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(98, 79, 'LOVABLE FAMILY || MOST IMP. PERSONS', '', '', 1, 'topb-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jkmember', 1, 1, '{"catid_man":"7","catid_woman":"8","man_image":"images\\/jv-sampledata\\/content\\/tab1.jpg","man_name":"Mark","woman_image":"images\\/jv-sampledata\\/content\\/tab2.jpg","woman_name":"Jenny","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(99, 80, 'JK Testimonial', '', '', 1, 'full-webding-conent-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jktestimonial', 1, 0, '{"catid":"6","layout":"_:default","moduleclass_sfx":" wd_testimonial_slider","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(100, 81, 'Client slider (home)', '', '', 1, 'top-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jktestimonial', 1, 0, '{"catid":"5","layout":"_:clients","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(101, 82, 'Lovable family members', '', '', 1, 'topb-2', 0, '0000-00-00 00:00:00', '2018-03-28 14:16:51', '0000-00-00 00:00:00', -2, 'mod_jktestimonial', 1, 0, '{"catid":"7","layout":"_:clients","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(102, 83, 'CONTACT US || IF ANY QUERY', '', '', 1, 'bottomb-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jvcontact', 1, 1, '{"moduleclass_sfx":" wd_contact_form","textheader":"","textfooter":"","thankyou":"Thank you!","textsubmit":"Send a Message","moreinfo":"","mailsubject":"Mail from JENNY & MARK","mailcopy":"","layout":"_:custom","customlayout":" <div class=\\"row\\">\\r\\n      <div class=\\"col-sm-6\\">\\r\\n        <div class=\\"form-group\\">\\r\\n          {inpname}\\r\\n        <\\/div>\\r\\n        <div class=\\"form-group\\">\\r\\n          {inpemail}\\r\\n        <\\/div>\\r\\n        <div class=\\"form-group\\">\\r\\n          {inpphone}\\r\\n        <\\/div>\\r\\n      <\\/div>\\r\\n      <div class=\\"col-sm-6\\">\\r\\n<div class=\\"form-group\\">\\r\\n          {inpmessage}\\r\\n <\\/div>\\r\\n      <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\"response\\"><\\/div>\\r\\n    <div class=\\"wd_btn\\">\\r\\n      {submitbutton}\\r\\n    <\\/div>","customcss":"","mailto":["196"],"mailto2":"","showform":"1","textinfield":"1","customfield":{"1":{"type":"name","name":"name","title":"Full Name","validate":"require"},"2":{"type":"email","name":"email","title":"Email","validate":"email"},"3":{"type":"textarea","name":"message","title":"Message","validate":"require"},"4":{"type":"text","name":"phone","title":"Phone","validate":"numberic"}},"showsocial":"0","showfacebook":"1","showtweeter":"1","showgplus":"1","showlikein":"1","showaddthismore":"1","showcaptcha":"0","captchapublickey":"","captchaprivatekey":"","captchatheme":"white","captcha_instructions_visual":"Instructions visual","captcha_instructions_audio":"Instructions audio","captcha_play_again":"Play again","captcha_cant_hear_this":"Cant hear this","captcha_visual_challenge":"Visual challenge","captcha_audio_challenge":"Audio challenge","captcha_refresh_btn":"Refresh","captcha_help_btn":"Help","captcha_incorrect_try_again":"Incorrect try again","showmap":"0","map_apikey":"AIzaSyD7KJAbPjbKDmQxCVsiTlVOmQihmbOoFdY","map_width":"100%","map_height":"200px","map_zoom":"17","map_icon":"","map_lat":"10.784513","map_long":"106.630744","map_infotext":"I''m here!","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(103, 84, 'FROM OUR BLOG || WEDDING JOURNAL', '', '', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jvlatest_news', 1, 1, '{"moduleclass_sfx":"","template":"_:default","description":"","source":"k2content","catid":["9"],"k2catid":["1"],"group_cat":"0","css_bootstrap":"0","num_intro":"3","nums_link":"0","columns":"1","type_content":"0","show_title_intro":"1","title_link_intro":"1","show_intro_date":"1","show_intro_author":"0","show_readmore_intro":"1","show_link_all":"0","orderby_sec":"published","show_tag":"0","show_content_intro":"1","cut_intro":"250","readmore_text":"","intro_thumbnail":"resize","intro_thumbnail_align":"left","intro_thumbnail_position":"before","intro_thumbnail_width":"555","intro_thumbnail_height":"320","sp_article_0":"0","item":"","items":"","show_paging":"1","auto":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(104, 85, 'THE WEDDING EVENT || CEREMONY & PARTY', '', '', 1, 'full-webding-conent-3', 196, '2018-03-31 04:21:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jkevent', 1, 0, '{"image":"images\\/jv-sampledata\\/content\\/event_img.gif","rsvp":"#","key":"AIzaSyBGBtfnKJ3Bbn5ITz9L4i1UedivZVRPBJk","moduleclass_sfx":"","main_title":"Main Ceremony","main_time":"7:30 pm","main_address":"St. Thomas''s Church, London, U.K.","main_intro":"Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor vel velit auctor aliquet. Aenean sollicitudin, lorem quis","main_more":"106","main_map":"1","party_title":"Wedding Party","party_time":"7:30 pm","party_address":"St. Thomas''s Church, London, U.K.","party_intro":"Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor vel velit auctor aliquet. Aenean sollicitudin, lorem quis","party_more":"106","party_map":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0","module_assignment":{"content":{"customtitle":{"custom":"0"},"pagetype":{"enable":"0","include":"1","query":{"option":"com_content"}},"categories":{"enable":"0","include":"1","query":{"view":"category","option":"com_content"}},"article":{"enable":"0","include":"1","query":{"view":"article","option":"com_content"}}}}}', 0, '*'),
(105, 87, 'K2 Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_comments', 1, 1, '', 0, '*'),
(106, 88, 'K2 Content', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_content', 1, 1, '', 0, '*'),
(107, 89, 'K2 Tools', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_tools', 1, 1, '', 0, '*'),
(108, 90, 'K2 Users', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_users', 1, 1, '', 0, '*'),
(109, 91, 'K2 User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_user', 1, 1, '', 0, '*'),
(110, 92, 'K2 Quick Icons (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(111, 93, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jv_modules_menu`
--

CREATE TABLE `jv_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_modules_menu`
--

INSERT INTO `jv_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, -101),
(79, 0),
(86, 0),
(87, 0),
(88, 101),
(89, 101),
(90, 101),
(91, 101),
(92, 0),
(93, 101),
(94, 101),
(95, 101),
(96, 0),
(97, 101),
(98, 101),
(99, 101),
(100, 101),
(101, 101),
(102, 101),
(103, 101),
(104, 101),
(110, 0),
(111, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jv_newsfeeds`
--

CREATE TABLE `jv_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_overrider`
--

CREATE TABLE `jv_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_postinstall_messages`
--

CREATE TABLE `jv_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_postinstall_messages`
--

INSERT INTO `jv_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jv_redirect_links`
--

CREATE TABLE `jv_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_schemas`
--

CREATE TABLE `jv_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_schemas`
--

INSERT INTO `jv_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.6-2018-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `jv_session`
--

CREATE TABLE `jv_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_session`
--

INSERT INTO `jv_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('7kvqm3t0d17ocenpo8akc929g4', 1, 0, '1522769828', 'joomla|s:2888:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMTY7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTIyNzY2ODc3O3M6NDoibGFzdCI7aToxNTIyNzY5ODI3O3M6Mzoibm93IjtpOjE1MjI3Njk4Mjg7fXM6NToidG9rZW4iO3M6MzI6Ilk3WGpWT3NvSVU3ZDJwQmVYYUZ3TDZhaVYxSWpieHR3Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjc6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7fXM6MTE6ImNvbV9rMml0ZW1zIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fXM6MTE6ImNvbV9tb2R1bGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJhcnRpY2xlcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo2OiJmaWx0ZXIiO2E6NTp7czo2OiJzZWFyY2giO3M6MDoiIjtzOjk6InB1Ymxpc2hlZCI7czowOiIiO3M6MTE6ImNhdGVnb3J5X2lkIjthOjE6e2k6MDtzOjE6IjkiO31zOjg6Imxhbmd1YWdlIjtzOjA6IiI7czo1OiJsZXZlbCI7czowOiIiO31zOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjk6ImEuaWQgREVTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo0OntzOjg6Im1lbnV0eXBlIjtzOjY6ImhpZGRlbiI7czo5OiJjbGllbnRfaWQiO2k6MDtzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO319fXM6MTQ6ImNvbV9jYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJjYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImNvbnRlbnQiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czoxMToiY29tX2NvbnRlbnQiO31zOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19fXM6OToiY29tX2NhY2hlIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImNhY2hlIjtPOjg6InN0ZENsYXNzIjo0OntzOjY6ImZpbHRlciI7YToxOntzOjY6InNlYXJjaCI7czowOiIiO31zOjk6ImNsaWVudF9pZCI7aTowO3M6NDoibGlzdCI7YToyOntzOjEyOiJmdWxsb3JkZXJpbmciO3M6OToiZ3JvdXAgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjt9czoxMDoibGltaXRzdGFydCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiMTk2Ijt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";elFinderCaches|a:4:{s:8:"_optsMD5";s:32:"3af41c7a4da431e1e7b796cee2e9d6c8";s:3:"l1_";a:3:{s:8:"rootstat";a:0:{}s:7:"subdirs";a:7:{s:30:"D:\\xampp\\htdocs\\wedding\\images";b:1;s:44:"D:\\xampp\\htdocs\\wedding\\images\\jv-sampledata";b:1;s:52:"D:\\xampp\\htdocs\\wedding\\images\\jv-sampledata\\content";b:0;s:51:"D:\\xampp\\htdocs\\wedding\\images\\jv-sampledata\\header";b:0;s:38:"D:\\xampp\\htdocs\\wedding\\images\\banners";b:0;s:38:"D:\\xampp\\htdocs\\wedding\\images\\headers";b:0;s:41:"D:\\xampp\\htdocs\\wedding\\images\\sampledata";b:1;}s:15:"ARCHIVERS_CACHE";a:2:{s:6:"create";a:1:{s:15:"application/zip";a:3:{s:3:"cmd";s:11:"phpfunction";s:4:"argc";a:2:{i:0;s:4:"self";i:1;s:13:"zipArchiveZip";}s:3:"ext";s:3:"zip";}}s:7:"extract";a:1:{s:15:"application/zip";a:3:{s:3:"cmd";s:11:"phpfunction";s:4:"argc";a:2:{i:0;s:4:"self";i:1;s:15:"zipArchiveUnzip";}s:3:"ext";s:3:"zip";}}}}s:8:"videoLib";s:0:"";s:14:":LAST_ACTIVITY";i:1522767884;}elFinderNetVolumes|a:0:{}', 196, 'admin'),
('l1rnv43u0q40hm9v6tsh2u97v1', 1, 1, '1522766877', 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjc2Njg3NjtzOjQ6Imxhc3QiO2k6MTUyMjc2Njg3NjtzOjM6Im5vdyI7aToxNTIyNzY2ODc2O31zOjU6InRva2VuIjtzOjMyOiJwYUNwZ1M0V1FpSkROdzZNOHB0VXJpWHFsSVdzaG80diI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('n47ekt86rm4saca7uphrg9t2j0', 1, 0, '1522749703', 'joomla|s:2436:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1NztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MjI3NDgyNzQ7czo0OiJsYXN0IjtpOjE1MjI3NDk3MDE7czozOiJub3ciO2k6MTUyMjc0OTcwMjt9czo1OiJ0b2tlbiI7czozMjoiRWtqQ0prOEIzSlNXYjM1ZnlGRWVoZzJuTWROUGc4R0YiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Njp7czoxNToiY29tX2p2ZnJhbWV3b3JrIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToic3R5bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6OTt9czo0OiJkYXRhIjtOO319fXM6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czoxMjoicmVkaXJlY3RfdXJsIjtOO31zOjE0OiJjb21fY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMDoiY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250ZW50IjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319fX1zOjE2OiJjb21fazJjYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoyOntzOjg6ImFydGljbGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjY6ImZpbHRlciI7YTo1OntzOjY6InNlYXJjaCI7czowOiIiO3M6OToicHVibGlzaGVkIjtzOjA6IiI7czoxMToiY2F0ZWdvcnlfaWQiO2E6MTp7aTowO3M6MToiOSI7fXM6ODoibGFuZ3VhZ2UiO3M6MDoiIjtzOjU6ImxldmVsIjtzOjA6IiI7fXM6NDoibGlzdCI7YToyOntzOjEyOiJmdWxsb3JkZXJpbmciO3M6OToiYS5pZCBERVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjt9czoxMDoibGltaXRzdGFydCI7aTowO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fXM6MTE6ImNvbV9rMml0ZW1zIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6IjE5NiI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319czo5OiJjb21fbWVkaWEiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6InJldHVybl91cmwiO3M6ODk6ImluZGV4LnBocD9vcHRpb249Y29tX21lZGlhJnZpZXc9aW1hZ2VzJnRtcGw9Y29tcG9uZW50JmZpZWxkaWQ9JmVfbmFtZT10ZXh0JmFzc2V0PSZhdXRob3I9Ijt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 196, 'admin'),
('ndomhmg8uls5svecpddklppsb7', 0, 1, '1522766860', 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUyMjc2Njg1NTtzOjQ6Imxhc3QiO2k6MTUyMjc2Njg1NTtzOjM6Im5vdyI7aToxNTIyNzY2ODU1O31zOjU6InRva2VuIjtzOjMyOiIyazVtdkdiUDBRY3U0d2JWcENpaDY2cldwSnNRTVJESSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('ta62eqiqjq8ngkas7tq003b630', 0, 1, '1522769184', 'joomla|s:1536:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1MztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MjI3NjY4NTg7czo0OiJsYXN0IjtpOjE1MjI3NjkxNjg7czozOiJub3ciO2k6MTUyMjc2OTE4NDt9czo1OiJ0b2tlbiI7czozMjoiZUpyR1lHOGw0VXZqeXJyeTBQaTRITktYMFpMV0VDdUQiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9czoxMDoiY29tX21haWx0byI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsaW5rcyI7YTozOntzOjQwOiJlZWM4NjkxY2M3MTE1ZmE1YjRmNmViZTI2M2YxNzY2NGZhNzFiZWRmIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6Njk6Imh0dHA6Ly9sb2NhbGhvc3Qvd2VkZGluZy9pbmRleC5waHAvY29tcG9uZW50L2syL2l0ZW0vMS1iYWNoZWxvci1wYXJ0eSI7czo2OiJleHBpcnkiO2k6MTUyMjc2ODUzNzt9czo0MDoiOTRlYjM2ZmZhN2Q2MTU0ZDkyMzY3ZmZhNjFlODc0Yjk1Nzc4ZWExOSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJsaW5rIjtzOjc0OiJodHRwOi8vbG9jYWxob3N0L3dlZGRpbmcvaW5kZXgucGhwL291ci1ibG9nL2l0ZW0vMy1wbGFubmluZy1ob25leW1vb24tdHJpcCI7czo2OiJleHBpcnkiO2k6MTUyMjc2ODM1Nzt9czo0MDoiN2U2MWYxNjY4OTliMWY0MjM5ZmUzNmYwMjdjZTBhOWEzZDYyOTA1MSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJsaW5rIjtzOjY1OiJodHRwOi8vbG9jYWxob3N0L3dlZGRpbmcvaW5kZXgucGhwL291ci1ibG9nL2l0ZW0vMS1iYWNoZWxvci1wYXJ0eSI7czo2OiJleHBpcnkiO2k6MTUyMjc2OTE2OTt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jv_tags`
--

CREATE TABLE `jv_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_tags`
--

INSERT INTO `jv_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 196, '2018-03-19 14:07:55', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jv_template_styles`
--

CREATE TABLE `jv_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_template_styles`
--

INSERT INTO `jv_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'jv-melody-iii', 0, '1', 'JV-Melody-III - Default', '{"extension":{"logo":{"type":"image","image":"images\\/jv-sampledata\\/header\\/logo.png","text":"Mrs. Jeniffer & Mr. Clark Wills","slogan":""},"analytic":{"google":{"enable":"0","id":"UA-XXXXX-Y"},"yahoo":{"enable":"0","id":"1000XXXXXXXX","secure":"0"}},"date":{"enable":"0","pretext":"Today:","type":"0","position":"search","format":"d-m-Y"},"fontsizer":{"enable":"0","position":"search","zoomlevel":"3","selector":"body"},"lazyload":{"enable":"0","selector":"img"}},"global":{"devmode":"0","type":"c-sb-sb","direction":"0","retina":"0","k2css":"0","cache":"0","copyright":{"enable":"1","joomlacopyright":"0","fwcopyright":"0","content":"&copy; Copyright 2017 All Rights Reserved. By Webstrot"},"mobile":{"allmobile":{"enable":"2"}},"compress":{"css_js":"0","html":"0","deferload":"1","gzip":"1"},"totop":{"enable":"1"}},"owl_version":"2.0.0","owl_params":"{\\"list\\":[{\\"enable\\":true,\\"element\\":\\".wd_gallery_slider .owl-carousel\\",\\"title\\":\\"Gallery slider\\",\\"params\\":\\"animateOut: ''fadeOut''\\\\nloop:true\\\\nmargin:10\\\\nnav:false\\\\nresponsive:{0:{items:1},600:{items:1},1000:{items:1}}\\"},{\\"enable\\":true,\\"element\\":\\".wd_family_slider .owl-carousel\\",\\"title\\":\\"Member slider\\",\\"params\\":\\"loop:true\\\\nmargin:10\\\\nnav:true\\\\nnavText:[\\\\\\"\\\\\\" , \\\\\\"\\\\\\"]\\\\nresponsive:{0:{items:1},600:{items:2},1000:{items:4}}\\"},{\\"enable\\":true,\\"element\\":\\".wd_guest_slider .owl-carousel\\",\\"title\\":\\"Client slider\\",\\"params\\":\\"loop:true\\\\nmargin:45\\\\nnav:false\\\\nresponsive:{0:{items:1},600:{items:3},1000:{items:3}}\\"},{\\"enable\\":true,\\"element\\":\\".wd_testimonial_slider .owl-carousel\\",\\"title\\":\\"JV-Title-1\\",\\"params\\":\\"loop:true\\\\nmargin:0\\\\nnav:false\\\\nautoplay:true\\\\nresponsive:{0:{items:1},600:{items:1},1000:{items:1}}\\"}]}","fonts":{"@data":[],"@state":{"checks":[],"field":"multi"}},"layouts":{"middle":"{\\"3\\":[3,6,1]}","block":{"panel":{"grid":"{\\"1\\":[12],\\"2\\":[6,6],\\"3\\":[4,4,4],\\"4\\":[3,3,3,3],\\"5\\":[2,2,2,2,4],\\"6\\":[1,2,1,1,0,1]}"},"top":{"grid":"{\\"1\\":[12],\\"2\\":[6,6],\\"3\\":[4,4,4],\\"4\\":[3,3,3,3],\\"5\\":[2,2,2,2,4],\\"6\\":[1,2,1,1,0,1]}"},"topb":{"grid":"{\\"1\\":[12],\\"2\\":[6,6],\\"3\\":[4,4,4],\\"4\\":[3,3,3,3],\\"5\\":[2,2,2,2,4],\\"6\\":[1,2,1,1,0,1]}"},"contenttop":{"grid":"{\\"1\\":[12],\\"2\\":[6,6],\\"3\\":[4,4,4],\\"4\\":[3,3,3,3],\\"5\\":[2,2,2,2,4],\\"6\\":[1,2,1,1,0,1]}"},"contentbottom":{"grid":"{\\"1\\":[12],\\"2\\":[6,6],\\"3\\":[4,4,4],\\"4\\":[3,3,3,3],\\"5\\":[2,2,2,2,4],\\"6\\":[1,2,1,1,0,1]}"},"bottom":{"grid":"{\\"1\\":[12],\\"2\\":[6,6],\\"3\\":[4,4,4],\\"4\\":[3,3,3,3],\\"5\\":[2,2,2,2,4],\\"6\\":[1,2,1,1,0,1]}"},"bottomb":{"grid":"{\\"1\\":[12],\\"2\\":[6,6],\\"3\\":[4,4,4],\\"4\\":[3,3,3,3],\\"5\\":[2,2,2,2,4],\\"6\\":[1,2,1,1,0,1]}"}}},"menu":{"main_delay":"300","main_duration":"300","main_effect":"fade","main_easing":"linear","sub_delay":"300","sub_duration":"300","sub_effect":"fade","sub_easing":"linear","responsive":"940"},"related":{"num_intro":"2","nums_link":"3","show_title_intro":"1","show_intro_text":"1","title_link_intro":"1","cut_intro":"100","columns":"2","show_intro_date":"1","date_format":"d F Y","intro_thumbnail":"1","intro_thumbnail_align":"left","intro_thumbnail_position":"before","intro_thumbnail_width":"100","intro_thumbnail_height":"100"},"scrolling":{"@data":[],"@state":{"checks":[],"field":"multi"}},"styles":{"themestyle":"wide","bgcolor":"","background":"1","colorchooser":{"enable":"1","position":"color"},"themecolor":"color-1","classstyle":"","customcolor":{"enable":"0"},"defaultcss":"","cthemecolor":"{\\"list\\":[{\\"css\\":\\"a\\",\\"color\\":\\"#538e0f\\",\\"selector\\":\\"color\\"},{\\"css\\":\\"#block-mainnav\\",\\"color\\":\\"#538e0f\\",\\"selector\\":\\"border-color\\"},{\\"css\\":\\"#block-mainnav ul.fxmenu .fx-subitem, #block-mainnav ul.fxmenu li:hover .level1, #block-mainnav ul.fxmenu li.active .level1, h3.title-module , button:hover, .btn:hover, input[type=\\\\\\"submit\\\\\\"]:hover, input[type=\\\\\\"button\\\\\\"]:hover, div.pagination ul li a, div.pagination .counter, a.flexMenuToggle\\",\\"color\\":\\"#538e0f\\",\\"selector\\":\\"background-color\\"}]}"}}');

-- --------------------------------------------------------

--
-- Table structure for table `jv_ucm_base`
--

CREATE TABLE `jv_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_ucm_content`
--

CREATE TABLE `jv_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `jv_ucm_history`
--

CREATE TABLE `jv_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_ucm_history`
--

INSERT INTO `jv_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2018-03-20 14:17:08', 196, 575, '4138d70b7811f4377809fc53c299496bdb829701', '{"id":8,"asset_id":59,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Our true love story","alias":"our-true-love-story","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"196","created_time":"2018-03-20 14:17:08","modified_user_id":null,"modified_time":"2018-03-20 14:17:08","hits":"0","language":"*","version":null}', 0),
(2, 1, 1, '', '2018-03-20 14:25:24', 196, 2027, '333aaae0bcd4ba3c49a979944aebd398ee7c965c', '{"id":1,"asset_id":60,"title":"Our First Met","alias":"our-first-met","introtext":"<p class=\\"wd_story_highlight\\">That day changed life<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2010-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:25:24","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_1.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Met\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 2, 1, '', '2018-03-20 14:28:14', 196, 2014, '1178c3a67d35da29e3416259a799c714253c3943', '{"id":2,"asset_id":61,"title":"Our First Met (2)","alias":"our-first-met-2","introtext":"<p class=\\"wd_story_highlight\\">That day changed life<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":0,"catid":"8","created":"2010-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:28:14","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-20 14:25:24","publish_down":"","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_1.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Met\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 3, 1, '', '2018-03-20 14:29:22', 196, 2016, 'adce20512187130a95974eb61883163162111a00', '{"id":3,"asset_id":62,"title":"Our First Dating","alias":"our-first-dating","introtext":"<p class=\\"wd_story_highlight\\">Our best dinner ever<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":0,"catid":"8","created":"2010-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:29:22","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-03-20 14:25:24","publish_down":"","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_2.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Dating\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 3, 1, '', '2018-03-20 14:30:16', 196, 2052, 'd4156d800b4b35d9a327e0759e4c32c9d186055a', '{"id":3,"asset_id":"62","title":"How He Proposed","alias":"how-he-proposed","introtext":"<p class=\\"wd_story_highlight\\">That was so wonderful<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2010-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:30:16","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-20 14:29:22","publish_up":"2018-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_3.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"How He Proposed\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 2, 1, '', '2018-03-20 14:31:18', 196, 2054, '0058533d6d0485020f0e5a6987dc11c1cc52a41b', '{"id":2,"asset_id":"61","title":"Our First Dating","alias":"our-first-dating","introtext":"<p class=\\"wd_story_highlight\\">Our best dinner ever<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2010-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:31:18","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-20 14:30:26","publish_up":"2018-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_2.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Dating\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 2, 1, '', '2018-03-20 14:32:07', 196, 2054, '808c900174f04a4754a7fb23650683f107a1df6c', '{"id":2,"asset_id":"61","title":"Our First Dating","alias":"our-first-dating","introtext":"<p class=\\"wd_story_highlight\\">Our best dinner ever<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2012-05-20 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:32:07","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-20 14:31:24","publish_up":"2012-05-20 21:18:56","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_2.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Dating\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 1, 1, '', '2018-03-20 14:32:45', 196, 2046, '79d38b3c406cccb23283f8bb85949213a44c1113', '{"id":1,"asset_id":"60","title":"Our First Met","alias":"our-first-met","introtext":"<p class=\\"wd_story_highlight\\">That day changed life<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2010-05-20 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:32:45","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-20 14:32:13","publish_up":"2010-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_1.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Met\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 3, 1, '', '2018-03-20 14:33:11', 196, 2052, 'f46f5cb6cce2d97e33910959d7b9f101e861ec9b', '{"id":3,"asset_id":"62","title":"How He Proposed","alias":"how-he-proposed","introtext":"<p class=\\"wd_story_highlight\\">That was so wonderful<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:33:11","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-20 14:32:50","publish_up":"2014-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_3.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"How He Proposed\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 4, 1, '', '2018-03-20 14:33:35', 196, 2052, 'c78707f4033486b512863bd34a5975148962ed99', '{"id":4,"asset_id":63,"title":"How He Proposed (2)","alias":"how-he-proposed-2","introtext":"<p class=\\"wd_story_highlight\\">That was so wonderful<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":0,"catid":8,"created":"2014-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:33:35","modified_by":"196","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2014-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_3.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"How He Proposed\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"3","ordering":"0","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 4, 1, '', '2018-03-20 14:34:43', 196, 2046, 'c413c51e9a172617524da65d6ce9690a69283ef1', '{"id":4,"asset_id":"63","title":"Our First Kiss","alias":"our-first-kiss","introtext":"<p class=\\"wd_story_highlight\\">Feeling awesome :)<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:34:43","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-20 14:33:38","publish_up":"2014-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_4.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Kiss\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 4, 1, '', '2018-03-20 14:35:29', 196, 2046, '20a5fbf57ce1084dcf0ee6995b9d3b5a4f4ff99a', '{"id":4,"asset_id":"63","title":"Our First Kiss","alias":"our-first-kiss","introtext":"<p class=\\"wd_story_highlight\\">Feeling awesome :)<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:35:29","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-20 14:34:43","publish_up":"2015-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_4.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Kiss\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 5, 1, '', '2018-03-20 14:35:39', 196, 2046, '99e955ed14fc3e6327c6540717c9a1b80a38fbe6', '{"id":5,"asset_id":64,"title":"Our First Kiss (2)","alias":"our-first-kiss-2","introtext":"<p class=\\"wd_story_highlight\\">Feeling awesome :)<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":0,"catid":8,"created":"2015-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:35:39","modified_by":"196","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","publish_up":"2015-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_4.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Kiss\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":"5","ordering":"0","metakey":"","metadesc":"","access":"1","hits":0,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 5, 1, '', '2018-03-20 14:36:33', 196, 2057, '25eadd2555a84aceba4e9bbccf55ee1670981864', '{"id":5,"asset_id":"64","title":"Now We Together","alias":"now-we-together","introtext":"<p class=\\"wd_story_highlight\\">We''re waiting for the best<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-20 14:36:33","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-20 14:35:42","publish_up":"2015-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_5.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Now We Together\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 5, 1, '', '2018-03-21 14:40:58', 196, 2057, '580c1a67ba7e62a3ab1c7a1ffd75b9240cd23858', '{"id":5,"asset_id":"64","title":"Now We Together","alias":"now-we-together","introtext":"<p class=\\"wd_story_highlight\\">We''re waiting for the best<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-05-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-21 14:40:58","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-21 14:40:34","publish_up":"2016-05-10 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_5.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Now We Together\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 5, 1, '', '2018-03-21 14:42:03', 196, 2057, '9ba2b01cabaf351c55f1af4688dd0d0a7a9c8cfc', '{"id":5,"asset_id":"64","title":"Now We Together","alias":"now-we-together","introtext":"<p class=\\"wd_story_highlight\\">We''re waiting for the best<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-03-10 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-21 14:42:03","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-21 14:41:42","publish_up":"2014-03-10 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_5.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Now We Together\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 4, 1, '', '2018-03-21 14:44:39', 196, 2046, '4d7636df53f4447d11a04e2fb496ae580a4f2317', '{"id":4,"asset_id":"63","title":"Our First Kiss","alias":"our-first-kiss","introtext":"<p class=\\"wd_story_highlight\\">Feeling awesome :)<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2016-03-20 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-21 14:44:39","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-21 14:44:13","publish_up":"2016-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_4.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Our First Kiss\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 5, 1, '', '2018-03-21 14:44:59', 196, 2057, '5e7b77553a2b304ac9887a66cc9555cad4703574', '{"id":5,"asset_id":"64","title":"Now We Together","alias":"now-we-together","introtext":"<p class=\\"wd_story_highlight\\">We''re waiting for the best<\\/p>\\r\\n<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor...<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-03-20 21:18:56","created_by":"196","created_by_alias":"","modified":"2018-03-21 14:44:59","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-21 14:44:43","publish_up":"2018-03-20 14:25:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/story_5.jpg\\",\\"float_intro\\":\\"left\\",\\"image_intro_alt\\":\\"Now We Together\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 9, 5, '', '2018-03-23 15:41:20', 196, 553, 'b6c152e98b80d3eefac0d24fefb63eeede7498bc', '{"id":9,"asset_id":71,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Our blog","alias":"our-blog","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"196","created_time":"2018-03-23 15:41:20","modified_user_id":null,"modified_time":"2018-03-23 15:41:20","hits":"0","language":"*","version":null}', 0),
(20, 6, 1, '', '2018-03-23 15:53:02', 196, 5064, 'bec40bb9e4d74242cc16a73eb4437a1c5561060c', '{"id":6,"asset_id":74,"title":"Planning Honeymoon Trip","alias":"planning-honeymoon-trip","introtext":"<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit..<\\/p>\\r\\n","fulltext":"\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.<\\/p>\\r\\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.<\\/p>\\r\\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.<\\/p>\\r\\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.<\\/p>","state":1,"catid":"9","created":"2013-05-20 22:52:31","created_by":"196","created_by_alias":"","modified":"2018-03-23 15:53:02","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-05-20 22:52:31","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"Planning Honeymoon Trip\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `jv_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(21, 7, 1, '', '2018-03-23 15:53:42', 196, 5051, '741bbaa5603ee16650b4c3b87873e9b491541512', '{"id":7,"asset_id":75,"title":"Planning Honeymoon Trip (2)","alias":"planning-honeymoon-trip-2","introtext":"<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit..<\\/p>\\r\\n","fulltext":"\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.<\\/p>\\r\\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.<\\/p>\\r\\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.<\\/p>\\r\\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.<\\/p>","state":0,"catid":"9","created":"2013-05-20 22:52:31","created_by":"196","created_by_alias":"","modified":"2018-03-23 15:53:42","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2013-05-20 22:52:31","publish_down":"","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"Planning Honeymoon Trip\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 7, 1, '', '2018-03-23 15:54:51', 196, 5073, 'a685950b3c997582a2a21e6ea62774c6c1315776', '{"id":7,"asset_id":"75","title":"Surprises For Guests","alias":"surprises-for-guests","introtext":"<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.<\\/p>\\r\\n","fulltext":"\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.<\\/p>\\r\\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.<\\/p>\\r\\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.<\\/p>\\r\\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.<\\/p>","state":1,"catid":"9","created":"2015-05-20 22:52:31","created_by":"196","created_by_alias":"","modified":"2018-03-23 15:54:51","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-23 15:53:42","publish_up":"2015-05-20 22:52:31","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog2.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"Surprises For Guests\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 8, 1, '', '2018-03-23 15:58:39', 196, 5041, 'e400b8f4c720d87fac74fe768f6b22baf36bf0be', '{"id":8,"asset_id":76,"title":"Surprises For Guests (2)","alias":"surprises-for-guests-2","introtext":"<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.<\\/p>\\r\\n","fulltext":"\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.<\\/p>\\r\\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.<\\/p>\\r\\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.<\\/p>\\r\\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.<\\/p>","state":0,"catid":"9","created":"2015-05-20 22:52:31","created_by":"196","created_by_alias":"","modified":"2018-03-23 15:58:39","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-05-20 22:52:31","publish_down":"","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog2.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"Surprises For Guests\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(24, 8, 1, '', '2018-03-23 15:59:35', 196, 5108, '80dd48412bda8b5099ad68213e65941f8426cf17', '{"id":8,"asset_id":"76","title":"Bachelor Party!","alias":"bachelor-party","introtext":"<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.<\\/p>\\r\\n","fulltext":"\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.<\\/p>\\r\\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.<\\/p>\\r\\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.<\\/p>\\r\\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.<\\/p>","state":1,"catid":"9","created":"2015-05-20 22:52:31","created_by":"196","created_by_alias":"","modified":"2018-03-23 15:59:35","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-23 15:58:39","publish_up":"2015-05-20 22:52:31","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog3.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"Bachelor Party!\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog3.jpg\\",\\"float_fulltext\\":\\"none\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 7, 1, '', '2018-03-23 15:59:57', 196, 5140, '49a02805f35d4e4ba69cf5d7a58307e77b318784', '{"id":7,"asset_id":"75","title":"Surprises For Guests","alias":"surprises-for-guests","introtext":"<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.<\\/p>\\r\\n","fulltext":"\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.<\\/p>\\r\\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.<\\/p>\\r\\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.<\\/p>\\r\\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.<\\/p>","state":1,"catid":"9","created":"2015-05-20 22:52:31","created_by":"196","created_by_alias":"","modified":"2018-03-23 15:59:57","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-23 15:59:39","publish_up":"2015-05-20 22:52:31","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog2.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"Surprises For Guests\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog2.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"Surprises For Guests\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 6, 1, '', '2018-03-23 16:00:20', 196, 5157, '2dfb7197f6dc8b3192b35be103e99ec82e594296', '{"id":6,"asset_id":"74","title":"Planning Honeymoon Trip","alias":"planning-honeymoon-trip","introtext":"<p>This is Photoshop''s version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit..<\\/p>\\r\\n","fulltext":"\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet sem quis dui ultricies commodo. Morbi ex purus, aliquet sit amet suscipit sit amet, tempus a odio. Donec fringilla ornare ornare. Cras nec congue diam, sed vulputate leo. Curabitur ut risus vitae purus scelerisque aliquam eu eget ex. Proin tellus nibh, finibus vel malesuada quis, congue vitae elit. Sed non leo sed enim malesuada blandit. Maecenas lacinia non risus at efficitur. Suspendisse tempus metus accumsan, condimentum libero non, cursus augue. Maecenas eu consequat metus, vel laoreet sem. Cras ut viverra nisi. In laoreet dui ut ante gravida, a volutpat est sollicitudin. Etiam eleifend euismod magna, sed vehicula nunc volutpat et. Proin placerat semper dictum.<\\/p>\\r\\n<p>Vestibulum dignissim porttitor lorem, facilisis hendrerit leo rutrum sit amet. Nunc tincidunt sagittis diam, vel auctor enim. Donec gravida sapien vel libero vulputate finibus. Suspendisse in dui vel diam rutrum auctor vitae eu est. Ut elit purus, tincidunt ac finibus in, dignissim eu sapien. Etiam sit amet justo faucibus, dignissim augue ut, porttitor mi. Vestibulum eu ante velit. Proin viverra ut metus vitae cursus. Ut iaculis risus erat, ultricies semper diam bibendum a. Cras pretium a augue sed pulvinar. Donec porta at tortor tempus facilisis. Donec quis congue quam. Pellentesque eu tempus felis, et mollis turpis. Maecenas finibus sodales volutpat. Suspendisse potenti.<\\/p>\\r\\n<p>Curabitur ut erat orci. Donec sed libero vehicula, efficitur nisi at, luctus ligula. Nulla nec metus quis ipsum eleifend iaculis. Donec bibendum convallis convallis. Suspendisse et tincidunt magna, vel convallis ante. Maecenas placerat semper enim. In suscipit quam eros. Fusce placerat iaculis tellus, nec eleifend eros porta sit amet. Vivamus rutrum rutrum metus vel varius. Curabitur tempor est consequat ligula malesuada, ac dapibus urna hendrerit. Morbi at efficitur lacus. Ut sed viverra diam.<\\/p>\\r\\n<p>Etiam quis sem sit amet tellus pulvinar vulputate in at arcu. Vivamus nibh tellus, gravida sit amet lacus ut, iaculis tristique elit. Aenean lacus massa, congue et pellentesque vel, suscipit sed est. Phasellus efficitur bibendum velit, eu tincidunt orci ornare a. Maecenas laoreet nisl sed tellus aliquet suscipit et sit amet quam. Mauris mauris sapien, fringilla id suscipit sit amet, scelerisque interdum diam. Pellentesque ultrices dolor id libero interdum, commodo facilisis sapien convallis. Ut lacinia arcu vel ligula porttitor elementum. Phasellus elit dolor, dictum luctus mauris rhoncus, venenatis aliquam felis. Praesent dapibus vel nulla quis vulputate. Sed pretium scelerisque arcu. Curabitur euismod risus imperdiet, pellentesque ante eu, lacinia erat. Maecenas iaculis mollis diam sit amet sagittis. Nam fermentum libero tellus, ut aliquet mauris vehicula sed. Nulla sit amet neque at eros sodales vulputate a vel magna. In semper, urna vestibulum bibendum tempor, nulla orci vestibulum tellus, et pharetra dui justo at odio.<\\/p>","state":1,"catid":"9","created":"2013-05-20 22:52:31","created_by":"196","created_by_alias":"","modified":"2018-03-23 16:00:20","modified_by":"196","checked_out":"196","checked_out_time":"2018-03-23 16:00:01","publish_up":"2013-05-20 22:52:31","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"Planning Honeymoon Trip\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/jv-sampledata\\\\\\/content\\\\\\/blog1.jpg\\",\\"float_fulltext\\":\\"none\\",\\"image_fulltext_alt\\":\\"Planning Honeymoon Trip\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(27, 9, 5, '', '2018-03-23 16:04:01', 196, 611, 'aa33e27a6bdc85ac42d5103b929147c88c58e3de', '{"id":9,"asset_id":"71","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"our-blog","extension":"com_content","title":"From our blog","alias":"our-blog","note":"","description":"<p>Wedding journal<\\/p>","published":"1","checked_out":"196","checked_out_time":"2018-03-23 16:03:30","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"196","created_time":"2018-03-23 15:41:20","modified_user_id":"196","modified_time":"2018-03-23 16:04:01","hits":"0","language":"*","version":"1"}', 0),
(28, 9, 5, '', '2018-03-23 16:27:55', 196, 630, '0084efeb41eb33653d4d6646608d406a48adc811', '{"id":9,"asset_id":"71","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"our-blog","extension":"com_content","title":"From our blog || Wedding journal","alias":"our-blog","note":"","description":"<p>Wedding journal<\\/p>","published":"1","checked_out":"196","checked_out_time":"2018-03-23 16:04:01","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"196","created_time":"2018-03-23 15:41:20","modified_user_id":"196","modified_time":"2018-03-23 16:27:55","hits":"0","language":"*","version":"1"}', 0),
(29, 9, 5, '', '2018-03-23 16:28:10', 196, 607, 'cb3493304328bd553825e88a159c25152e852bad', '{"id":9,"asset_id":"71","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"our-blog","extension":"com_content","title":"From our blog || Wedding journal","alias":"our-blog","note":"","description":"","published":"1","checked_out":"196","checked_out_time":"2018-03-23 16:27:55","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"196","created_time":"2018-03-23 15:41:20","modified_user_id":"196","modified_time":"2018-03-23 16:28:10","hits":"0","language":"*","version":"1"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jv_updates`
--

CREATE TABLE `jv_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `jv_updates`
--

INSERT INTO `jv_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.8.6.2', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.8.4.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.8.4.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.3.3', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.3.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(30, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(31, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.4.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(32, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(33, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(34, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(35, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(36, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(37, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(38, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.6.4', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(39, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(40, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(41, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(42, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(43, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(44, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(45, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(46, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(47, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(48, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(49, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(50, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(51, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.6.2', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(52, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(53, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(54, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(55, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(56, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(57, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(58, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(59, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(60, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(61, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(62, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(63, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(64, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(65, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(66, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(67, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(68, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(69, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(70, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(71, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(72, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(73, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(74, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(75, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.8.6.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jv_update_sites`
--

CREATE TABLE `jv_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `jv_update_sites`
--

INSERT INTO `jv_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1522768009, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1522768013, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1522768014, ''),
(4, '', 'collection', 'http://update.phpkungfu.club/list.xml', 1, 1522768014, ''),
(5, 'K2 Updates', 'extension', 'http://getk2.org/app/update.xml', 1, 1522768015, '');

-- --------------------------------------------------------

--
-- Table structure for table `jv_update_sites_extensions`
--

CREATE TABLE `jv_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `jv_update_sites_extensions`
--

INSERT INTO `jv_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10000),
(4, 10001),
(4, 10003),
(4, 10004),
(4, 10005),
(4, 10006),
(4, 10007),
(4, 10008),
(4, 10009),
(4, 10010),
(4, 10011),
(4, 10013),
(4, 10014),
(4, 10015),
(4, 10016),
(4, 10017),
(4, 10018),
(4, 10019),
(4, 10020),
(4, 10021),
(4, 10022),
(4, 10023),
(4, 10024),
(5, 10034);

-- --------------------------------------------------------

--
-- Table structure for table `jv_usergroups`
--

CREATE TABLE `jv_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_usergroups`
--

INSERT INTO `jv_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `jv_users`
--

CREATE TABLE `jv_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_users`
--

INSERT INTO `jv_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(196, 'Super User', 'admin', 'joomlavi.thuytien@gmail.com', '$2y$10$GAUf6JzkG1ydUcJ/1WEqXectLUXXdC4j6tAeP627.TInCeXSwgM9S', 0, 1, '2018-03-19 14:07:56', '2018-04-03 14:48:10', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jv_user_keys`
--

CREATE TABLE `jv_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_user_notes`
--

CREATE TABLE `jv_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jv_user_profiles`
--

CREATE TABLE `jv_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `jv_user_usergroup_map`
--

CREATE TABLE `jv_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_user_usergroup_map`
--

INSERT INTO `jv_user_usergroup_map` (`user_id`, `group_id`) VALUES
(196, 8);

-- --------------------------------------------------------

--
-- Table structure for table `jv_utf8_conversion`
--

CREATE TABLE `jv_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_utf8_conversion`
--

INSERT INTO `jv_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `jv_viewlevels`
--

CREATE TABLE `jv_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jv_viewlevels`
--

INSERT INTO `jv_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jv_assets`
--
ALTER TABLE `jv_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `jv_associations`
--
ALTER TABLE `jv_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `jv_banners`
--
ALTER TABLE `jv_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jv_banner_clients`
--
ALTER TABLE `jv_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `jv_banner_tracks`
--
ALTER TABLE `jv_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `jv_categories`
--
ALTER TABLE `jv_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jv_contact_details`
--
ALTER TABLE `jv_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `jv_content`
--
ALTER TABLE `jv_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `jv_contentitem_tag_map`
--
ALTER TABLE `jv_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `jv_content_frontpage`
--
ALTER TABLE `jv_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jv_content_rating`
--
ALTER TABLE `jv_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jv_content_types`
--
ALTER TABLE `jv_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `jv_extensions`
--
ALTER TABLE `jv_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `jv_fields`
--
ALTER TABLE `jv_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jv_fields_categories`
--
ALTER TABLE `jv_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `jv_fields_groups`
--
ALTER TABLE `jv_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jv_fields_values`
--
ALTER TABLE `jv_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `jv_finder_filters`
--
ALTER TABLE `jv_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `jv_finder_links`
--
ALTER TABLE `jv_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `jv_finder_links_terms0`
--
ALTER TABLE `jv_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms1`
--
ALTER TABLE `jv_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms2`
--
ALTER TABLE `jv_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms3`
--
ALTER TABLE `jv_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms4`
--
ALTER TABLE `jv_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms5`
--
ALTER TABLE `jv_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms6`
--
ALTER TABLE `jv_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms7`
--
ALTER TABLE `jv_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms8`
--
ALTER TABLE `jv_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_terms9`
--
ALTER TABLE `jv_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_termsa`
--
ALTER TABLE `jv_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_termsb`
--
ALTER TABLE `jv_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_termsc`
--
ALTER TABLE `jv_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_termsd`
--
ALTER TABLE `jv_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_termse`
--
ALTER TABLE `jv_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_links_termsf`
--
ALTER TABLE `jv_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jv_finder_taxonomy`
--
ALTER TABLE `jv_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `jv_finder_taxonomy_map`
--
ALTER TABLE `jv_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `jv_finder_terms`
--
ALTER TABLE `jv_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `jv_finder_terms_common`
--
ALTER TABLE `jv_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `jv_finder_tokens`
--
ALTER TABLE `jv_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `jv_finder_tokens_aggregate`
--
ALTER TABLE `jv_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `jv_finder_types`
--
ALTER TABLE `jv_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `jv_jkcustomfields_categories`
--
ALTER TABLE `jv_jkcustomfields_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jv_jkcustomfields_config`
--
ALTER TABLE `jv_jkcustomfields_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jv_jkcustomfields_customfields`
--
ALTER TABLE `jv_jkcustomfields_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jv_jkcustomfields_items`
--
ALTER TABLE `jv_jkcustomfields_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jv_jv_typos`
--
ALTER TABLE `jv_jv_typos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jv_k2_attachments`
--
ALTER TABLE `jv_k2_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hits` (`hits`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `jv_k2_categories`
--
ALTER TABLE `jv_k2_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`),
  ADD KEY `category` (`published`,`access`,`trash`),
  ADD KEY `language` (`language`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `parent` (`parent`),
  ADD KEY `published` (`published`),
  ADD KEY `trash` (`trash`);

--
-- Indexes for table `jv_k2_comments`
--
ALTER TABLE `jv_k2_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentDate` (`commentDate`),
  ADD KEY `countComments` (`itemID`,`published`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `latestComments` (`published`,`commentDate`),
  ADD KEY `published` (`published`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `jv_k2_extra_fields`
--
ALTER TABLE `jv_k2_extra_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group` (`group`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `jv_k2_extra_fields_groups`
--
ALTER TABLE `jv_k2_extra_fields_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jv_k2_items`
--
ALTER TABLE `jv_k2_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`),
  ADD KEY `catid` (`catid`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created` (`created`),
  ADD KEY `featured_ordering` (`featured_ordering`),
  ADD KEY `featured` (`featured`),
  ADD KEY `hits` (`hits`),
  ADD KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  ADD KEY `language` (`language`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`),
  ADD KEY `publish_down` (`publish_down`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `trash` (`trash`);

--
-- Indexes for table `jv_k2_rating`
--
ALTER TABLE `jv_k2_rating`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `rating_sum` (`rating_sum`),
  ADD KEY `rating_count` (`rating_count`);

--
-- Indexes for table `jv_k2_tags`
--
ALTER TABLE `jv_k2_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `jv_k2_tags_xref`
--
ALTER TABLE `jv_k2_tags_xref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagID` (`tagID`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `jv_k2_users`
--
ALTER TABLE `jv_k2_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `group` (`group`);

--
-- Indexes for table `jv_k2_user_groups`
--
ALTER TABLE `jv_k2_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jv_languages`
--
ALTER TABLE `jv_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `jv_menu`
--
ALTER TABLE `jv_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jv_menu_types`
--
ALTER TABLE `jv_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `jv_messages`
--
ALTER TABLE `jv_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `jv_messages_cfg`
--
ALTER TABLE `jv_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `jv_modules`
--
ALTER TABLE `jv_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jv_modules_menu`
--
ALTER TABLE `jv_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `jv_newsfeeds`
--
ALTER TABLE `jv_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `jv_overrider`
--
ALTER TABLE `jv_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jv_postinstall_messages`
--
ALTER TABLE `jv_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `jv_redirect_links`
--
ALTER TABLE `jv_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `jv_schemas`
--
ALTER TABLE `jv_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `jv_session`
--
ALTER TABLE `jv_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `jv_tags`
--
ALTER TABLE `jv_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jv_template_styles`
--
ALTER TABLE `jv_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `jv_ucm_base`
--
ALTER TABLE `jv_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `jv_ucm_content`
--
ALTER TABLE `jv_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `jv_ucm_history`
--
ALTER TABLE `jv_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `jv_updates`
--
ALTER TABLE `jv_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `jv_update_sites`
--
ALTER TABLE `jv_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `jv_update_sites_extensions`
--
ALTER TABLE `jv_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `jv_usergroups`
--
ALTER TABLE `jv_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `jv_users`
--
ALTER TABLE `jv_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `jv_user_keys`
--
ALTER TABLE `jv_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jv_user_notes`
--
ALTER TABLE `jv_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `jv_user_profiles`
--
ALTER TABLE `jv_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `jv_user_usergroup_map`
--
ALTER TABLE `jv_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `jv_viewlevels`
--
ALTER TABLE `jv_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jv_assets`
--
ALTER TABLE `jv_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `jv_banners`
--
ALTER TABLE `jv_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_banner_clients`
--
ALTER TABLE `jv_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_categories`
--
ALTER TABLE `jv_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jv_contact_details`
--
ALTER TABLE `jv_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_content`
--
ALTER TABLE `jv_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jv_content_types`
--
ALTER TABLE `jv_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `jv_extensions`
--
ALTER TABLE `jv_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10046;
--
-- AUTO_INCREMENT for table `jv_fields`
--
ALTER TABLE `jv_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_fields_groups`
--
ALTER TABLE `jv_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_finder_filters`
--
ALTER TABLE `jv_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_finder_links`
--
ALTER TABLE `jv_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_finder_taxonomy`
--
ALTER TABLE `jv_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jv_finder_terms`
--
ALTER TABLE `jv_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_finder_types`
--
ALTER TABLE `jv_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jv_jkcustomfields_categories`
--
ALTER TABLE `jv_jkcustomfields_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jv_jkcustomfields_config`
--
ALTER TABLE `jv_jkcustomfields_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_jkcustomfields_customfields`
--
ALTER TABLE `jv_jkcustomfields_customfields`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_jkcustomfields_items`
--
ALTER TABLE `jv_jkcustomfields_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `jv_jv_typos`
--
ALTER TABLE `jv_jv_typos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `jv_k2_attachments`
--
ALTER TABLE `jv_k2_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_k2_categories`
--
ALTER TABLE `jv_k2_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jv_k2_comments`
--
ALTER TABLE `jv_k2_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_k2_extra_fields`
--
ALTER TABLE `jv_k2_extra_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_k2_extra_fields_groups`
--
ALTER TABLE `jv_k2_extra_fields_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_k2_items`
--
ALTER TABLE `jv_k2_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jv_k2_tags`
--
ALTER TABLE `jv_k2_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_k2_tags_xref`
--
ALTER TABLE `jv_k2_tags_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_k2_users`
--
ALTER TABLE `jv_k2_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_k2_user_groups`
--
ALTER TABLE `jv_k2_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_languages`
--
ALTER TABLE `jv_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jv_menu`
--
ALTER TABLE `jv_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `jv_menu_types`
--
ALTER TABLE `jv_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jv_messages`
--
ALTER TABLE `jv_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_modules`
--
ALTER TABLE `jv_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `jv_newsfeeds`
--
ALTER TABLE `jv_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_overrider`
--
ALTER TABLE `jv_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `jv_postinstall_messages`
--
ALTER TABLE `jv_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jv_redirect_links`
--
ALTER TABLE `jv_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_tags`
--
ALTER TABLE `jv_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jv_template_styles`
--
ALTER TABLE `jv_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jv_ucm_content`
--
ALTER TABLE `jv_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_ucm_history`
--
ALTER TABLE `jv_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `jv_updates`
--
ALTER TABLE `jv_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `jv_update_sites`
--
ALTER TABLE `jv_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jv_usergroups`
--
ALTER TABLE `jv_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jv_users`
--
ALTER TABLE `jv_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `jv_user_keys`
--
ALTER TABLE `jv_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_user_notes`
--
ALTER TABLE `jv_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jv_viewlevels`
--
ALTER TABLE `jv_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
