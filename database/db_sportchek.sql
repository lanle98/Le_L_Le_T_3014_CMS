-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: mysql
-- Thời gian đã tạo: Th4 05, 2020 lúc 03:28 AM
-- Phiên bản máy phục vụ: 10.3.22-MariaDB-1:10.3.22+maria~bionic
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_sportchek`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(1, 'Adidas'),
(2, 'Nike'),
(3, 'Under Armour'),
(4, 'Helly Hansen'),
(5, 'Puma'),
(6, 'Reebok');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'BLACK'),
(2, 'WHITE'),
(3, 'GRAY'),
(4, 'BLUE HEIGHTS'),
(5, 'ACADEMY'),
(6, 'REAL RED'),
(7, 'PINK'),
(8, 'DARK GREY'),
(9, 'OCEAN CUBE'),
(10, 'BLUE HAZE'),
(11, 'MARTIAN RED'),
(12, 'BETA RED'),
(13, 'LUMIOUS GREEN'),
(14, 'ORANGE TRANCE'),
(15, 'LUSH RED'),
(16, 'UNIVERSITY RED'),
(17, 'TEAM ORANGE'),
(18, 'SCUBA BLUE'),
(19, 'FLAG RED'),
(20, 'GOLD'),
(21, 'SCARLET'),
(22, 'MAROON'),
(23, 'CLEAR'),
(24, 'TEAL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_gender`
--

