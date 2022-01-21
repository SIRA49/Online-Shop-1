-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2021 年 12 朁E23 日 12:57
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
-- Database: `jikkyo_pension`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `customer_telno` char(11) COLLATE utf8_bin NOT NULL,
  `customer_address` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_telno`, `customer_address`) VALUES
(0, '勝地 徹', '01011110000', 'katsudi_tooru@example.com'),
(1, '山本 美佐', '01011111111', 'yamamoto_misa@example.com'),
(2, '石井 良介', '01011112222', 'ishii_ryousuke@example.com'),
(3, '宮崎 菜々美', '01011113333', 'miyasaki_nanami@example.com'),
(4, '平尾 広之', '01011114444', 'hirao_hiroyuki@example.com'),
(5, '堀北 大樹', '01011115555', 'horikita_hiroki@example.com'),
(6, '小寺 未來', '01011116666', 'kodera_mirai@example.com'),
(7, '石井 友也', '01011117777', 'ishii_tomoya@example.com'),
(8, '福山 真一', '01011118888', 'fukuyama_shinichi@example.com'),
(9, '石山 信吾', '01011119999', 'ishiyama_shingo@example.com');

-- --------------------------------------------------------

--
-- テーブルの構造 `reserve`
--

CREATE TABLE `reserve` (
  `reserve_no` int(11) NOT NULL,
  `reserve_date` datetime NOT NULL,
  `room_no` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `numbers` int(11) NOT NULL,
  `checkin_time` char(5) COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `reserve`
--

INSERT INTO `reserve` (`reserve_no`, `reserve_date`, `room_no`, `customer_id`, `numbers`, `checkin_time`, `message`) VALUES
(2016042001, '2016-04-20 20:20:11', 201, 5, 3, '12:10', '初めての利用となります。よろしくお願いいたします。'),
(2016042401, '2016-04-24 13:44:02', 303, 8, 4, '16:00', '前回同様、サークルでの利用をさせて頂きます！'),
(2016042901, '2016-04-29 08:40:24', 101, 9, 5, '17:30', '家族での利用です。チェックイン時間が遅れる場合には連絡させて頂きます。');

-- --------------------------------------------------------

--
-- テーブルの構造 `room`
--

CREATE TABLE `room` (
  `room_no` int(11) NOT NULL,
  `room_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `information` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `main_image` varchar(50) COLLATE utf8_bin NOT NULL,
  `image1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `image2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `image3` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `amenity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dayfee` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `room`
--

INSERT INTO `room` (`room_no`, `room_name`, `information`, `main_image`, `image1`, `image2`, `image3`, `amenity`, `dayfee`, `capacity`, `type_id`) VALUES
(101, 'ゆとりの和室', 'お風呂・トイレも部屋内にある、広めの和室です。部活・サークルなど、気の合う仲間たちと大人数で利用するのに適しています。', 'room_01_01.jpg', 'room_01_02.jpg', 'room_01_03.jpg', 'room_01_04.jpg', 'テレビ、エアコン、冷蔵庫、部屋着、ドライヤー、シャンプー、リンス', 9000, 4, 1),
(201, '落ち着きのある洋室', '2~3名でのご利用に最適な落ち着きのある洋室です。ファミリー様も大歓迎です。トイレは部屋内にありますが、お風呂は大浴場利用となります。。', 'room_02_01.jpg', 'room_02_02.jpg', 'room_02_03.jpg', 'room_02_04.jpg', 'テレビ、エアコン、冷蔵庫、部屋着', 8000, 3, 2),
(301, 'みんなで和洋室', '最大6名まで利用可能な和洋室です。ベッド3台、布団3組の形となります。シャワー、トイレは部屋内にありますが、お風呂は大浴場利用となります。', 'room_03_01.jpg', 'room_03_02.jpg', 'room_03_03.jpg', 'room_03_04.jpg', 'テレビ、エアコン、冷蔵庫、部屋着', 10000, 6, 3),
(302, 'みんなで和洋室', '最大6名まで利用可能な和洋室です。ベッド3台、布団3組の形となります。シャワー、トイレは部屋内にありますが、お風呂は大浴場利用となります。', 'room_03_01.jpg', 'room_03_02.jpg', 'room_03_03.jpg', 'room_03_04.jpg', 'テレビ、エアコン、冷蔵庫、部屋着', 10000, 6, 3),
(303, 'みんなで和洋室', '最大6名まで利用可能な和洋室です。ベッド3台、布団3組の形となります。シャワー、トイレは部屋内にありますが、お風呂は大浴場利用となります。', 'room_03_01.jpg', 'room_03_02.jpg', 'room_03_03.jpg', 'room_03_04.jpg', 'テレビ、エアコン、冷蔵庫、部屋着', 10000, 6, 3),
(401, 'ラボ', '秘密基地', 'lab.jpg', 'no.jpg', 'no.jpg', 'no.jpg', 'パソコン', 500000, 5, 4);

-- --------------------------------------------------------

--
-- テーブルの構造 `room_type`
--

CREATE TABLE `room_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `room_type`
--

INSERT INTO `room_type` (`type_id`, `type_name`) VALUES
(1, '和室'),
(2, '洋室'),
(3, '和洋室'),
(4, 'ラボ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_no`),
  ADD KEY `FK_reserve_0` (`room_no`),
  ADD KEY `FK_reserve_1` (`customer_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`),
  ADD KEY `FK_room_0` (`type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`type_id`);

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `FK_reserve_0` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`),
  ADD CONSTRAINT `FK_reserve_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- テーブルの制約 `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_room_0` FOREIGN KEY (`type_id`) REFERENCES `room_type` (`type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
