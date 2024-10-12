-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2024 lúc 02:33 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `realtime`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `content` varchar(50) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_send_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `content`, `room_id`, `user_send_id`, `created_at`, `updated_at`) VALUES
(15, 'hello', 1, 2, '2024-10-11 08:04:03', '2024-10-11 08:04:03'),
(16, 'hello sdvsvsdvs', 1, 2, '2024-10-11 08:04:18', '2024-10-11 08:04:18'),
(17, 'asvasvasv', 1, 2, '2024-10-11 08:05:32', '2024-10-11 08:05:32'),
(18, 'hello', 1, 2, '2024-10-11 08:09:59', '2024-10-11 08:09:59'),
(19, 'hello', 1, 2, '2024-10-11 08:13:11', '2024-10-11 08:13:11'),
(20, 'acasc', 1, 1, '2024-10-11 08:14:22', '2024-10-11 08:14:22'),
(21, 'hello usser 2', 1, 1, '2024-10-11 08:17:06', '2024-10-11 08:17:06'),
(22, 'hello Long', 1, 2, '2024-10-11 08:17:25', '2024-10-11 08:17:25'),
(23, 'Hello long', 1, 2, '2024-10-11 08:19:51', '2024-10-11 08:19:51'),
(24, 'Hello Long', 1, 2, '2024-10-11 08:20:46', '2024-10-11 08:20:46'),
(25, 'Hello Usser 2', 1, 1, '2024-10-11 08:20:59', '2024-10-11 08:20:59'),
(26, 'Hello 123 các bạn', 1, 1, '2024-10-11 08:24:54', '2024-10-11 08:24:54'),
(27, 'âcsc', 1, 1, '2024-10-11 08:25:24', '2024-10-11 08:25:24'),
(28, 'svsdv', 1, 1, '2024-10-11 08:25:43', '2024-10-11 08:25:43'),
(29, 'hello', 1, 2, '2024-10-11 08:25:56', '2024-10-11 08:25:56'),
(30, 'svsdv', 1, 1, '2024-10-11 08:26:01', '2024-10-11 08:26:01'),
(31, 'hello tất cả các bạn', 1, 3, '2024-10-11 08:27:35', '2024-10-11 08:27:35');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_10_02_141111_create_vouchers_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2024_10_04_041819_create_users_table', 2),
(6, '2024_10_04_044531_create_task_table', 3);

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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Room 1', '2024-10-10 08:41:43', '2024-10-10 08:41:49'),
(2, 'Room 2', '2024-10-10 08:41:52', '2024-10-10 08:41:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task`
--

CREATE TABLE `task` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `user_send_id` bigint(20) UNSIGNED NOT NULL,
  `user_receive_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `user_send_id`, `user_receive_id`, `created_at`, `updated_at`) VALUES
(6, 'sdv', 'svd', 1, 2, '2024-10-03 22:55:12', '2024-10-03 22:55:12'),
(7, 'á', 'avs', 2, 1, '2024-10-03 22:55:57', '2024-10-03 22:55:57'),
(8, 'sdv', 'sdv', 1, 2, '2024-10-03 22:56:49', '2024-10-03 22:56:49'),
(9, 'sb', 'sdb', 1, 2, '2024-10-03 22:57:09', '2024-10-03 22:57:09'),
(10, 'sdv', 'sdb', 1, 2, '2024-10-03 22:57:29', '2024-10-03 22:57:29'),
(11, 'df', 'dfn', 2, 1, '2024-10-03 22:57:35', '2024-10-03 22:57:35'),
(12, 'sdb', 'sdb', 1, 2, '2024-10-03 23:01:34', '2024-10-03 23:01:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Long', 'longhh7@fpt.edu.vn', NULL, '$2y$10$XG6ugzHs1KCPqSSa1/L9Fe95Ku7rz8OPWD73KJapdTr6rfBkAGPSK', NULL, '2024-10-03 21:19:37', '2024-10-03 21:19:37'),
(2, 'User2', 'long@gmail.com', NULL, '$2y$10$NlO63IfskmXJg4JB15rIA.2NH4.VjS0b/OMtIScSzlh07w.nBTiWm', NULL, '2024-10-03 21:21:27', '2024-10-03 21:21:27'),
(3, 'User3', 'user3@gmail.com', NULL, '$2y$10$d9BYOtrEDmMNXgxyYfkpWO3llIEQbKGs32voLm7MUkUWzbeC8xQ8C', NULL, '2024-10-10 02:47:30', '2024-10-10 02:47:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`id`, `name`, `description`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'BACKFRIDAY', 'Khuyến mãi ngày thứ 6 đen tối', 60.00, '2024-10-02 07:30:13', '2024-10-02 07:30:13'),
(2, 'BACKFRIDAY2', 'Khuyến mãi ngày thứ 6 đen tối', 60.00, '2024-10-02 07:49:33', '2024-10-02 07:49:33'),
(3, 'BACKFRIDAY4', 'Khuyến mãi ngày thứ 6 đen tối3', 40.00, '2024-10-02 08:01:34', '2024-10-02 08:01:34'),
(4, 'BACKFRIDAY5', 'Khuyến mãi ngày thứ 6 đen tối3', 50.00, '2024-10-02 08:13:12', '2024-10-02 08:13:12'),
(5, 'BACKFRIDAY6', 'Khuyến mãi ngày thứ 6 đen tối3', 50.00, '2024-10-02 08:21:54', '2024-10-02 08:21:54'),
(6, 'BACKFRIDAY7', 'Khuyến mãi ngày thứ 6 đen tối3', 50.00, '2024-10-02 08:25:56', '2024-10-02 08:25:56');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_user_send_id_foreign` (`user_send_id`),
  ADD KEY `task_user_receive_id_foreign` (`user_receive_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_user_receive_id_foreign` FOREIGN KEY (`user_receive_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `task_user_send_id_foreign` FOREIGN KEY (`user_send_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
