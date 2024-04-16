-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 16, 2024 lúc 10:54 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db-photo-web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Ngoại cảnh', 'Chụp ảnh ngoại cảnh là phong cách chụp ảnh sử dụng concept chụp ảnh ngoài trời như công viên, đường phố, biển, núi, rừng,... thay vì chụp trong nhà hoặc studio. Chụp ảnh ngoại cảnh mang lại những bức ảnh chân thực và sống động, thể hiện được vẻ đẹp của thiên nhiên và con người. Đây cũng là cách để kết nối với thế giới xung quanh, khám phá những điều mới mẻ và ghi lại những khoảnh khắc đáng nhớ.', '(ICKSBOOK) 240320_읽쓰북 기획 정리_.pptx', '2024-04-16 01:29:46', '2024-04-16 01:29:46'),
(6, 'Chill', 'Chụp ảnh ngoại cảnh là phong cách chụp ảnh sử dụng concept chụp ảnh ngoài trời như công viên, đường phố, biển, núi, rừng,... thay vì chụp trong nhà hoặc studio. Chụp ảnh ngoại cảnh mang lại những bức ảnh chân thực và sống động, thể hiện được vẻ đẹp của thiên nhiên và con người. Đây cũng là cách để kết nối với thế giới xung quanh, khám phá những điều mới mẻ và ghi lại những khoảnh khắc đáng nhớ.', 'uk_process_state.txt', '2024-04-16 01:30:03', '2024-04-16 01:30:03'),
(7, 'Sad', 'Chụp ảnh ngoại cảnh là phong cách chụp ảnh sử dụng concept chụp ảnh ngoài trời như công viên, đường phố, biển, núi, rừng,... thay vì chụp trong nhà hoặc studio. Chụp ảnh ngoại cảnh mang lại những bức ảnh chân thực và sống động, thể hiện được vẻ đẹp của thiên nhiên và con người. Đây cũng là cách để kết nối với thế giới xung quanh, khám phá những điều mới mẻ và ghi lại những khoảnh khắc đáng nhớ.', 'New Text Document (1).txt', '2024-04-16 01:30:15', '2024-04-16 01:30:15'),
(8, 'Wedding', 'Chụp ảnh ngoại cảnh là phong cách chụp ảnh sử dụng concept chụp ảnh ngoài trời như công viên, đường phố, biển, núi, rừng,... thay vì chụp trong nhà hoặc studio. Chụp ảnh ngoại cảnh mang lại những bức ảnh chân thực và sống động, thể hiện được vẻ đẹp của thiên nhiên và con người. Đây cũng là cách để kết nối với thế giới xung quanh, khám phá những điều mới mẻ và ghi lại những khoảnh khắc đáng nhớ.', 'New Text Document.txt', '2024-04-16 01:30:29', '2024-04-16 01:30:29'),
(9, 'lonely', 'Chụp ảnh ngoại cảnh là phong cách chụp ảnh sử dụng concept chụp ảnh ngoài trời như công viên, đường phố, biển, núi, rừng,... thay vì chụp trong nhà hoặc studio. Chụp ảnh ngoại cảnh mang lại những bức ảnh chân thực và sống động, thể hiện được vẻ đẹp của thiên nhiên và con người. Đây cũng là cách để kết nối với thế giới xung quanh, khám phá những điều mới mẻ và ghi lại những khoảnh khắc đáng nhớ.', 'uk_process_state.txt', '2024-04-16 01:30:52', '2024-04-16 01:30:52'),
(10, 'Ngoại cảnh 2', 'Chụp ảnh ngoại cảnh là phong cách chụp ảnh sử dụng concept chụp ảnh ngoài trời như công viên, đường phố, biển, núi, rừng,... thay vì chụp trong nhà hoặc studio. Chụp ảnh ngoại cảnh mang lại những bức ảnh chân thực và sống động, thể hiện được vẻ đẹp của thiên nhiên và con người. Đây cũng là cách để kết nối với thế giới xung quanh, khám phá những điều mới mẻ và ghi lại những khoảnh khắc đáng nhớ.', 'New Text Document (1).txt', '2024-04-16 01:31:01', '2024-04-16 01:31:01'),
(11, 'Du lịch', 'Chụp ảnh ngoại cảnh là phong cách chụp ảnh sử dụng concept chụp ảnh ngoài trời như công viên, đường phố, biển, núi, rừng,... thay vì chụp trong nhà hoặc studio. Chụp ảnh ngoại cảnh mang lại những bức ảnh chân thực và sống động, thể hiện được vẻ đẹp của thiên nhiên và con người. Đây cũng là cách để kết nối với thế giới xung quanh, khám phá những điều mới mẻ và ghi lại những khoảnh khắc đáng nhớ.', 'New Text Document.txt', '2024-04-16 01:31:08', '2024-04-16 01:31:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2024_04_15_092415_create_admins_table', 2),
(5, '2024_04_16_013022_create_categories_table', 3),
(6, '2024_04_16_013923_create_category_descriptions_table', 3),
(7, '2024_04_16_065333_create_categories_table', 4),
(8, '2024_04_16_074814_create_categories_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
