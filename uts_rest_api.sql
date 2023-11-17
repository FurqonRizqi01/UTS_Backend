-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2023 pada 07.06
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_rest_api`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_013551_create_news_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `published_at` datetime NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `description`, `content`, `url`, `url_image`, `published_at`, `category`, `created_at`, `updated_at`) VALUES
(3, 'Calon Pemain Naturalisasi Baru Timnas Indonesia', 'CNN Indonesia', 'Penampilan kiper Nadeo Argawinata mendapat kritikan ketika Timnas Indonesia dikalahkan Irak 1-5 pada Kualifikasi Piala Dunia 2026 di Stadion Internasional Basra, Irak, Kamis (16/11).', 'Gol-gol yang bersarang di gawang Nadeo juga terbilang tidak spektakuler. Hampir tidak ada tendangan keras yang dilepaskan pemain-pemain Irak, tapi lewat tendangan terarah dan penyelesaian akhir yang apik. Penampilan Nadeo saat Timnas Indonesia dikalahkan Irak hingga 1-5 mendapat sorotan netizen. Tidak sedikit warganet mengkritik penampilan kiper Borneo FC itu yang sama sekali gagal melakukan saves saat melawan Irak. One shot, on goal, tulis salah satu netizen.', 'https://www.cnnindonesia.com/olahraga/20231117111321-142-1025489/nadeo-saat-indonesia-kalah-1-5-0-saves-4-shot-on-target-5-kebobolan', 'https://akcdn.detik.net.id/visual/2023/11/16/latihan-timnas-indonesia-di-stadion-internasional-basra-irak-1_169.jpeg?w=650&q=90', '2023-11-17 11:31:00', 'sport', '2023-11-16 22:47:14', '2023-11-16 22:47:14'),
(4, 'Foto Timnas Indonesia dibantai Irak 1-5', 'CNN Indonesia', 'Timnas Indonesia menelan kekalahan telak 1-5', 'Timnas Indonesia menelan kekalahan telak 1-5 dari Irak pada Kualifikasi Piala Dunia 2026 di Stadion Internasional Basra, Irak, Kamis (16/11)', 'https://www.cnnindonesia.com/olahraga/20231117095243-144-1025411/foto-timnas-indonesia-dibantai-irak-1-5', 'https://akcdn.detik.net.id/visual/2023/11/16/irak-vs-indonesia-4_169.jpeg?w=1200&q=90', '2023-11-17 10:05:00', 'sport', '2023-11-16 22:50:23', '2023-11-16 22:50:23'),
(5, 'BFI Finance Klaim Tidak Ada Laporan Kredit Macet Taksi Online', 'CNBC Indonesia', 'PT BFI Finance Tbk mengklaim, belum menerima laporan terkait kredit macet dari pembiayaan taxi online.', 'Direktur Keuangan BFI Finance Sudjono mengungkapkan, BFI Finance tidak bisa mengetahui kendaraan digunakan untuk taxi online sepanjang angsuran debitur tersebut lancar. Hampir tidak ada saat ini,kata dia kepada CNBC Indonesia, Rabu (14/3.2018). Kalaupun ada, lanjut Sudjono, debitur tersebut mengubah profesi saat angsuran sudah jalan. Namun pada awal pembiayaan, debitur tidak secara detail mendeklarasikan kendaraannya untuk taxi online.', 'https://www.cnbcindonesia.com/news/20180314172735-4-7255/bfi-finance-klaim-tidak-ada-laporan-kredit-macet-taksi-online', 'https://akcdn.detik.net.id/visual/2018/02/09/85fc2089-5170-4a21-af03-2d48ec98e362_169.jpeg?w=715&q=900', '2018-03-14 17:35:00', 'finance', '2023-11-16 22:53:24', '2023-11-16 22:53:24'),
(6, 'Upaya VW Genjot Penjualan di Indonesia', 'Gilang Satria, Agung kurniawan, Kompas.com', 'Ketimbang Mercedes-Benz, Audi dan BMW, penjualan Volkswagen (VW) bisa disebut tak sebaik rekan asal Jerman', 'Ahmad Badawi, National Sales Manager PT Garuda Mataram Motor (GMM) selaku agen tunggal pemegang merek Volkswagen (VW) di Indonesia, mengatakan, pihaknya saat ini fokus untuk terus meningkatkan pelayanan ke konsumen.', 'https://otomotif.kompas.com/read/2023/11/17/124200215/upaya-vw-genjot-penjualan-di-indonesia', 'https://asset.kompas.com/crops/Tgmsg5s53w9z1X5y8HVYZXgA3M8=/84x93:904x639/750x500/data/photo/2023/11/16/6555b3ec256cd.jpeg', '2023-11-17 12:42:00', 'automotive', '2023-11-16 22:56:58', '2023-11-16 22:56:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '693f8b6573424ac20bc5efa919fc0274c6f1dbff81129c04a3ad089bba7bfcf5', '[\"*\"]', '2023-11-16 20:57:35', NULL, '2023-11-16 20:56:22', '2023-11-16 20:57:35'),
(2, 'App\\Models\\User', 1, 'auth_token', '9f61b54a38573896314861368b647351dc9335e22cfa95ccf616646b04edead6', '[\"*\"]', '2023-11-16 22:56:58', NULL, '2023-11-16 21:18:35', '2023-11-16 22:56:58');

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
(1, 'Muhammad Furqon Rizqi', 'furqonrizqi@gmail.com', NULL, '$2y$12$UGgZHy2iIBdztjWoYa9Tjel7pw/SP2q4cPESzHcuF1HpBljy3CEIy', NULL, '2023-11-16 20:56:06', '2023-11-16 20:56:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
