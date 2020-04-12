-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Ara 2019, 23:25:32
-- Sunucu sürümü: 10.3.16-MariaDB
-- PHP Sürümü: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hotelsproject4`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Golf Hotels', 'Golf Hotels', 'Golf Hotels', NULL, 'True', NULL, NULL),
(3, 0, 'SPA Hotels', 'SPA Hotels', 'SPA Hotels', NULL, 'True', NULL, NULL),
(4, 0, 'Casino Hotels', 'Casino Hotels', 'Casino Hotels', NULL, 'True', NULL, NULL),
(5, 0, 'Hotels', 'Hotels', 'Hotels', NULL, 'False', NULL, NULL),
(6, 0, 'Business Hotel', 'Laptop', 'Laptop', NULL, 'True', NULL, NULL),
(9, 0, 'Beach Hotels', 'Beach Hotels Keywords', 'Beach Hotels Description', NULL, 'True', NULL, NULL),
(10, 0, 'Boutique Hotels', 'Boutique Hotels  Keywords', 'Boutique Hotels Description', NULL, 'True', NULL, NULL),
(11, 0, 'Hostel', 'Hostel Keywords', 'Hostel Description', NULL, 'True', NULL, NULL),
(12, 0, 'City Hotel', 'City Hotel', 'City Hotel', NULL, 'True', NULL, NULL),
(13, NULL, 'Village Style', 'Village Style', 'Village Style', NULL, 'True', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `comment`
--

INSERT INTO `comment` (`id`, `subject`, `comment`, `status`, `ip`, `userid`, `created_at`, `updated_at`, `rate`, `hotelid`) VALUES
(1, 'Best Hotel', 'Comment', 'True', NULL, 1, NULL, NULL, 2, 2),
(2, 'Best Beach', 'I Like hotel beach', 'True', NULL, 2, NULL, NULL, 4, 2),
(3, 'Very Good Hotel', 'Deneme yorum', 'New', '127.0.0.1', 1, NULL, NULL, 1, 2),
(4, 'Very Good Beach', 'Güzel yorum', 'New', '127.0.0.1', 1, NULL, NULL, 5, 2),
(5, 'Very Good swimpool', 'Very good and clean swim pool, thank you', 'True', '127.0.0.1', 1, NULL, NULL, 4, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `hotel`
--

INSERT INTO `hotel` (`id`, `category_id`, `title`, `keywords`, `description`, `image`, `star`, `address`, `city`, `phone`, `email`, `fax`, `country`, `location`, `status`, `created_at`, `updated_at`, `detail`, `userid`) VALUES
(1, 9, 'Hilton Beach Alanya', 'Hilton Beach Alanya', 'Hilton Beach Alanya', 'c2c8b4d2e5624ff454c545ef714d473e.jpeg', 5, NULL, 'Ankara', NULL, NULL, NULL, 'Turkiye', NULL, 'True', NULL, NULL, '<h2>Customizing the Rich Text Editor<a href=\"https://symfony.com/doc/master/bundles/EasyAdminBundle/integration/ivoryckeditorbundle.html#customizing-the-rich-text-editor\" title=\"Permalink to this headline\">&para;</a></h2>\r\n\r\n<p>Easy<span style=\"color:#c0392b\"><span style=\"font-size:12px\"><strong>Admin tweaks some</strong></span></span> CKEditor settings to i<span style=\"background-color:#f1c40f\">mprove the user experience. In case you</span> need further customization, configure the editor globally in your Symfony application under the&nbsp;<code>fos_ck_editor</code>&nbsp;option. For example:dfgsdfgs</p>\r\n\r\n<p>dsfgsdfasdf</p>', 2),
(2, 10, 'My Dream Hotel', 'My Dream Hotel Keywords', 'My Dream Hotel Description', '43ffd64ecae6cf5fed04324e02361333.jpeg', 1, 'Alanya', 'Antalya', '242342', 'mydream@gmail.com', 'qweqweqwe', 'Turkiye', NULL, 'True', NULL, NULL, '<h3><strong>Main amenities</strong></h3>\r\n\r\n<ul>\r\n	<li>89 smoke-free guestrooms</li>\r\n	<li>Restaurant and bar/lounge</li>\r\n	<li>Outdoor pool</li>\r\n	<li>Terrace</li>\r\n	<li>24-hour front desk</li>\r\n	<li>Air conditioning</li>\r\n	<li>Daily housekeeping</li>\r\n	<li>Garden</li>\r\n	<li>Self-serve laundry</li>\r\n	<li>Concierge services</li>\r\n	<li>Luggage storage</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Free buffet breakfast, free WiFi in lobby, and free parking</li>\r\n</ul>\r\n\r\n<h3><strong>For families</strong></h3>\r\n\r\n<ul>\r\n	<li>Children&#39;s pool</li>\r\n	<li>Private bathroom</li>\r\n	<li>Free toiletries</li>\r\n	<li>Garden</li>\r\n	<li>Terrace</li>\r\n	<li>Daily housekeeping</li>\r\n</ul>\r\n\r\n<h3>What&rsquo;s around</h3>\r\n\r\n<ul>\r\n	<li>Small Pebble Beach - 3 min walk</li>\r\n	<li>Ataturk Statue - 3 min walk</li>\r\n	<li>Kas Marina - 5 min walk</li>\r\n	<li>Lions Tomb - 6 min walk</li>\r\n	<li>Yeni Cami - 9 min walk</li>\r\n	<li>Kas State Hospital - 9 min walk</li>\r\n	<li>Cukurbag Peninsula - 10 min walk</li>\r\n	<li>Pazkar Market - 10 min walk</li>\r\n	<li>Kaş Merkez Cami - 10 min walk</li>\r\n	<li>Kas Amphitheatre - 11 min walk</li>\r\n	<li>Big Pebble Beach - 0.7 mi / 1.1 km</li>\r\n	<li>\r\n	<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n		<tbody>\r\n			<tr>\r\n				<td>&nbsp;</td>\r\n				<td>&nbsp;</td>\r\n			</tr>\r\n			<tr>\r\n				<td>&nbsp;</td>\r\n				<td>&nbsp;</td>\r\n			</tr>\r\n			<tr>\r\n				<td>&nbsp;</td>\r\n				<td>&nbsp;</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p><img alt=\"\" src=\"http://127.0.0.1:8000/uploads/images/43ffd64ecae6cf5fed04324e02361333.jpeg\" style=\"height:533px; width:800px\" /></p>\r\n	</li>\r\n</ul>', 2),
(3, 10, 'Gold Monami Butik Otel', 'Gold Monami Butik Otel', 'Gold Monami Butik Otel', 'cb9df6e611bdad1a5bce712d42f50c28.jpeg', 3, 'Fethiye', 'Antalya', '12412412', '1212', 'goldbutik@mynet.com', 'Turkiye', NULL, 'True', NULL, NULL, NULL, NULL),
(4, 3, 'Corum Best SPA Hotel Resort', 'Corum Best SPA Hotel Resort', 'Corum Best SPA Hotel Resort', '4a424d6f12d2768e19f6d8f5b3e713e2.jpeg', 4, 'Çocrum', 'Antalya', '1241234', NULL, NULL, 'Turkiye', NULL, 'True', NULL, NULL, '<p>aaaaaaaaaaaaaaaa</p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>asdasdasd</strong></span></p>\r\n\r\n<p><span style=\"background-color:#c0392b\">asdasdasdasdasd</span></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>asdas</td>\r\n			<td>asdasd</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asd</td>\r\n			<td>asd</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asd</td>\r\n			<td>asd</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL),
(5, 1, 'Maya Golf Hotel Alanya', 'Maya Golf Hotel Alanya', 'Maya Golf Hotel', 'e1a22524f5c7a0e347230e06250d402d.jpeg', 5, NULL, 'Antalya', NULL, NULL, NULL, 'Turkiye', NULL, 'True', NULL, NULL, '<p>Maya Golf Hotel</p>', 1),
(6, 12, 'Gönlüferah Thermal & Spa Hotel', 'Gönlüferah Thermal & Spa Hotel', 'Gönlüferah Thermal & Spa Hotel', 'fcabc0965eae5ed98a76ae8461092650.jpeg', 4, NULL, 'Ankara', NULL, NULL, NULL, 'Turkiye', NULL, 'True', NULL, NULL, '<p><a dir=\"ltr\" href=\"https://www.google.com/url?sa=i&amp;source=images&amp;cd=&amp;ved=2ahUKEwiz-IzJ-armAhXQ2qQKHRGICXIQjhx6BAgBEAI&amp;url=https%3A%2F%2Fwww.tatilyum.net%2Fotel%2Fgonluferah-thermal-spa-hotel%2F&amp;psig=AOvVaw2Em2GYrA8wO5xndjEa_Ega&amp;ust=1576062754666460\" rel=\"noopener\" tabindex=\"0\" target=\"_blank\">G&ouml;nl&uuml;ferah Thermal &amp; Spa Hotel</a></p>\r\n\r\n<p>G&ouml;rseller telif hakkına tabi olabilir.&nbsp;<a href=\"https://support.google.com/legal/answer/3463239\" rel=\"noopener\" tabindex=\"0\" target=\"_blank\">Daha Fazla Bilgi</a></p>', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`id`, `hotel_id`, `title`, `image`) VALUES
(2, 2, 'Pool View', '83ae506d2e3b2b87950bf8728849fc79.jpeg'),
(3, 1, 'Front View', '220f304618d57fb8ad742c788c6e1d86.jpeg'),
(4, 1, 'Pool İmage', 'c00b160c93faea15a9929ca3a5ca3d4f.jpeg'),
(5, 1, 'Otel image', 'edf728b7f88ce53afd0288c6e95b8ebb.jpeg'),
(6, 2, 'Room İmage', 'cc8523a4515ac15c064b420c1455d803.jpeg'),
(7, 3, 'rooom', 'ad44fb00e1fa5604de2d8644a91c5258.jpeg'),
(9, 2, 'Ön görünüşü', '0a0ec8439b48803d1cc96739e687809d.jpeg'),
(11, 4, 'SPA HAvuzu', 'ac461600e2117be6403860b75798c3dc.jpeg'),
(12, 4, 'Standart Oda', '5976783b66ef7423f12549fca9161fbf.jpeg'),
(13, 5, 'Golf Area', '453ffd71ab28329ebc4bdd4c02b841e0.jpeg'),
(14, 5, 'Swimpool', '96c9f364e987023c4516fd0c506d3431.jpeg'),
(15, 1, 'Golf Area', '28836d6b13bbfcf7082e2632193e2cac.jpeg'),
(16, 1, 'Golf2', '8880d82a2d83ebe9d54df7260b1608cc.jpeg'),
(17, 6, 'Swimpool', '8eb2cb18f28d3fd76843ec12c362243f.jpeg'),
(18, 6, 'Garden', '921d386df6ad2c1de3140940c2426960.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `message`, `status`, `ip`, `note`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Ali CAN', 'My subject', 'Tes Mesasge', 'New', NULL, 'My Message', NULL, NULL, 'ali@gmail.com'),
(2, 'Yuksel Celik', 'my Subject', 'My Mesaage asasdasdcx', 'New', '127.0.0.1', NULL, NULL, NULL, 'celikyuksell@gmail.com'),
(3, 'Ayse KARA', 'subject', 'skjdnajksndkjasdas', 'Read', '127.0.0.1', 'I will answer this request.. Yüksel', NULL, NULL, 'ayse@hotmail.com'),
(4, 'Cansu CAN', 'I like your videos', 'Hello,\r\nI want to more videos about php framework\r\nThank you', 'New', '127.0.0.1', NULL, NULL, NULL, 'Cansu@hotmail.com'),
(5, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(6, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(7, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(8, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(9, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(10, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(11, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(12, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(13, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(14, 'Yuksel CAN', 'deneme', 'denememe', 'New', '127.0.0.1', NULL, NULL, NULL, 'deneme@mynet.com'),
(15, 'Yuksel Çelik', 'Test Subject', 'Test Message', 'New', '127.0.0.1', NULL, NULL, NULL, 'yukselcelik@karabuk.edu.tr'),
(16, 'Yuksel Çelik', 'Test Subject', 'Test Message', 'New', '127.0.0.1', NULL, NULL, NULL, 'yukselcelik@karabuk.edu.tr'),
(17, 'Yuksel Çelik', 'Test Subject', 'Test Message', 'New', '127.0.0.1', NULL, NULL, NULL, 'yukselcelik@karabuk.edu.tr'),
(18, 'Yuksel Çelik', 'Test Subject', 'Test Message', 'New', '127.0.0.1', NULL, NULL, NULL, 'yukselcelik@karabuk.edu.tr'),
(19, 'Yuksel Çelik', 'Test Subject', 'Test Message', 'New', '127.0.0.1', NULL, NULL, NULL, 'yukselcelik@karabuk.edu.tr'),
(20, 'Yüksel ÇELİK', 'My Subject', 'My Text', 'New', '127.0.0.1', NULL, NULL, NULL, 'yukselcelik@karabuk.edu.tr'),
(21, 'Yüksel ÇELİK', 'My Subject', 'My Text', 'New', '127.0.0.1', NULL, NULL, NULL, 'yukselcelik@karabuk.edu.tr'),
(22, 'Yüksel ÇELİK', 'Test Subject', 'Test Request Message', 'New', '127.0.0.1', NULL, NULL, NULL, 'yukselcelik@karabuk.edu.tr');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191023162235', '2019-10-23 16:23:44'),
('20191113161218', '2019-11-13 16:12:35'),
('20191126074853', '2019-11-26 07:49:12'),
('20191126112618', '2019-11-26 11:26:44'),
('20191127151245', '2019-11-27 15:14:08'),
('20191203085658', '2019-12-03 08:57:22'),
('20191203144252', '2019-12-03 14:43:34'),
('20191210084049', '2019-12-10 08:41:01'),
('20191213105608', '2019-12-13 10:56:24'),
('20191213110853', '2019-12-13 11:09:02'),
('20191213231301', '2019-12-13 23:13:16'),
('20191213232845', '2019-12-13 23:28:56'),
('20191223121722', '2019-12-23 12:17:43'),
('20191223201321', '2019-12-23 20:13:37');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL,
  `roomid` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reservation`
