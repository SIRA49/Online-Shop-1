-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2022 年 1 朁E22 日 06:40
-- サーバのバージョン： 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `cafe`
--

CREATE TABLE `cafe` (
  `product_no` int(11) NOT NULL,
  `bean_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `information` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `main_image` varchar(50) COLLATE utf8_bin NOT NULL,
  `image1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `amenity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dayfee` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `cafe`
--

INSERT INTO `cafe` (`product_no`, `bean_name`, `information`, `main_image`, `image1`, `amenity`, `dayfee`, `capacity`, `type_id`) VALUES
(101, '自家製ブレンド', '珈琲ならではの酸味がお楽しみいただける定番の商品です。\r\n\r\n配合にはコロンビア,ブラジル,モカ,グァテマラを使用しております。', 'b1.jpg', 'b1.jpg', '', 350, 10, 1),
(102, '新春ブレンド', '良質な豆を使用した新春にふさわしい、超買い得ブレンドです♪\r\n\r\n味・コク・香りのよさはまさに絶品', 'b1.jpg', 'b1.jpg', '', 420, 3, 1),
(201, 'コロンビア', 'マイルドコーヒーの代表。優れた香り、コクを持っています。\r\n\r\n「エルパライソ・スプレモ」のプレミア品です。', 'koro.jpg', 'koro.jpg', '', 410, 5, 2),
(202, 'ブラジル', '当店では、ストレートにもブレンドにも欠かせないブラジル産コーヒーを、農園と直接取引を行う『契約農園制』を始めました。\r\n\r\nミナスジェライ州のセラード大丘陵から送られる、バランスがとれクセのない、珈琲をお楽しみください。', 'bura.jpg', 'bura.jpg', '', 430, 3, 2),
(203, 'モカ', 'ウォシュドモカならではの『ワインフレーバー・フルボディー・上品な口当たり』等がスペシャルティーコーヒーとして評価されています。', 'moka.jpg', 'moka.jpg', '', 480, 4, 2),
(204, 'グァテマラ', '香り高いコーヒーで知られる有名産地アンティグア地区。\r\n\r\n香りが高く、良質の酸味とコクが特徴です。', 'gua.jpg', 'gua.jpg', '', 120, 2, 2),
(205, 'ブルーマウンテン', 'ブルーマウンテンの最高規格【No.1】は上品でやわらかい風味が特徴で、バランスの良さは絶品です。\r\n\r\nブルーマウンテンはコーヒーの最高級品とされています。', 'buru.jpg', 'buru.jpg', '', 2200, 100, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cafe`
--
ALTER TABLE `cafe`
  ADD PRIMARY KEY (`product_no`),
  ADD KEY `FK_room_0` (`type_id`);

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `cafe`
--
ALTER TABLE `cafe`
  ADD CONSTRAINT `FK_room_0` FOREIGN KEY (`type_id`) REFERENCES `cafe_type` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
