-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 05:57 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendataan`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` bigint(20) UNSIGNED NOT NULL,
  `path_galeri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption_galeri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tautan_galeri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kartu_keluarga`
--

CREATE TABLE `kartu_keluarga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_keluarga` int(11) NOT NULL,
  `id_kepala_keluarga` int(11) NOT NULL,
  `alamat_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desa_kelurahan_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten_kota_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2019_07_09_082855_create_kartu_keluarga_table', 1),
(4, '2019_07_09_082921_create_galeri_table', 1),
(5, '2019_07_09_082954_create_mutasi_table', 1),
(6, '2019_07_09_133650_create_wargas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `id_mutasi` bigint(20) UNSIGNED NOT NULL,
  `nik_mutasi` int(11) NOT NULL,
  `tempat_lahir_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir_mutasi` date NOT NULL,
  `jenis_kelamin_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desa_kelurahan_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten_kota_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_terakhir_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_perkawinan_mutasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akang Gebot', 'admin@gmail.com', NULL, '$2y$10$UqDvzt4tjNm/Y1BlRa5b..VaorAtDOq6V1mGkxfQkuopyghPVoXSe', '514GJz3ynrnYJfVY8n7IDz1DgGgKOmpyuqyZefs3ZU9NRXCCoymbG86zF1dH', '2019-07-09 07:47:51', '2019-07-09 07:47:51'),
(2, 'Akang Gebot', 'akang1205@gmail.com', NULL, '$2y$10$H/T5rnbr2ttIwsQGkAIdU.SilEbEsv2/Nf2plhryYEN2EGKcp3g2m', NULL, '2019-07-13 00:29:25', '2019-07-13 00:29:25'),
(3, 'candra septia', 'jalmiawon75@yahoo.com', NULL, '$2y$10$bqFVMhayfRCVKEELLmmyFeClQSyaDgqUd2vu44wCr2xUlN8eDu2Wa', NULL, '2019-07-13 03:16:09', '2019-07-13 03:16:09'),
(4, 'ucu', 'ucu@gmail.com', NULL, '$2y$10$8ESHMm1dRrtuPKJ51/HA9OoldaWKgMDeYly0hL3Ux2.XvmOjzOh/y', NULL, '2019-07-15 06:14:41', '2019-07-15 06:14:41'),
(5, 'akang', 'akanggebot@gmail.com', NULL, '$2y$10$ZHnj8EylbD88l0lwixMDPu7AjKfvXmf66OZoKM9tA0cgtGFTEkGi2', NULL, '2019-07-15 07:43:10', '2019-07-15 07:43:10'),
(6, 'akang', 'urangsunda327@gmail.com', NULL, '$2y$10$m8aSDfLElbGlwgCJvWYSn.91HPVDLpAGY7VRnCfZovj3mkin1UOqe', NULL, '2019-07-15 08:27:03', '2019-07-15 08:27:03'),
(7, 'akang', 'akang@gmail.com', NULL, '$2y$10$/wUUFI785uuo1OFS7ZjqgO/i0Fg9zHQccwu2PXIxwrlEjyPOVpEB6', NULL, '2019-07-15 08:35:54', '2019-07-15 08:35:54'),
(8, 'aku', 'aku@gmail.com', NULL, '$2y$10$XbzTGxWtraEqdTAWwm.XZeFevfr5Zw7kLCPOYInFkPeSglTUIEZgW', NULL, '2019-07-15 08:54:16', '2019-07-15 08:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `wargas`
--

CREATE TABLE `wargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nik_warga` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir_warga` date NOT NULL,
  `alamat_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rw_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desa_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten_kota_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_warga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wargas`
--

INSERT INTO `wargas` (`id`, `nik_warga`, `nama_warga`, `tempat_lahir_warga`, `tanggal_lahir_warga`, `alamat_warga`, `rt_warga`, `rw_warga`, `desa_warga`, `kecamatan_warga`, `kabupaten_kota_warga`, `provinsi_warga`, `agama_warga`, `pendidikan_warga`, `created_at`, `updated_at`) VALUES
(3, '11111111111111', 'Testing', 'Tasikmalaya', '1996-12-12', 'Tasikmalaya', '01', '07', 'Sepatnunggal', 'Sodonghilir', 'Tasikmalaya', 'Jawa Barat', 'Islam', 'SMA', '2019-07-09 21:32:54', '2019-07-09 21:32:54'),
(4, '11111111111111', 'contoh', 'Tasikmalaya', '1111-11-12', 'tasikmalaya', '01', '22', 'Sepatnunggal', 'Sodonghilir', 'Tasikmalaya', 'Jawa Barat', 'islam', 'SMA', '2019-07-13 00:30:16', '2019-07-13 00:30:16'),
(5, '2222222222', 'Abdullah', 'Tasikmalaya', '1990-12-12', 'Tasikamlaya', '01', '07', 'Sepatnunggal', 'Sodonghilir', 'Tasikmalaya', 'Jawa Barat', 'islam', 'SMK', '2019-07-15 06:15:56', '2019-07-15 06:15:56'),
(6, '123123123123133', 'Candra Septia', 'Tasikmalaya', '1999-12-12', 'Tasikmalaya', '01', '02', 'Sepatnunggal', 'Sodonghilir', 'Tasikmalaya', 'Jawa Barat', 'islam', 'SMK', '2019-07-15 08:48:30', '2019-07-15 08:48:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id_mutasi`);

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
-- Indexes for table `wargas`
--
ALTER TABLE `wargas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id_mutasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wargas`
--
ALTER TABLE `wargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
