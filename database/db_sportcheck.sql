-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 27, 2020 at 10:16 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportcheck`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accessories`
--

CREATE TABLE `tbl_accessories` (
  `accessories_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `review` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_accessories`
--

INSERT INTO `tbl_accessories` (`accessories_id`, `name`, `brand`, `price`, `color`, `gender`, `description`, `review`, `image`) VALUES
(1, 'Nike SB Aerobill Pro 2 0 Cap - Black', 'Nike', '$26.25', 'BLACK/WHITE', 'Unisex', 'The Nike SB AeroBill Pro 2.0 Hat tops off your look with stretchy, sweat-wicking fabric that helps you stay dry and comfortable on and off your board.\r\n\r\n', '5/5', 'Nike SB Aerobill Pro 2 0 Cap.jpg'),
(2, 'adidas Originals Men\'s AC Cuff Knit Beanie', 'Adidas', '$18.98', 'MAROON', 'Unisex', 'This roll-cuff beanie comes in fresh colours for the season. The Trefoil logo patch adds a subtle adidas accent. A top seam gives it a shaped fit.\r\n\r\n', '4.5/5', 'Originals Men\'s AC Cuff Knit Beanie.jpg'),
(3, 'Nike Swoosh Wristbands', 'Nike', '$6.74', ' BLACK/WHITE', 'Unisex', 'These Nike wristbands add a stylish accent to your game plan to keep you looking good through tough competitions. High cotton content is super absorbent and comfortable next to your skin.\r\n\r\n', '4.9/5', 'Nike Swoosh Wristbands.jpeg'),
(4, 'Under Armour Women\'s Mini Heather Headbands 6 Packs', 'Under Armour', '$17.99', 'PINK', 'Women', 'Soft, stretchy mini elastic headbands with front & center UA logos\r\n\r\n', '5/5', ' Mini Heather Headbands 6 Packs.jpg'),
(5, 'adidas Women\'s Canyon Fold Beanie - Grey\r\n', 'Adidas', '$34.99', 'GREY/CLEAR', 'Women', 'Bundle up on a cold day with this warm beanie. It has a chunky cable pattern knit from soft yarn with a transitional color pattern.\r\n\r\n', '4.8/5', 'Canyon Fold Beanie - Grey.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bag`
--

CREATE TABLE `tbl_bag` (
  `bag_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `color` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `review` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bag`
--

INSERT INTO `tbl_bag` (`bag_id`, `name`, `brand`, `price`, `color`, `gender`, `description`, `review`, `image`) VALUES
(1, 'Nike Men\'s Brasilia Duffel Bag', 'Nike', '$31.50', 'FLINT GREY/BLACK/WHITE', 'Men', 'The Nike Brasilia Training Duffel Bag (Medium) Features A Durable Design And A Spacious Main Compartment Built For The Daily Grind. Its Padded Shoulder Strap Offers Comfortable Carrying, While A Mesh Exterior Pocket Provides Convenient Storage.', '5/5', 'Nike Men\'s Brasilia Duffel Bag.jpg'),
(2, 'adidas Defender Duffel - Black/Gold', 'Adidas', '$31.49', 'BLACK/GOLD', 'Unisex', 'Just right for an away game or a trip to the gym, this small training bag is made of sturdy ripstop that stands up to wear and tear. The main compartment stands tall for easy packing. Zip pockets on either end keep shoes or wet clothes separate.', '4.6/5', 'adidas Defender Duffel - Black/Gold.jpeg'),
(3, 'Nike Women\'s Gym Club Bag - White', 'Nike', '$31.50', 'PHANTOM/WHITE', 'Women', 'Women’s Nike Gym Club Training Duffel Bag keeps all of your gear dry and organized to and from the gym with durable, weathered material and a zippered main compartment.\r\n\r\n', '5/5', 'gym-club-bag.jpg'),
(4, 'adidas Originals Essentials Crossbody Bag - Red', 'Adidas', '$25.97', 'SCARLET', 'Unisex', 'This durable bag is built to last and easy to take along. The versatile design easily adjusts to wear across the body or around the waist. Two separate zip pockets keep everything within easy reach.\r\n\r\n', '4.5/5', 'Originals Essentials Crossbody Bag.jpg'),
(5, 'Nike Men\'s Hoops Elite Pro Backpack', 'Nike', '$71.25', 'BLACK/METALLIC GOLD/WHITE', 'Men', 'Nike Hoops Elite Pro Basketball Backpack Features Multiple Small-Item Pockets And A Separate, Ventilated Compartment For Your Shoes. Its Shoulder Straps Feature Pro Adapt Technology For Comfortable Carrying To And From The Gym.', '3.8/5', 'Nike Men\'s Hoops Elite Pro Backpack.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jacket`
--

CREATE TABLE `tbl_jacket` (
  `jacket_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `color` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `review` varchar(20) NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_jacket`
--

INSERT INTO `tbl_jacket` (`jacket_id`, `name`, `brand`, `price`, `color`, `gender`, `description`, `review`, `images`) VALUES
(1, 'Puma Men\'s Classics T7 Padded Jacket', 'Puma', '$90.97', 'HIGH RISK RED', 'Men', 'The T7 became a legend on its own, making a name for itself in street style culture and sportswear alike.', '4.9/5', 'T7 Padded Jacket.jpg'),
(2, 'Nike Sportswear Men\'s Windrunner Jacket', 'Nike', '$89.97', 'UNIVERSITY RED/TEAM ORANGE/BLACK', 'Men', 'More than a direct descendant, the Nike Sportswear Windrunner Jacket is made to look and feel just like the original Windrunner from 1978. It’s made with a breathable mesh lining, ribbed cuffs and the iconic Chevron at the chest.', '3.7/5', 'Nike Sportswear Men\'s Windrunner Jacket.jpeg'),
(3, 'Nike Sportswear Women\'s Windrunner Jacket', 'Nike', '$71.97', 'SPIRIT TEAL/TEAL TINT', 'Women', 'A legendary look gets a playful makeover with Women’s Nike Sportswear Windrunner Jacket. Crafted with the iconic chevron on the chest, it features updated color-blocking and a paneled hood for added warmth and coverage.', '3.7/5', 'Windrunner Jacket.jpg'),
(4, 'Helly Hansen Women\'s Aurora 2.0 Ullr 3L Shell Life Pocket Jacket', 'Helly Hansen', '$489.98', 'SCUBA BLUE\r\n', 'Women', 'A soft but durable stretch 3 layer Helly Tech® Professional backcountry freeride jacket with a replaced fit for comfort and weather protection.', '5/5', 'Aurora 2.0 Ullr 3L Shell Life Pocket Jacket.jpg'),
(5, 'Helly Hansen Men\'s Juniper 3.0 H2Flow Insulated Jacket', 'Helly Hansen', '$314.98', ' FLAG RED', 'Men', 'A great all-around ski jacket, the Juniper 3.0 Jacket is packed with enough features to keep you warm, dry and comfortable.  \r\n\r\n', '4.8/5', 'Juniper 3.0 H2Flow Insulated Jacket.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pant`
--

CREATE TABLE `tbl_pant` (
  `pant_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `review` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pant`
--

INSERT INTO `tbl_pant` (`pant_id`, `name`, `brand`, `price`, `color`, `gender`, `description`, `review`, `image`) VALUES
(1, 'adidas Men\'s Tiro 19 Tape Training Pants', 'Adidas', '$74.99', 'GRAY', 'Men', 'Stay cool no matter how hard you train. These football track pants battle the heat with breathable, quick-drying fabric. Cut for movement, they have a slim fit and stretchy ribbed details on the lower legs to promote clean footwork. Ankle zips allow you to pull them on or off over boots.\r\n\r\n', '4.7/5', 'Tiro 19 Tape Training Pants.jpg'),
(2, 'adidas Women\'s Sportswear Originals Superstar Track Pants', 'Adidas', '$74.99', 'LUSH RED /WHITE', 'Women', 'You can’t go wrong with a classic. Rooted in adidas heritage with a 3-Stripes detail, these track pants have been a street-fashion staple since the ’70s. A slim, fashionable fit stays true to a timeless look.\r\n\r\n', '4.6/5', 'Originals Superstar Track Pants.jpg'),
(3, 'Nike Dry Men\'s Fleece Pants', 'Nike', '$51.00', 'BLACK', 'Men', 'The Nike Dri-FIT Pants help keep you warm and comfortable before, during and after cool-weather workouts. Soft fleece holds in the heat, and sweat-wicking technology helps keep you dry.\r\n\r\n', '5/5', 'Nike Dry Men\'s Fleece Pants.jpg'),
(4, 'adidas Men\'s Originals 3-Stripe Pants\r\n', 'Adidas', '$69.99', ' BLACK/WHITE', 'Men', 'Launched in 1983, adicolor represents creativity and self-expression. These pants celebrate 3-stripes style with a simple look and a slim, tapered fit. They’re made of fleece for a plush, cozy feel.\r\n\r\n', '4.5/5', 'Originals 3-Stripe Pants.jpeg'),
(5, 'Under Armour Women\'s Woven Branded Pants', 'Under Armour', '$59.99', ' BLACK/WHITE', 'Women', 'Under Armour Women’s Woven Branded Pants feature UA Storm technology which repels water without sacrificing breathability. It comes with 4-way stretch construction which moves better in every direction.\r\n\r\n', '3.7/5', 'Woven Branded Pants.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shoe`
--

CREATE TABLE `tbl_shoe` (
  `shoe_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  `color` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `review` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shoe`
--

INSERT INTO `tbl_shoe` (`shoe_id`, `name`, `brand`, `price`, `color`, `gender`, `description`, `review`, `image`) VALUES
(1, 'adidas x Star Wars Men\'s Ultraboost 19 Running Shoes - Grey', 'Adidas', '$250.00', 'Grey', 'Men', 'Inspired by Star Wars™, built for comfort and performance. The adidas x Star Wars Men’s Ultraboost 19 Running Shoes have a seamless knit upper with a second-skin fit. Built-in areas of stretch and support allow the foot to move naturally. The responsive midsole packs in more Boost cushioning without adding weight for an unrivalled Boost feeling.', '4.9/5', 'adidas x Star Wars Grey.jpg'),
(2, 'adidas Men\'s Ultra Boost S&L Running Shoes', 'Adidas', '$249.99', 'BLACK/REDBLACK/RED', 'Men', 'Running style for the sneakerhead. The adidas Men’s Ulta Boost S&L Running Shoes reimagine the adidas Ultraboost with a premium leather upper. They’re set on a layer of blacked-out Boost, giving you an energised feel on the move.', '4.7/5', 'adidas Men\'s Ultra Boost S&L Running Shoes.jpg'),
(3, 'Nike Women\'s TR 9 Training Shoes - Black/White', 'Nike', '$74.99', 'Black/White', 'Women', 'The Nike Women’s TR 9 Training Shoe is light, stable and features deep, comfortable footbed for superior impact absorption and energy return throughout your entire workout.', '4.4/5', 'nike-tr9.jpg\r\n'),
(4, 'Reebok Women\'s Freestyle Motion Low Training Shoes', 'Reebok', '$99.99', 'BLACK/PINK/RED', 'Women', 'Since its introduction in 1982, the Freestyle has set the standard for women’s fitness footwear. This modernised version is updated for contemporary studio classes. A synthetic and textile upper provides a sock-like fit. A pivot point on the rubber outsole allows you to move freely in low-impact studio workouts.', '4.8/5', 'Freestyle Motion Low Training Shoes.jpeg'),
(5, 'Nike Women\'s Free Metcon 2 Training Shoes - Green/Black', 'Nike', '$119.99', 'LUMINOUS GREEN/BLACK/WHITE/ORANGE TRANCE', 'Women', 'The Nike Women’s Free Metcon 2 Training Shoe combines the lightweight flexibility of Nike Free shoes with the responsive cushioning of the Metcons—making it an ideal training shoe for even your most ambitious fitness goals.', '3.0/5', 'Free metcon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top`
--

CREATE TABLE `tbl_top` (
  `top_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `review` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_top`
--

INSERT INTO `tbl_top` (`top_id`, `name`, `brand`, `price`, `color`, `gender`, `description`, `review`, `image`) VALUES
(1, 'Nike Sportswear Women\'s Heritage 1/2 Zip Hoodie', 'Nike', '$60.00', 'DARK GREY/OCEAN CUBE', 'Women', 'The perfect mix of a hoodie and a 1/2-zip, the Nike Sportswear Heritage Top is made with soft knit fabric and chevron design lines for easygoing comfort and old-school style.\r\n\r\n', '4.5/5', 'Heritage Zip Hoodie.jpg'),
(2, 'Under Armour Women\'s HeatGear® Armour Racer Tank', 'Under Armour', '$29.99', 'BLACK', 'Women', 'HeatGear® Armour is our original performance baselayer—the layer you put on first and take off last. It’s tight to wick away sweat and quick-drying to keep you cool. No athlete can go without it.\r\n\r\n', '4.7/5', 'HeatGearArmour Racer Tank.jpg'),
(3, 'adidas Men\'s Badge of Sport Pullover French Terry Hoodie', 'Adidas', '$74.99', ' BLACK/WHITE', 'Men', 'Show your pride in the brand with the 3-Stripes. This hoodie features an adidas Badge of Sport front and centre. The sweatshirt is made of soft cotton-blend French terry fabric so you stay comfortable through an active day.\r\n\r\n', '4.7/5', 'Pullover French Terry Hoodie.jpeg'),
(4, 'Under Armour Women\'s Tech Twist V-Neck T Shirt', 'Under Armour', '$29.99', 'BLUE HAZE', 'Women', 'Under Armour Women’s Tech Twist V-neck T Shirt is made of UA Tech™ fabric which is quick-drying, ultra-soft & has a more natural feel. It features anti-odor technology that prevents the growth of odor-causing microbes.\r\n\r\n', '4.3/5', 'Tech Twist V-Neck T Shirt.jpg'),
(5, 'Under Armour Men\'s Tech 2.0 1/2 Zip Long Sleeve Shirt', 'Under Armour', '$49.99', 'MARTIAN RED/BETA RED', 'Men', 'UA Tech™ is our original go-to training gear: loose, light, and it keeps you cool. It’s that same great fabric, but this shirt has also been updated with a new, more streamlined fit and a shaped hem. It’s everything you need.\r\n\r\n', '4.6/5', 'Zip Long Sleeve Shirt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_underwear`
--

CREATE TABLE `tbl_underwear` (
  `underwear_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `color` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `review` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_underwear`
--

INSERT INTO `tbl_underwear` (`underwear_id`, `name`, `brand`, `price`, `color`, `gender`, `description`, `review`, `image`) VALUES
(1, 'Under Armour Pure Stretch Hipster Underwear - 3 Pack - Blue', 'Under Armour', '$29.99', 'BLUE HEIGHTS/GRAY', 'Women', 'Panty lines be gone! The Under Armour Women’s PS Hipster 3-Pack will make sure of that, while also keeping you comfortable and dry with its moisture-wicking, fast-dry material. Laser cut edges add comfort and a sleek design. Includes 3 pairs.\r\n\r\n', '3.8/5', 'Stretch Hipster Underwear.jpg'),
(2, 'Under Armour Men\'s Tech 9\" Boxerjock - 2 Pack', 'Under Armour', '$44.99', 'ACADEMY/MOD GRAY LIGHT HTHR', 'Men', 'We took our sweat-wicking, keeps-you-cool technology and turned it into the best underwear in the game. It feels cool, stays put, and provides a zero-distraction fit that’s snug, but not tight.\r\n\r\n', '5/5', 'Tech 9\" Boxerjock.jpg'),
(3, 'adidas Sport Performance CLIMALITE® Men\'s Boxer Brief 2 - Pack', 'Adidas', '$38.00', 'BLACK/REAL RED', 'Men', 'adidas CLIMALITE® Sport Performance underwear is a lightweight, ultra soft fabric that keeps you cool and dry for everyday use, working out and sports.\r\n\r\n', '3.8/5', 'Men\'s Boxer Brief.jpg'),
(4, 'Under Armour Men\'s Charged Cotton 6\" - 3 Pack - Black', 'Under Armour', '$49.99', 'BLACK', 'Men', 'The UA Men’s Charged Cotton 6\" are made from Charged Cotton® fabric that has the comfort of cotton, but dries much faster.\r\n\r\n', '4.3/5', 'Charged Cotton 6.jpeg'),
(5, 'Under Armour Women\'s Pure Stretch Sheers Underwear', 'Under Armour', '$6.88', '853 PERFECTION/BALLET PINK', 'Women', 'Say goodbye to panty lines with the Under Armour Women’s Pure Stretch Sheers Bikini. Laser cut edges give the womens underwear a perfectly smooth fit and allows them to disappear under leggings and yoga pants.\r\n\r\n', '4.3/5', 'Stretch Sheers Underwear.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accessories`
--
ALTER TABLE `tbl_accessories`
  ADD PRIMARY KEY (`accessories_id`);

--
-- Indexes for table `tbl_bag`
--
ALTER TABLE `tbl_bag`
  ADD PRIMARY KEY (`bag_id`);

--
-- Indexes for table `tbl_jacket`
--
ALTER TABLE `tbl_jacket`
  ADD PRIMARY KEY (`jacket_id`);

--
-- Indexes for table `tbl_pant`
--
ALTER TABLE `tbl_pant`
  ADD PRIMARY KEY (`pant_id`);

--
-- Indexes for table `tbl_shoe`
--
ALTER TABLE `tbl_shoe`
  ADD PRIMARY KEY (`shoe_id`);

--
-- Indexes for table `tbl_top`
--
ALTER TABLE `tbl_top`
  ADD PRIMARY KEY (`top_id`);

--
-- Indexes for table `tbl_underwear`
--
ALTER TABLE `tbl_underwear`
  ADD PRIMARY KEY (`underwear_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accessories`
--
ALTER TABLE `tbl_accessories`
  MODIFY `accessories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_bag`
--
ALTER TABLE `tbl_bag`
  MODIFY `bag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_jacket`
--
ALTER TABLE `tbl_jacket`
  MODIFY `jacket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pant`
--
ALTER TABLE `tbl_pant`
  MODIFY `pant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_shoe`
--
ALTER TABLE `tbl_shoe`
  MODIFY `shoe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_top`
--
ALTER TABLE `tbl_top`
  MODIFY `top_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_underwear`
--
ALTER TABLE `tbl_underwear`
  MODIFY `underwear_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
