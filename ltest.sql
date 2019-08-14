-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2019 at 08:11 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(90) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_price` int(11) NOT NULL,
  `product_image1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `product_name`, `product_desc`, `book_price`, `product_image1`, `created_at`, `updated_at`) VALUES
(47, 0, 'raj', 'adfjakl', 1234, '1565500363Lighthouse.jpg', '2019-08-10 23:42:43', '2019-08-10 23:42:43'),
(48, 0, 'adfj', 'adk', 13414, '1565500391Penguins.jpg', '2019-08-10 23:43:11', '2019-08-10 23:43:11'),
(49, 0, 'asdkjf', 'jdklaj', 134, '1565500888Tulips.jpg', '2019-08-10 23:51:28', '2019-08-10 23:51:28'),
(50, 0, 'tst', 'sdaf', 14341, '1565705217Jellyfish.jpg', '2019-08-13 08:36:57', '2019-08-13 08:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `categoryname`
--

CREATE TABLE `categoryname` (
  `id` int(11) NOT NULL,
  `categoryname` text NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `categoryname`
--

INSERT INTO `categoryname` (`id`, `categoryname`, `position`) VALUES
(1, 'mobile', '0');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_05_02_070053_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0000bd953dcad1b1b086fbd7dcf282ef9c7bdcf3d0f21bd91012a42159f1261ba47224ac4b344bae', 19, 2, 'MyApp', '[]', 0, '2019-05-12 01:49:31', '2019-05-12 01:49:31', '2020-05-12 07:19:31'),
('00b012b9d13e13739c3bde5452d3c0375f8ff7d412388802b5bab4fd38dacbba031597d9bc75d3d8', 19, 2, 'MyApp', '[]', 0, '2019-08-11 02:14:39', '2019-08-11 02:14:39', '2020-08-11 07:44:39'),
('02d7f9deecf394bd1d9ff03c863ae45ac71cbe2fb09a30b162499b8865fe874362c4b37847a3f82c', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:43:55', '2019-05-20 00:43:55', '2020-05-20 06:13:55'),
('0360dfd7ee1443f5e7db49effbbad23b22a4a62e1d4572dd5978ba8fab28836edb6d8f7ba5b44ab4', 19, 2, 'MyApp', '[]', 0, '2019-08-11 01:19:17', '2019-08-11 01:19:17', '2020-08-11 06:49:17'),
('039f3d42c007d370a2f7c70b93f51312d8a6dace10432f1001e2e46ec6ba9aaf28e8c42098f6094b', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:21:30', '2019-05-16 01:21:30', '2020-05-16 06:51:30'),
('072f8f03cb539f16d9fe125bf9e868bf092722d193ce81dd76a277eacdebbb0abf3c79539fe9043f', 19, 2, 'MyApp', '[]', 0, '2019-05-16 02:05:11', '2019-05-16 02:05:11', '2020-05-16 07:35:11'),
('077b2fda8098064c96ae1e591f1471b7a04ecc0f3a8e9057bad1591250f90d3ca686acd412582d3b', 19, 2, 'MyApp', '[]', 0, '2019-07-05 06:01:07', '2019-07-05 06:01:07', '2020-07-05 11:31:07'),
('07ed701a039be379bb4c0f9bf82bd6b37636f7b3fd62d1e4c13e0a4b25f0f8370e1468a3ac2eec16', 18, 2, 'MyApp', '[]', 0, '2019-06-01 04:33:01', '2019-06-01 04:33:01', '2020-06-01 10:03:01'),
('09225b64d076687dae9e93e089c1c5abcba23d0721ae8725721952df5db2db31d8ccbbb5a4b60518', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:15:06', '2019-05-16 01:15:06', '2020-05-16 06:45:06'),
('0b0ed19a0dc3ca2ff9b2587aa9790f5688ddb69a1f5c8c7b230d81bac90097fc0bae52916f5bc054', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:45:04', '2019-05-20 00:45:04', '2020-05-20 06:15:04'),
('0b89fd26d1643c6a6877633a91d2412949943972b5f19258995ee9e15b685f1386ee82e1a01a25b6', 19, 2, 'MyApp', '[]', 0, '2019-05-16 06:13:22', '2019-05-16 06:13:22', '2020-05-16 11:43:22'),
('0d9ec8c3f235d7b06ce05b04e124f00a3d12340e7e491a5a9d478c5ad81fa91bd750164e3f11a0a0', 19, 2, 'MyApp', '[]', 0, '2019-08-13 08:38:34', '2019-08-13 08:38:34', '2020-08-13 14:08:34'),
('0f37e271cf0e2326b93c5ee1ad011699504b7404d4cabad3c6ba2064278ba6f6617ba93af182d584', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:47:25', '2019-05-20 00:47:25', '2020-05-20 06:17:25'),
('121545a72d50abe62e788f823ebbe9b0068f0cbbe90c8c75a351ecb4ed2b4532febe19696bc1b750', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:34:48', '2019-05-14 11:34:48', '2020-05-14 17:04:48'),
('13a7a33deef8543378c84cd5bb944a576cf33ba4ba35f8bce09988fb351bb5e3f69c0a846bb3f1a4', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:41:54', '2019-05-14 11:41:54', '2020-05-14 17:11:54'),
('1444a6dfa6337c07940e0f208cfbc631f064706479f8fc67fccdaa61e0955b372d4b5a9e76218b7f', 19, 2, 'MyApp', '[]', 0, '2019-05-15 05:00:27', '2019-05-15 05:00:27', '2020-05-15 10:30:27'),
('15742c81ca257acb2c360583b744eccd03bb97c46b2dd0d1d31246b16913eeecdff19edd411d72f7', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:33:09', '2019-05-14 11:33:09', '2020-05-14 17:03:09'),
('16447da65e54bca020da68fcf26d05a3b03dee494356ca79f9fedfa434c04a6d3712e0c7d39e2c4c', 19, 2, 'MyApp', '[]', 0, '2019-05-15 22:42:42', '2019-05-15 22:42:42', '2020-05-16 04:12:42'),
('19cdb68863406b83c618989e973a0a90e3f6232fb12040d3a2c68cbb52e76edb1f6172d4adac5d85', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:16:09', '2019-05-16 01:16:09', '2020-05-16 06:46:09'),
('1b4b3936d95556af0f06b88bac2481c8fcb739221b1878664fa16a564035c323379092eedf5a1e82', 18, 2, 'MyApp', '[]', 0, '2019-06-02 07:53:29', '2019-06-02 07:53:29', '2020-06-02 13:23:29'),
('1c06f7f288c586c990caaffc06789450c32d9562253edc2cd2d8830d1fd7cf8b1aab202afffbe893', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:46:50', '2019-05-20 00:46:50', '2020-05-20 06:16:50'),
('1db93a0f71949e6903feb127d3bd1f0d5a39fca61981b9d967d92d2c3ad8cd0a20b94e51c904b9db', 19, 2, 'MyApp', '[]', 0, '2019-05-14 23:40:55', '2019-05-14 23:40:55', '2020-05-15 05:10:55'),
('1ef1bfa1318d0bfce8ddd47deb2c23fcaa98603d3f26fa8c313ff830fdde37a311dfea71c8e425e4', 19, 2, 'MyApp', '[]', 0, '2019-05-15 23:35:01', '2019-05-15 23:35:01', '2020-05-16 05:05:01'),
('24d66ba51c10df1ae859fd63ae9ae43478275516f969ae5e4b1a81c31a710811cc468c70d9064af6', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:41:32', '2019-05-16 01:41:32', '2020-05-16 07:11:32'),
('2665b5a89159c7b734249fb72ac22d3f8aff3c293931c9b95484d07eb418ca9cdca239c43fcf716c', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:19:44', '2019-05-16 01:19:44', '2020-05-16 06:49:44'),
('2714d757c662e99b0a565e25e0a31b3dd86daaf5e406d6eb4ef5185260360da5748fd26411e7fd10', 19, 2, 'MyApp', '[]', 0, '2019-05-16 06:13:43', '2019-05-16 06:13:43', '2020-05-16 11:43:43'),
('27b5992e591a4d4a1e7f7e75755af577e703be689383cacc9e89611e96d1192305b14a947b621589', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:58:30', '2019-05-20 00:58:30', '2020-05-20 06:28:30'),
('27de0fbf0001cf73418e537e03c8464df10101259874a90f30e7568fe5e5f5829d38105e1fad95b7', 19, 2, 'MyApp', '[]', 0, '2019-05-18 09:09:10', '2019-05-18 09:09:10', '2020-05-18 14:39:10'),
('28f7a7f49356495794ad0020fe8644920d64169cbb15b62fde35e04cc12afbb0775c00afec188c6e', 19, 2, 'MyApp', '[]', 0, '2019-06-16 02:45:21', '2019-06-16 02:45:21', '2020-06-16 08:15:21'),
('2bdc68a64dd16943e9f88edf51b948e4a83f6bbd5fd3394af3ed01e23b95fe751cfdd2f88c79291f', 19, 2, 'MyApp', '[]', 0, '2019-05-16 00:41:48', '2019-05-16 00:41:48', '2020-05-16 06:11:48'),
('2c1ca4c65892a039f3fa47ff280c6ac0d705a31b1672cdcd6849d654ac3d2eed61e4eabd388ffeea', 19, 2, 'MyApp', '[]', 0, '2019-08-11 02:13:27', '2019-08-11 02:13:27', '2020-08-11 07:43:27'),
('2cba86fcdda759153e15f0e39c328aaacbb8cd520fadc5dde346f3a1f83aba1f5bce0560dbde8a8e', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:53:26', '2019-05-15 04:53:26', '2020-05-15 10:23:26'),
('2cd91ec1d29c3718dbc04ced6a3db5e7f92a9f6ff50cfee24e5f531cfa2c890885d0c76ac97335cb', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:33:28', '2019-05-14 11:33:28', '2020-05-14 17:03:28'),
('2d734b43e097b68a27fcd717e4e21c4ccdf7ad7126562386eb20076f04ba9e0973a69a3a0002a9be', 19, 2, 'MyApp', '[]', 0, '2019-05-15 23:21:12', '2019-05-15 23:21:12', '2020-05-16 04:51:12'),
('2f5de6156c03ac22279b973c4af1226340d139d66265d73fa7d1d65677fc82da28042b413caf4f21', 19, 2, 'MyApp', '[]', 0, '2019-05-16 03:12:16', '2019-05-16 03:12:16', '2020-05-16 08:42:16'),
('2ff6bb9330e9f48c34b1da8e3e21e09c10d79d6af00544278c9156246ab05ce96465bda26df92f96', 19, 2, 'MyApp', '[]', 0, '2019-05-19 02:24:17', '2019-05-19 02:24:17', '2020-05-19 07:54:17'),
('30e222bc8015fff90f9c15f9fa0800e15042c9cf551a6263c3f93ed931545af60173530e74af0adf', 19, 2, 'MyApp', '[]', 0, '2019-05-20 01:01:29', '2019-05-20 01:01:29', '2020-05-20 06:31:29'),
('339eed9de3e3467d4833a24011fa0f457ad994fec8a0bae516547a8199a6dcdcc9a58cb4a4a817b0', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:58:05', '2019-05-20 00:58:05', '2020-05-20 06:28:05'),
('35a63b029011523a68f3aaee2412f14b659bd87bb15a333f8eb4d3756ea0a2f168aec75ce34e3dfc', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:15:36', '2019-05-16 01:15:36', '2020-05-16 06:45:36'),
('35abfa9c2093cd7c43459e062244c47a5a075d7ac286d9465bb65d57269dd23dd5813c10ce53c1d8', 18, 2, 'MyApp', '[]', 0, '2019-05-11 08:09:39', '2019-05-11 08:09:39', '2020-05-11 13:39:39'),
('360ffcde43aee206cdd9eb12015ff66ab4f2591feeaa2f9f2f3b19b95bca8b4adbd8f4e3ff136078', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:22:17', '2019-05-16 01:22:17', '2020-05-16 06:52:17'),
('364b3005ede83b778d29f414c855275f04cf1e64512cc33fcb9a8a2fa88734bc167c1ec0bb664ed6', 19, 2, 'MyApp', '[]', 0, '2019-05-15 23:19:22', '2019-05-15 23:19:22', '2020-05-16 04:49:22'),
('3831c94878d8fc30edeb0a872f9ab8e589742b2e7eb4e5a1144ec979899928ab25c93761c1eb20ae', 19, 2, 'MyApp', '[]', 0, '2019-05-18 09:09:43', '2019-05-18 09:09:43', '2020-05-18 14:39:43'),
('390a262b08c540f00c49c82daabb4198a89d85336e851ef89f513cb9294eb3c7c8e044cc17e4eee2', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:55:05', '2019-05-14 11:55:05', '2020-05-14 17:25:05'),
('3a5c1a3933b7eff6a06094befd3167de34535b9686921d414d9ca0feebdb866da83353200737fb5a', 19, 2, 'MyApp', '[]', 0, '2019-08-09 07:17:51', '2019-08-09 07:17:51', '2020-08-09 12:47:51'),
('3b0c100f35a752c1d1beb2c2dc0b8e452564b3e17b47a76e8b8705eda839b6ffc427ac5004ec6fed', 19, 2, 'MyApp', '[]', 0, '2019-05-15 03:03:07', '2019-05-15 03:03:07', '2020-05-15 08:33:07'),
('3c74bf4df506217922bedc97d0f593b36994e5a5ea1b9a0a7193fd23bd0ae372dc1c54ca9c2c95ee', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:53:08', '2019-05-14 11:53:08', '2020-05-14 17:23:08'),
('3f6dd1f0fe9ba95bde5543276a1d9bd871dd1b4c4339a3ea6e5fa548de5a2936c46e002871fe2855', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:30:49', '2019-05-14 11:30:49', '2020-05-14 17:00:49'),
('3fde23e1f77bc44f62c38a81343ebfdec381c28b2009a57dbbbc14bcb01312dc40bdc98c815c5530', 19, 2, 'MyApp', '[]', 0, '2019-06-08 04:30:26', '2019-06-08 04:30:26', '2020-06-08 10:00:26'),
('402739de6c1b621ae6d8385a50600d4fa5ff075fd72e7e219a24587dcfd92f769b5b57d72a385399', 19, 2, 'MyApp', '[]', 0, '2019-05-15 22:53:35', '2019-05-15 22:53:35', '2020-05-16 04:23:35'),
('421e494a6ebea2ff9342352d1c9e6b8b421d7d117d889c798b23b848a3bf1f440ab67186af04b12d', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:39:56', '2019-05-14 11:39:56', '2020-05-14 17:09:56'),
('43e718a7a66df0e415b858db0ec37d8f272b36f7994535f6840fea45f4d713f50ceee431953e1717', 18, 2, 'MyApp', '[]', 0, '2019-05-11 08:13:02', '2019-05-11 08:13:02', '2020-05-11 13:43:02'),
('451a4396722b7d8d9cd516458afab86b2f08cdb808d11c630bd0f38e3eb1ec21e4f70b99cc2ecb63', 19, 2, 'MyApp', '[]', 0, '2019-05-11 23:45:52', '2019-05-11 23:45:52', '2020-05-12 05:15:52'),
('45719ea2aceb356c539a45c2577a1bb8f6de883e00f29dea4f038f98d84a506471a8dc3052989884', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:41:22', '2019-05-14 11:41:22', '2020-05-14 17:11:22'),
('477624f98e90ac3a8ea733e3e8f5d1e5ac5bcc88b373070ff59fd10289b25d9d8278a83ea90b0a68', 19, 2, 'MyApp', '[]', 0, '2019-05-20 01:01:06', '2019-05-20 01:01:06', '2020-05-20 06:31:06'),
('4835aed81763f7fa77e22bd377f852bcf1c7bb40a62451bf313f8876d9e6ff37d2382bb197753376', 19, 2, 'MyApp', '[]', 0, '2019-05-18 08:53:42', '2019-05-18 08:53:42', '2020-05-18 14:23:42'),
('4b7942ce4e9c20e94b745dd3c1143f8cb15d0772e2cbb74d39b7114262f7f2f2eebfb478079ec535', 18, 2, 'AppName', '[]', 0, '2019-05-11 08:06:15', '2019-05-11 08:06:15', '2020-05-11 13:36:15'),
('4b79e75c2da2a1af543800625abe26ba7b2e2332357d7c4ee307991b474e41bf21423d6362e78744', 19, 2, 'MyApp', '[]', 0, '2019-07-05 06:01:20', '2019-07-05 06:01:20', '2020-07-05 11:31:20'),
('4b8b85b7e47c4c952fe710b9f29e434d80eb25ac1d76f71ac4292c28604cc7b8f81e5016e7dd532d', 19, 2, 'MyApp', '[]', 0, '2019-05-19 01:49:44', '2019-05-19 01:49:44', '2020-05-19 07:19:44'),
('4ec12e2c1948ddcc030a4e51efdebe99042d63da2fc0b3c1c9477c5a9e71d9d579b909cd6824cb3a', 18, 2, 'MyApp', '[]', 0, '2019-05-11 08:07:53', '2019-05-11 08:07:53', '2020-05-11 13:37:53'),
('4f7b21a84bd3c58272ded7523672b93bdce47ad1ef873493fb5bbc288c85e27db9d86c9d516eb164', 19, 2, 'MyApp', '[]', 0, '2019-06-05 04:21:35', '2019-06-05 04:21:35', '2020-06-05 09:51:35'),
('54e9bb35f9ddf792afa7582ba94e09e674baa23baea00f1a6623bf1fb4c324617ea74db57c3083d9', 19, 2, 'MyApp', '[]', 0, '2019-05-19 02:21:23', '2019-05-19 02:21:23', '2020-05-19 07:51:23'),
('5a5547489258fd67193ec00346cad78d9da0147c940f18227cb35175d313b411eca2ced6873bc87b', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:54:42', '2019-05-14 11:54:42', '2020-05-14 17:24:42'),
('5b0e49df895c051b6cfc91281a6b6ffc635fc6b2214935c815f0ba7c5a7691890cbb32b6fe4ac4f4', 19, 2, 'MyApp', '[]', 0, '2019-05-19 02:17:29', '2019-05-19 02:17:29', '2020-05-19 07:47:29'),
('5bad55b14c84b27ddefa3e11e8b2c75e55a8f2485b70d4b20987812476ff6047e6db7bffcfc3c046', 19, 2, 'MyApp', '[]', 0, '2019-05-16 02:00:07', '2019-05-16 02:00:07', '2020-05-16 07:30:07'),
('5d4e5ee84c3123939dc9459a6a2f4d7e781fa8ccf5f725e6b2149fd459c1dce36586d344897f440c', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:16:40', '2019-05-16 01:16:40', '2020-05-16 06:46:40'),
('62482c51c1267a6ad3414753e0d6615e92ce7617d557b41f44fc713a36a1d31a30ffa668accf5b2e', 19, 2, 'MyApp', '[]', 0, '2019-06-08 01:35:10', '2019-06-08 01:35:10', '2020-06-08 07:05:10'),
('661b0ec660f66a802cb38c618a9af26f7a66689c49249faa7251b0c67d8be051b80aa1592dad6871', 19, 2, 'MyApp', '[]', 0, '2019-05-11 08:12:44', '2019-05-11 08:12:44', '2020-05-11 13:42:44'),
('6b3419f31aa112019fb661285ee4c2c11980c22f07a3f80675236b650854bb3a6c5cf72ad1e493f8', 19, 2, 'MyApp', '[]', 0, '2019-05-15 01:14:40', '2019-05-15 01:14:40', '2020-05-15 06:44:40'),
('6c1d46bc0c06802adb73b61f5162fd6bfd8ec66c24e3806681705893a37bb45a90aae49bd5fe35cb', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:52:23', '2019-05-15 04:52:23', '2020-05-15 10:22:23'),
('6dc8fdd37c30e63fd7fe7524f91f51356753ce6f941b2b543ae88e9a0f1a8997d1fb47e6b597ac43', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:51:55', '2019-05-15 04:51:55', '2020-05-15 10:21:55'),
('6e403321200c4bdad1c75e42268b1d464a3248103bb1b03081cc06a5c441a1777d7f17674a7fb8d2', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:50:55', '2019-05-15 04:50:55', '2020-05-15 10:20:55'),
('6f16fd2e2307a46aa7ddf2a9f515d189a9308bc0214da5fd2195941b4da0a25565a192f978c05ea9', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:52:25', '2019-05-15 04:52:25', '2020-05-15 10:22:25'),
('70352ce14fea8f31385727e6cc0f6ba4d4d3b0d446e2b79ae755a803828dec0153f6b3aa9e729e43', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:28:41', '2019-05-14 11:28:41', '2020-05-14 16:58:41'),
('7221b2db2815ebbad695d6a7fee30c18091722fe73594b86aa45f163500cd7fa519dc54cd1b2e584', 19, 2, 'MyApp', '[]', 0, '2019-05-19 02:21:09', '2019-05-19 02:21:09', '2020-05-19 07:51:09'),
('7629d9bc47e256051a2af72d6686ff4c5b5261a3228eb15a0caa20d443ef486c033128905c519b92', 19, 2, 'MyApp', '[]', 0, '2019-08-11 01:12:59', '2019-08-11 01:12:59', '2020-08-11 06:42:59'),
('76931bfee7d11e35f24ee8544872a8a2dd0105a7bac0ad9b5bf0c44dd365c5ab817a1356e0c946c8', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:40:35', '2019-05-14 11:40:35', '2020-05-14 17:10:35'),
('78fbe6a91e15065c8110f2995dcd08e5fcd9eafa8de648f081dc451384b720c16b5cfea05dbf428e', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:54:59', '2019-05-15 04:54:59', '2020-05-15 10:24:59'),
('7c2673e425c5097703d6429f3b08426c0c69149b5c808f844549e2fd1d7f839c7726c64e4209afcd', 19, 2, 'MyApp', '[]', 0, '2019-06-29 01:49:19', '2019-06-29 01:49:19', '2020-06-29 07:19:19'),
('83c3eb823acd969dc56f88328bbe878b5a97139e6594e4fba6564d06d2c6e44d7a6cd6f4fc20ea58', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:33:58', '2019-05-14 11:33:58', '2020-05-14 17:03:58'),
('8646576df93ff97b2e4f96937762013994990180093c4bd65cb62649e1dad18703e4ba6e830fccf4', 19, 2, 'MyApp', '[]', 0, '2019-05-18 08:41:03', '2019-05-18 08:41:03', '2020-05-18 14:11:03'),
('88b8cd3c4232b75db45add39198c6c1499f18881a56914ba47695cf88ce848109dd99aa55bb87051', 19, 2, 'MyApp', '[]', 0, '2019-06-16 02:37:08', '2019-06-16 02:37:08', '2020-06-16 08:07:08'),
('8bf7c778bf199dfe89bb5fbd471244581609bff59a41716fb43355d11eea9211ca9709acd3130d27', 19, 2, 'MyApp', '[]', 0, '2019-06-08 01:35:10', '2019-06-08 01:35:10', '2020-06-08 07:05:10'),
('8e15ca446b98a2cb4b53c044c8fd70d5ef33aaed21085d8cb2bd90c3825c2b7f9bc95def21e2c1f4', 19, 2, 'MyApp', '[]', 0, '2019-05-18 08:23:29', '2019-05-18 08:23:29', '2020-05-18 13:53:29'),
('8fba8137a8987914b7ba5d65301bf2dfeb9df692fe1437769058f48c4c592268e0c76077ab91a8cc', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:43:00', '2019-05-14 11:43:00', '2020-05-14 17:13:00'),
('9143782af9d07268b0dda9a00538a710068b9a7d99b7e9cb13f61a37725df816efd84d196f1320e9', 19, 2, 'MyApp', '[]', 0, '2019-05-11 23:55:58', '2019-05-11 23:55:58', '2020-05-12 05:25:58'),
('91596058108fd9ee076a550d785d6d4dd6507f32fca0c4b4389e2f05a3ec8a4394b8652ebdad535a', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:44:24', '2019-05-14 11:44:24', '2020-05-14 17:14:24'),
('923b3bc8dee6db7c74469f8d5ddad261924d2a2dfde35a1e58ee368be0dfb80dad488129417ffc46', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:55:37', '2019-05-20 00:55:37', '2020-05-20 06:25:37'),
('9378b50853c0458856837c372e9e1a0059e7e9104040ff1442d9c122f40ae00abe4dfe4f09e4cccb', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:48:39', '2019-05-20 00:48:39', '2020-05-20 06:18:39'),
('948c18a33cf39ae77ba568bf390a9979b44ab6cb3622517d8661ac6def1a09796bbe91a492e0316e', 19, 2, 'MyApp', '[]', 0, '2019-05-14 23:37:49', '2019-05-14 23:37:49', '2020-05-15 05:07:49'),
('960ab2f72048cddfd2721b73ce6d38635a40139c64800fd8b7b45a17e4f29f6cacf519241ca39074', 19, 2, 'MyApp', '[]', 0, '2019-05-15 23:20:24', '2019-05-15 23:20:24', '2020-05-16 04:50:24'),
('968d04ad6d5530dd882ce48b2e0fe20fbd0dfe1a7fe0df5240fadbe87b956c0ab2301a234928ef57', 19, 2, 'MyApp', '[]', 0, '2019-08-11 02:13:31', '2019-08-11 02:13:31', '2020-08-11 07:43:31'),
('971dcd161b23bdd1963cd1f255d694e5694f12e73844e3d460472bc59b43ba6418d21e68cded863c', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:53:54', '2019-05-14 11:53:54', '2020-05-14 17:23:54'),
('972d71b78449f96582519c13f5e3f74cb15e64764f5e3da73e3441f0550f6d5da4afa15e6d1263ce', 19, 2, 'AppName', '[]', 0, '2019-05-11 08:12:24', '2019-05-11 08:12:24', '2020-05-11 13:42:24'),
('98b09bfeb0097ebac27e60b17a3e8c59b1f1322db907016393dd417154d5ca8379f6593151b5797d', 19, 2, 'MyApp', '[]', 0, '2019-05-11 08:13:18', '2019-05-11 08:13:18', '2020-05-11 13:43:18'),
('9bfb099d17c087381e86fd3de79aa976c4e0db3e2c8853b0136e21478971d5ed826535c9c47cfc89', 19, 2, 'MyApp', '[]', 0, '2019-05-19 01:53:19', '2019-05-19 01:53:19', '2020-05-19 07:23:19'),
('9dc0cc71750d69c81177a29cddc5e8c20e84a4eee89c5faecdc1964f0fb52927b1d266d381345a24', 19, 2, 'MyApp', '[]', 0, '2019-05-19 02:16:40', '2019-05-19 02:16:40', '2020-05-19 07:46:40'),
('a0d6c9e71b450ea4c4f6bc826917fa1589270af97875195ddb5175cb5271045b18a2b4ae1208241d', 19, 2, 'MyApp', '[]', 0, '2019-08-09 08:23:07', '2019-08-09 08:23:07', '2020-08-09 13:53:07'),
('a0ec0e9e5d2f3575cfe887f62b14288c4baf46e04014460774e35e625b0b742b3c7b1e2671838ac3', 19, 2, 'MyApp', '[]', 0, '2019-05-15 23:54:42', '2019-05-15 23:54:42', '2020-05-16 05:24:42'),
('a4f2d2555f2d2a5de1d522dd6e788f007fe8922a89a8e12c25e67df8602b259a0460dd82b157afde', 19, 2, 'MyApp', '[]', 0, '2019-06-28 05:24:38', '2019-06-28 05:24:38', '2020-06-28 10:54:38'),
('a556a6a43db811989bdd77f894e347fd8fece895db43973a3c9c002f85eee405134512969f55f914', 19, 2, 'MyApp', '[]', 0, '2019-08-13 08:22:25', '2019-08-13 08:22:25', '2020-08-13 13:52:25'),
('a8228dc72f0ec4e5919f513f36cc5d10731150cb40575e253148306978a37754854a7ede3e8e8cbb', 19, 2, 'MyApp', '[]', 0, '2019-08-09 07:18:18', '2019-08-09 07:18:18', '2020-08-09 12:48:18'),
('aa75edaafbec7322b911044fc56fd278c9716e82857a28303486711170ba1156b52d46f7cd7428f7', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:29:57', '2019-05-14 11:29:57', '2020-05-14 16:59:57'),
('ac1904d937865a7474c5640f93049fd79e557d49548e78e697bfb477c20361d2919e4d56e72c2df7', 19, 2, 'MyApp', '[]', 0, '2019-05-15 03:03:26', '2019-05-15 03:03:26', '2020-05-15 08:33:26'),
('ade0151f4b7815c62c479dc1a8eb9ba6987a1b7afb6f4ce22df5f7384a32421c43bb07fb81fbddc7', 19, 2, 'MyApp', '[]', 0, '2019-05-12 01:34:35', '2019-05-12 01:34:35', '2020-05-12 07:04:35'),
('ae1b13b7b1ebd3484c54aeee9624a652abdacaf46c96a0764b973ef5ea7d3a16d11445b0489d47e7', 19, 2, 'MyApp', '[]', 0, '2019-05-19 02:17:29', '2019-05-19 02:17:29', '2020-05-19 07:47:29'),
('b36c9cbeb3435e24a7c00a20ac1f4473ece010079431fbe5fe5acb3867d81421266c532b6f68cca8', 19, 2, 'MyApp', '[]', 0, '2019-06-02 07:41:34', '2019-06-02 07:41:34', '2020-06-02 13:11:34'),
('b3b86f7fe3ebadfd1fdf1130109187a89516fcbf651c4bc9170845466503df2e9e50cac603a8d1b3', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:30:07', '2019-05-20 00:30:07', '2020-05-20 06:00:07'),
('b52b1e03f30e50ebb1fb6806be16bc15f04901378add548495cb54de92e70cc8f73f26a8f9749a93', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:40:52', '2019-05-16 01:40:52', '2020-05-16 07:10:52'),
('b6f3a2e919c9430b518f6fbdfebdd6b7aa9bdd88e78cc45d8c4ce0c40c5463aab3ee0e1a90f42745', 19, 2, 'MyApp', '[]', 0, '2019-05-11 09:58:13', '2019-05-11 09:58:13', '2020-05-11 15:28:13'),
('b7f48a6ea01246ee15289489e639dd5b9c97fb2f0f767a1f2a5f263fbd35e08320ba2ea83a39791a', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:52:36', '2019-05-20 00:52:36', '2020-05-20 06:22:36'),
('b9aaedcfdc870211be579051794880933fb014561f60ad4c09f2cbaf73b52feb7b19c716437bc644', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:48:21', '2019-05-20 00:48:21', '2020-05-20 06:18:21'),
('bba74dba3874cef52717fd9e7eb5d3eabcdc7641fbbb0865405b9afbf9a95ad8a96c3686570e350e', 19, 2, 'MyApp', '[]', 0, '2019-05-19 01:32:23', '2019-05-19 01:32:23', '2020-05-19 07:02:23'),
('bd0a534f87673ab12e7f87c9f5d172fe7c301baee14edc0226eb6e17f56fd44d17e7a00af94cf028', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:20:09', '2019-05-16 01:20:09', '2020-05-16 06:50:09'),
('c0e6da58a2122453220a918e583e19221873940c465f31a8a56b6f060a97fabd0f3d31b276129031', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:12:13', '2019-05-16 01:12:13', '2020-05-16 06:42:13'),
('c0f4d4badc2694bcaad2ab7c68f2f33bf213c5539f52e825c09c0cdb22602023f078a047c8c3b31f', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:42:51', '2019-05-14 11:42:51', '2020-05-14 17:12:51'),
('c2f8a440ecb66c1054f53cecaebd08154d40fc0632e82b42fc6c1ba50900810e29739d4fe67b42fa', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:41:47', '2019-05-16 01:41:47', '2020-05-16 07:11:47'),
('c3ec272560643ea51eabae84ffecd9a5516bc78e7587816fa1a031c0b86de9bf3e64774986fb3cbc', 19, 2, 'MyApp', '[]', 0, '2019-05-20 01:01:29', '2019-05-20 01:01:29', '2020-05-20 06:31:29'),
('c59e161be8f9176d1979bbbe3ab964ce876ad490667f089e8390bee1325097249f8b05dc11bf653c', 19, 2, 'MyApp', '[]', 0, '2019-05-19 01:53:55', '2019-05-19 01:53:55', '2020-05-19 07:23:55'),
('c7895d0c266f11fb72c1be7610c8904cdfa4a4211b2bc83fd49ea6134863a9752aa801f17414832e', 19, 2, 'MyApp', '[]', 0, '2019-06-29 01:49:18', '2019-06-29 01:49:18', '2020-06-29 07:19:18'),
('c947d5dcd0211401790a6e3635f101051ffcf7dbc9275ccd8cd5c2001eb187a9f8d5e37207dac9ca', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:44:31', '2019-05-20 00:44:31', '2020-05-20 06:14:31'),
('cc1af080f378996312467013aa6314c035b512d47ca033145288779a71795ecc16fcd49b94d0c39d', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:51:53', '2019-05-15 04:51:53', '2020-05-15 10:21:53'),
('d1b3f77e8b20a9e6ae7b753f76faf3cc85e584422b31b8a9c65239464d8aab44a20340fc53a78d26', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:52:27', '2019-05-15 04:52:27', '2020-05-15 10:22:27'),
('d1fd5725f93be16099b33a999d6d2965488cb600bce0845927addd7cde4fcd47f6813adb0bcf6cf1', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:51:49', '2019-05-15 04:51:49', '2020-05-15 10:21:49'),
('d216718ff97fdd1edfd3ad76ea3384ae8d2feb831e43e3da47c0927380cba2b8955f64da1cf9a8a7', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:49:11', '2019-05-14 11:49:11', '2020-05-14 17:19:11'),
('d286b049bc180bb8ead064b48a131eab359e297d5c2297d2004e8f941eacd98a20f18b91b5660321', 19, 2, 'MyApp', '[]', 0, '2019-06-08 01:35:09', '2019-06-08 01:35:09', '2020-06-08 07:05:09'),
('d40a56a93b90112cbf8c068f1dec791e421c292e1fc5eeacbea077df6766c2ca87245ea61647b1e5', 19, 2, 'MyApp', '[]', 0, '2019-05-16 00:35:26', '2019-05-16 00:35:26', '2020-05-16 06:05:26'),
('d56ed1e22b7e34f5d3ebe896d30e299bf832c60c5af01fee581c0c433ad366962fdda80e2f1bc5b1', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:50:35', '2019-05-15 04:50:35', '2020-05-15 10:20:35'),
('d7c708142707f990de71dddaa158687529852b5f21870b4f2cfd23df0421a8195aac96ebe65b88c6', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:59:21', '2019-05-16 01:59:21', '2020-05-16 07:29:21'),
('d8215322068896d7fc0a2b33f66bb98b264393d1c782c253c682e6c27d98017b856d23b981cc2e11', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:36:12', '2019-05-14 11:36:12', '2020-05-14 17:06:12'),
('d979332ba8e45ecece685da8a7e776519cceb0c92b7ad7f703adabb62e4d56abf27d6797eaabdf9e', 19, 2, 'MyApp', '[]', 0, '2019-06-29 01:49:20', '2019-06-29 01:49:20', '2020-06-29 07:19:20'),
('dad27c2f945ec1ad69ba4f873063618d772866a5c2bdcb7f100b34fe42297fa46f64e47234d60b27', 19, 2, 'MyApp', '[]', 0, '2019-08-11 02:13:29', '2019-08-11 02:13:29', '2020-08-11 07:43:29'),
('db2c1e75d4003b8170e556e55698bb4fe1a69d8e04e87a476972b2167c63a06463a37c20deb5b577', 19, 2, 'MyApp', '[]', 0, '2019-05-16 00:42:15', '2019-05-16 00:42:15', '2020-05-16 06:12:15'),
('db358df4caacbe15e5e4bb71b65db4dc373b460a15bddb8dfee28855da09705efb4807482fcd5026', 19, 2, 'MyApp', '[]', 0, '2019-05-15 06:00:08', '2019-05-15 06:00:08', '2020-05-15 11:30:08'),
('db6ecbf62fc304a8a9ea2b01eb8127c0f17516d76d6ca40a51ae76378c4b90f5e085976799c2d865', 19, 2, 'MyApp', '[]', 0, '2019-08-09 07:33:38', '2019-08-09 07:33:38', '2020-08-09 13:03:38'),
('dd7e9be2be611adb689f864ccfc862e6bedb4f9ea00206dbe621747eb48e238fbfaae03d625a87af', 19, 2, 'MyApp', '[]', 0, '2019-06-28 05:25:28', '2019-06-28 05:25:28', '2020-06-28 10:55:28'),
('e051773cac4d1f6a336cbb7bfa1f9189fdcfcb25b27f504ea91e4295b9f0ca95dd4d22aa00902af1', 19, 2, 'MyApp', '[]', 0, '2019-05-18 08:41:03', '2019-05-18 08:41:03', '2020-05-18 14:11:03'),
('e5a8662604f5b38887e80ced4dba568e0b28ad4f647898c7c248ecbdfd8fb3aa7126baeba0d0ccfe', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:51:56', '2019-05-15 04:51:56', '2020-05-15 10:21:56'),
('e63fe5752fb29fff91004e5eebf89168bf533912f8b80b61ec1864ccd4a12e988b7a97ef7a9037d7', 18, 2, 'MyApp', '[]', 0, '2019-06-01 04:33:36', '2019-06-01 04:33:36', '2020-06-01 10:03:36'),
('e806b1d85b9d9e4e0b556fdcd894549af8ae715b3cee6c62d31a358cc79a0a5f71581e9a44e6e643', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:18:59', '2019-05-16 01:18:59', '2020-05-16 06:48:59'),
('ea6059b64999acce601aabcc53b66a100d1f372fe49173709b732fcf30780c4e197d6255348c13ad', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:23:10', '2019-05-16 01:23:10', '2020-05-16 06:53:10'),
('eb348e06d98c132c11c790c7462c2dde22c64f1d3e1c9e0ba0e6852a3b42be9d2e4deaa7ed1def71', 19, 2, 'MyApp', '[]', 0, '2019-08-13 08:26:26', '2019-08-13 08:26:26', '2020-08-13 13:56:26'),
('eb637702416646d96cfb9b20b1c965f46a77c783fd4a384915d37d6177277bc5d1bd0a46fc87a308', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:41:01', '2019-05-14 11:41:01', '2020-05-14 17:11:01'),
('ec9de1ba14f16bfa1a6216396f74e64d8d7fc1bddadf685e93aa436dcc1bf37570280b58b620a70c', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:56:29', '2019-05-14 11:56:29', '2020-05-14 17:26:29'),
('ed7b80bc534e46de69cd39d0b2e527e7e5c59743a36f8291aa3d17ff010c1e6afdb5fabcb0d344a0', 19, 2, 'MyApp', '[]', 0, '2019-08-13 08:25:53', '2019-08-13 08:25:53', '2020-08-13 13:55:53'),
('eff8949e61b204de266834b0faf109ae8a013cb47b110740e0d295e396e8741d4544de41e740e2b6', 19, 2, 'MyApp', '[]', 0, '2019-05-19 02:18:00', '2019-05-19 02:18:00', '2020-05-19 07:48:00'),
('f55ec1bf6937c3eea0fe5d2136682f4b5653ed3933b3594e0d961e58164a21dd21976670554d7422', 19, 2, 'MyApp', '[]', 0, '2019-05-15 04:54:15', '2019-05-15 04:54:15', '2020-05-15 10:24:15'),
('f743674dc8cd77490b62e9cfa66513afcd871a89e450f8a4574d6199e06d9a7767a536a42a9f4a4a', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:45:47', '2019-05-20 00:45:47', '2020-05-20 06:15:47'),
('f7eb3655dc740112581dc38e28008fa86f43a1045a6853c883bc67e15e649841c2a4cbc8503369b1', 19, 2, 'MyApp', '[]', 0, '2019-06-08 01:35:07', '2019-06-08 01:35:07', '2020-06-08 07:05:07'),
('f8986cd9c0dd2a7a866af80c9d9774b72c10d8f7bfa8cc14cc46bd54d2460027afbeb59172642c87', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:48:19', '2019-05-14 11:48:19', '2020-05-14 17:18:19'),
('faa2e231b86413f42179751757c8f2558d959be21e3a9fa91e9f6ee95f0135f51f6c6e3c52e434c3', 19, 2, 'MyApp', '[]', 0, '2019-05-20 00:44:13', '2019-05-20 00:44:13', '2020-05-20 06:14:13'),
('fbd52ba13e12119fac4a71bf8b7381369e8395355de1045bcc47390c045a7ab8a48cc0e5338e6698', 19, 2, 'MyApp', '[]', 0, '2019-05-14 11:37:13', '2019-05-14 11:37:13', '2020-05-14 17:07:13'),
('fd3398887fe5ca0f5cc9571f8d804af2d5d7ec81a0ac9c2a4ac18a9c694190885212dbac0de16e20', 19, 2, 'MyApp', '[]', 0, '2019-05-16 01:10:20', '2019-05-16 01:10:20', '2020-05-16 06:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'kEe44lektVEfi3HRvioDCSmMVAQmKO2YAbBejFi7', 'http://localhost', 1, 0, 0, '2019-05-11 06:35:58', '2019-05-11 06:35:58'),
(2, NULL, 'Laravel Personal Access Client', 'h87FKnj1DMVPcdm0cRIjr6XLHE8oXr91kvm7JtGa', 'http://localhost', 1, 0, 0, '2019-05-11 07:28:54', '2019-05-11 07:28:54'),
(3, NULL, 'Laravel Password Grant Client', 'Hf026XmdugIqetXF7b215Rw0x5BdcZz8qlQTYv0m', 'http://localhost', 0, 1, 0, '2019-05-11 07:28:55', '2019-05-11 07:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-05-11 06:35:58', '2019-05-11 06:35:58'),
(2, 2, '2019-05-11 07:28:54', '2019-05-11 07:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `password`, `token`, `created_at`, `updated_at`) VALUES
(18, 'raj', '12345566', 'raja@gmail.com', '$2y$10$f6nRfatTgwQQxLGMhVyz6Ops2CIGYaVtKYDxL12jnOvj0QpE0CGiq', NULL, '2019-05-11 08:06:15', '2019-05-11 08:06:15'),
(19, 'kingkhan', '12345566', 'king@gmail.com', '$2y$10$TyeUsdgnXW.5tTAHG1HYR.WBgpIP2R4qkRdiil1j/DK2gVOaPGKLq', NULL, '2019-05-11 08:12:24', '2019-05-11 08:12:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
