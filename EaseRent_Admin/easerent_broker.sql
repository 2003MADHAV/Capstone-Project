-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2024 at 10:16 AM
-- Server version: 8.0.35
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easerent_broker`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slider,HomeScreen,ProductListing',
  `slider_id` int DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_id` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `status` int NOT NULL COMMENT '0=approved,1=pending,2=rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `slug_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assigned_outdoor_facilities`
--

CREATE TABLE `assigned_outdoor_facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `property_id` int NOT NULL,
  `facility_id` int NOT NULL,
  `distance` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_outdoor_facilities`
--

INSERT INTO `assigned_outdoor_facilities` (`id`, `property_id`, `facility_id`, `distance`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, '2024-08-21 12:29:54', '2024-08-21 12:29:54'),
(2, 3, 1, 10, '2024-08-22 12:53:29', '2024-08-22 12:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `assign_parameters`
--

CREATE TABLE `assign_parameters` (
  `id` bigint UNSIGNED NOT NULL,
  `modal_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modal_id` bigint UNSIGNED NOT NULL,
  `property_id` int NOT NULL,
  `parameter_id` int NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_parameters`
--

INSERT INTO `assign_parameters` (`id`, `modal_type`, `modal_id`, `property_id`, `parameter_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Property', 1, 0, 1, NULL, '2024-08-02 12:40:17', '2024-08-02 12:40:17'),
(3, 'App\\Models\\Property', 2, 0, 1, 'came for rent', '2024-08-21 12:29:54', '2024-08-21 12:29:54'),
(4, 'App\\Models\\Property', 3, 0, 1, 'Fan, AC, Well furnished', '2024-08-22 12:53:29', '2024-08-22 12:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameter_types` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0:DeActive 1:Active',
  `sequence` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parameter_types`, `image`, `status`, `sequence`, `created_at`, `updated_at`, `slug_id`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`) VALUES
(1, 'Demo category', '1', 'business-svgrepo-com(1)_1722619693.svg', 1, 0, '2024-08-02 11:58:13', '2024-08-02 11:58:17', 'demo-category', NULL, NULL, NULL, ''),
(2, 'Apartment', '1', 'home-color-icon_1724350761.svg', 1, 0, '2024-08-22 12:49:21', '2024-08-22 12:49:25', 'apartment', 'Demo apartment', 'Apartment for Rent', 'apartment', '');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `property_id` int NOT NULL,
  `message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `receiver_id`, `property_id`, `message`, `file`, `audio`, `created_at`, `updated_at`) VALUES
(1, 7, 0, 1, 'hlo', '', '', '2024-08-21 12:35:38', '2024-08-21 12:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `contactrequests`
--

CREATE TABLE `contactrequests` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firebase_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcm_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logintype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email / gmail / fb / mobile',
  `isActive` tinyint NOT NULL COMMENT '0:No 1:Yes',
  `api_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notification` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:disable,1:enable',
  `subscription` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `about_me` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiiter_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pintrest_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_premium` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `firebase_id`, `email`, `mobile`, `profile`, `address`, `fcm_id`, `logintype`, `isActive`, `api_token`, `notification`, `subscription`, `created_at`, `updated_at`, `about_me`, `facebook_id`, `twiiter_id`, `instagram_id`, `pintrest_id`, `latitude`, `longitude`, `city`, `state`, `country`, `is_premium`) VALUES
(1, 'vivek', 'LtU9krFdrmYbk3dHtpRmzNvScQa2', 'vivekrawal13@gmail.com', '918003354685', NULL, 'demo', '', '1', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL215c3ViLmd1amFyYXRpZGF5cm8uaW4vYXBpL3VzZXJfc2lnbnVwIiwiaWF0IjoxNzIyNjI3ODQ3LCJuYmYiOjE3MjI2Mjc4NDcsImp0aSI6InMxY0V2c0wxQXJSNDZtVngiLCJzdWIiOiIxIiwicHJ2IjoiMWQwYTAyMGFjZjVjNGI2YzQ5Nzk4OWRmMWFiZjBmYmQ0ZThjOGQ2MyIsImN1c3RvbWVyX2lkIjoxfQ.6o26QN7CxGrDgqG3IZqrVTSVQYpBGX7ANquSvlEMmlI', 1, 1, '2024-08-02 12:33:41', '2024-08-02 14:14:37', '', '', '', '', '', '26.2389469', '73.02430939999999', 'Rajasthan', 'India', 'Jodhpur', 0),
(2, '', 'G1FlHyiVWFebmh8JGtaYIhjey7w2', 'vivekrawal134@gmail.com', '', NULL, '', NULL, '0', 1, NULL, 1, 1, '2024-08-02 12:47:25', '2024-08-02 12:47:25', '', '', '', '', '', '', '', NULL, NULL, NULL, 0),
(3, '', 'R43v1QyFwMdPXZQtRmVx5lf3REf2', '', '918219710496', NULL, '', '', '1', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL215c3ViLmd1amFyYXRpZGF5cm8uaW4vYXBpL3VzZXJfc2lnbnVwIiwiaWF0IjoxNzIyNjI3NTU1LCJuYmYiOjE3MjI2Mjc1NTUsImp0aSI6Imx1ajgyYTlFaWVqZ1FNSHMiLCJzdWIiOiIzIiwicHJ2IjoiMWQwYTAyMGFjZjVjNGI2YzQ5Nzk4OWRmMWFiZjBmYmQ0ZThjOGQ2MyIsImN1c3RvbWVyX2lkIjozfQ.Q4rvuDXNWpzsqiQGKsRSwKYpYRAPsvdd_ioRWERQ088', 1, 1, '2024-08-02 13:17:42', '2024-08-02 14:09:15', '', '', '', '', '', '', '', NULL, NULL, NULL, 0),
(4, 'Demo Dev', 'ItGd9KdMYndTcGJczVBq30chthW2', 'demodev227@yopmail.com', '914444444444', NULL, 'mohali', '', '1', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL215c3ViLmd1amFyYXRpZGF5cm8uaW4vYXBpL3VzZXJfc2lnbnVwIiwiaWF0IjoxNzIyNjI3NzYxLCJuYmYiOjE3MjI2Mjc3NjEsImp0aSI6IllXTkdRYVVXUVBpekZwa20iLCJzdWIiOiI0IiwicHJ2IjoiMWQwYTAyMGFjZjVjNGI2YzQ5Nzk4OWRmMWFiZjBmYmQ0ZThjOGQ2MyIsImN1c3RvbWVyX2lkIjo0fQ.VJjYX8lgAyLRGj-rIrjSXbLe55RT_EO09K1-0z_bjNs', 1, 1, '2024-08-02 13:42:01', '2024-08-02 14:13:58', '', '', '', '', '', '', '', '', '', '', 0),
(5, 'thian', 'Qmtu8j31Djh5UJi7tttPZZszYJM2', 'admin@gmail.com', '919142375430', NULL, 'Krishnakoil', NULL, '1', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL215c3ViLmd1amFyYXRpZGF5cm8uaW4vYXBpL3VzZXJfc2lnbnVwIiwiaWF0IjoxNzIyNjgwOTE2LCJuYmYiOjE3MjI2ODA5MTYsImp0aSI6IlVBRHNnUHNtWGVXZzFzRm8iLCJzdWIiOiI1IiwicHJ2IjoiMWQwYTAyMGFjZjVjNGI2YzQ5Nzk4OWRmMWFiZjBmYmQ0ZThjOGQ2MyIsImN1c3RvbWVyX2lkIjo1fQ.hqZjdqBQiCe0W-CZ8o0iHed4_qHFwoxANOtoy6mIb2E', 1, 1, '2024-08-03 04:58:36', '2024-08-03 04:59:35', '', '', '', '', '', '', '', '', '', '', 0),
(6, 'vivek', 'xlPxEXDhdEQ8cLJRK5e0Vs7veTg2', 'vivekrawal134@gmail.com', '918003354685', NULL, 'rameshwar nagar', NULL, '1', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Vhc2VyZW50LmluL2FwaS91c2VyX3NpZ251cCIsImlhdCI6MTcyNDIyNjgxMywibmJmIjoxNzI0MjI2ODEzLCJqdGkiOiJzRFFVd3hWUTJ4bEFnU2ptIiwic3ViIjoiNiIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJjdXN0b21lcl9pZCI6Nn0.1-39GDso6xuzKWBEOlC-g9iV4PuBv0E2N92gu6RrJ5Y', 0, 1, '2024-08-21 02:23:33', '2024-08-21 02:24:19', '', '', '', '', '', '26.2389469', '73.02430939999999', 'India', 'Jodhpur', 'Rajasthan', 0),
(7, 'keshav kumar', 'HJP47ejaEPcT3oUBrAw1Bswq0R82', 'madhavkunar332003@gmail.com', '918936845863', NULL, 'muthunagar', NULL, '1', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Vhc2VyZW50LmluL2FwaS91c2VyX3NpZ251cCIsImlhdCI6MTcyNDI2MDQzNywibmJmIjoxNzI0MjYwNDM3LCJqdGkiOiJNTE9wZzIyVVB3bW1nMDhZIiwic3ViIjoiNyIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJjdXN0b21lcl9pZCI6N30.fbWQq3BRDWMhLwLvkeMbUchtC0tXvxXauE9-SXls1F8', 1, 1, '2024-08-21 11:43:57', '2024-08-21 12:12:53', '', '', '', '', '', '9.5680116', '77.96244349999999', 'Tamil Nadu', 'Virudhunagar', 'India', 0),
(8, 'testing', 'hztoMeN4TYa5K0wMQatDOzlDwZg2', 'testing@gmail.com', '919142375430', NULL, 'krishnakoil', NULL, '1', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2Vhc2VyZW50LmluL2FwaS91c2VyX3NpZ251cCIsImlhdCI6MTcyNDI2NzY5NSwibmJmIjoxNzI0MjY3Njk1LCJqdGkiOiJvTHFKR1JPdGkxYVZuVHdRIiwic3ViIjoiOCIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJjdXN0b21lcl9pZCI6OH0.cs1jqCoZsUB5ezXohXChGtBnlKVFmpk54boUVp_iu4w', 1, 1, '2024-08-21 13:44:55', '2024-08-21 13:46:33', '', '', '', '', '', '9.5635619', '77.6822442', 'India', 'Tamil Nadu', 'Krishnan Kovil', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `property_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2024-08-03 05:00:47', '2024-08-03 05:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users`
--

CREATE TABLE `interested_users` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-No,1-Yes',
  `property_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interested_users`
--

INSERT INTO `interested_users` (`id`, `status`, `property_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(2, 0, 1, 7, '2024-08-21 11:52:25', '2024-08-21 11:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1=>active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL COMMENT '0=false,1=true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `file_name`, `status`, `created_at`, `updated_at`, `deleted_at`, `rtl`) VALUES
(1, 'English', 'en', 'en.json', 0, NULL, '2024-08-21 12:16:03', NULL, 0),
(4, 'Hindi', 'hi', 'hi.json', 0, '2024-08-21 13:31:31', '2024-08-21 13:31:31', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_03_18_033231_create_users_table', 1),
(3, '2023_03_18_033352_create_password_resets_table', 1),
(4, '2023_03_18_033442_create_failed_jobs_table', 1),
(5, '2023_03_18_033634_create_categories_table', 1),
(6, '2023_03_18_033727_create_settings_table', 1),
(7, '2023_03_18_033816_create_customers_table', 1),
(8, '2023_03_18_033916_create_sliders_table', 1),
(9, '2023_03_18_034006_create_propertys_table', 1),
(10, '2023_03_18_034055_create_property_images_table', 1),
(11, '2023_03_18_034200_create_notification_table', 1),
(12, '2023_03_18_034245_create_parameters_table', 1),
(13, '2023_03_18_034321_create_favourites_table', 1),
(14, '2023_03_18_034420_create_assign_parameters_table', 1),
(15, '2023_03_18_034454_create_articles_table', 1),
(16, '2023_03_18_034735_create_packages_table', 1),
(17, '2023_03_18_034813_create_user_purchased_packages_table', 1),
(18, '2023_03_18_034855_create_languages_table', 1),
(19, '2023_03_18_034939_cretate_advertisements_table', 1),
(20, '2023_03_18_035027_create_interested_users_table', 1),
(21, '2023_03_18_035059_create_payments_table', 1),
(22, '2023_03_18_035130_create_chats_table', 1),
(23, '2023_04_07_054100_rename_file_column_in_languages_table', 1),
(24, '2023_04_07_055215_alter_table_propertys_change_latitude_latitude', 1),
(25, '2023_04_25_091951_alter_table_payments_change_amount', 1),
(26, '2023_04_26_060301_alter_tabele_propertys_change_price', 1),
(27, '2023_05_11_055149_add_rtl__to_languages_table', 1),
(28, '2023_06_13_100955_create_users_tokens_table', 1),
(29, '2023_06_28_104556_create_outdoor_facilities_table', 1),
(30, '2023_06_28_112848_create_assigned_outdoor_facilities_table', 1),
(31, '2023_07_04_085912_add_rentduration_to_propertys_table', 1),
(32, '2023_07_17_122324_create_report_reasons_table', 1),
(33, '2023_07_17_122354_create_user_reports_table', 1),
(34, '2023_08_02_130025_make_email_value_in_assign_parameters_table', 1),
(35, '2023_08_22_054625_add_category_to_article__table', 1),
(36, '2023_08_22_062456_create_user_interests_table', 1),
(37, '2023_11_07_081457_add_columns_to_customers', 1),
(38, '2023_11_17_052005_create_contactrequests_table', 1),
(39, '2023_11_23_042600_make_data_column_nullable_in_settings_table', 1),
(40, '2023_12_18_103036_add_column_to_categories_table', 1),
(41, '2023_12_18_103148_add_column_to_articles_table', 1),
(42, '2023_12_18_103226_add_column_to_propertys_table', 1),
(43, '2023_12_18_103514_change_datatype_to_settings_table', 1),
(44, '2024_01_02_053848_create_seo_settings_table', 1),
(45, '2024_01_02_054734_add_columns_to_propertys_table', 1),
(46, '2024_01_02_054837_add_columns_to_articles_table', 1),
(47, '2024_01_02_055754_add_columns_to_categories_table', 1),
(48, '2024_01_24_121526_make_message_column_nullable_in_chats_table', 1),
(49, '2024_02_07_124810_add_coumns_to_customers_table', 1),
(50, '2024_02_16_121015_add_coumns_to_packages_table', 1),
(51, '2024_02_26_055053_add_coumns_to_packages_table', 1),
(52, '2024_02_26_055535_add_coumns_to_user_purchased_packages_table', 1),
(53, '2024_02_26_061106_add_coumns_to_customers_table', 1),
(54, '2024_02_26_085212_add_coumns_to_propertys_table', 1),
(55, '2024_02_27_100246_create_projects_table', 1),
(56, '2024_02_27_101454_create_project_documents_table', 1),
(57, '2024_03_01_113401_create_project_plans_table', 1),
(58, '2024_03_20_095532_make_seo_columns_nullable', 1),
(59, '2024_03_28_070334_add_columns_to_projects_table', 1),
(60, '2024_04_19_084914_version_1.1.4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL COMMENT '0: General 1: Inquiry',
  `send_type` tinyint NOT NULL COMMENT '0: Selected 1: All 2:property',
  `customers_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `propertys_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `message`, `image`, `type`, `send_type`, `customers_id`, `propertys_id`, `created_at`, `updated_at`) VALUES
(1, 'order', 'order', '', 0, 0, '7', 0, '2024-08-21 12:34:25', '2024-08-21 12:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `outdoor_facilities`
--

CREATE TABLE `outdoor_facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outdoor_facilities`
--

INSERT INTO `outdoor_facilities` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Jodhpur', 'business-svgrepo-com(1)_1722619857.svg', '2024-08-02 12:00:57', '2024-08-02 12:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `ios_product_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL COMMENT 'Months',
  `price` double NOT NULL,
  `status` int NOT NULL COMMENT '0:off,1:onn',
  `property_limit` int DEFAULT NULL,
  `advertisement_limit` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'product_listing/premium_user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `ios_product_id`, `name`, `duration`, `price`, `status`, `property_limit`, `advertisement_limit`, `created_at`, `updated_at`, `type`) VALUES
(1, NULL, 'Trial Package', 30, 0, 1, 10, 10, NULL, NULL, ''),
(2, '123', 'test', 10, 5000, 1, NULL, NULL, '2024-08-21 12:32:09', '2024-08-21 12:32:17', 'product_listing');

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_parameter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_values` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`id`, `name`, `type_of_parameter`, `type_values`, `image`, `created_at`, `updated_at`) VALUES
(1, 'demo fac', 'textbox', NULL, 'business-svgrepo-com(1)_1722619659.svg', '2024-08-02 11:56:47', '2024-08-02 11:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=success,2=fail',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'under_process,upcoming',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `added_by` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `total_click` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_documents`
--

CREATE TABLE `project_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'image/doc',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_plans`
--

CREATE TABLE `project_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propertys`
--

CREATE TABLE `propertys` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `propery_type` tinyint NOT NULL COMMENT '0:Sell 1:Rent',
  `price` double NOT NULL,
  `post_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 :admin 1:customer',
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Kutch',
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `threeD_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT ' 0: Deactive 1: Active',
  `total_click` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rentduration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_premium` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `propertys`
--

INSERT INTO `propertys` (`id`, `category_id`, `package_id`, `title`, `description`, `address`, `client_address`, `propery_type`, `price`, `post_type`, `city`, `country`, `state`, `title_image`, `threeD_image`, `video_link`, `latitude`, `longitude`, `added_by`, `status`, `total_click`, `created_at`, `updated_at`, `rentduration`, `slug_id`, `meta_title`, `meta_description`, `meta_keywords`, `meta_image`, `is_premium`) VALUES
(1, '1', 0, 'Demo category', 'Demo', 'Jodhpur, Rajasthan, India', 'Demo', 1, 10000, '0', 'Jodhpur', 'India', 'Rajasthan', 'app_icon_1722622217.png', 'app_icon_1722622217.png', '', '26.2389469', '73.02430939999999', 0, 1, 16, '2024-08-02 12:40:17', '2024-08-25 04:31:34', 'Monthly', 'demo-category', 'Demo category', NULL, NULL, NULL, 1),
(3, '2', 0, '2 BHK Apartment', '2 BHK Apartment', 'Jodhpur, Rajasthan, India', 'Rameshwar Nagar', 1, 35000, '0', 'Jodhpur', 'India', 'Rajasthan', 'room-house-decorated-with-brazilian-folklore-design_23-2150794153_1724351009.jpg', '', '', '26.2389469', '73.02430939999999', 0, 0, 0, '2024-08-22 12:53:29', '2024-08-22 12:53:29', 'Monthly', '2-bhk-apartment', '2 BHK Apartment', '2 BHK Apartment, well furnished', 'apartment', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `propertys_inquiry`
--

CREATE TABLE `propertys_inquiry` (
  `id` bigint UNSIGNED NOT NULL,
  `propertys_id` bigint UNSIGNED NOT NULL,
  `customers_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 : Pending 1:Accept  2: Complete 3:Cancle',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` bigint UNSIGNED NOT NULL,
  `propertys_id` bigint NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `propertys_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '172262221740.png', '2024-08-02 12:40:17', '2024-08-02 12:40:17'),
(3, 3, '172435100965.jpg', '2024-08-22 12:53:29', '2024-08-22 12:53:29'),
(4, 3, '172435100995.jpg', '2024-08-22 12:53:29', '2024-08-22 12:53:29'),
(5, 3, '172435100927.jpg', '2024-08-22 12:53:29', '2024-08-22 12:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `report_reasons`
--

CREATE TABLE `report_reasons` (
  `id` bigint UNSIGNED NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `page` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `data`, `created_at`, `updated_at`) VALUES
(1, 'company_name', 'Easyrent', NULL, '2024-08-16 05:17:55'),
(2, 'currency_symbol', '₹', NULL, '2024-08-02 04:02:47'),
(3, 'ios_version', '1.0.0', NULL, NULL),
(4, 'default_language', 'en', NULL, NULL),
(5, 'force_update', '0', NULL, NULL),
(6, 'android_version', '1.0.0', NULL, NULL),
(7, 'number_with_suffix', '0', NULL, NULL),
(8, 'maintenance_mode', '0', NULL, NULL),
(9, 'privacy_policy', '<h1>Privacy Policy</h1>\r\n<p>Last updated: August 25, 2024</p>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the <a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\" rel=\"noopener\">Free Privacy Policy Generator</a>.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Affiliate</strong> means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n</li>\r\n<li>\r\n<p><strong>Application</strong> refers to Easerent, the software program provided by the Company.</p>\r\n</li>\r\n<li>\r\n<p><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Easerent.</p>\r\n</li>\r\n<li>\r\n<p><strong>Country</strong> refers to: Madhya Pradesh, India</p>\r\n</li>\r\n<li>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong> refers to the Application.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n</li>\r\n<li>\r\n<p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Collecting and Using Your Personal Data</h2>\r\n<h3>Types of Data Collected</h3>\r\n<h4>Personal Data</h4>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul>\r\n<li>\r\n<p>Email address</p>\r\n</li>\r\n<li>\r\n<p>First name and last name</p>\r\n</li>\r\n<li>\r\n<p>Phone number</p>\r\n</li>\r\n<li>\r\n<p>Address, State, Province, ZIP/Postal code, City</p>\r\n</li>\r\n<li>\r\n<p>Usage Data</p>\r\n</li>\r\n</ul>\r\n<h4>Usage Data</h4>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<h4>Information Collected while Using the Application</h4>\r\n<p>While using Our Application, in order to provide features of Our Application, We may collect, with Your prior permission:</p>\r\n<ul>\r\n<li>\r\n<p>Information regarding your location</p>\r\n</li>\r\n<li>\r\n<p>Pictures and other information from your Device\'s camera and photo library</p>\r\n</li>\r\n</ul>\r\n<p>We use this information to provide features of Our Service, to improve and customize Our Service. The information may be uploaded to the Company\'s servers and/or a Service Provider\'s server or it may be simply stored on Your device.</p>\r\n<p>You can enable or disable access to this information at any time, through Your Device settings.</p>\r\n<h3>Use of Your Personal Data</h3>\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n<ul>\r\n<li>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n</li>\r\n<li>\r\n<p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n</li>\r\n<li>\r\n<p><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p>\r\n</li>\r\n<li>\r\n<p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n</li>\r\n<li>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n</li>\r\n</ul>\r\n<p>We may share Your personal information in the following situations:</p>\r\n<ul>\r\n<li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\r\n<li><strong>For business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n<li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n<li><strong>With business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n<li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n<h3>Retention of Your Personal Data</h3>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n<h3>Transfer of Your Personal Data</h3>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to &mdash; and maintained on &mdash; computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<h3>Delete Your Personal Data</h3>\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n<h3>Disclosure of Your Personal Data</h3>\r\n<h4>Business Transactions</h4>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<h4>Law enforcement</h4>\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n<h4>Other legal requirements</h4>\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul>\r\n<li>Comply with a legal obligation</li>\r\n<li>Protect and defend the rights or property of the Company</li>\r\n<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n<li>Protect the personal safety of Users of the Service or the public</li>\r\n<li>Protect against legal liability</li>\r\n</ul>\r\n<h3>Security of Your Personal Data</h3>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<h2>Children\'s Privacy</h2>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.</p>\r\n<h2>Links to Other Websites</h2>\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party\'s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n<h2>Changes to this Privacy Policy</h2>\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n<h2>Contact Us</h2>\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n<ul>\r\n<li>By email: <span style=\"color: #1f1f1f; font-family: \'Google Sans\', Roboto; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #e9eef6; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">easyrent33@gmail.com</span></li>\r\n</ul>', NULL, '2024-08-25 03:52:19'),
(10, 'terms_conditions', '', NULL, NULL),
(11, 'company_tel1', NULL, NULL, '2024-08-02 04:02:47'),
(12, 'company_tel2', NULL, NULL, '2024-08-02 04:02:47'),
(13, 'razorpay_gateway', '0', NULL, NULL),
(14, 'paystack_gateway', '0', NULL, NULL),
(15, 'paypal_gateway', '0', NULL, NULL),
(16, 'system_version', '1.1.4', NULL, NULL),
(17, 'company_logo', NULL, NULL, '2024-08-20 03:03:02'),
(18, 'web_logo', 'LOGO_Final (1).png', NULL, '2024-08-16 05:19:33'),
(19, 'favicon_icon', 'favicon.png', NULL, '2024-08-20 03:03:02'),
(20, 'web_footer_logo', 'LOGO_Final (1).png', NULL, '2024-08-16 05:19:33'),
(21, 'web_placeholder_logo', 'LOGO_Final (1).png', NULL, '2024-08-21 12:47:02'),
(22, 'splash_logo', 'splash.svg', NULL, NULL),
(23, 'app_home_screen', 'homeLogo.svg', NULL, NULL),
(24, 'company_email', 'easyrent33@gmail.com', '2024-08-02 04:02:47', '2024-08-16 05:17:55'),
(25, 'latitude', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(26, 'longitude', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(27, 'company_address', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(28, 'unsplash_api_key', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(29, 'place_api_key', 'AIzaSyDrJCqdVbr8GZhYfNSPeiCiNpxO6KUV4XQ', '2024-08-02 04:02:47', '2024-08-02 12:38:11'),
(30, 'system_color', '#7c6e39', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(31, 'rgb_color', 'rgb(124, 110, 57,0.15)', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(32, 'svg_clr', '1', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(33, 'paypal_business_id', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(34, 'paypal_webhook_url', 'https://mysub.gujaratidayro.in/webhook/paypal', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(35, 'sandbox_mode', '0', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(36, 'razor_key', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(37, 'razorpay_webhook_url', 'https://mysub.gujaratidayro.in/webhook/razorpay', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(38, 'razor_secret', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(39, 'paystack_secret_key', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(40, 'paystack_webhook_url', 'https://mysub.gujaratidayro.in/webhook/paystack', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(41, 'paystack_currency', 'GHS', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(42, 'paystack_public_key', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(43, 'stripe_publishable_key', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(44, 'stripe_webhook_url', 'https://mysub.gujaratidayro.in/webhook/stripe', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(45, 'stripe_currency', 'USD', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(46, 'stripe_gateway', '0', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(47, 'stripe_secret_key', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(48, 'fcm_key', 'AAAA2F21dGM:APA91bG-mmXWHuHd_E-esh-XkuJdapcCOV5Dc7enntbdweA44DG-JSGxi0jSI1lsROkLKoHT7_2-aDe2cxxoZu93HMgc9ebu83EGCbQD-JwC4LvDxqr966DUX2zY3T65LVjMAxmittC4', '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(49, 'login_image', NULL, '2024-08-02 04:02:47', '2024-08-02 04:02:47'),
(50, 'iframe_link', NULL, '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(51, 'facebook_id', NULL, '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(52, 'instagram_id', NULL, '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(53, 'twitter_id', NULL, '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(54, 'pintrest_id', NULL, '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(55, 'playstore_id', NULL, '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(56, 'sell_background', '#e8aa42', '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(57, 'appstore_id', NULL, '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(58, 'category_background', '#000000', '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(59, 'web_maintenance_mode', '0', '2024-08-02 04:04:19', '2024-08-21 12:47:35'),
(60, 'btnAdd1', 'btnAdd', '2024-08-02 04:04:19', '2024-08-02 04:04:19'),
(61, 'apiKey', 'AIzaSyAZEEf8DYtyMjS2sRcJuPxb2X291a2xy_4', '2024-08-02 04:14:48', '2024-08-20 03:25:22'),
(62, 'authDomain', 'erent-d16b7.firebaseapp.com', '2024-08-02 04:14:48', '2024-08-20 03:25:22'),
(63, 'projectId', 'erent-d16b7', '2024-08-02 04:14:48', '2024-08-20 03:25:22'),
(64, 'storageBucket', 'erent-d16b7.appspot.com', '2024-08-02 04:14:48', '2024-08-20 03:25:22'),
(65, 'messagingSenderId', '1018291744415', '2024-08-02 04:14:48', '2024-08-20 03:25:22'),
(66, 'appId', '1:1018291744415:web:fb9a4635859e0b3ab83caa', '2024-08-02 04:14:48', '2024-08-20 03:25:22'),
(67, 'measurementId', 'G-K3QWJXPGJT', '2024-08-02 04:14:48', '2024-08-20 03:25:22'),
(68, 'about_us', '<p>Contact us for user easerent@gmail.com</p>', '2024-08-25 04:03:36', '2024-08-25 04:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` tinyint NOT NULL DEFAULT '0',
  `category_id` bigint NOT NULL DEFAULT '0',
  `propertys_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL COMMENT '0:Admin 1:Users',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL COMMENT '0:Inactive 1:Active',
  `fcm_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `permissions`, `status`, `fcm_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$30vDykRlCSGkifEZ.K5W3.xzRQ4G20fcYDooykA3xgsIFhxLYCudu', 0, '', 1, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usertokens`
--

CREATE TABLE `usertokens` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `fcm_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_interests`
--

CREATE TABLE `user_interests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `category_ids` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outdoor_facilitiy_ids` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_range` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_interests`
--

INSERT INTO `user_interests` (`id`, `user_id`, `category_ids`, `outdoor_facilitiy_ids`, `price_range`, `city`, `property_type`, `created_at`, `updated_at`) VALUES
(1, 4, '1', '1', '10000.0,2500.0', '', '0,1', '2024-08-02 14:14:30', '2024-08-02 14:14:30'),
(2, 8, '1', '1', '10000.0,2500.0', '', '0,1', '2024-08-21 14:04:04', '2024-08-21 14:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_purchased_packages`
--

CREATE TABLE `user_purchased_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `modal_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modal_id` bigint UNSIGNED NOT NULL,
  `package_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `used_limit_for_property` int NOT NULL DEFAULT '0',
  `used_limit_for_advertisement` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prop_status` tinyint(1) NOT NULL DEFAULT '1',
  `adv_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_purchased_packages`
--

INSERT INTO `user_purchased_packages` (`id`, `modal_type`, `modal_id`, `package_id`, `start_date`, `end_date`, `used_limit_for_property`, `used_limit_for_advertisement`, `created_at`, `updated_at`, `prop_status`, `adv_status`) VALUES
(1, 'App\\Models\\Customer', 1, 1, '2024-08-02', '2024-09-01', 0, 0, '2024-08-02 12:33:41', '2024-08-02 12:33:41', 1, 1),
(2, 'App\\Models\\Customer', 2, 1, '2024-08-02', '2024-09-01', 0, 0, '2024-08-02 12:47:25', '2024-08-02 12:47:25', 1, 1),
(3, 'App\\Models\\Customer', 3, 1, '2024-08-02', '2024-09-01', 0, 0, '2024-08-02 13:17:42', '2024-08-02 13:17:42', 1, 1),
(4, 'App\\Models\\Customer', 4, 1, '2024-08-02', '2024-09-01', 0, 0, '2024-08-02 13:42:01', '2024-08-02 13:42:01', 1, 1),
(5, 'App\\Models\\Customer', 5, 1, '2024-08-03', '2024-09-02', 0, 0, '2024-08-03 04:58:36', '2024-08-03 04:58:36', 1, 1),
(6, 'App\\Models\\Customer', 6, 1, '2024-08-21', '2024-09-20', 0, 0, '2024-08-21 02:23:33', '2024-08-21 02:23:33', 1, 1),
(7, 'App\\Models\\Customer', 7, 1, '2024-08-21', '2024-09-20', 1, 0, '2024-08-21 11:43:57', '2024-08-21 12:27:22', 1, 1),
(8, 'App\\Models\\Customer', 8, 1, '2024-08-21', '2024-09-20', 0, 0, '2024-08-21 13:44:55', '2024-08-21 13:44:55', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_reports`
--

CREATE TABLE `user_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `reason_id` int NOT NULL,
  `customer_id` bigint NOT NULL,
  `property_id` bigint NOT NULL,
  `other_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_id_unique` (`slug_id`);

--
-- Indexes for table `assigned_outdoor_facilities`
--
ALTER TABLE `assigned_outdoor_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_parameters`
--
ALTER TABLE `assign_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_parameters_modal_type_modal_id_index` (`modal_type`,`modal_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_id_unique` (`slug_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactrequests`
--
ALTER TABLE `contactrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_ids` (`email`,`mobile`,`logintype`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_users`
--
ALTER TABLE `interested_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outdoor_facilities`
--
ALTER TABLE `outdoor_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_slug_id_unique` (`slug_id`),
  ADD KEY `projects_added_by_foreign` (`added_by`),
  ADD KEY `projects_category_id_foreign` (`category_id`);

--
-- Indexes for table `project_documents`
--
ALTER TABLE `project_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_documents_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_plans`
--
ALTER TABLE `project_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_plans_project_id_foreign` (`project_id`);

--
-- Indexes for table `propertys`
--
ALTER TABLE `propertys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `propertys_slug_id_unique` (`slug_id`);

--
-- Indexes for table `propertys_inquiry`
--
ALTER TABLE `propertys_inquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propertys_inquiry_propertys_id_foreign` (`propertys_id`),
  ADD KEY `propertys_inquiry_customers_id_foreign` (`customers_id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_reasons`
--
ALTER TABLE `report_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usertokens`
--
ALTER TABLE `usertokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_interests`
--
ALTER TABLE `user_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_purchased_packages`
--
ALTER TABLE `user_purchased_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_purchased_packages_modal_type_modal_id_index` (`modal_type`,`modal_id`);

--
-- Indexes for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assigned_outdoor_facilities`
--
ALTER TABLE `assigned_outdoor_facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_parameters`
--
ALTER TABLE `assign_parameters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactrequests`
--
ALTER TABLE `contactrequests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `interested_users`
--
ALTER TABLE `interested_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `outdoor_facilities`
--
ALTER TABLE `outdoor_facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_documents`
--
ALTER TABLE `project_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_plans`
--
ALTER TABLE `project_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propertys`
--
ALTER TABLE `propertys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `propertys_inquiry`
--
ALTER TABLE `propertys_inquiry`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `report_reasons`
--
ALTER TABLE `report_reasons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usertokens`
--
ALTER TABLE `usertokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_interests`
--
ALTER TABLE `user_interests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_purchased_packages`
--
ALTER TABLE `user_purchased_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_reports`
--
ALTER TABLE `user_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_documents`
--
ALTER TABLE `project_documents`
  ADD CONSTRAINT `project_documents_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_plans`
--
ALTER TABLE `project_plans`
  ADD CONSTRAINT `project_plans_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `propertys_inquiry`
--
ALTER TABLE `propertys_inquiry`
  ADD CONSTRAINT `propertys_inquiry_customers_id_foreign` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `propertys_inquiry_propertys_id_foreign` FOREIGN KEY (`propertys_id`) REFERENCES `propertys` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
