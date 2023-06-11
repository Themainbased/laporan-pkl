-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2023 pada 08.21
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spbe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sampul` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `konten` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `sampul`, `judul`, `konten`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'banner1.jpg', 'Tips dan Trik Membeli Laptop Secara Online', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto itaque, pariatur quod et consectetur quasi quas eum quidem, placeat illo, similique optio deserunt nemo iste eos omnis. In, veritatis corrupti?', 'tips-dan-trik-membeli-laptop-secara-online', '2023-04-11 20:57:36', '2023-04-11 20:57:36'),
(2, 'banner2.jpg', 'Cara mengatasi error didalam belajar programing', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto itaque, pariatur quod et consectetur quasi quas eum quidem, placeat illo, similique optio deserunt nemo iste eos omnis. In, veritatis corrupti?', 'cara-mengatasi-error-didalam-belajar-programing', '2023-04-11 20:57:36', '2023-04-11 20:57:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `footer`
--

CREATE TABLE `footer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konten` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footer`
--

INSERT INTO `footer` (`id`, `konten`, `created_at`, `updated_at`) VALUES
(1, 'Diskominfo Dev', '2023-04-11 20:57:36', '2023-04-11 21:14:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Aplikasi Spbe', 'aplikasi-spbe', '2023-04-11 23:30:14', '2023-04-11 23:30:14'),
(6, 'Arsitektur Spbe', 'arsitektur-spbe', '2023-04-11 23:30:29', '2023-04-11 23:30:29'),
(7, 'Data Dan Informasi', 'data-dan-informasi', '2023-04-11 23:30:41', '2023-04-11 23:30:41'),
(8, 'Infrastruktur Spbe', 'infrastruktur-spbe', '2023-04-11 23:30:52', '2023-04-11 23:30:52'),
(9, 'Layanan Spbe', 'layanan-spbe', '2023-04-11 23:31:02', '2023-04-11 23:31:02'),
(11, 'Pelayanan Masyarakat', 'pelayanan-masyarakat', '2023-05-19 21:08:04', '2023-05-19 21:08:04'),
(12, 'Digitalisasi Era Maya', 'digitalisasi-era-maya', '2023-05-19 21:08:35', '2023-05-19 21:08:35'),
(13, 'Kasus', 'kasus', '2023-05-19 21:08:49', '2023-05-19 21:08:49'),
(15, 'Pengetahuan Spbe', 'pengetahuan-spbe', '2023-05-19 21:09:27', '2023-05-19 21:09:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `like`
--

CREATE TABLE `like` (
  `id` bigint(20) NOT NULL,
  `id_post` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'logo pemkot bogor.png', '2023-04-11 20:57:36', '2023-04-11 21:10:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_22_063108_create_kategori_table', 1),
(5, '2021_01_27_094756_create_post_table', 1),
(6, '2021_01_27_185544_add_id_kategori_to_post_table', 1),
(7, '2021_01_28_085907_create_tag_table', 1),
(8, '2021_01_28_125128_create_post_tag_table', 1),
(9, '2021_01_31_163416_create_banner_table', 1),
(10, '2021_02_01_124740_create_logo_table', 1),
(11, '2021_02_01_171437_create_footer_table', 1),
(12, '2021_02_02_094328_create_tentang_table', 1),
(13, '2021_02_13_052058_add_id_user_to_post_table', 1),
(14, '2021_02_28_153130_create_permission_tables', 1),
(15, '2021_03_01_162633_create_like_table', 1),
(16, '2021_05_06_130247_create_rekomendasi_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`id`, `id_kategori`, `id_user`, `sampul`, `judul`, `konten`, `slug`, `created_at`, `updated_at`) VALUES
(11, 5, 1, '1681281808-801777_720.jpg', 'Pengembangan Aplikasi Modern yang Lebih Mudah dengan Arsitektur Microservices', '<p>Jika kita melihat pengembangan aplikasi secara historis, kita memiliki banyak pola desain monolitik dan tradisional. Lalu jika kita punya aplikasi yang punya banyak subsystem~ misalnya retail bank, kita memiliki fitur login, saldo, transfer, tagihan. Tentu kita mengembangkannya di beberapa individu bahkan team yang berbeda. Disetiap subsystem ini memiliki timeline yang berbeda. Tantangannya adalah ketika sebuah tim ingin melakukan perilisan sebuah aplikasi. Tim A tidak bisa merilisnya karena menunggu tim B, tim C, dan tim D untuk siap semua. Dengan kebutuhan rilis yang semakin hari semakin tinggi, metode arsitektur tradisional tidak mampu memfasilitasi perkembangan pengembangan aplikasi. Disinilah arsitektur microservices menjawab kebutuhan skabilitas dan kemudahan pengembangan aplikasi dari sebuah organisasi. Tentu penerapan arsitektur tidak bisa langsung begitu saja dilakukan, butuh penyesuaian yang nantinya akan memudahkan pengembangan aplkasi itu sendiri. Ingin tahu bagaimana microservices dapat mempermudah pengembangan aplikasi modern? Daftar dan ikuti webinar ini bersama narasumber dari IT Professional yang berpengalaman dan bersertifikasi internasional.&nbsp;</p>', 'pengembangan-aplikasi-modern-yang-lebih-mudah-dengan-arsitektur-microservices', '2023-04-11 23:43:28', '2023-04-11 23:43:28'),
(12, 6, 1, '1681281910-801777_720.jpg', 'Materi Pemantauan dan Evaluasi SPBE - Domain Kebijakan', '<p>Domain Kebijakan Memiliki Bobot 13% pada Instrumen Pemantauan dan Evaluasi SPBE Tahun 2022 - Merupakan kebijakan internal/pengaturan-pengaturan di dalam kebijakan yang dimiliki oleh Instansi Pusat/Pemerintah Daerah. - Penilaian dilakukan terhadap kriteria kekuatan hukum dan ruang lingkup kebijakan internal yang dimaksud. - Data Pendukung berupa konsep kebijakan/kebijakan terkait/kebijakan yang berisi pengaturan terkait. - Karakteristik Kebijakan yang telah ditetapkan: a. Sekurang-kurangnya kebijakan yang telah ditetapkan Keputusan Pimpinan Instansi b. Memiliki Nomor c. Telah di tandatangani</p>', 'materi-pemantauan-dan-evaluasi-spbe-domain-kebijakan', '2023-04-11 23:45:12', '2023-04-11 23:45:12'),
(13, 7, 1, '1681282029-Untitled.jpg', 'Manajemen Data SPBE', '<p>Manajemen Data adalah proses Pengembangan, Pelaksanaan, dan Pengawasan dari Rencana, Kebijakan, Program, danPraktik yang dapat Menghasilkan, Mengontrol, Melindungi, dan Meningkatkan VALUEaset data dan informasi sepanjang siklushidupnya.</p>', 'manajemen-data-spbe', '2023-04-11 23:47:09', '2023-04-11 23:47:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `id_tag` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post_tag`
--

INSERT INTO `post_tag` (`id`, `id_post`, `id_tag`, `created_at`, `updated_at`) VALUES
(13, 11, 6, NULL, NULL),
(14, 12, 5, NULL, NULL),
(15, 13, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekomendasi`
--

INSERT INTO `rekomendasi` (`id`, `id_post`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-04-11 20:57:36', '2023-04-11 20:57:36'),
(2, 2, '2023-04-11 20:57:36', '2023-04-11 20:57:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-04-11 20:57:35', '2023-04-11 20:57:35'),
(2, 'penulis', 'web', '2023-04-11 20:57:35', '2023-04-11 20:57:35'),
(3, 'pembaca', 'web', '2023-04-11 20:57:35', '2023-04-11 20:57:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'informasi', 'informasi', '2023-04-11 23:28:28', '2023-04-11 23:28:28'),
(6, 'Edukasi', 'edukasi', '2023-04-11 23:28:40', '2023-04-11 23:28:40'),
(7, 'Pemerintahan', 'pemerintahan', '2023-04-11 23:28:49', '2023-04-11 23:28:49'),
(9, 'Hoax', 'hoax', '2023-05-23 03:34:45', '2023-05-23 03:36:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konten` text NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id`, `konten`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '<p>Sistem Pemerintahan Berbasis Elektronik Untuk mempermudah akses dalam pemerintahan&nbsp;</p>', 'https://www.facebook.com/kominfobogor', 'https://www.instagram.com/kominfobogor/', 'https://twitter.com/kominfobogor?t=rYQ84ipozt76dQ4zFDwtoA&s=09', '2023-04-11 20:57:36', '2023-04-11 23:36:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-04-11 20:57:35', '$2y$10$kDmqhzWvFC72KXc8UCw.zu0do5rc8fof6sdVo4WYhkYt1HncO.6eC', NULL, '2023-04-11 20:57:35', '2023-05-24 04:20:10'),
(2, 'penulis', 'penulis@gmail.com', '2023-04-11 20:57:36', '$2y$10$vm59LM57/gvGTwHLECNSH..0Xks7/8vNqGE/UyL4ATIsOzRcolKsa', NULL, '2023-04-11 20:57:36', '2023-04-11 20:57:36'),
(3, 'pembaca', 'pembaca@gmail.com', '2023-04-11 20:57:36', '$2y$10$vj63/zdTS2Rnl2H6NOCTTe53njj8oSrGN5CaX4/iR89fQorGyvbK2', NULL, '2023-04-11 20:57:36', '2023-04-11 20:57:36'),
(4, 'nama ardi', 'ardi@gmail.com', NULL, '$2y$10$/30maJsfk9wd.4rfJ8/4cOC/N.s.9cwFuu.A./j4Z7vo.aQUeEQo6', NULL, '2023-04-11 20:59:03', '2023-04-11 20:59:03'),
(5, 'Ardi', 'ardi@kominfo.com', NULL, '$2y$10$wrz19bDjoTsVAZV6KdGRienu6WWYhB088BemEPIpaOeG9XnVOZwuK', NULL, '2023-04-12 18:39:31', '2023-04-12 18:39:31'),
(6, 'Karina Evandelion', 'evandalion@kominfo.com', NULL, '$2y$10$QpclGIpOYhEBi9iSHMiwtuvIve9WeVZKYu4kZeo7nDNFkAuP92V6m', NULL, '2023-05-23 03:40:26', '2023-05-23 03:40:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_id_post_foreign` (`id_post`),
  ADD KEY `post_tag_id_tag_foreign` (`id_tag`);

--
-- Indeks untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `footer`
--
ALTER TABLE `footer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `like`
--
ALTER TABLE `like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_id_tag_foreign` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