--

INSERT INTO `reservation` (`id`, `userid`, `hotelid`, `roomid`, `name`, `surname`, `email`, `phone`, `checkin`, `checkout`, `days`, `total`, `ip`, `message`, `note`, `status`, `created_at`, `updated_at`) VALUES
(8, 1, 2, 4, 'Ayse', 'CAN', 'ayse@gmail.com', NULL, '2019-01-01 00:00:00', '2019-01-06 00:00:00', 1, 75, '127.0.0.1', NULL, NULL, 'New', '2019-12-25 16:33:34', '2019-12-25 16:33:33'),
(9, 1, 2, 5, 'Ayse', 'CAN', 'ayse@gmail.com', NULL, '2019-01-01 00:00:00', '2019-01-04 00:00:00', 3, 360, '127.0.0.1', NULL, NULL, 'New', '2019-12-25 16:44:32', '2019-12-25 16:44:32'),
(10, 1, 2, 5, 'Hoşbaht', 'Ahmedli', 'ayse@gmail.com', '123', '2019-01-01 00:00:00', '2019-01-04 00:00:00', 3, 360, '127.0.0.1', 'Hoş bir rezervasyon', NULL, 'New', '2019-12-25 16:46:36', '2019-12-25 16:46:36'),
(11, 1, 2, 4, 'Ayse', 'CAN', 'ayse@gmail.com', NULL, '2019-01-01 00:00:00', '1975-10-13 00:00:00', 3, 3, '127.0.0.1', NULL, NULL, 'New', '2019-12-26 22:04:09', '2019-12-26 22:04:09'),
(12, 1, 2, 4, 'Ayse', 'CAN', 'ayse@gmail.com', NULL, '2020-01-15 00:00:00', '2020-01-20 00:00:00', 5, 375, '127.0.0.1', NULL, NULL, 'New', '2019-12-26 22:43:43', '2019-12-26 22:43:43'),
(13, 1, 1, 1, 'Yüksel', 'ÇELİk', 'yuksel@gmail.com', '12345', '2020-01-10 00:00:00', '2020-01-13 00:00:00', 3, 300, '127.0.0.1', '3456', NULL, 'New', '2019-12-26 22:46:16', '2019-12-26 22:46:16'),
(14, 1, 2, 4, 'Cansu', 'CAN', 'cansu@gmail.com', '123456789', '2020-01-15 00:00:00', '2020-01-20 00:00:00', 5, 375, '127.0.0.1', 'Gece yarısı gelecem.', NULL, 'New', '2019-12-26 23:10:42', '2019-12-26 23:10:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotelid` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `room`
--

INSERT INTO `room` (`id`, `title`, `hotelid`, `description`, `image`, `price`, `status`, `number`) VALUES
(1, 'King Room', 1, 'King Room', '00b3d4c1f199d285fc5262a7e843543f.jpeg', 100, 'True', 10),
(2, 'Standart Room', 1, 'Standart Room', 'af22b1451ad6fc2f35657a768125be60.jpeg', 80, 'True', 20),
(4, 'Standart Room', 2, 'Standart Room', 'f1e0876832831cd9567d22457cb3db85.jpeg', 75, 'True', 5),
(5, 'Family Room', 2, 'Family Room', '8ee3f8e1ba145d395df6db14aa49202f.jpeg', 120, 'True', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtpserver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `aboutus`, `contact`, `reference`, `status`) VALUES
(1, 'Travel All Holiday Company', 'Travel All,hotel, vacation, beach, spa', 'Best World Travel Agency. Cheapest Hotels, Holiday Solutions', 'Travel All Anomim  Şirketi', 'Aksaray, İstanbul, 3400, Turkey', '2432134234', '234234234', 'info@travelall.com', 'gmail', 'karabuktest@gmail.com', 'Marabalar2019*', '578', 'https://www.facebook.com/krbkuni', 'https://www.instagram.com/karabukuniv/', 'https://twitter.com/krbkuni', '<ul>\r\n	<li>\r\n	<div class=\"title\" style=\"margin-bottom:30px\"><span style=\"color:#d35400\"><strong><span style=\"font-size:24px\">Every Individual Deserves a Website</span></strong></span></div>\r\n\r\n	<p><span style=\"font-size:16px\"><span style=\"color:#000000\">We believe every individual should have the power to create their own website or online store. If you can point and click, you can create a professional website or online store using our free and intuitive tools.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<div class=\"title\" style=\"margin-bottom:30px\"><span style=\"color:#e67e22\"><span style=\"font-size:24px\">Our Customers Mean the World</span></span></div>\r\n\r\n	<p><span style=\"font-size:16px\"><span style=\"color:#000000\">At Website.com, we strive to provide exactly what our customers are looking for. A huge part of our brainstorming process is looking at our client feedback to make sure you&#39;re well taken care of.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<div class=\"title\" style=\"margin-bottom:30px\"><span style=\"color:#d35400\"><u><strong><span style=\"font-size:24px\">In-House Made</span></strong></u></span></div>\r\n\r\n	<p><span style=\"font-size:16px\"><span style=\"color:#000000\">We are personally committed to delivering the very best. Everything, from customer support to product design and development, is provided by our dedicated (and adorable) team in beautiful BC, Canada.</span></span></p>\r\n	</li>\r\n</ul>', '<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Adres</strong></td>\r\n			<td>Karab&uuml;k &Uuml;niversitesi Demir &Ccedil;elik Kamp&uuml;s&uuml;<br />\r\n			Kılavuzlar K&ouml;y&uuml; &Ouml;te Karşı &Uuml;niversite Kamp&uuml;s&uuml; Merkez Karab&uuml;k</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Telefon</strong></td>\r\n			<td><a href=\"tel:4440478\">444 0 478</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>E-mail</strong></td>\r\n			<td><a href=\"mailto:iletisim@karabuk.edu.tr\">iletisim@karabuk.edu.tr</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Web</strong></td>\r\n			<td>www.karabuk.edu.tr</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001.2550114756!2d32.64944681495948!3d41.21621291455287!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x408354ac4492953f%3A0xab3b48ed0392a743!2sKarab%C3%BCk+%C3%9Cniversitesi!5e0!3m2!1str!2str!4v1471528432043\" width=\"100%\"></iframe></p>\r\n\r\n<p>&nbsp;<strong>Eklenme Zamanı:</strong>&nbsp;9.10.2017 / 09:54</p>', '<ul>\r\n	<li>\r\n	<h1>Akım Metal</h1>\r\n\r\n	<p>40 yılı aşkın işleme tecr&uuml;besine sahip Akım Metal, Tuzla&ndash;İstanbul&rsquo;daki işletmesinde beyaz eşya, otomotiv, end&uuml;striyel motor, havacılık ve savunma sanayisi sekt&ouml;rlerine metal işleme ve metal enjeksiyon ile par&ccedil;a imalatı yapmaktadır. 2011 yılı itibariyle yeni bir &uuml;r&uuml;n &uuml;retmek, pazarda farklılaşmak...</p>\r\n	<a href=\"http://www.a-group.com.tr/en/grup_sirketleri/akim-metal-1\">continuation</a></li>\r\n	<li>\r\n	<p><img src=\"http://www.a-group.com.tr/media/images/akplas-gorsel.jpg\" /></p>\r\n\r\n	<h1>Akplas</h1>\r\n\r\n	<p>Akplas&nbsp;was established in Istanbul in 1989, for the production of plastic injection moulding. Later moving to its Gebze location in 1996, as the company developed its quality systems approach, technological investments and R &amp; D studies. In the years to follow, silk screen serigraphy printing, plastic wet painting, blow moulding and heat...</p>\r\n	<a href=\"http://www.a-group.com.tr/en/grup_sirketleri/akplas-2\">continuation</a></li>\r\n	<li>\r\n	<p><img src=\"http://www.a-group.com.tr/media/images/aksem-gorsel.jpg\" /></p>\r\n\r\n	<h1>Aksem Kalıp</h1>\r\n\r\n	<p>Our sister company, AKPLAS has been in the plastics sector serving for White Goods&amp;Household Appliances and Automotive Industries for a long time and has established a tooling division to widen customer satisfaction in 1997. This division has become bigger, developed itself in a short time and has established as a sister company of AKPLAS with...</p>\r\n	<a href=\"http://www.a-group.com.tr/en/grup_sirketleri/aksem-kalip-3\">continuation</a></li>\r\n	<li>\r\n	<p><img src=\"http://www.a-group.com.tr/media/images/ymb-gorsel_1.jpg\" /></p>\r\n\r\n	<h1>Ymb</h1>\r\n\r\n	<p>YMB Teknolojik &Uuml;r&uuml;nler Pazarlama şirketi, A GRUP B&uuml;nyesindeki &ouml;zg&uuml;n &uuml;r&uuml;nlerin satışı, pazarlanması ve &ccedil;eşitli uluslararası &uuml;reticilerin yurt i&ccedil;i distrib&uuml;t&ouml;rl&uuml;k faaliyetlerini s&uuml;rd&uuml;rmek amacıyla 2013 yılında kurulmuştur. YMB, &uuml;lkemize ve sanayi sekt&ouml;rlerine..</p>\r\n	</li>\r\n</ul>', 'True');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `surname`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ayse@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Qm5vZzFPd2RFVXM4V0hQZg$vCYfL0PSvsJ0OLhH7f1hEcpjV8Rnp6Zjpj5BWlBrPwA', 'Ayse', 'CAN', '2c061b78e04e7658d85ade33a2e74023.jpeg', 'True', NULL, NULL),
(2, 'ali@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$WUxqZk5XUm5uOHhidU9PdQ$DPJM6D81SlBkr3eZ03bFirxZiBA7Wo41nKvwFaQy6t4', 'Ali', 'Can', '8a79b21a4f150d3d6e1454cc63ddd6c2.jpeg', 'True', NULL, NULL),
(3, 'ibo@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$YXd1RDJqL05oM2VoTHhGaw$WHNnjPwvMmqcCSZ1PPlCiLY9Ml6W8qsI7pM4lg0RKQ8', 'Ibrahim', 'Kupşik', '5d4f8afae3f41cecfe21171e54f8efcf.jpeg', 'True', NULL, NULL),
(4, 'deneme@mynet.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$d0hlSkgvbFQyWm82dWEvZA$bVzRP2gRvqydRznY2UzcpN1v/IA/7L+DSctt/hq2lLg', 'Kamil', 'DUMAN', NULL, 'True', NULL, NULL),
(5, 'ibocan@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$aHRuZGx1dWlHUmNWSFFoLw$N1xbWc3eX+RMr3U3VxhJJWCfZJpIJwx6UOBu0MHAY9s', 'İBO', 'KUPSİ', NULL, 'True', NULL, NULL),
(6, 'fatma@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Mk96blFHYXZrb2NteW1xMg$u9AQjVRoHj7cHjg0mUOIZln/SnN898NPKQvp1nWIfpI', 'Fatma', 'KARA', NULL, 'False', NULL, NULL),
(7, 'xxx@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TUx3eC80LnZTYTNMWjUzNQ$MXtWq4v7h47uNykl+CemoEfu4VeyZp94I7ROEPIR7WQ', 'xxx', 'yyy', NULL, 'True', NULL, NULL),
(8, 'xxxyy@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZHNldEZiWWFVY2d4bHl5aQ$zRbnpgjfzJwHHpodfTQykWJl8DS/Kfu0zm/KlNd/AxE', 'xxx', 'yyy', NULL, 'True', NULL, NULL),
(9, 'ccxxxyy@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$eU9PZjc4bGFuVWxzejJRWA$S+jsuwqwD5+EuBjqODEzsebno0/nnB92frqlMDZEOU4', 'xxx', 'yyy', NULL, 'True', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3535ED912469DE2` (`category_id`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F3243BB18` (`hotel_id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_3535ED912469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Tablo kısıtlamaları `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F3243BB18` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
