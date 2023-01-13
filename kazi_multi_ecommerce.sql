-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 10:29 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kazi_multi_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `banner_url`, `banner_image`, `created_at`, `updated_at`) VALUES
(2, 'Test Banner', 'https://www.google.com/', 'upload/banner/1750074239250816.jpg', NULL, '2022-11-20 21:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_image`, `created_at`, `updated_at`) VALUES
(2, 'Oppo1', 'oppo1', 'upload/brand/1749629481562807.jpeg', NULL, '2022-11-16 00:01:39'),
(3, 'Wooden', 'wooden', 'upload/brand/1750095025663043.webp', NULL, NULL),
(4, 'Nilkamal', 'nilkamal', 'upload/brand/1750095081414509.png', NULL, NULL),
(5, 'Peter England', 'peter-england', 'upload/brand/1750095148700642.png', NULL, NULL),
(6, 'Levy', 'levy', 'upload/brand/1750095162777033.png', NULL, NULL),
(7, 'Samsung', 'samsung', 'upload/brand/1750095502308574.webp', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_image`, `created_at`, `updated_at`) VALUES
(2, 'Man', 'man', 'upload/category/1749634167430301.jpg', NULL, NULL),
(3, 'Women', 'women', 'upload/category/1750085537175660.png', NULL, NULL),
(4, 'Kids', 'kids', 'upload/category/1750085561592643.jpg', NULL, NULL),
(5, 'Electronics', 'electronics', 'upload/category/1750094127011598.webp', NULL, NULL),
(6, 'Furniture', 'furniture', 'upload/category/1750094218250293.webp', NULL, NULL),
(7, 'Mobiles', 'mobiles', 'upload/category/1750094345678914.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 4, '2022-11-30 06:34:13', NULL),
(4, 3, 5, '2022-12-01 02:02:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(2, 'NEW YEAR', 20, '2022-12-04', 1, '2022-12-02 06:29:12', NULL),
(3, 'new day', 30, '2022-12-05', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_16_014935_create_brands_table', 2),
(6, '2022_11_16_055227_create_categories_table', 3),
(7, '2022_11_16_061422_create_sub_categories_table', 4),
(8, '2022_11_18_011634_create_products_table', 5),
(9, '2022_11_18_012144_create_multi_imgs_table', 5),
(10, '2022_11_20_133815_create_sliders_table', 6),
(11, '2022_11_21_024906_create_banners_table', 7),
(12, '2022_11_28_100238_create_wishlists_table', 8),
(13, '2022_11_30_114817_create_compares_table', 9),
(14, '2022_12_02_101929_create_coupons_table', 10),
(15, '2022_12_02_114120_create_ship_districts_table', 11),
(16, '2022_12_02_114243_create_ship_divisions_table', 11),
(17, '2022_12_02_114305_create_ship_states_table', 11),
(18, '2022_12_05_125122_create_orders_table', 12),
(19, '2022_12_05_125654_create_order_items_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(3, 3, 'upload/products/multi-image/1750019491889161.jpg', '2022-11-20 07:20:20', '2022-11-20 07:20:42'),
(5, 4, 'upload/products/multi-image/1750095268916979.jpg', '2022-11-21 03:25:09', NULL),
(6, 4, 'upload/products/multi-image/1750095269131942.jpg', '2022-11-21 03:25:09', NULL),
(7, 4, 'upload/products/multi-image/1750095269358304.jpg', '2022-11-21 03:25:09', NULL),
(8, 5, 'upload/products/multi-image/1750095764395178.jpg', '2022-11-21 03:33:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `adress`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 1, 'user', 'user@gamil.com', '8965236589', 'USA', '745215', 'fdsfadsfasdfdsaf', 'card_1MC0oiALc6pn5BvMbePuyZZW', 'Stripe', 'txn_3MC0pqALc6pn5BvM3Zd5GjsV', 'usd', 1500.00, '638f3e0e02311', 'EOS94947503', '06 December 2022', 'December', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-12-06 07:35:21', NULL),
(2, 3, 1, 1, 1, 'user', 'user@gamil.com', '8965236589', 'USA', '452365', 'sdfsdafdsafdsaf', 'card_1MC15lALc6pn5BvMUVSeVfjw', 'Stripe', 'txn_3MC15mALc6pn5BvM32tBtdG0', 'usd', 500.00, '638f41e9be734', 'EOS95756380', '06 December 2022', 'December', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-12-06 07:51:47', NULL),
(3, 3, 1, 1, 1, 'user', 'user@gamil.com', '8965236589', 'USA', '856325', 'fsdafdsafasdf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 500.00, NULL, 'EOS80701531', '06 December 2022', 'December', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-12-06 08:04:53', NULL),
(4, 3, 1, 1, 1, 'user', 'user@gamil.com', '8965236589', 'USA', '452563', 'sdafdsf', 'card_1MC26LALc6pn5BvMGcqLYktk', 'Stripe', 'txn_3MC26NALc6pn5BvM3cm89qZ9', 'usd', 500.00, '638f5112a5391', 'EOS99439602', '06 December 2022', 'December', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-12-06 08:56:28', NULL),
(5, 3, 1, 1, 1, 'user', 'user@gamil.com', '8965236589', 'USA', '754223', 'sadfsadfsdf', 'card_1MC2GTALc6pn5BvMP4cAzArk', 'Stripe', 'txn_3MC2GUALc6pn5BvM0byQlUJz', 'usd', 8000.00, '638f5385cc00a', 'EOS81034625', '06 December 2022', 'December', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-12-06 09:06:55', NULL),
(6, 3, 1, 1, 1, 'user', 'user@gamil.com', '8965236589', 'USA', '8566589', 'dsfdfasdafsdf', 'card_1MCGhDALc6pn5BvMcmVnjUxn', 'Stripe', 'txn_3MCGhEALc6pn5BvM0VxeGL40', 'usd', 2000.00, '63902c3661c2e', 'EOS98234055', '07 December 2022', 'December', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-12-07 00:31:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `vendor_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, 'Red', 'Small', '1', 500.00, '2022-12-06 07:35:21', NULL),
(2, 1, 3, NULL, 'Red', 'Small', '1', 500.00, '2022-12-06 07:35:21', NULL),
(3, 1, 1, NULL, 'Red', 'Small', '1', 500.00, '2022-12-06 07:35:21', NULL),
(4, 2, 3, '14', 'Red', 'Small', '1', 500.00, '2022-12-06 07:51:47', NULL),
(5, 3, 1, '14', 'Black', 'Midium', '1', 500.00, '2022-12-06 08:04:53', NULL),
(6, 4, 1, '14', 'Red', 'Small', '1', 500.00, '2022-12-06 08:56:34', NULL),
(7, 5, 4, '14', 'Red', 'Large', '1', 8000.00, '2022-12-06 09:06:59', NULL),
(8, 6, 1, '14', 'Blue', 'Midium', '4', 500.00, '2022-12-07 00:31:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gamil.com', '$2y$10$fHEqi5CsZQXkAf4.4szeP.4F9hyqz0W4kt0L1ynmwocX6QE9D1x3G', '2022-11-10 13:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `product_name`, `product_slug`, `product_code`, `product_qty`, `product_tags`, `product_size`, `product_color`, `selling_price`, `discount_price`, `short_descp`, `long_descp`, `product_thambnail`, `vendor_id`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 'Blue Casual T-Shirts', 'blue-casual-t-shirts', 'br332', '1', 'new product', 'Small,Midium,Large', 'Red,Blue,Black', '400', '500', 'Formats a HTML string/file with your desired indentation level. The formatting rules are not configurable but are already optimized for the best possible output.', '<p><span style=\"color: #495057; font-family: Poppins, sans-serif; font-size: 13px; background-color: #f8f8fb;\">Formats a HTML string/file with your desired indentation level. The formatting rules are not configurable but are already optimized for the best possible output. Note that the formatter will keep spaces and tabs between content tags such as div and span as it\'s considered to be valid content.</span></p>', 'upload/products/thambnail/1750019177423794.jpg', '14', 1, 1, NULL, 1, 1, '2022-11-20 07:12:48', '2022-11-20 07:15:43'),
(3, 2, 2, 2, 'T Shirt', 't-shirt', '001', '1', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '400', '500', 'sddsfsdafasdfsdaf', '<p>dfasdfsdafasdfasdfasdfsadfsdHello, World!</p>', 'upload/products/thambnail/1750019468665945.jpg', '14', 1, 1, 1, 1, 1, '2022-11-20 07:20:20', '2022-11-20 07:30:33'),
(4, 3, 6, 3, 'Wooden Street Beds', 'wooden-street-beds', 'WS001', '1', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '40000', '8000', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p><strong style=\"margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">Lorem Ipsum</strong><span style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</span></p>', 'upload/products/thambnail/1750095268537959.jpg', '14', 1, 1, NULL, 1, 1, '2022-11-21 03:25:09', NULL),
(5, 7, 7, 5, 'Samsung S9', 'samsung-s9', 'SS009', '1', 'new product,top product', 'Small,Midium,Large', 'Red,Blue,Black', '12999', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</span></p>', 'upload/products/thambnail/1750095763939997.png', NULL, 1, 1, NULL, 1, 1, '2022-11-21 06:30:15', '2022-11-21 06:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Noida', NULL, '2022-12-02 07:00:44'),
(2, 2, 'Maharashtra', NULL, NULL),
(3, 1, 'Gurugram', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'North Zone', NULL, '2022-12-02 06:48:13'),
(2, 'West Zone', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Delhi', NULL, '2022-12-02 07:23:25'),
(2, 2, 2, 'Mumbai', NULL, NULL),
(3, 1, 3, 'Rohini', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `short_title`, `slider_image`, `created_at`, `updated_at`) VALUES
(2, 'New Colleactions', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'upload/slider/1750082611402210.jpg', NULL, NULL),
(3, 'Women Fashion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'upload/slider/1750082669226919.jpg', NULL, '2022-11-21 00:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(2, 2, 'T Shirt', 't-shirt', NULL, NULL),
(3, 6, 'Beds', 'beds', NULL, NULL),
(4, 6, 'Tables', 'tables', NULL, NULL),
(5, 7, 'Samsung Mobile', 'samsung-mobile', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_join` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_short_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','vendor','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `vendor_join`, `vendor_short_info`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gamil.com', NULL, '$2y$10$f8pZX5bCjuhHU8AxZ9R9Ee3Xde2wyogDv08AqGJ6WybQ0X2na0r8a', '202211101112ee.jpg', '8563256325', 'Naihati bhatpara', '', '', 'admin', 'active', NULL, NULL, '2022-11-10 05:58:13'),
(2, 'Murmu Vendor', 'vendor', 'vendor@gamil.com', NULL, '$2y$10$p0ZwzD3FB8tnr1rucvf5veaE2RtH2MLeBvXdGy6FWzraGuYYOl/yO', '202211101351ddf.jpg', NULL, NULL, '', '', 'vendor', 'inactive', NULL, NULL, '2022-11-17 03:43:18'),
(3, 'user', 'user', 'user@gamil.com', NULL, '$2y$10$5Y.SNOSOJLgi.W9tJW.ffuRlvOqPdI1/n56WaWWak6tRKpSNeoDs2', '20221112103318107237354005257997.jpg', '8965236589', 'USA', '', '', 'user', 'active', NULL, NULL, '2022-11-12 05:36:35'),
(12, 'SIRAN', NULL, 'siran@gmail.com', NULL, '$2y$10$Obvi1Iy/J/qBHvbM6ANXR.LcvU4uFjnD1.ce6B/sHPt6VsqpMFUme', NULL, NULL, NULL, '', '', 'user', 'active', NULL, '2022-11-09 07:45:57', '2022-11-09 07:45:57'),
(13, 'Murmu', NULL, 'murmu@gmail.com', NULL, '$2y$10$95MpQkMAPcHBGf1miNAw0eEKYU2A3mGgPbc.kt6MwAwFZPz7eUfZC', NULL, NULL, NULL, '', '', 'user', 'active', NULL, '2022-11-10 12:46:59', '2022-11-10 12:46:59'),
(14, 'Demo Vendor', 'demovendor', 'demo@gmail.com', NULL, '$2y$10$/y9IZx69Z2B88SJC6byIiOg32LKnOYrRmHJytpsktljHijtXXGwoC', '202211170459315749627_443866931236038_8359751059890485864_n.jpg', '5632563256', 'India', '2022', '', 'vendor', 'active', NULL, NULL, '2022-11-17 04:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
