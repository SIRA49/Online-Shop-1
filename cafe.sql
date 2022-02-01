-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2022 年 2 朁E01 日 19:45
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
  `price` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `cafe`
--

INSERT INTO `cafe` (`product_no`, `bean_name`, `information`, `main_image`, `image1`, `price`, `capacity`, `type_id`) VALUES
(101, '自家製ブレンド', '珈琲ならではの酸味がお楽しみいただける定番の商品です。\r\n\r\n配合にはコロンビア,ブラジル,モカ,グァテマラを使用しております。', 'b1.jpg', 'b1.jpg', 350, 10, 1),
(102, '新春ブレンド', '良質な豆を使用した新春にふさわしい、超買い得ブレンドです♪\r\n\r\n味・コク・香りのよさはまさに絶品', 'b1.jpg', 'b1.jpg', 420, 3, 1),
(201, 'コロンビア', 'マイルドコーヒーの代表。優れた香り、コクを持っています。\r\n\r\n「エルパライソ・スプレモ」のプレミア品です。', 'koro.jpg', 'koro.jpg', 410, 5, 2),
(202, 'ブラジル', '当店では、ストレートにもブレンドにも欠かせないブラジル産コーヒーを、農園と直接取引を行う『契約農園制』を始めました。\r\n\r\nミナスジェライ州のセラード大丘陵から送られる、バランスがとれクセのない、珈琲をお楽しみください。', 'bura.jpg', 'bura.jpg', 430, 3, 2),
(203, 'モカ', 'ウォシュドモカならではの『ワインフレーバー・フルボディー・上品な口当たり』等がスペシャルティーコーヒーとして評価されています。', 'moka.jpg', 'moka.jpg', 480, 4, 2),
(204, 'グァテマラ', '香り高いコーヒーで知られる有名産地アンティグア地区。\r\n\r\n香りが高く、良質の酸味とコクが特徴です。', 'gua.jpg', 'gua.jpg', 120, 2, 2),
(205, 'ブルーマウンテン', 'ブルーマウンテンの最高規格【No.1】は上品でやわらかい風味が特徴で、バランスの良さは絶品です。\r\n\r\nブルーマウンテンはコーヒーの最高級品とされています。', 'buru.jpg', 'buru.jpg', 2200, 100, 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `cafe_type`
--

CREATE TABLE `cafe_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `cafe_type`
--

INSERT INTO `cafe_type` (`type_id`, `type_name`) VALUES
(1, 'ブレンド豆'),
(2, 'ストレート豆');

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
-- テーブルの構造 `inquiry`
--

CREATE TABLE `inquiry` (
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `tell` varchar(30) COLLATE utf8_bin NOT NULL,
  `address` varchar(30) COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin NOT NULL,
  `Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- テーブルのデータのダンプ `inquiry`
--

INSERT INTO `inquiry` (`name`, `tell`, `address`, `message`, `Time`) VALUES
('', '0', '0', '', '0000-00-00'),
('a', 'a', 'a', 'a', '2022-02-01'),
('a', 'a', 'a', 'a', '2022-02-01'),
('a', 'a', '', '', '2022-02-01'),
('b', '0', '', '', '2022-02-01'),
('a', 'a', 'a', 'a', '2022-02-01'),
('a', 'a', 'a', 'a', '2022-02-01'),
('a', 'a', 'a', 'a', '2022-02-01'),
('a', 'a', 'a', 'a', '2022-02-01'),
('a', 'a', 'a', 'aa', '2022-02-01');

-- --------------------------------------------------------

--
-- テーブルの構造 `order`
--

CREATE TABLE `order` (
  `reserve_no` int(11) NOT NULL,
  `reserve_date` datetime NOT NULL,
  `product_no` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `numbers` int(11) NOT NULL,
  `checkin_time` char(5) COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `purchase`
--

CREATE TABLE `purchase` (
  `name` varchar(50) NOT NULL,
  `tell` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `purchase`
--

INSERT INTO `purchase` (`name`, `tell`, `mail`, `address`, `Time`) VALUES
('', '', '', '', '0000-00-00'),
('a', 'a', 'a', 'aa', '2022-02-01'),
('b', 'a', 'a', 'aa', '2022-02-01');

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
-- Indexes for table `cafe_type`
--
ALTER TABLE `cafe_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`reserve_no`),
  ADD KEY `FK_reserve_0` (`product_no`),
  ADD KEY `FK_reserve_1` (`customer_id`);

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `cafe`
--
ALTER TABLE `cafe`
  ADD CONSTRAINT `FK_room_0` FOREIGN KEY (`type_id`) REFERENCES `cafe_type` (`type_id`);

--
-- テーブルの制約 `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_reserve_0` FOREIGN KEY (`product_no`) REFERENCES `cafe` (`product_no`),
  ADD CONSTRAINT `FK_reserve_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