CREATE TABLE `tbl_gender` (
  `gender_id` int(11) NOT NULL,
  `gender_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_gender`
--

INSERT INTO `tbl_gender` (`gender_id`, `gender_type`) VALUES
(1, 'Women'),
(2, 'Men'),
(3, 'Unisex');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_linking_brand`
--

CREATE TABLE `tbl_linking_brand` (
  `product_brand_id` mediumint(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_linking_brand`
--

INSERT INTO `tbl_linking_brand` (`product_brand_id`, `product_id`, `brand_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1),
(4, 4, 3),
(5, 5, 3),
(6, 6, 5),
(7, 7, 2),
(8, 8, 2),
(9, 9, 4),
(10, 10, 4),
(11, 11, 2),
(12, 12, 1),
(13, 13, 2),
(14, 14, 3),
(15, 15, 1),
(16, 16, 2),
(17, 17, 1),
(18, 18, 2),
(19, 19, 1),
(20, 20, 2),
(21, 21, 1),
(22, 22, 1),
(23, 23, 2),
(24, 24, 1),
(25, 25, 3),
(26, 26, 1),
(27, 27, 1),
(28, 28, 2),
(29, 29, 6),
(30, 30, 2),
(31, 31, 3),
(32, 32, 3),
(33, 33, 1),
(34, 34, 3),
(35, 35, 3),
(37, 43, 1),
(38, 44, 2),
(39, 45, 1),
(40, 46, 3),
(41, 47, 1),
(42, 48, 2),
(43, 49, 1),
(44, 50, 2),
(45, 51, 2),
(46, 52, 3),
(47, 53, 2),
(48, 54, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_linking_color`
--

CREATE TABLE `tbl_linking_color` (
  `product_color_id` mediumint(9) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_linking_color`
--

INSERT INTO `tbl_linking_color` (`product_color_id`, `product_id`, `color_id`) VALUES
(1, 1, 4),
(3, 2, 1),
(4, 3, 1),
(5, 3, 2),
(6, 4, 10),
(7, 5, 12),
(8, 5, 11),
(9, 6, 6),
(10, 7, 1),
(11, 7, 14),
(12, 7, 16),
(13, 8, 24),
(14, 9, 18),
(15, 10, 19),
(16, 11, 1),
(17, 11, 2),
(18, 12, 22),
(19, 13, 1),
(20, 13, 2),
(21, 14, 7),
(22, 15, 23),
(23, 15, 3),
(24, 16, 1),
(25, 16, 2),
(26, 17, 1),
(27, 17, 20),
(28, 18, 2),
(29, 19, 21),
(30, 20, 1),
(31, 20, 2),
(32, 20, 20),
(33, 21, 3),
(34, 22, 15),
(35, 22, 2),
(36, 23, 1),
(37, 24, 1),
(38, 24, 2),
(39, 25, 1),
(40, 25, 2),
(41, 26, 3),
(42, 27, 1),
(43, 27, 6),
(44, 28, 1),
(45, 28, 2),
(46, 29, 1),
(47, 29, 6),
(48, 29, 7),
(49, 30, 1),
(50, 30, 2),
(51, 30, 13),
(52, 30, 14),
(53, 31, 3),
(54, 31, 4),
(55, 32, 3),
(56, 32, 5),
(57, 33, 1),
(58, 33, 6),
(59, 34, 1),
(60, 35, 7),
(61, 41, 2),
(62, 43, 1),
(63, 44, 13),
(64, 45, 2),
(65, 46, 4),
(66, 47, 4),
(67, 48, 4),
(68, 49, 5),
(69, 50, 2),
(70, 51, 2),
(71, 52, 2),
(72, 53, 2),
(73, 54, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_linking_gender`
--

CREATE TABLE `tbl_linking_gender` (
  `product_gender` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `gender_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_linking_gender`
--

INSERT INTO `tbl_linking_gender` (`product_gender`, `product_id`, `gender_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 1),
(9, 9, 1),
(10, 10, 2),
(11, 11, 3),
(12, 12, 2),
(13, 13, 3),
(14, 14, 1),
(15, 15, 1),
(16, 16, 2),
(17, 17, 3),
(18, 18, 1),
(19, 19, 3),
(20, 20, 2),
(21, 21, 2),
(22, 22, 1),
(23, 23, 2),
(24, 24, 2),
(25, 25, 1),
(26, 26, 2),
(27, 27, 2),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 2),
(33, 33, 2),
(34, 34, 2),
(35, 35, 1),
(38, 43, 1),
(39, 44, 2),
(40, 45, 2),
(41, 46, 3),
(42, 47, 2),
(43, 48, 3),
(44, 49, 1),
(45, 50, 2),
(46, 51, 2),
(47, 52, 3),
(48, 53, 2),
(49, 54, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `price`, `detail`, `image`) VALUES
(1, 'Nike Sportswear Women\'s Heritage 1/2 Zip Hoodie', '$60.00', 'The perfect mix of a hoodie and a 1/2-zip, the Nike Sportswear Heritage Top is made with soft knit fabric and chevron design lines for easygoing comfort and old-school style.', 'Heritage Zip Hoodie.jpg'),
(2, 'Under Armour Women\'s HeatGear® Armour Racer Tank', '$29.99', 'HeatGear® Armour is our original performance baselayer—the layer you put on first and take off last. It’s tight to wick away sweat and quick-drying to keep you cool. No athlete can go without it.', 'HeatGearArmour Racer Tank.jpg'),
(3, 'adidas Men\'s Badge of Sport Pullover French Terry Hoodie', '$74.99', 'Show your pride in the brand with the 3-Stripes. This hoodie features an adidas Badge of Sport front and centre. The sweatshirt is made of soft cotton-blend French terry fabric so you stay comfortable through an active day.\r\n', 'Pullover French Terry Hoodie.jpeg'),
(4, 'Under Armour Women\'s Tech Twist V-Neck T Shirt', '$29.99', 'Under Armour Women’s Tech Twist V-neck T Shirt is made of UA Tech™ fabric which is quick-drying, ultra-soft & has a more natural feel. It features anti-odor technology that prevents the growth of odor-causing microbes.\r\n', 'Tech Twist V-Neck T Shirt.jpg'),
(5, 'Under Armour Men\'s Tech 2.0 1/2 Zip Long Sleeve Shirt', '$49.99', 'UA Tech™ is our original go-to training gear: loose, light, and it keeps you cool. It’s that same great fabric, but this shirt has also been updated with a new, more streamlined fit and a shaped hem. It’s everything you need.\r\n', 'Zip Long Sleeve Shirt.jpg'),
(6, 'Puma Men\'s Classics T7 Padded Jacket', '$90.97', 'The T7 became a legend on its own, making a name for itself in street style culture and sportswear alike.', 'T7 Padded Jacket.jpg'),
(7, 'Nike Sportswear Men\'s Windrunner Jacket', '$89.97', 'More than a direct descendant, the Nike Sportswear Windrunner Jacket is made to look and feel just like the original Windrunner from 1978. It’s made with a breathable mesh lining, ribbed cuffs and the iconic Chevron at the chest.', 'Nike Sportswear Men\'s Windrunner Jacket.jpeg'),
(8, 'Nike Sportswear Women\'s Windrunner Jacket', '$71.97', 'A legendary look gets a playful makeover with Women’s Nike Sportswear Windrunner Jacket. Crafted with the iconic chevron on the chest, it features updated color-blocking and a paneled hood for added warmth and coverage.', 'Windrunner Jacket.jpg'),
(9, 'Helly Hansen Women\'s Aurora 2.0 Ullr 3L Shell Life Pocket Jacket', '$489.98', 'A soft but durable stretch 3 layer Helly Tech® Professional backcountry freeride jacket with a replaced fit for comfort and weather protection.', 'Aurora 2.0 Ullr 3L Shell Life Pocket Jacket.jpg'),
(10, 'Helly Hansen Men\'s Juniper 3.0 H2Flow Insulated Jacket', '$314.98', 'A great all-around ski jacket, the Juniper 3.0 Jacket is packed with enough features to keep you warm, dry and comfortable.  \r\n', 'Juniper 3.0 H2Flow Insulated Jacket.jpg'),
(11, 'Nike SB Aerobill Pro 2 0 Cap - Black', '$26.25', 'The Nike SB AeroBill Pro 2.0 Hat tops off your look with stretchy, sweat-wicking fabric that helps you stay dry and comfortable on and off your board.\r\n', 'Nike SB Aerobill Pro 2 0 Cap.jpg'),
(12, 'adidas Originals Men\'s AC Cuff Knit Beanie', '$18.98', 'This roll-cuff beanie comes in fresh colours for the season. The Trefoil logo patch adds a subtle adidas accent. A top seam gives it a shaped fit.\r\n', 'Originals Men\'s AC Cuff Knit Beanie.jpg'),
(13, 'Nike Swoosh Wristbands', '$6.74', 'These Nike wristbands add a stylish accent to your game plan to keep you looking good through tough competitions. High cotton content is super absorbent and comfortable next to your skin.\r\n', 'Nike Swoosh Wristbands.jpeg'),
(14, 'Under Armour Women\'s Mini Heather Headbands 6 Packs', '$17.99', 'Soft, stretchy mini elastic headbands with front & center UA logos\r\n', ' Mini Heather Headbands 6 Packs.jpg'),
(15, 'adidas Women\'s Canyon Fold Beanie - Grey\r\n', '$34.99', 'Bundle up on a cold day with this warm beanie. It has a chunky cable pattern knit from soft yarn with a transitional color pattern.\r\n', 'Canyon Fold Beanie - Grey.jpg'),
(16, 'Nike Men\'s Brasilia Duffel Bag', '$31.50', 'The Nike Brasilia Training Duffel Bag (Medium) Features A Durable Design And A Spacious Main Compartment Built For The Daily Grind. Its Padded Shoulder Strap Offers Comfortable Carrying, While A Mesh Exterior Pocket Provides Convenient Storage.', 'Nike Men\'s Brasilia Duffel Bag.jpg'),
(17, 'adidas Defender Duffel - Black/Gold', '$31.49', 'Just right for an away game or a trip to the gym, this small training bag is made of sturdy ripstop that stands up to wear and tear. The main compartment stands tall for easy packing. Zip pockets on either end keep shoes or wet clothes separate.', 'adidas Defender Duffel - Black/Gold.jpeg'),
(18, 'Nike Women\'s Gym Club Bag - White', '$31.50', 'Women’s Nike Gym Club Training Duffel Bag keeps all of your gear dry and organized to and from the gym with durable, weathered material and a zippered main compartment.\r\n', 'gym-club-bag.jpg'),
(19, 'adidas Originals Essentials Crossbody Bag - Red', '$25.97', 'This durable bag is built to last and easy to take along. The versatile design easily adjusts to wear across the body or around the waist. Two separate zip pockets keep everything within easy reach.\r\n', 'Originals Essentials Crossbody Bag.jpg'),
(20, 'Nike Men\'s Hoops Elite Pro Backpack', '$71.25', 'Nike Hoops Elite Pro Basketball Backpack Features Multiple Small-Item Pockets And A Separate, Ventilated Compartment For Your Shoes. Its Shoulder Straps Feature Pro Adapt Technology For Comfortable Carrying To And From The Gym.', 'Nike Men\'s Hoops Elite Pro Backpack.jpg'),
(21, 'adidas Men\'s Tiro 19 Tape Training Pants', '$74.99', 'Stay cool no matter how hard you train. These football track pants battle the heat with breathable, quick-drying fabric. Cut for movement, they have a slim fit and stretchy ribbed details on the lower legs to promote clean footwork. Ankle zips allow you to pull them on or off over boots.\r\n', 'Tiro 19 Tape Training Pants.jpg'),
(22, 'adidas Women\'s Sportswear Originals Superstar Track Pants', '$74.99', 'You can’t go wrong with a classic. Rooted in adidas heritage with a 3-Stripes detail, these track pants have been a street-fashion staple since the ’70s. A slim, fashionable fit stays true to a timeless look.\r\n', 'Originals Superstar Track Pants.jpg'),
(23, 'Nike Dry Men\'s Fleece Pants', '$51.00', 'The Nike Dri-FIT Pants help keep you warm and comfortable before, during and after cool-weather workouts. Soft fleece holds in the heat, and sweat-wicking technology helps keep you dry.\r\n', 'Nike Dry Men\'s Fleece Pants.jpg'),
(24, 'adidas Men\'s Originals 3-Stripe Pants\r\n', '$69.99', 'Launched in 1983, adicolor represents creativity and self-expression. These pants celebrate 3-stripes style with a simple look and a slim, tapered fit. They’re made of fleece for a plush, cozy feel.\r\n', 'Originals 3-Stripe Pants.jpeg'),
(25, 'Under Armour Women\'s Woven Branded Pants', '$59.99', 'Under Armour Women’s Woven Branded Pants feature UA Storm technology which repels water without sacrificing breathability. It comes with 4-way stretch construction which moves better in every direction.\r\n', 'Woven Branded Pants.jpeg'),
(26, 'adidas x Star Wars Men\'s Ultraboost 19 Running Shoes - Grey', '$250.00', 'Inspired by Star Wars™, built for comfort and performance. The adidas x Star Wars Men’s Ultraboost 19 Running Shoes have a seamless knit upper with a second-skin fit. Built-in areas of stretch and support allow the foot to move naturally. The responsive midsole packs in more Boost cushioning without adding weight for an unrivalled Boost feeling.', 'adidas x Star Wars Grey.jpg'),
(27, 'adidas Men\'s Ultra Boost S&L Running Shoes', '$249.99', 'Running style for the sneakerhead. The adidas Men’s Ulta Boost S&L Running Shoes reimagine the adidas Ultraboost with a premium leather upper. They’re set on a layer of blacked-out Boost, giving you an energised feel on the move.', 'adidas Men\'s Ultra Boost S&L Running Shoes.jpg'),
(28, 'Nike Women\'s TR 9 Training Shoes - Black/White', '$74.99', 'The Nike Women’s TR 9 Training Shoe is light, stable and features deep, comfortable footbed for superior impact absorption and energy return throughout your entire workout.', 'nike-tr9.jpg\r\n'),
(29, 'Reebok Women\'s Freestyle Motion Low Training Shoes', '$99.99', 'Since its introduction in 1982, the Freestyle has set the standard for women’s fitness footwear. This modernised version is updated for contemporary studio classes. A synthetic and textile upper provides a sock-like fit. A pivot point on the rubber outsole allows you to move freely in low-impact studio workouts.', 'Freestyle Motion Low Training Shoes.jpeg'),
(30, 'Nike Women\'s Free Metcon 2 Training Shoes - Green/Black', '$119.99', 'The Nike Women’s Free Metcon 2 Training Shoe combines the lightweight flexibility of Nike Free shoes with the responsive cushioning of the Metcons—making it an ideal training shoe for even your most ambitious fitness goals.', 'Free metcon.jpg'),
(31, 'Under Armour Pure Stretch Hipster Underwear - 3 Pack - Blue', '$29.99', 'Panty lines be gone! The Under Armour Women’s PS Hipster 3-Pack will make sure of that, while also keeping you comfortable and dry with its moisture-wicking, fast-dry material. Laser cut edges add comfort and a sleek design. Includes 3 pairs.\r\n', 'Stretch Hipster Underwear.jpg'),
(32, 'Under Armour Men\'s Tech 9\" Boxerjock - 2 Pack', '$44.99', 'We took our sweat-wicking, keeps-you-cool technology and turned it into the best underwear in the game. It feels cool, stays put, and provides a zero-distraction fit that’s snug, but not tight.\r\n', 'Tech 9 Boxerjock.jpg'),
(33, 'adidas Sport Performance CLIMALITE® Men\'s Boxer Brief 2 - Pack', '$38.00', 'adidas CLIMALITE® Sport Performance underwear is a lightweight, ultra soft fabric that keeps you cool and dry for everyday use, working out and sports.\r\n', 'Men\'s Boxer Brief.jpg'),
(34, 'Under Armour Men\'s Charged Cotton 6\" - 3 Pack - Black', '$49.99', 'The UA Men’s Charged Cotton 6\" are made from Charged Cotton® fabric that has the comfort of cotton, but dries much faster.\r\n', 'Charged Cotton 6.jpeg'),
(35, 'Under Armour Women\'s Pure Stretch Sheers Underwear', '$6.88', 'Say goodbye to panty lines with the Under Armour Women’s Pure Stretch Sheers Bikini. Laser cut edges give the womens underwear a perfectly smooth fit and allows them to disappear under leggings and yoga pants.\r\n', 'Stretch Sheers Underwear.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_linking_type`
--

CREATE TABLE `tbl_product_linking_type` (
  `product_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_linking_type`
--

INSERT INTO `tbl_product_linking_type` (`product_type_id`, `product_id`, `type_id`) VALUES
(1, 1, 7),
(2, 2, 7),
(3, 3, 7),
(4, 4, 7),
(5, 5, 7),
(6, 6, 4),
(7, 7, 4),
(8, 8, 4),
(9, 9, 4),
(10, 10, 4),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 2),
(27, 27, 2),
(28, 28, 2),
(29, 29, 2),
(30, 30, 2),
(31, 31, 6),
(32, 32, 6),
(33, 33, 6),
(34, 34, 6),
(35, 35, 6),
(36, 44, 2),
(37, 45, 2),
(38, 46, 3),
(39, 47, 2),
(40, 48, 3),
(41, 49, 2),
(42, 50, 2),
(43, 51, 1),
(44, 52, 2),
(45, 53, 3),
(46, 54, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_type`
--

CREATE TABLE `tbl_product_type` (
  `type_id` int(11) NOT NULL,
  `product_type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_type`
--

INSERT INTO `tbl_product_type` (`type_id`, `product_type_name`) VALUES
(1, 'bag'),
(2, 'shoe'),
(3, 'accessories'),
(4, 'jacket'),
(5, 'pant'),
(6, 'underwear'),
(7, 'top');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_pass` varchar(20) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_pass`, `user_fname`, `user_email`) VALUES
(1, 'lanle98', '123', 'lan', ''),
(2, 'tienle', '123', 'Tien', 'tienle@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `tbl_gender`
--
ALTER TABLE `tbl_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Chỉ mục cho bảng `tbl_linking_brand`
--
ALTER TABLE `tbl_linking_brand`
  ADD PRIMARY KEY (`product_brand_id`);

--
-- Chỉ mục cho bảng `tbl_linking_color`
--
ALTER TABLE `tbl_linking_color`
  ADD PRIMARY KEY (`product_color_id`);

--
-- Chỉ mục cho bảng `tbl_linking_gender`
--
ALTER TABLE `tbl_linking_gender`
  ADD PRIMARY KEY (`product_gender`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product_linking_type`
--
ALTER TABLE `tbl_product_linking_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Chỉ mục cho bảng `tbl_product_type`
--
ALTER TABLE `tbl_product_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_gender`
--
ALTER TABLE `tbl_gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_linking_brand`
--
ALTER TABLE `tbl_linking_brand`
  MODIFY `product_brand_id` mediumint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_linking_color`
--
ALTER TABLE `tbl_linking_color`
  MODIFY `product_color_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `tbl_linking_gender`
--
ALTER TABLE `tbl_linking_gender`
  MODIFY `product_gender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `tbl_product_linking_type`
--
ALTER TABLE `tbl_product_linking_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tbl_product_type`
--
ALTER TABLE `tbl_product_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
