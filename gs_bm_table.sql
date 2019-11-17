-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_db01`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, 'PHP', 'https://www.google.com/search?q=%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8Fphp%E3%80%8C%E8%B6%85%E3%80%8D%E5%85%A5%E9%96%80&oq=%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FP&aqs=chrome.2.69i57j0l5.13933j0j7&sourceid=chrome&ie=UTF-8', 'aaaaa', '2019-11-11 00:36:37'),
(2, 'PHP', 'https://www.amazon.co.jp/%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FPHP%E3%80%8C%E8%B6%85%E3%80%8D%E5%85%A5%E9%96%80-%E6%9D%BE%E6%B5%A6-%E5%81%A5%E4%B8%80%E9%83%8E-ebook/dp/B01M0X94BF', 'aaaaa', '2019-11-11 00:38:36'),
(3, 'PHP', 'https://www.google.com/search?q=PHP&oq=PHP&aqs=chrome..69i57j69i59j69i60l3j69i65.991j0j7&sourceid=chrome&ie=UTF-8', 'よく分からん…。', '2019-11-11 00:40:01'),
(4, 'PHP', 'https://www.google.com/search?q=PHP&oq=PHP&aqs=chrome..69i57j69i59j69i60l3j69i65.991j0j7&sourceid=chrome&ie=UTF-8', 'よく分からん。', '2019-11-11 00:42:41'),
(5, 'PHP', 'https://www.google.com/search?q=PHP&oq=PHP&aqs=chrome..69i57j69i59j69i60l3j69i65.991j0j7&sourceid=chrome&ie=UTF-8', '', '2019-11-11 00:43:35');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
