-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 01:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rasional`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `judul`, `body`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Desain Logo', 'Melayani jasa pembuatan logo sesuai dengan permintaan pelanggan, dengan melampirkan format yang disediakan.', 'TelegramLogo.svg', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(2, 'Desain Kaos', 'Melayani jasa pembuatan desain kaos sesuai dengan permintaan pelanggan, dengan melampirkan format yang disediakan.', 'TShirt.svg', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(3, 'Desain Produk', 'Melayani jasa pembuatan desain produk sesuai dengan permintaan pelanggan, dengan melampirkan format yang disediakan.', 'Browsers.svg', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(4, 'Komunikatif', 'Menyampaikan informasi atau mendapat informasi dan yang paling utama untuk menghasilkan produk terbaik.', 'ChatsCircle.svg', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(5, 'Kolaboratif', 'Kemampuan (kinerja) bekerja sama dalam kelompok(tim) untuk menuju tujuan bersama', 'Puzzle.svg', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(6, 'Terpercaya', 'Dengan menerapkan nilai komunikatif dan kolaboratif tersebut akan dicapai hasil maksimal untuk produk yang dihasilkan demi kepuasan pelanggan.', 'Handshake.svg', '2022-01-19 17:37:11', '2022-01-19 17:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layanan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `nama`, `email`, `layanan`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'UD Salahudin Melani', 'bsimbolon@rajasa.name', 'Praesentium est.', 'Nulla exercitationem voluptatibus laudantium cumque aut. Molestias eligendi eligendi eligendi tempore ut dolorem voluptatibus. Aspernatur magnam quisquam molestiae eveniet quia eos itaque. Aut quasi nihil omnis totam magni eum est.', '2022-01-19 17:37:08', '2022-01-19 17:37:08'),
(2, 'PT Sihombing Wulandari Tbk', 'malik.haryanto@kusmawati.biz.id', 'Fuga et.', 'Ipsam ullam qui dolorem facere consequatur. Sint iure quia voluptatibus laudantium debitis quod. Cum et error nihil velit iste laboriosam. Ea sed aut voluptas et.', '2022-01-19 17:37:08', '2022-01-19 17:37:08'),
(3, 'UD Salahudin', 'mayasari.michelle@aryani.ac.id', 'Aspernatur ullam.', 'Ut natus eos molestiae enim. Itaque asperiores voluptatem hic alias qui ab eos. Quia et iste pariatur sunt sed temporibus.', '2022-01-19 17:37:08', '2022-01-19 17:37:08'),
(4, 'PD Wijaya Prastuti', 'simbolon.paris@nasyiah.sch.id', 'Doloribus eum.', 'Tempore veritatis temporibus sunt eveniet dolor veritatis ullam incidunt. Quia voluptatem non laboriosam voluptatem voluptas est molestiae. Tempora voluptate cum ea.', '2022-01-19 17:37:08', '2022-01-19 17:37:08'),
(5, 'Perum Wahyudin (Persero) Tbk', 'tari.dongoran@winarno.org', 'Similique.', 'Ullam qui nisi architecto ut. Dicta nihil et vel porro. Harum reprehenderit sapiente ut dolorum. Quia voluptate ea fugiat sed delectus cumque quasi consequatur.', '2022-01-19 17:37:08', '2022-01-19 17:37:08'),
(6, 'PD Maheswara Mulyani', 'osaefullah@wasita.biz', 'Rem.', 'Occaecati et atque reiciendis ut nesciunt animi voluptatem. Quis minima ut facilis explicabo vel iure in. Rerum molestiae hic est quia qui.', '2022-01-19 17:37:08', '2022-01-19 17:37:08'),
(7, 'PT Halimah Purnawati Tbk', 'nsuryatmi@damanik.my.id', 'Unde ut.', 'Repellendus velit doloribus architecto officia aut ex officiis. Dolore ipsa laudantium et architecto dolores eum. Architecto voluptas earum aliquam laborum nulla. Sit quis quisquam quia beatae et aut.', '2022-01-19 17:37:08', '2022-01-19 17:37:08'),
(8, 'Perum Sihotang Tbk', 'palastri.putri@farida.net', 'Eius fugiat.', 'A provident similique eos atque sunt aperiam. Dignissimos ea magnam ut unde est doloremque. Autem hic quam dolor sint. Quidem voluptatum facilis et ipsum qui tempore dicta.', '2022-01-19 17:37:09', '2022-01-19 17:37:09'),
(9, 'Perum Sudiati Mansur (Persero) Tbk', 'natalia77@yuliarti.ac.id', 'Nulla repudiandae.', 'Qui repellendus delectus aut voluptates cupiditate. Molestiae sit vel officiis. Unde dolore minus iure aut. Voluptatum ut aperiam rerum accusamus eos consequatur. Consectetur molestias dolore eum.', '2022-01-19 17:37:09', '2022-01-19 17:37:09'),
(10, 'CV Sinaga', 'padma98@wibowo.biz', 'Iste dolorum.', 'Sunt non in sint praesentium. Labore ipsam voluptatem exercitationem debitis minima. Itaque sunt sunt omnis quae.', '2022-01-19 17:37:09', '2022-01-19 17:37:09');

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
(5, '2022_01_18_104639_create_cards_table', 1),
(6, '2022_01_18_105553_create_projects_table', 1),
(7, '2022_01_19_071047_create_contacts_table', 1);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_buat` date NOT NULL DEFAULT '2022-01-20',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `judul`, `slug`, `note`, `deskripsi`, `gambar`, `tanggal_buat`, `created_at`, `updated_at`) VALUES
(1, 'Lovy Ice Cream', 'lovy-ice-cream', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?', '<p>Ea ratione facere nostrum doloremque similique quaerat. Maiores nemo non eveniet magni explicabo praesentium rerum dolorem. Illum consequuntur et itaque id dolorem. Ratione repudiandae earum distinctio occaecati sint dolorem.</p><p>Velit minus molestiae ea aut asperiores est. Quae eum mollitia sit est et consectetur vitae. Saepe officiis est ullam quibusdam dolorem.</p><p>Repellendus tenetur cum ut. Rerum sit quia ea. Architecto qui error quae cupiditate et sit.</p><p>Omnis quisquam dolor assumenda aperiam qui. Quaerat possimus consequuntur ut. Saepe ut reiciendis deleniti rerum fuga et est occaecati. Voluptatem quis iusto non officia reprehenderit dolor.</p><p>Expedita dolor quaerat ipsam earum incidunt ut sit fuga. Non voluptatem totam reprehenderit voluptatem fugiat. Provident voluptas ipsam sapiente repellat amet debitis sint. Alias quo et exercitationem et consequuntur labore quia. Eos voluptatem magni cum.</p><p>Similique magnam ut illo non aut tenetur. Omnis deleniti sequi et accusantium cum. Reiciendis ut architecto minima iusto neque. Error alias placeat quis voluptate.</p>', 'mockup-1.jpg', '2022-01-20', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(2, 'Boba Ker', 'boba-ker', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?', '<p>Omnis sit voluptates est molestiae facilis. Molestias optio error ut ea.</p><p>Vero ea aperiam aperiam voluptates itaque unde. Sint minus aut impedit omnis eligendi. Et itaque quia est vel itaque eos.</p><p>Corporis expedita non fuga molestiae assumenda veritatis. Voluptatem quam et nulla dignissimos veritatis magnam. Vel ea impedit aut labore enim.</p><p>Facere sed doloribus sed. Veniam in consequatur deserunt enim nam quo vel. Commodi eius atque rem et quaerat.</p><p>Odit ad voluptatem doloribus porro itaque vel officia. Inventore maxime vel aperiam voluptas totam cupiditate iure. Iure quisquam eos sapiente quis laboriosam officiis architecto.</p><p>Delectus sint fugiat maxime sed expedita. Accusantium hic sed odit deleniti laborum. Maiores dolorum aliquam accusantium voluptatem voluptatem sit incidunt.</p>', 'Boba Ker.jpeg', '2022-01-20', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(3, 'Burger Ker', 'burger-ker', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?', '<p>Voluptatem doloremque dolore ipsa ut deleniti. Et tempore in adipisci aperiam.</p><p>Dolorem nihil aliquid ut nemo excepturi earum enim. Quisquam voluptate autem dolor quo. Enim est eligendi ut in sed non. Vitae tempora harum qui ea.</p><p>Est sunt rem fugiat sed suscipit omnis sed. Ipsam animi commodi omnis iste est. Et occaecati officia sunt ullam unde accusamus accusantium in. Debitis autem amet ullam id.</p><p>Aspernatur culpa sit atque excepturi doloremque voluptas. Accusamus quis eius velit eveniet sed libero quos. Libero dolorum iure voluptate praesentium voluptatum magni nulla.</p><p>Et culpa sunt deleniti rerum. Sed ab quod maxime. Incidunt maxime minima adipisci ad eum nesciunt aut. Repudiandae dolores et qui dolor eveniet dicta.</p>', 'Burger Ker.jpeg', '2022-01-20', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(4, 'Coffee Star Gold', 'coffee-star-gold', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?', '<p>Quo rerum assumenda dolores est perspiciatis consequuntur. Similique sapiente atque voluptas. Nemo sit ut dolores quidem vel cupiditate iure.</p><p>Eum sed ut hic porro sit adipisci dignissimos. Modi officia consequatur minima quia excepturi praesentium. Aperiam sed ut ut voluptate non. Est fugiat sint illum tempora nam dolore.</p><p>Ut non nam quia cumque ut modi. Qui pariatur blanditiis architecto quidem nemo voluptas et. Optio cumque consectetur eos consequatur ut.</p><p>Est quas aspernatur nulla sequi est. Officia et asperiores et. Qui illo rerum vitae voluptatem similique reprehenderit est. Aliquam et sunt nobis. Quisquam nihil laborum expedita optio ullam est ullam.</p><p>Quisquam ipsum sunt nam soluta numquam nostrum. Architecto omnis laborum nemo itaque necessitatibus consectetur. Ratione assumenda aut odit praesentium omnis quo.</p><p>Impedit ut ipsum id dolores totam. Quo et nobis sit voluptatem. Maiores id suscipit est rerum ad id ex eos. Rerum accusantium odio optio ratione cupiditate magnam.</p><p>Alias nostrum est sint quos sed tempora. Provident rerum vel omnis aut commodi dolores. Et a sit dolor ex occaecati.</p><p>Quis magnam in non nobis. Dolorem qui tempore sunt. Cupiditate aut reprehenderit nobis iusto est. At sed tempore aut animi libero nobis id.</p>', 'Coffee Star Gold.jpeg', '2022-01-20', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(5, 'Jas Juice', 'jas-juice', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?', '<p>Dicta consectetur et ea illo iste harum. Alias ad enim officia omnis laudantium magnam. Vero soluta accusantium ut commodi ducimus est.</p><p>Omnis qui ut eius consequatur molestiae temporibus eos. Quos deserunt aliquam vero necessitatibus. Culpa voluptas magni quo placeat. Sit excepturi perspiciatis commodi id cumque amet voluptate.</p><p>Eveniet velit qui culpa maiores. Quasi voluptatem repellendus dolorum ullam magni voluptates facere. Dolores et et aliquam eos facilis numquam. Facere explicabo eligendi dicta.</p><p>Sit vitae debitis ratione qui. Fugit doloribus ex tempore nisi voluptate culpa repellendus. Sed nemo et corrupti eligendi atque quaerat voluptas. Ex odit aliquam expedita asperiores repudiandae suscipit aperiam.</p><p>Nulla consequatur minima dolorem ipsam doloribus atque. Illum consectetur neque assumenda aut. Voluptatem debitis eos voluptas odit necessitatibus amet.</p><p>Itaque repellat et et dolor. Fugit molestias labore debitis pariatur. Ea eos quis aut blanditiis nihil quidem et.</p><p>Non libero et sint dignissimos. Velit vitae fugiat et. Possimus natus placeat non quidem necessitatibus molestias. Autem non eum aperiam quae ut.</p><p>Rem ab repudiandae suscipit minima laborum. Facilis voluptatem accusamus impedit quis iste dolores sit deleniti. Repudiandae delectus molestias sit voluptas repellendus quaerat qui.</p><p>Maxime expedita dolor distinctio corporis ut quidem. At est explicabo qui aliquam. Suscipit beatae earum est earum facilis aut quidem. Corporis in expedita a.</p>', 'Jas Juice.jpeg', '2022-01-20', '2022-01-19 17:37:11', '2022-01-19 17:37:11'),
(6, 'The Wolves Company', 'the-wolves-company', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, impedit?', '<p>In blanditiis ipsam et commodi. Odio eveniet accusantium dolores voluptatem blanditiis fugiat placeat. Excepturi quis velit quos aspernatur et eum dolorum.</p><p>Dolores quia necessitatibus officiis rerum nihil laudantium quia. Est sed omnis suscipit ratione praesentium consequatur. Similique ducimus veritatis corrupti cumque.</p><p>Dolorem non et fuga debitis. Itaque id inventore hic non. Rerum corrupti sint delectus.</p><p>Aut sed quis qui inventore. Impedit aperiam sint laboriosam repudiandae inventore praesentium nam in. Est est qui qui laborum dolorem magni nam et. Vel reiciendis iusto voluptas cumque debitis omnis saepe. In quis dicta deleniti corrupti soluta harum nobis quos.</p><p>Molestiae quibusdam corrupti sunt ea voluptas distinctio est. Accusamus nulla eum reiciendis optio similique iste provident. Exercitationem perspiciatis quia sed voluptatem.</p><p>Vel aut non consequuntur deleniti est a. Placeat dolorum autem debitis facilis unde. Dolorem asperiores laboriosam libero reprehenderit officia consequatur.</p><p>Qui consequuntur dolor et in voluptate cupiditate. Ad reprehenderit aut quaerat quasi consequatur nulla omnis. Et quos odit ad et. Corporis esse ab explicabo aspernatur incidunt excepturi.</p><p>Voluptatem porro unde ut eveniet. Minima quidem repellendus sit molestiae voluptatibus autem non sunt. Deleniti assumenda consectetur voluptatem similique saepe id saepe. Facere et quod nihil magni fugiat ratione.</p><p>Suscipit esse aut aliquid ut quae similique eaque. Repudiandae atque perferendis dolores ab tempora voluptas quis. Quia est modi quaerat eius in illo. Soluta velit reprehenderit est consectetur omnis doloribus.</p><p>Et temporibus ullam eius nobis. Iste voluptatem amet pariatur et sed quia illum. Est qui id modi. Nobis nulla ut voluptas enim.</p>', 'wolves.jpg', '2022-01-20', '2022-01-19 17:37:11', '2022-01-19 17:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `misi` text COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `deskripsi`, `visi`, `misi`, `alamat`, `email`, `telp`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'Rasional', 'Rasional adalah organisasi yang bergerak pada bidang desain grafis. Disini Rasional menyediakan jasa pembuatan logo dan desain. Dengan website ini para melihat referensi yang disajikan sebagai bahan pertimbangan pembuatan logo.', 'Terwujudnya kepuasan dan kepercayaan pelanggan dengan produk berkualitas.', 'Membangun kerjasama tim dengan baik.Memberikan layanan jasa terbaik dengan memanfaat platform , aplikasi yang ada dengan sebaik mungkin.Menyediakan layanan konsultasi implementasi produk.', 'Kota Malang, Jawa Timur, Indonesia', 'rasiional1@gmail.com', '085607799274', 'rasional.id', '2022-01-19 17:37:09', '2022-01-19 17:37:09'),
(2, 'Ardiansyah Putra Wardana', 'Designer', '-', '-', 'Asrikaton, Kabupaten Malang, Jawa Timur, Indonesia', 'ardianputraww@gmail.com', '081316491030', 'ardian.putraw', '2022-01-19 17:37:10', '2022-01-19 17:37:10'),
(3, 'Moch Rangga Agastya Ariyanto', 'Developer', '-', '-', 'Karangploso, Kabupaten Malang, Jawa Timur, Indonesia', 'rangga.agastya711@gmail.com', '085156385545', 'agastyra', '2022-01-19 17:37:10', '2022-01-19 17:37:10'),
(4, 'Salma Rahmalia', 'Manager', '-', '-', 'Singosari, Kabupaten Malang, Jawa Timur, Indonesia', 'salmarahmalia59@gmail.com', '085641808472', '_rahmaliasalma', '2022-01-19 17:37:10', '2022-01-19 17:37:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_telp_unique` (`telp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
