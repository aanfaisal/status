-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2018 at 12:13 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `status`
--

-- --------------------------------------------------------

--
-- Table structure for table `kerusakans`
--

CREATE TABLE `kerusakans` (
  `rusak_id` int(10) UNSIGNED NOT NULL,
  `pelapor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_rusak` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rincian` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Antrian',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kerusakans`
--

INSERT INTO `kerusakans` (`rusak_id`, `pelapor`, `nm_rusak`, `rincian`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vinsen Wasita', 'Koneksi Internet', 'Provident et repudiandae qui facere alias est impedit odit. Quae omnis animi minus harum animi vel. Vel et voluptatem nulla voluptatum. Quo eius tempore rerum saepe est.', 'Antrian', '2018-10-07 18:49:22', NULL),
(2, 'Aris Tasdik Zulkarnain', 'Lain-Lain', 'Iure architecto velit sit aut. Et consequuntur rerum voluptates velit aut velit hic. Odit dolor veritatis earum debitis nemo esse qui. Aliquid impedit quia consequatur ex ut in.', 'Proses', '2018-10-09 01:10:46', NULL),
(3, 'Cakrajiya Januar', 'Software Error', 'In ad et fugit blanditiis. Atque ab deleniti blanditiis sed. Deleniti ut velit ut distinctio voluptatibus porro.', 'Antrian', '2018-10-04 19:58:35', NULL),
(4, 'Septi Nurdiyanti', 'Hardware Error', 'Et ab qui ducimus. Ut nemo excepturi quia. Adipisci repellat nostrum illum quia eveniet voluptas. Commodi provident provident sint quo consequatur quibusdam facere.', 'Selesai', '2018-10-21 20:41:13', NULL),
(5, 'Michelle Wulandari', 'Hardware Error', 'Enim expedita totam aperiam. Consequatur et consequatur ullam non praesentium repudiandae sit iste.', 'Proses', '2018-10-17 04:23:31', NULL),
(6, 'Fitriani Hariyah', 'Software Error', 'Nobis doloremque voluptatem accusantium nihil. Molestiae excepturi dolor voluptatem iure. Pariatur officia quibusdam quibusdam consequatur quia eligendi qui. Doloremque quia incidunt nam.', 'Antrian', '2018-10-15 04:04:20', NULL),
(7, 'Dian Lintang Anggraini S.Sos', 'Lain-Lain', 'Magnam a sed suscipit harum laudantium eos. Accusantium natus nisi architecto tempore. Expedita aut laboriosam quaerat ab libero alias odit qui.', 'Antrian', '2018-10-07 13:46:50', NULL),
(8, 'Opan Utama', 'Koneksi Internet', 'Ut commodi excepturi velit magni voluptate minus tempora impedit. Sit id et cum nihil voluptas ut. Ut reiciendis nam tenetur adipisci et at aut. Autem molestiae est deserunt iste repellat.', 'Proses', '2018-10-14 00:39:13', NULL),
(9, 'Viman Mandala', 'Lain-Lain', 'Molestias sit maiores ratione cumque et officiis ut tempora. Iusto mollitia velit sapiente itaque quia. Eius magnam ipsum aut odio voluptatum. Quis sint quasi delectus esse id dolorum.', 'Selesai', '2018-10-22 22:24:36', NULL),
(10, 'Rini Hariyah', 'Hardware Error', 'Deserunt dolore tempore quas nihil numquam aut pariatur. Alias rerum veniam sit provident soluta odit asperiores. Officia deleniti mollitia nemo nostrum ipsa vel.', 'Proses', '2018-10-24 23:29:27', NULL),
(11, 'Jelita Ulva Wahyuni M.Ak', 'Software Error', 'Excepturi doloribus et nisi ut. Repellat voluptatum reprehenderit debitis incidunt. In dolorem nobis quidem. Earum unde architecto numquam harum officia. Voluptatibus distinctio aut officiis.', 'Proses', '2018-10-07 13:14:57', NULL),
(12, 'Rahmi Kusmawati', 'Lain-Lain', 'Nihil animi libero harum voluptas. Provident ipsam et minus ex aut tempora sed voluptatum. Distinctio et ut odit quam natus facilis saepe.', 'Selesai', '2018-10-10 15:07:15', NULL),
(13, 'Alika Yuniar', 'Software Error', 'Soluta reprehenderit eius eum et perspiciatis. Et harum culpa ut voluptate laborum vel. Ex quisquam nam at dolorem illo natus.', 'Selesai', '2018-10-12 12:06:23', NULL),
(14, 'Ina Halimah S.Psi', 'Software Error', 'Perspiciatis qui dolorem deserunt optio et. Minima laboriosam culpa iste et et saepe itaque. Voluptas excepturi natus quia a. At ullam iure recusandae sit suscipit vitae.', 'Antrian', '2018-10-21 02:05:15', NULL),
(15, 'Cornelia Safitri', 'Hardware Error', 'Quo eum occaecati est doloribus. Illo rem reiciendis minima aliquid necessitatibus hic ducimus. Natus hic sint rerum aperiam aut.', 'Proses', '2018-10-06 04:29:13', NULL),
(16, 'Intan Safitri S.H.', 'Lain-Lain', 'Ut dolorem aut nulla ad dolorem. Dolores sapiente alias hic reprehenderit sit corrupti. Adipisci rerum et cupiditate exercitationem.', 'Antrian', '2018-10-15 18:25:40', NULL),
(17, 'Kardi Siregar', 'Hardware Error', 'Sint aliquam alias magnam ut. Ipsa earum ab minima consectetur porro et sit. Architecto optio id et pariatur autem iusto non voluptas.', 'Selesai', '2018-10-23 20:56:46', NULL),
(18, 'Nrima Kusumo S.Ked', 'Hardware Error', 'Reiciendis qui deleniti nostrum doloremque animi qui magnam. Hic et distinctio laboriosam reiciendis. Consequatur quia ut quis odio dolorem.', 'Antrian', '2018-10-16 15:18:08', NULL),
(19, 'Indra Pratama', 'Hardware Error', 'Ex et pariatur magnam. Quidem incidunt magni ipsam repellendus deserunt amet. Est perspiciatis ratione quia qui autem molestiae.', 'Selesai', '2018-10-05 10:10:17', NULL),
(20, 'Maya Melani', 'Koneksi Internet', 'Aliquam quia dicta aliquid nisi. Consequuntur nam ut aut vel explicabo. Omnis nobis excepturi dolore temporibus aut deserunt et optio. Non porro nemo sit dignissimos.', 'Proses', '2018-10-12 12:04:44', NULL),
(21, 'Dian Novi Permata M.Pd', 'Lain-Lain', 'Vel quasi et eligendi molestiae. Fugit ratione omnis quisquam dolor. Est sapiente totam illum placeat. Iste quisquam dolorem sequi autem rerum quis.', 'Antrian', '2018-10-09 09:29:09', NULL),
(22, 'Kania Yolanda', 'Lain-Lain', 'Quis dolorum iusto aliquam dolores aut a. Delectus minima est facilis voluptates voluptatem beatae consequatur eaque.', 'Selesai', '2018-10-18 22:27:03', NULL),
(23, 'Laras Yulia Mandasari S.T.', 'Software Error', 'Explicabo consectetur quis a quas temporibus tenetur. Praesentium aut modi aliquid ut magni. Non cumque sint ipsam sunt earum quaerat commodi. Ab aut ea aut sint.', 'Selesai', '2018-10-18 00:19:46', NULL),
(24, 'Safina Utami', 'Software Error', 'Quas a earum mollitia aliquam esse et. Corrupti rerum occaecati et harum ut illo. Excepturi tempore sed sit. Blanditiis culpa minus exercitationem quam saepe.', 'Selesai', '2018-10-06 23:26:30', NULL),
(25, 'Citra Kartika Maryati M.Ak', 'Software Error', 'Quidem odio doloribus velit voluptas. Tempore maiores quia est facere velit eligendi. Ad blanditiis omnis alias blanditiis.', 'Antrian', '2018-10-07 18:15:34', NULL),
(26, 'Humaira Anggraini', 'Software Error', 'Eveniet rerum excepturi qui. Aut optio ipsum velit. Voluptatibus qui vel quo. Ut enim quaerat ea ratione non. Fugiat quia voluptatem minima consequatur repudiandae iure.', 'Antrian', '2018-10-01 23:40:02', NULL),
(27, 'Ina Lailasari', 'Software Error', 'Est sunt fugiat atque facere doloremque est est. Repellendus eius eos quidem qui. Adipisci corrupti facilis deserunt cupiditate voluptas et. Mollitia officia et perspiciatis repellat quaerat.', 'Proses', '2018-10-05 11:38:36', NULL),
(28, 'Vinsen Heryanto Siregar', 'Lain-Lain', 'Ut cum sit qui ut aperiam asperiores occaecati. Sit voluptatum rem delectus at amet. Laborum et aut asperiores sapiente. Qui dolor ut odit est.', 'Selesai', '2018-10-17 20:44:03', NULL),
(29, 'Keisha Eli Pudjiastuti S.I.Kom', 'Software Error', 'Atque aut quidem libero. Alias eos sequi praesentium. Est quod itaque ipsum dolor voluptatum ratione cumque.', 'Proses', '2018-10-26 06:32:20', NULL),
(30, 'Prayitna Pranawa Putra', 'Lain-Lain', 'Atque nihil voluptates saepe perferendis aut repellat corrupti accusamus. Non laborum dolor ea veritatis aut perspiciatis harum. Qui facilis maxime itaque a debitis.', 'Antrian', '2018-10-15 05:55:15', NULL),
(31, 'Hilda Restu Palastri', 'Koneksi Internet', 'Ea in molestiae tenetur fugiat neque. Quia sed saepe amet et expedita tempora. Blanditiis saepe maiores quo laudantium ratione eaque eos veniam. Sed debitis eveniet enim quia.', 'Selesai', '2018-10-03 01:57:54', NULL),
(32, 'Jarwa Atma Saragih S.T.', 'Koneksi Internet', 'Voluptas amet qui rerum velit aperiam ea culpa eligendi. Expedita aut illum possimus et quisquam quasi suscipit qui. Officia veritatis vel nihil culpa placeat. Ut quis rem eos fuga facere.', 'Selesai', '2018-10-10 18:07:14', NULL),
(33, 'Damu Prakasa M.TI.', 'Lain-Lain', 'Corrupti ut alias velit et blanditiis rerum. Dolor fugit nostrum iusto ex eos. Nemo impedit velit voluptatibus aut voluptatem cum eos. Omnis architecto placeat eligendi et amet odio officiis.', 'Antrian', '2018-10-15 08:39:33', NULL),
(34, 'Mursinin Narpati S.T.', 'Hardware Error', 'Dignissimos laborum officia optio perferendis suscipit ut. Quia nam voluptatum sit eos quia. Et in inventore et voluptates. Voluptas dolores autem sapiente nemo quia qui eos.', 'Antrian', '2018-10-11 09:25:39', NULL),
(35, 'Harsanto Jamal Rajata M.Kom.', 'Hardware Error', 'Et et reprehenderit distinctio nihil. Praesentium sint facilis vel est aut sunt. Architecto in amet voluptatibus dolorem reiciendis. Explicabo sed unde et molestias quidem enim itaque.', 'Antrian', '2018-10-14 20:59:02', NULL),
(36, 'Zahra Handayani', 'Koneksi Internet', 'Est enim ratione in architecto nam earum soluta quo. Nihil enim saepe delectus a corrupti soluta. Omnis quaerat itaque beatae placeat non a placeat.', 'Selesai', '2018-10-12 00:26:32', NULL),
(37, 'Edison Luluh Anggriawan', 'Koneksi Internet', 'Porro ad et nobis odio voluptatibus nam illo. Nihil tempore voluptatem molestiae natus sit sit. Accusamus animi dignissimos tempore atque magni.', 'Selesai', '2018-10-21 07:36:58', NULL),
(38, 'Prayoga Anggriawan S.Pt', 'Lain-Lain', 'Repellat dolores consequatur est hic qui unde et nisi. Omnis dicta delectus in eveniet et aut. Quia repellendus quo ipsa quia porro illum.', 'Proses', '2018-10-10 14:27:26', NULL),
(39, 'Patricia Andriani', 'Koneksi Internet', 'Sit eum qui repudiandae est. Et voluptatum magnam distinctio velit animi similique alias totam. Fugit reiciendis eligendi dolorem et a.', 'Antrian', '2018-10-19 12:33:57', NULL),
(40, 'Qori Shania Palastri', 'Hardware Error', 'Eum eum in tempore. Minus quaerat quam libero consequatur itaque sed. Necessitatibus omnis qui ut debitis.', 'Antrian', '2018-10-26 09:18:48', NULL),
(41, 'Argono Latupono S.Gz', 'Lain-Lain', 'Sit dicta exercitationem harum nemo aut. Vero temporibus dolore aliquam qui. Voluptate dolores atque blanditiis aspernatur labore ea beatae. Deserunt aliquam repellat minus itaque ut consequatur aut.', 'Antrian', '2018-09-30 12:59:27', NULL),
(42, 'Unjani Astuti', 'Software Error', 'Accusamus earum vel sunt et voluptatem laborum quisquam. Ad eum dolorem cumque ea consequatur officia consequatur. Laborum consectetur excepturi dolor eos quia exercitationem.', 'Antrian', '2018-10-11 05:42:03', NULL),
(43, 'Irwan Saptono', 'Hardware Error', 'Adipisci ab pariatur quia modi est ex. Fugiat ab quos et enim quae ea aliquam. Qui sit qui numquam explicabo. Quam eveniet porro ut magnam temporibus.', 'Selesai', '2018-10-07 05:20:01', NULL),
(44, 'Darmaji Dono Samosir', 'Lain-Lain', 'Fugit vel voluptatem natus nisi molestiae aut. Qui enim minus consequatur in. Dolor ut consequatur alias sunt dicta commodi ut.', 'Antrian', '2018-10-18 15:24:26', NULL),
(45, 'Cahyadi Haryanto', 'Koneksi Internet', 'Perferendis ea minus consequuntur enim. Dolore unde iure et quo. Sint quo temporibus est tempora et placeat voluptates.', 'Selesai', '2018-10-15 07:14:21', NULL),
(46, 'Nardi Marpaung S.Sos', 'Software Error', 'Est et quod doloribus maiores. Perspiciatis dolor reiciendis maiores provident. Voluptas ut non expedita non. Laborum laborum rem veniam.', 'Antrian', '2018-10-16 16:01:52', NULL),
(47, 'Kamaria Wahyuni', 'Lain-Lain', 'Et rerum molestiae necessitatibus illo. Et et repellendus quibusdam molestiae. Consequatur quisquam quis excepturi facere.', 'Proses', '2018-10-22 15:44:23', NULL),
(48, 'Prabowo Indra Sihotang S.Farm', 'Software Error', 'Voluptatum beatae illo omnis expedita voluptates et fuga consectetur. Voluptate nisi quia porro cupiditate. Modi est consequatur expedita ipsum ratione. Fugit consequatur blanditiis quia.', 'Antrian', '2018-10-09 12:50:38', NULL),
(49, 'Lurhur Nugroho', 'Software Error', 'Dolor recusandae laborum fuga qui quae aut. Assumenda repudiandae laborum similique est iusto laboriosam fuga.', 'Selesai', '2018-10-18 08:29:52', NULL),
(50, 'Michelle Wastuti', 'Lain-Lain', 'Quam non expedita earum iusto dignissimos. Ipsam ad et cum magni. Veritatis esse consequuntur quia dolorem qui. Dignissimos provident odio consectetur.', 'Proses', '2018-10-04 14:49:01', NULL),
(51, 'Dariati Saragih', 'Koneksi Internet', 'Quo ipsum consequatur deleniti. Optio dolores eos eveniet molestias delectus mollitia minima. Mollitia ipsam odio temporibus a qui. Quaerat et et labore qui.', 'Selesai', '2018-10-23 00:50:04', NULL),
(52, 'Mitra Hardiansyah', 'Hardware Error', 'Esse quia illum aspernatur consequatur quas doloremque assumenda. Tempore eaque neque nobis consequatur. Sint placeat tempora ipsam sapiente vitae nobis ipsam. In id nihil possimus sit.', 'Antrian', '2018-10-21 08:18:16', NULL),
(53, 'Jati Dabukke', 'Hardware Error', 'Veniam quasi in voluptas ex voluptas dignissimos repellendus. Cumque ipsum nostrum dolor distinctio sed ratione commodi ea. Itaque consequatur et reiciendis occaecati.', 'Selesai', '2018-10-03 18:06:55', NULL),
(54, 'Ade Dewi Yolanda', 'Hardware Error', 'Mollitia enim natus expedita at et beatae sit. Molestiae dolores ipsam esse quia aperiam non aut qui. Est est ad nam ut. Pariatur corrupti beatae minima omnis.', 'Selesai', '2018-10-01 19:33:55', NULL),
(55, 'Yessi Pratiwi', 'Koneksi Internet', 'Placeat nesciunt soluta quasi ipsum. Voluptate qui quia harum at maxime sint asperiores. Est nam odit nostrum totam.', 'Antrian', '2018-10-02 18:21:19', NULL),
(56, 'Malik Raden Habibi', 'Lain-Lain', 'Sit aperiam tenetur facilis et dolorem dicta. Pariatur expedita incidunt eius id quia ut ipsum aut. Error ea et pariatur dolorem laudantium omnis cupiditate.', 'Antrian', '2018-10-10 19:07:55', NULL),
(57, 'Nasrullah Lazuardi', 'Lain-Lain', 'Est ut dicta accusamus explicabo eligendi qui et. Eaque voluptates molestiae aut saepe. Et ea neque magnam ratione.', 'Proses', '2018-10-01 16:36:15', NULL),
(58, 'Cemeti Ardianto', 'Hardware Error', 'Dolores animi error iure nobis a quae tempora. Minus quae est asperiores rem ut explicabo quos. Ad numquam ut sed dolores.', 'Antrian', '2018-10-01 18:05:05', NULL),
(59, 'Jarwa Balijan Hutapea M.TI.', 'Lain-Lain', 'Sit in eligendi mollitia nemo. Incidunt accusantium eveniet est consequuntur fuga ab omnis. Nihil fugiat praesentium aut inventore.', 'Antrian', '2018-10-17 22:46:58', NULL),
(60, 'Okta Wibowo M.Farm', 'Koneksi Internet', 'Vel impedit modi illum. Eum et voluptatem praesentium ad nemo. Aliquam tempora et quo ut at illum. Fuga eligendi possimus labore et architecto.', 'Proses', '2018-10-23 14:15:30', NULL),
(61, 'Puti Mayasari M.Ak', 'Software Error', 'Quam consequuntur sed et esse laudantium nisi. Quo reprehenderit consequatur corrupti eum. Accusantium quasi amet harum eos animi voluptatum. Debitis hic cumque voluptas eaque voluptas esse suscipit.', 'Selesai', '2018-10-19 18:05:55', NULL),
(62, 'Jarwi Nababan', 'Lain-Lain', 'Sit deleniti occaecati vel sit dolor. Dolores nostrum accusamus ex dolores iste in. Ipsum ipsa quas deleniti qui.', 'Selesai', '2018-10-25 18:50:32', NULL),
(63, 'Darmanto Maryadi S.Pd', 'Hardware Error', 'Sit dolores sit sit explicabo ea ut. Et similique est odio. Illo dolore deserunt voluptas et.', 'Selesai', '2018-10-19 18:23:01', NULL),
(64, 'Tantri Aryani', 'Koneksi Internet', 'Non vitae dolorem voluptate odio rerum ut. Qui non corrupti ipsam est similique veritatis. Repellat alias sunt non quisquam earum delectus laborum.', 'Antrian', '2018-10-09 03:06:36', NULL),
(65, 'Daryani Uda Manullang', 'Koneksi Internet', 'Vero quod incidunt ea exercitationem distinctio voluptatem ab qui. Et dicta sunt ea quia voluptatem. Fuga omnis incidunt labore ratione. Voluptates et suscipit nemo.', 'Proses', '2018-10-14 19:31:21', NULL),
(66, 'Lintang Winarsih', 'Hardware Error', 'Accusantium dolor quia labore id quos et quas. Sit pariatur doloribus amet mollitia tempora a. Debitis in consequatur dicta enim aut et qui.', 'Selesai', '2018-10-02 06:10:12', NULL),
(67, 'Zamira Mardhiyah', 'Lain-Lain', 'Fuga consequatur repudiandae sint nostrum aperiam fugit. Eos voluptatem qui iusto nihil.', 'Proses', '2018-10-15 06:01:01', NULL),
(68, 'Pia Rahayu', 'Lain-Lain', 'Voluptatibus nam autem ut aspernatur. Eos distinctio ut magnam.', 'Selesai', '2018-10-19 14:48:16', NULL),
(69, 'Slamet Kunthara Lazuardi S.E.', 'Software Error', 'Enim ullam possimus totam qui non numquam. Error aspernatur quisquam enim maxime. Id ut quidem aut saepe magnam molestiae nihil. Ex velit sint quod dolorem earum necessitatibus neque.', 'Proses', '2018-10-03 23:41:36', NULL),
(70, 'Jefri Pranowo', 'Lain-Lain', 'Deleniti quia id velit aut. Ut aliquid doloremque adipisci quia et eos sed. Dicta quaerat porro occaecati dolor aperiam. Eaque et neque quidem dicta qui quisquam voluptatem.', 'Antrian', '2018-10-05 21:51:31', NULL),
(71, 'Ikhsan Usman Prasetya S.Ked', 'Lain-Lain', 'Reiciendis corporis esse voluptatibus omnis. Aliquid explicabo earum blanditiis reprehenderit non est aut. Ullam sit consectetur ut repellat. Id itaque sed aliquid et eos.', 'Proses', '2018-10-22 11:13:52', NULL),
(72, 'Margana Winarno S.E.', 'Koneksi Internet', 'Corporis et quia pariatur error odit. Ipsam cupiditate eos vel doloremque.', 'Proses', '2018-09-29 21:14:57', NULL),
(73, 'Diah Widiastuti', 'Software Error', 'Numquam quidem asperiores illum veritatis possimus. Molestiae et vero non consectetur distinctio. Impedit aut ab dolor voluptas quo eos.', 'Antrian', '2018-10-20 10:49:08', NULL),
(74, 'Restu Pia Suartini S.Pt', 'Software Error', 'Ut tempora et nisi quae suscipit eum pariatur. Corporis voluptatem odio placeat pariatur dolores. Facilis nemo aut voluptas est velit odio.', 'Proses', '2018-10-06 14:56:01', NULL),
(75, 'Jamal Permadi', 'Software Error', 'Consequuntur autem consequuntur perspiciatis quo accusamus voluptates. Iusto molestiae eos quia rerum ea saepe. Maxime eos et in illum blanditiis sunt et.', 'Selesai', '2018-10-08 02:23:50', NULL),
(76, 'Silvia Laksita M.Kom.', 'Lain-Lain', 'Voluptas ducimus velit magni a. Tenetur consequatur et mollitia voluptates est. Qui recusandae dolores provident ipsum voluptatem consectetur voluptatem consequuntur.', 'Selesai', '2018-10-10 12:30:37', NULL),
(77, 'Sabar Legawa Budiyanto', 'Software Error', 'Sed officia neque aperiam eos impedit. Adipisci autem qui temporibus qui sed. Consequatur consequatur et est quidem eligendi et dolor.', 'Selesai', '2018-10-20 04:19:52', NULL),
(78, 'Kurnia Santoso', 'Software Error', 'Maxime aut et in quam veritatis et suscipit. Repudiandae voluptatum modi minus nobis aut. Sapiente odit fugiat aut illum. Fuga sint animi dolorem.', 'Selesai', '2018-10-25 02:29:47', NULL),
(79, 'Mala Hasanah', 'Software Error', 'Praesentium soluta occaecati ut maxime. Dolore et aperiam vel consequatur. Voluptas ut aliquam eum. Commodi unde vel sunt quaerat occaecati voluptatibus.', 'Selesai', '2018-10-23 01:41:02', NULL),
(80, 'Farhunnisa Suci Riyanti S.Kom', 'Koneksi Internet', 'Qui error accusantium vitae vero. Ullam molestias tenetur nulla ut in. Perspiciatis aut temporibus corrupti et veniam. Quidem beatae molestias reprehenderit et est natus.', 'Antrian', '2018-10-20 23:05:18', NULL),
(81, 'Tasnim Dongoran', 'Lain-Lain', 'Atque est quia possimus. Repellat sequi fugit adipisci soluta excepturi. Autem optio odit magnam sit ducimus. Quia eius alias beatae laborum. Ducimus quia nobis magni.', 'Selesai', '2018-09-30 20:02:08', NULL),
(82, 'Ganep Gaduh Najmudin M.Kom.', 'Koneksi Internet', 'A libero sint quis cupiditate deserunt nulla. Corrupti ullam dignissimos dolor non. Assumenda eos voluptas excepturi. Ipsa sit hic maxime dolorem.', 'Antrian', '2018-10-20 13:06:58', NULL),
(83, 'Genta Widiastuti', 'Software Error', 'Beatae et amet doloribus quia non. Temporibus temporibus eum vel quibusdam inventore quis quia recusandae. Ea illo sit enim ea consequatur est. Quia iste voluptatem aut tempore molestiae.', 'Selesai', '2018-10-12 11:55:57', NULL),
(84, 'Hesti Salimah Andriani', 'Hardware Error', 'Ut facilis autem dolorem similique similique dolorem est. Quia qui tempora maiores dolores fuga nihil. Ullam non cum consequatur odio. Atque laudantium illo doloribus ab.', 'Proses', '2018-10-26 10:29:41', NULL),
(85, 'Cornelia Hariyah', 'Lain-Lain', 'Sed doloremque qui soluta facere earum tempora. Quo molestiae voluptas est consequuntur cum ullam. Soluta maiores qui voluptatem non tenetur.', 'Antrian', '2018-10-07 01:54:26', NULL),
(86, 'Raisa Nasyiah S.Gz', 'Koneksi Internet', 'Suscipit et iusto reiciendis et. Sed dolore et facilis sit et libero. Modi enim dolorum qui accusantium ut modi amet. Ut quia iusto quidem provident qui possimus.', 'Antrian', '2018-10-15 04:15:49', NULL),
(87, 'Tiara Usamah', 'Koneksi Internet', 'Officia exercitationem ipsam non sint pariatur aperiam rerum eos. Laudantium non voluptas ipsum aut et sit. In voluptatum voluptatem eveniet in.', 'Selesai', '2018-10-23 03:12:03', NULL),
(88, 'Diana Padma Yuniar', 'Koneksi Internet', 'Consequatur earum ut ratione deserunt et. Qui quas in praesentium rerum ea quo. Reiciendis quas qui sit nam.', 'Selesai', '2018-10-07 23:21:27', NULL),
(89, 'Makara Wasita', 'Koneksi Internet', 'Optio sequi aliquid aspernatur enim temporibus. Voluptatem et vero tempora. Magni voluptas dolore voluptates. Ea harum reprehenderit nulla architecto. Rerum sunt est qui.', 'Antrian', '2018-10-17 00:12:17', NULL),
(90, 'Anastasia Permata S.Pd', 'Hardware Error', 'Maiores unde debitis quos quidem ducimus. Amet aut nisi adipisci amet. Placeat molestiae repellendus omnis suscipit.', 'Antrian', '2018-10-14 13:45:02', NULL),
(91, 'Jasmin Oni Anggraini', 'Hardware Error', 'At laborum minus et harum non. Accusamus odio fugit aut magnam similique. Nam architecto aut inventore dolorum vel sapiente.', 'Proses', '2018-10-02 10:10:07', NULL),
(92, 'Mariadi Prayoga', 'Software Error', 'Quam id saepe temporibus nostrum sunt sed dolor. Et qui expedita temporibus officia. Ad provident explicabo quisquam eligendi suscipit.', 'Selesai', '2018-10-09 04:08:51', NULL),
(93, 'Farhunnisa Maria Farida', 'Hardware Error', 'Pariatur rerum et dolores velit temporibus et laboriosam. Accusantium ut sed sint non saepe tempora nesciunt nemo. Amet perferendis fuga minima rerum ab. Ad expedita esse repellat eos nemo.', 'Antrian', '2018-10-24 17:13:07', NULL),
(94, 'Jasmani Latupono S.E.I', 'Software Error', 'Modi omnis et exercitationem incidunt cumque. Enim ut tenetur quod harum tempora animi. Recusandae laboriosam velit fugit aspernatur.', 'Antrian', '2018-10-08 19:36:05', NULL),
(95, 'Akarsana Irsad Dongoran M.Kom.', 'Lain-Lain', 'Natus distinctio consectetur nihil suscipit asperiores ratione et. Qui ut error voluptatem similique nostrum.', 'Antrian', '2018-10-01 11:42:48', NULL),
(96, 'Mursita Prayoga', 'Lain-Lain', 'Natus et iste omnis in nihil quia. Autem non qui eos mollitia aut aliquam architecto. Est rerum voluptatibus omnis ad quasi. Ipsa iure optio quaerat ut.', 'Antrian', '2018-10-05 03:28:17', NULL),
(97, 'Empluk Nrima Sihombing M.Pd', 'Lain-Lain', 'Expedita aut quia ex esse ea. Ut ut inventore sit culpa. Maiores aut quam sunt aut ducimus aperiam autem. Enim odit porro dolorem quia. Quod voluptatem laboriosam sunt distinctio.', 'Antrian', '2018-10-20 15:57:57', NULL),
(98, 'Jaiman Kenari Salahudin S.Sos', 'Koneksi Internet', 'Ut voluptatem sit rerum assumenda velit dolor ratione. Reiciendis officiis impedit explicabo et et autem illo. Non ut at ipsam est sit illo facilis ea. Omnis recusandae dolores ut.', 'Proses', '2018-10-05 15:57:56', NULL),
(99, 'Eka Dongoran', 'Koneksi Internet', 'Deleniti optio dignissimos nisi debitis ad in. Sit ut dolor excepturi recusandae quisquam qui. Voluptatem nemo omnis dolorum.', 'Antrian', '2018-10-07 06:33:57', NULL),
(100, 'Najwa Purnawati', 'Hardware Error', 'Repellendus dolorem illo molestiae. Minima voluptas consequatur accusantium qui corrupti. Atque aut unde animi accusantium maiores rerum hic. Sit voluptatibus iure autem.', 'Antrian', '2018-10-09 16:39:30', NULL),
(101, 'Mantab Haruse', 'Hardware Error', 'Kan greget nak', 'Antrian', '2018-10-29 02:47:28', '2018-10-29 02:47:28');

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
(3, '2018_10_24_130721_laratrust_setup_tables', 1),
(4, '2018_10_27_045501_create_kerusakans_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'add-kerusakan', 'Add Kerusakan', 'Add kerusakan', '2018-10-29 02:43:35', '2018-10-29 02:43:35'),
(2, 'list-kerusakan', 'List Kerusakan', 'List kerusakan', '2018-10-29 02:43:35', '2018-10-29 02:43:35'),
(3, 'show-kerusakan', 'Show Kerusakan', 'Show kerusakan', '2018-10-29 02:43:35', '2018-10-29 02:43:35'),
(4, 'update-kerusakan', 'Update Kerusakan', 'Update kerusakan', '2018-10-29 02:43:35', '2018-10-29 02:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(1, 2, 'App\\User'),
(1, 3, 'App\\User'),
(2, 1, 'App\\User'),
(2, 3, 'App\\User'),
(3, 1, 'App\\User'),
(3, 3, 'App\\User'),
(4, 1, 'App\\User'),
(4, 3, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, '2018-10-29 02:43:35', '2018-10-29 02:43:35'),
(2, 'karyawan', 'Karyawan', NULL, '2018-10-29 02:43:35', '2018-10-29 02:43:35'),
(3, 'manajer', 'Manajer', NULL, '2018-10-29 02:43:35', '2018-10-29 02:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(3, 3, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('aktif','ta_aktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `status`, `gender`, `address`, `activation_token`, `activated_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$TqZX8D4EZDzUlhaZYntOtu/.SC/i/pSRuoC2Fem21TehDLUutnFvO', 'aktif', 'male', 'Jalan Ngaliyan Raya No.43 Semarang', NULL, NULL, '3MHDQLh7YGiLxlFUp8S4fa6wgHZVZTCL3pyVWKbNJCbEgIA4OlTFG2O1bvpr', '2018-10-29 02:43:35', '2018-10-29 02:43:35', NULL),
(2, 'karyawan', 'karyawan', 'karyawan@gmail.com', '$2y$10$dlwsGB5Yg7VwaTTwBCEvBO0cnjGkjIUVONJZ3YFJeQzzlmLqlsgDy', 'aktif', 'male', 'Jalan Kedungpane Raya 2 No.43 Semarang', NULL, NULL, 'wBfmGJN6l9wBULBSkOuhZW3I0ZjUsLdQdR1CLX1dNN2UK3QTYfarhwaybx9x', '2018-10-29 02:43:35', '2018-10-29 02:43:35', NULL),
(3, 'manajer', 'manajer', 'manajer@gmail.com', '$2y$10$a89V9.AUGveCavtaAygDlOv5OGOL5HSFqdNYkNgs99oiUPekX7t4y', 'aktif', 'male', 'Jalan Kedungpane Raya 2 No.43 Semarang', NULL, NULL, NULL, '2018-10-29 02:43:35', '2018-10-29 02:43:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kerusakans`
--
ALTER TABLE `kerusakans`
  ADD PRIMARY KEY (`rusak_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_activation_token_unique` (`activation_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kerusakans`
--
ALTER TABLE `kerusakans`
  MODIFY `rusak_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
