-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2020 at 12:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(38, '192.168.64.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Live plants', 'this is a hydrponic live plantsthis is a hydrponic live plantsthis is a hydrponic live plantsthis is a hydrponic live plantsthis is a hydrponic live plantsthis is a hydrponic live plantsthis is a hydrponic live plantsthis is a hydrponic live plants'),
(2, 'tools', 'tools categotytools categotytools categotytools categotytools categotytools categotytools categotytools categotytools categoty'),
(3, 'other', 'check for otherscheck for otherscheck for otherscheck for otherscheck for otherscheck for otherscheck for otherscheck for otherscheck for others');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'test ', 'email@gmail.com', '1234', 'us', 'mobile', '1234567891', '1500 rd rd ', '', '192.168.64.1'),
(2, 'meg', 'mg@gmail.com', '12345', 'us', 'mobile', '1234567891', '1500 rd rd ', 'product_img2.jpeg', '192.168.64.1'),
(3, 'test girl', 'girl@gmail.com', 'girl', 'us', 'mobile', '1234567891', '1500 rd rd ', 'girl.png', '192.168.64.1'),
(4, 'test boy', 'boy@gmail.com', '12345', 'us', 'mobile', '1234567891', '1500 hillcrest rd', 'boy.jpeg', '192.168.64.1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `order_date`, `order_status`) VALUES
(3, 3, 25, 626462090, 1, '2020-11-23', 'pending '),
(4, 3, 181, 325554980, 1, '2020-11-23', 'pending '),
(5, 4, 15, 238772499, 1, '2020-11-23', 'pending '),
(6, 4, 50, 238772499, 1, '2020-11-23', 'pending '),
(7, 4, 50, 1387245625, 1, '2020-11-23', 'pending ');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` varchar(10) NOT NULL,
  `cat_id` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text CHARACTER SET utf8mb4 NOT NULL,
  `product_img1` text CHARACTER SET utf8mb4 NOT NULL,
  `product_img2` text CHARACTER SET utf8mb4 NOT NULL,
  `product_img3` text CHARACTER SET utf8mb4 NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text CHARACTER SET utf8mb4 NOT NULL,
  `product_desc` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(27, '5', '1', '2020-11-23 03:10:38', 'AeroGarden 45 Watt Grow Light Panel', 'AeroGarden 45 Watt Grow Light Panel.jpeg', 'AeroGarden Harvest Elite 360 Multiple Colors.jpeg', 'Alena Outdoor Light Weight Concrete Chalice Garden.jpeg', 181, 'plants', 'Product Highlights\r\nFor all stages of plant growth: seed, flowering, and harvest\r\n30,000 hour rating saves money on energy\r\nStand and hanging kit included\r\nRotates 360-degrees\r\nCompatible with all grow mediums\r\nDimensions: 22L x 9W x 3.5H in.'),
(28, '5', '1', '2020-11-23 03:12:15', 'AeroGarden Harvest Elite 360 Multiple Colors', 'AeroGarden Harvest Elite 360 Multiple Colors.jpeg', '', '', 89, 'plants', 'Product Highlights\r\nAn effortless way to grow fresh veggies and herbs in your home\r\nAutomatically turns energy efficient LED grow lights on and off\r\nReminds you when to add water and plant food\r\nNo soil, no mess: Soil-free, non-GMO Seed Pods\r\nChoose from available color options\r\nIncludes LED grow light, 6 herbs, and Miracle-Gro plant food\r\nDimensions: 9 diam. x 17H in.'),
(29, '5', '1', '2020-11-23 03:14:15', 'Alena Outdoor  Concrete Chalice Garden', 'Alena Outdoor Light Weight Concrete Chalice Garden.jpeg', '', '', 210, 'plants', 'Product Highlights\r\nFeature-Benefit:\r\n\r\nELEGANT STYLE - Black lightweight concrete gives this planter a high-end, faux-stone appearance. This piece boasts a Roman design with botanical accents and a square base.\r\n\r\nMULTI-PURPOSE - This planter can be used for flowers, herbs, succulents, and vegetables.\r\n\r\nFUNCTIONAL - This selection is outfitted with a drainage hole and stopper for optimal growing conditions.\r\n\r\nDURABLE - This piece is weather and water-resistant, making it perfect for homes of any climate. It is suitable for both indoor and outdoor use.\r\n\r\nNO ASSEMBLY REQUIRED - Simply remove this planter from its packaging an'),
(30, '2', '3', '2020-11-23 03:22:52', 'Bloem Terra Pot Planter 8 Terra Cotta.jpeg', 'Bloem Terra Pot Planter 8 Terra Cotta.jpeg', '', '', 6, 'pots', ''),
(31, '1', '1', '2020-11-23 03:29:35', 'AeroGarden 45 Watt Grow Light Panel test', 'AeroGarden 45 Watt Grow Light Panel.jpeg', '', '', 10, 'plants', 'edfgvhbjnm,'),
(32, '1', '1', '2020-11-23 03:31:02', 'Brussel Fringe Flower Bonsai  Medium', 'Brussel Fringe Flower Bonsai  Medium.jpeg', '', '', 181, 'plants', 'wsaferghjk'),
(33, '1', '1', '2020-11-23 03:32:13', 'Brussel Fukien Tea Bonsai Medium.jpeg', 'Brussel Fukien Tea Bonsai Medium.jpeg', 'Brussel Fringe Flower Bonsai  Medium.jpeg', '', 50, 'plants', 'Product Highlights\r\nIn May, the Fringe Flower explodes with vivid blooms\r\nDeep purple foliage'),
(34, '1', '1', '2020-11-23 03:33:52', 'Costa Farms Live Indoor 2in Assorted Succulents 15Pack', 'Costa Farms Live Indoor 2in Assorted Succulents 15Pack.jpeg', 'Costa Farms Live Indoor 15in Poinsettia.png', 'Costa Farms Live Indoor 2in Assorted Succulents 15Pack.jpeg', 15, 'plants', 'Product Highlights\r\nEASY CARE! Water when the soil is dry. \r\nLOVES INDOOR LIGHT! Place near a sunny window. \r\nPLANT HEIGHT at shipping is 2.5 inches tall – Measured from the bottom of the pot \r\nPOT SIZE is 2 inches in diameter and 1.5 inches in height \r\nLIVING HOME DECOR! Adds life and design to your home or office. \r\nNASA studies show having plants in your home improves your mood, sparks creativity and reduces stress. \r\nWe’re unable to ship this item to: AK, AZ, CA, GU, HI'),
(35, '1', '1', '2020-11-23 03:36:04', 'Costa Farms Live Indoor 15in Poinsettia.png', 'Costa Farms Live Indoor 15in Poinsettia.png', '', '', 50, 'plants', 'Product Highlights\r\nEASY CARE! Water when the soil is dry. \r\nLOVES INDOOR LIGHT! Place near a sunny window. \r\nPLANT HEIGHT at shipping is 2.5 inches tall – Measured from the bottom of the pot \r\nPOT SIZE is 2 inches in diameter and 1.5 inches in height \r\nLIVING HOME DECOR! Adds life and design to your home or office. \r\nNASA studies show having plants in your home improves your mood, sparks creativity and reduces stress. \r\nWe’re unable to ship this item to: AK, AZ, CA, GU, HI'),
(36, '4', '3', '2020-11-23 03:37:43', 'Daconil Liquid Fungal Disease Concentrate 16 oz', 'Daconil Liquid Fungal Disease Concentrate 16 oz.jpeg', '', '', 25, 'chemicals', 'Product Highlights\r\nBroad spectrum fungicide for use in gardens\r\nSoft on beneficial insects\r\nWell tolerated on a wide range of plants'),
(37, '5', '1', '2020-11-23 03:39:32', 'Ecoo Grower IGS05 Seed Starting System 8 Indoor Garden', 'Ecoo Grower IGS05 Seed Starting System 8 Indoor Garden.jpeg', '', '', 90, 'plants', 'Product Highlights\r\nGrow herbs and vegetables year-round\r\nIn-home garden system will allow you to create gourmet meals from plant to plate\r\nAutomatically turns energy-efficient LED grow lights on and off\r\nReminds you when to add water and plant food\r\nSoil-free, no mess'),
(38, '3', '2', '2020-11-23 03:41:42', 'Fiskars Designer Stainless Steel Pruner and Snip Set.jpeg', 'Fiskars Designer Stainless Steel Pruner and Snip Set.jpeg', '', '', 13, 'tools', 'Fiskars Designer Stainless Steel Pruner and Snip Set\r\n'),
(39, '3', '2', '2020-11-23 03:42:57', 'Fiskars Steel Garden Tool Set 3Piece.jpeg', 'Fiskars Steel Garden Tool Set 3Piece.jpeg', 'Fiskars Designer Stainless Steel Pruner and Snip Set.jpeg', 'Mid Century Modern Plant Stand 10inch.jpeg', 15, 'tools', ''),
(40, '1', '1', '2020-11-23 03:44:46', 'Home Botanicals Rosette Succulent Collection of 20', 'Home Botanicals Rosette Succulent Collection of 20.jpeg', 'Costa Farms Live Indoor 2in Assorted Succulents 15Pack.jpeg', 'Costa Farms Live Indoor 15in Poinsettia.png', 25, 'plants', 'Product Highlights\r\nEach succulent in the Rosette Collection is hand picked. Plants may vary from pictures shown as succulents are selected based on season, size, health, and readiness. Succulents come in 2 inch square pots fully rooted in soil. Plant measurement will vary as different species grow in different ways: for example, some grow wider, shorter, taller, trailing etc.\r\nAll succulent packs are carefully packed in Shop Succulents retail packaging making these easy to gift. All Shop Succulents plants come with helpful care instructions in every pack.\r\nA Shop Succulents plant reference guide (QR Code) is included in every Shop Succulents order. Succulents are drought tolerant plants, needing little water to thrive.'),
(41, '2', '3', '2020-11-23 03:46:35', 'Mid Century Modern Plant Stand 10inch.jpeg', 'Mid Century Modern Plant Stand 10inch.jpeg', '', '', 50, 'pots', 'Elevate plants with the Sorbus Plant Stand. Inspired by mid-century style, this modern plant stand is the perfect centerpiece for any room. It features slim legs with an elevated base for your favorite potted beauties. Simply add any pot holder up to 10” and pair with spider plants, snake plants, fox ferns, and more to bring greenery into your space. The height of the tripod style legs gives houseplants a classy perch off the floor as a charming focal point. For versatility, the elevated base can be flipped in either direction to raise or lower plants. Use alone or group with additional planter stands to showcase your entire plant collection.\r\n10\" Mid Century Modern Plant Stand.\r\nIdeal for pots sized 8\" to 10\" in diameter.\r\nMinimal assembly required. Instructions and hardware INCLUDED.\r\nVersatile to be flipped in either direction to raise or lower plants.\r\nMade of steel with black powder coated finish.\r\nPot/Plants NOT INCLUDED.\r\nPrefers indoor or sheltered outdoor setting.\r\nMeasures approximately 10\" D x 16” H.'),
(42, '4', '3', '2020-11-23 03:47:36', 'Milorganite Slow-Release Nitrogen Long Lasting All Purpose Fertilizer', 'Milorganite Slow-Release Nitrogen Long Lasting All Purpose Fertilizer.jpeg', '', '', 32, 'che', ''),
(43, '4', '3', '2020-11-23 03:49:43', 'Miracle Gro Moisture Control Potting Mix', 'Miracle Gro Moisture Control Potting Mix.png', 'Milorganite Slow-Release Nitrogen Long Lasting All Purpose Fertilizer.jpeg', '', 33, 'chemicals', 'We aim to show you accurate product information. Manufacturers, suppliers and others provide what you see here, and we have not verified it. See our disclaimer\r\nBeautify potted flowers with Miracle-Gro® Moisture Control® Potting Mix. Our specially formulated mix will feed plants for up to 6 months. It also takes the guesswork out of watering and protects against over- and under- watering. It absorbs up to 33% more water than basic potting soil**, so your plants can remain hydrated. Miracle Gro® Moisture Control® Potting Mix has been certified as a premium potting soil by the Mulch and Soil Council. For even more spectacular results, consider starting a regular feeding program with Miracle-Gro® plant food 30 days after planting. Provide the right start for the success of your indoor and outdoor container plants with Miracle-Gro® which Grows Plants Twice as Big!®* Note: The number of containers each bag fills is dependent on the size of the container and the size of the root ball.*vs. unfed plants**vs. potting soil that does not contain sphagnum peat moss, coir, and wetting agent. \r\nProtects against over- and under-watering\r\nFeeds up to 6 months\r\nGrows Plants Twice as Big!* *vs. unfed plants\r\nAbsorbs up to 33% more water than basic potting soil* *vs. potting soil that does not contain sphagnum peat moss, coir and wetting agent\r\nHelps beautify potted flowers, indoors and out'),
(44, '4', '3', '2020-11-23 03:52:32', 'Miracle Gro Water Soluble All Purpose Plant Food.', 'Miracle Gro Water Soluble All Purpose Plant Food.jpeg', 'Milorganite Slow-Release Nitrogen Long Lasting All Purpose Fertilizer.jpeg', 'Miracle Gro Moisture Control Potting Mix.png', 15, 'chemicals', 'Protects against over- and under-watering\r\nFeeds up to 6 months\r\nGrows Plants Twice as Big!* *vs. unfed plants\r\nAbsorbs up to 33% more water than basic potting soil* *vs. potting soil that does not contain sphagnum peat moss, coir and wetting agent\r\nHelps beautify potted flowers, indoors and out');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Plants', 'We have wide variety of plants.'),
(2, 'pots', ''),
(3, 'garden tools', 'Buy your gardening tools with us !'),
(4, 'chemicals', 'Feed your plants to grow better.'),
(5, 'hydroponics', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide-1', 'slide-1.jpg'),
(2, 'Slide 2', 'slide-2.jpeg'),
(3, 'Slide-3', 'slide-3.jpg'),
(4, 'Slide-4', 'slide-4.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
