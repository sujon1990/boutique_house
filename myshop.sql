-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2016 at 08:34 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'arifulislamnayem@gmail.com', 'nayem'),
(2, 'arif@gmail.com', 'arif');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'ACER'),
(4, 'ASUS'),
(5, 'TOSHIBA'),
(6, 'LENOVA'),
(7, 'SYMPHONY'),
(8, 'SAMSUNG'),
(9, 'WALTON'),
(12, 'PANASONIC');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(100) NOT NULL,
  `qty` varchar(110) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(48, '127.0.0.1', NULL),
(18, '127.0.0.1', NULL),
(27, '127.0.0.1', NULL),
(52, '127.0.0.1', '5'),
(34, '127.0.0.1', NULL),
(37, '127.0.0.1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Computers'),
(3, 'Mobiles'),
(4, 'Cameras'),
(5, 'Tablets'),
(6, 'Tvs'),
(13, 'Furniture'),
(12, 'Refrigerator');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_ip` varchar(256) DEFAULT NULL,
  `customer_name` text,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_pass` varchar(100) DEFAULT NULL,
  `customer_country` text,
  `customer_city` text,
  `customer_contact` varchar(256) DEFAULT NULL,
  `customer_address` text,
  `customer_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) DEFAULT NULL,
  `brand_id` int(10) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `product_title` text,
  `product_img1` varchar(100) DEFAULT NULL,
  `product_img2` varchar(100) DEFAULT NULL,
  `product_img3` varchar(100) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `product_desc` text,
  `status` text,
  `product_keywords` text,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `status`, `product_keywords`) VALUES
(52, 1, 1, '2016-07-18 15:44:13', 'HP 1000 1418 Core i3 3110M', 'hp_laptop_2a.png', 'hp_laptop_2b.png', 'hp_laptop_2c.png', 84000, '<p><em>&nbsp;</em></p>\r\n<table class="table no-border no-box-shad m-b-lg">\r\n<tbody>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Processor</em></td>\r\n<td class="text-small ta-wrap" width="74%">3rd Generation Intel Core i3 3110M&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>RAM</em></td>\r\n<td class="text-small ta-wrap" width="74%">4 GB&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>HDD</em></td>\r\n<td class="text-small ta-wrap" width="74%">500 GB&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Processor-Clock-Rate</em></td>\r\n<td class="text-small ta-wrap" width="74%">2.40 GHz&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Display-Size</em></td>\r\n<td class="text-small ta-wrap" width="74%">14 Inch&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Display-Type</em></td>\r\n<td class="text-small ta-wrap" width="74%">LED&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Graphics-Chipset</em></td>\r\n<td class="text-small ta-wrap" width="74%">Intel HD Griphices&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Webcam</em></td>\r\n<td class="text-small ta-wrap" width="74%">Yes&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Card-Reader</em></td>\r\n<td class="text-small ta-wrap" width="74%">Yes&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Appx-Battery-Time</em></td>\r\n<td class="text-small ta-wrap" width="74%">3 Hours&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Operating-System</em></td>\r\n<td class="text-small ta-wrap" width="74%">Free DOS&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class="text-small bg-light" width="25%"><em>Weight</em></td>\r\n<td class="text-small ta-wrap" width="74%">2.1 kg&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'on', 'HP 1000 1418 Core i3 3110M Laptop'),
(4, 1, 2, '2016-07-13 17:40:08', 'DELL  N5001', '11b.jpg', '11c.jpg', '11a.jpg', 50000, '<p><em>Laptops and 2-in-1s featuring</em> the<strong> latest processors</strong>, vibrant displays and DVD drives</p>', 'on', 'Dell Laptops'),
(5, 1, 2, '2016-07-13 17:40:19', 'DELL  N5110', '11a.jpg', '11b.jpg', '11c.jpg', 40000, '<p><em>Laptops and 2-in-1s featuring</em> the<strong> latest processors</strong>, vibrant displays and DVD drives</p>', 'on', 'Dell Laptops'),
(6, 1, 3, '2016-07-13 16:58:02', 'ACER DG100', '12a.jpg', '12b.jpg', '12c.jpg', 30000, '<div class="pu-border-top">\r\n<ul class="pu-usp">\r\n<li><span class="text">NVIDIA GeForce 920M</span></li>\r\n<li><span class="text">8 GB DDR3L SDRAM</span></li>\r\n<li><span class="text">Matrix TFT Display</span></li>\r\n<li><span class="text">Windows 10 OS</span></li>\r\n</ul>\r\n</div>', 'on', 'Acer Laptops'),
(7, 1, 4, '2016-07-13 16:59:18', 'ASUS GB200', '14a.jpg', '14b.jpg', '14c.jpg', 70000, '<div class="pu-border-top">\r\n<ul class="pu-usp">\r\n<li><span class="text">Core i3 (4th Gen)</span></li>\r\n<li><span class="text">4 GB RAM</span></li>\r\n<li><span class="text">1 TB HDD</span></li>\r\n<li><span class="text">Windows 10</span></li>\r\n</ul>\r\n</div>', 'on', 'Asus Laptops'),
(8, 1, 6, '2016-07-13 17:00:36', 'LENOVA ED1000', '16a.jpg', '16b.jpg', '16c.jpg', 80000, '<div class="pu-border-top">\r\n<ul class="pu-usp">\r\n<li><span class="text">Core i5 (5th Gen)</span></li>\r\n<li><span class="text">8 GB RAM</span></li>\r\n<li><span class="text">1 TB HDD</span></li>\r\n<li><span class="text">Free DOS</span></li>\r\n</ul>\r\n</div>', 'on', 'Lenova Laptops'),
(9, 1, 5, '2016-07-13 17:01:46', 'TOSHIBA WE85225', '15a.jpg', '15b.jpg', '15c.jpg', 100000, '<div class="pu-border-top">\r\n<ul class="pu-usp">\r\n<li><span class="text">APU Dual Core E1</span></li>\r\n<li><span class="text">2 GB RAM</span></li>\r\n<li><span class="text">500 GB HDD</span></li>\r\n<li><span class="text">Free DOS</span></li>\r\n</ul>\r\n</div>', 'on', 'Toshiba Laptops'),
(10, 3, 7, '2016-07-14 05:30:06', 'symphony v28', '17a.jpg', '17b.jpg', '17c.png', 4090, ' Speed:                              EDGE / 3G / Wi-Fi\n\n WALN:                           Wi-Fi 802.11 b/g/n, Hotspot.\n\n GPS:                                Yes, with A-GPS support.\n\n Bluetooth:                       Yes.\n\n USB:                                Micro USB, v 2.0 (Support Mass storage and USB modem).\n\n OTG:                               No.', 'on', 'symphony mobile'),
(11, 3, 7, '2016-07-14 05:36:31', 'symphony v80', '18a.jpg', '18b.jpg', '18c.jpg', 8000, '<p>Symphony has declared their first Android 5.0 Lollipop operating system handset of great specifications named<strong> Symphony Xplorer V80</strong>. The specifications are quite similar to the other medium specifications mobiles of Symphony, but there is some difference in these two in terms of operating system and price. The Xplorer V80 contains Android Lollipop 5.0 operating system, 8 MP + 2 MP Camera, 1.3 GHz Quad-Core Processor, 4.7 inches qHD IPS display, 1GB RAM, 8GB ROM and 2000 mAh high power battery. Almost all the specs are suitable for a medium specification Android Phone. People with an average budget will be the main group of customers for it.</p>', 'on', 'symphony mobile v80'),
(12, 3, 7, '2016-07-14 05:38:06', 'symphony p6', '19a.jpg', '19b.jpg', '19c.png', 11000, '<p>Symphony Xplorer P6 which is 3G enabled Smartphone. Its price in Bangladesh about 8990 BDT; OS: Android 5.0 Lollipop ; Display: 5.3 inches; CAMERA: 13 MP; GPS: Yes; WLAN: Yes; Bluetooth: Yes</p>', 'on', 'symphony mobile p6'),
(13, 2, 2, '2016-07-14 05:48:04', 'Dell AIO 3043 19.5 Inches Desktop PC', '20a.jpg', '20b.jpg', '20c.jpg', 60000, '<ul>\r\n<li>âœ” Brand: Dell</li>\r\n<li>âœ” Features: HD Desktops</li>\r\n<li>âœ” Graphics Solution: Intel</li>\r\n</ul>', 'on', 'dell desktop computer'),
(14, 2, 4, '2016-07-14 05:51:29', 'Asus M51AC-US016S ', '22a.jpg', '22b.jpg', '22c.jpg', 50000, '<ul class="items">\r\n<li class="item">Low-key design with lots of connectivity</li>\r\n<li class="item">Quality motherboard with room for upgrades</li>\r\n<li class="item">Well-rounded performance</li>\r\n<li class="item">Decent bundled peripherals</li>\r\n<li class="item">Good value</li>\r\n</ul>\r\n<div style="overflow: hidden; color: #000000; background-color: #ffffff; text-align: left; text-decoration: none;"><br /><br /></div>', 'on', 'asus desktop computer'),
(15, 2, 3, '2016-07-14 05:55:43', 'Acer Aspire M3400', '21a.jpg', '21b.jpg', '21c.jpg', 40000, '<p><span class="articleBody sharing-tools-top">Good<br /></span></p>', 'on', 'acer desktop computer'),
(16, 1, 8, '2016-07-14 06:01:43', 'Samsung NP530U4C-S05IN', 's_l_1.jpg', 's_l_2.jpg', 's_l_3.jpg', 80000, '<ul class="feat_list MT10">\r\n<li>Processor: Intel Core i5-3337U</li>\r\n<li>RAM: 6GB</li>\r\n<li>Inbuilt HDD: 1TB</li>\r\n<li>OS: Windows 8</li>\r\n</ul>', 'on', 'samsung laptop'),
(17, 4, 1, '2016-07-14 06:09:11', ' Parrot Travis Airborne Cargo Drone', 'hp_cam_1_a.png', 'hp_cam_1_b.png', 'hp_cam_1_c.png', 20000, '<p>Discover Parrot Airborne Cargo Drone, one of our second-generation Minidrones. Sturdy and shock resistant, this unique Drone can be instantly customized. Let your imagination run free! <br /> <br /> Build up your own flying robot <br /> <br /> Parrot Airborne Cargo Drone provides countless ways to express your creativity. It features compartments to hold small objects, a base to attach mini figures and even building blocks. You can easily change looks and create your own unique Minidrone. Get ready to explore your own creative world!</p>', 'on', 'Hp camera'),
(18, 4, 4, '2016-07-14 06:19:55', 'ASUS DSLR', 'asus_cam_1b.jpg', 'asus_cam_1a.jpg', 'asus_cam_1c.jpg', 90000, '<p>Good Condition.</p>', 'on', 'asus camera'),
(19, 4, 5, '2016-07-14 06:22:54', 'Toshiba HD Camcorder', 'toshiba_cam_1a.jpg', 'toshiba_cam_1b.jpg', 'toshiba_cam_1c.jpg', 80000, '<p>For a limited time, you can get this <a href="http://www.anrdoezrs.net/click-5628628-10872943?url=http%3A//www.groupon.com/deals/gg-toshiba-camileo-hd-camcorder">Toshiba Camileo H30 HD Camcorder</a> for only $129. This is $100 off the original price of $229!</p>', 'on', 'toshiba camera'),
(20, 4, 6, '2016-07-14 06:26:22', 'lenovo v35 mini Car dvrs Full HD 1080P 2.4"LCD camera G-Sensor H.264 Night Vision car camera Video Recorder', 'lenovo_cam_1a.jpg', 'lenovo_cam_1b.jpg', 'lenovo_cam_1c.jpg', 70000, '<ul class="product-property-list util-clearfix">\r\n<li id="product-prop-100004182" class="property-item" data-attr="200009287" data-title="Novatek"><span class="propery-title">Chipset Manufacturer:</span> <span class="propery-des" title="Novatek">Novatek</span></li>\r\n<li id="product-prop-200001294" class="property-item" data-attr="200009270" data-title="120&deg;"><span class="propery-title">View angle:</span> <span class="propery-des" title="120&deg;">120&deg;</span></li>\r\n<li id="product-prop-24" class="property-item" data-attr="200009282" data-title="300Mega"><span class="propery-title">Pixels:</span> <span class="propery-des" title="300Mega">300Mega</span></li>\r\n<li id="product-prop-200000911" class="property-item" data-attr="200004546" data-title="H.264"><span class="propery-title">Video Code:</span> <span class="propery-des" title="H.264">H.264</span></li>\r\n</ul>', 'on', 'lenovo camera'),
(21, 4, 7, '2016-07-14 06:29:22', 'Symphony 2" Camera Strap', 'symphony_cam_1b.jpg', 'symphony_cam_1a.jpg', 'symphony_cam_1c.jpg', 120000, '<p>Comfortable plush velvet surface</p>\r\n<p>Customized metal logo rivets</p>\r\n<p>Premium nylon webbing for ultimate durability</p>\r\n<p>Adjustable features for preferred positioning either around your neck or across your body messenger style</p>', 'on', 'symphony camera'),
(22, 4, 8, '2016-07-14 06:32:44', 'Samsung Galaxy Camera GC100', 'samsung_cam_1a.jpg', 'samsung_cam_1b.jpg', 'samsung_cam_1c.jpg', 150000, '<p><span class="specs-brief-accent">Released 2012, November</span><br /> <span class="specs-brief-accent">300g, 19.1mm thickness</span><br /> <span class="specs-brief-accent">Android OS, v4.1, up to v4.1.2</span><br /> <span class="specs-brief-accent">4GB storage, microSD card slot</span></p>', 'on', 'samsung camera'),
(23, 3, 1, '2016-07-14 06:38:42', ' HP Slate 6 VoiceTab II Mobile', 'hp_mobile_1a.jpg', 'hp_mobile_1b.jpg', 'hp_mobile_1c.jpg', 55000, '<ul class="spek">\r\n<li>Dual SIM Dual Standby</li>\r\n<li>Quad-Core 1.2 GHz Marvell PXA1088</li>\r\n<li>1 GB</li>\r\n<li>16 GB</li>\r\n<li>MicroSD upto 32 GB</li>\r\n<li>Android OS v4.4.2 (Kitkat)</li>\r\n</ul>', 'on', 'hp mobile'),
(24, 3, 2, '2016-07-14 06:42:14', 'Dell Streak', 'dell_mobile_1a.jpg', 'dell_mobile_1b.jpg', 'dell_mobile_1c.jpg', 44000, '<ul class="spek">\r\n<li>512 MB ROM + 512 MB SDRAM</li>\r\n<li>MicroSD upto 16 GB</li>\r\n<li>Android OS v1.6, upgradable to v2.2 (Froyo)</li>\r\n<li>152.9 x 79.1 x 9.98 mm</li>\r\n<li>Yes</li>\r\n<li>External:5.0MP, 2560x1920 Pix; Internal:0.3MP,640x480 Pix, VGA</li>\r\n</ul>', 'on', 'Dell mobiles'),
(25, 3, 3, '2016-07-14 06:46:59', 'Acer Liquid Jade 2', 'acer_mobile_1a.jpg', 'acer_mobile_1b.jpg', 'acer_mobile_1c.jpg', 35000, '<ul class="spek">\r\n<li>Dual SIM Dual Standby (GSM + GSM)</li>\r\n<li>Quad-Core 1.3 GHz MediaTek MT6582</li>\r\n<li>1 GB</li>\r\n<li>8 GB</li>\r\n<li>MicroSD upto 32 GB</li>\r\n<li>Android OS v4.4 (Kitkat)</li>\r\n</ul>', 'on', 'acer camera'),
(26, 3, 4, '2016-07-14 06:54:24', 'ASUS ZEN Selfie Red', 'asus_mobile_1a.jpg', 'asus_mobile_1b.jpg', 'asus_mobile_1c.jpg', 140000, '<div id="stcpDiv" style="position: absolute; top: -1999px; left: -1988px;">\r\n<ul>\r\n<li>CPU : Octa core 1.5 GHz</li>\r\n<li>RAM : 3GB&nbsp;</li>\r\n<li>Memory : 32GB&nbsp;</li>\r\n<li>Display :&nbsp;5.5"&nbsp;</li>\r\n<li>Front Camera : &nbsp;13 MP&nbsp;</li>\r\n<li>Back Camera : &nbsp;13 MP&nbsp;</li>\r\n<li>OS : Android 5.0&nbsp;</li>\r\n<li>Battery : 3000 mAh</li>\r\n</ul>\r\n- See more at: https://www.advice.co.th/product/smart-phone/smartphone-asus/asus-zenfone-selfie-32gb-zd551kl-6c229ww-red-#sthash.ZW3rxECh.dpuf</div>\r\n<div id="stcpDiv" style="position: absolute; top: -1999px; left: -1988px;">CPU : Octa core 1.5 GHz</div>\r\n<p>Android 5 Lollipop | HD 5.5 IPS Dispaly | 4GB Ram | 128GB Rom Expandable upto 128GB | 13 MP &amp; 5 MP camera | Single sim 3G, 4G | 2420 MaH battery | 2.5 GHz Quad core Processor | Gorilla glass 4. Price Rs. 37,599/- (Rs. 400 cash back T&amp;C) Buy now Black |</p>', 'on', 'asus mobile'),
(27, 3, 5, '2016-07-14 06:57:03', 'Toshiba TG01', 'toshiba_mobile_1a.jpg', 'toshiba_mobile_1b.jpg', 'toshiba_mobile_1c.jpg', 170000, '<ul>\r\n<li>Dimensions: 129 x 70 x 9.9 mm.</li>\r\n<li>Weight: 129 gm</li>\r\n<li>Processor : Qualcomm ultra-fast 1GHz Snapdragon chipset</li>\r\n<li>Networks: GSM 850 / GSM 900 / GSM 1800 / GSM 1900</li>\r\n<li>Windows Mobile 6.1 OS</li>\r\n<li>HSDPA 7.2 Mbps / 2 Mbps HSUPA</li>\r\n</ul>', 'on', 'toshiba mobile'),
(28, 3, 6, '2016-07-14 07:00:48', 'Lenovo VIBE X2 4G Smartphone', 'lenovo_mobile_1a.jpg', 'lenovo_mobile_1b.jpg', 'lenovo_mobile_1c.jpg', 85000, '<p>Lenovo VIBE X2 is a new 4G mobile phone which is compatible with 4G LTE, UMTS 3G and GMS 2G networks. It uses the new MT6595 octa core CPU with PowerVR G6200 450MHz GPU. This octa core CPU based on four Cortex A17 and four Cortex A7 architecture. <span style="color: #0000ff;">It features a 5.0 inch 1080P FHD screen which has the function of shielding eyes</span></p>', 'on', 'lenovo mobile'),
(29, 3, 8, '2016-07-14 07:05:07', 'Samsung Z3 ', 'samsung_mobile_1a.png', 'samsung_mobile_1b.png', 'samsung_mobile_1c.png', 125000, '<p><label class="" title="">Quad Core, 1.3 GHz</label><br /><label class="" title="">Spreadtrum SC7730</label><br /><label class="" title="">1 GB RAM</label></p>', 'on', 'samsung mobile'),
(30, 3, 9, '2016-07-14 07:08:32', 'Walton Primo R4s', 'walton_mobile_1a.jpg', 'walton_mobile_1b.jpg', 'walton_mobile_1c.jpg', 130000, '<p><span class="text13">Network type: LTE / UMTS / GSM<br />Network band: 4G / 3G / 2G<br />Network speed: GPRS/EDGE/3G/HSPA+/LTE<br />CPU: 64bit 1.3 GHz, Quad-core processor<br />GPU: Mali T720<br />OS: Android v5 (Lollipop)<br />SIM: Dual SIM 3G Network Support</span></p>', 'on', 'walton mobile'),
(31, 5, 1, '2016-07-14 08:52:56', 'HP TouchPad Tablet', 'hp_tablet_1a.jpg', 'hp_tablet_1b.jpg', 'hp_tablet_1c.jpg', 48000, '<p>Good Condition</p>', 'on', 'Hp Tablet'),
(32, 5, 2, '2016-07-14 08:56:16', 'Dell XPS 10, Latitude 10 Tablets', 'dell_tab_1a.jpg', 'dell_tab_1b.jpg', 'dell_tab_1c.jpg', 59000, '<p>Dell is reported to have started developing the successor to its XPS 10 and <a href="http://goodereader.com/blog/tablet-slates/dell-launches-latitude-10-enhanced-security-tablet/">Latitude 10 tablet</a> devices running Windows RT and Windows 8 respectively. The new tablets are likely to be launched during the fourth quarter and will come come with 10 inch or larger displays.</p>', 'on', 'dell tablet'),
(33, 5, 3, '2016-07-14 09:00:02', 'Acer announces the Iconia Tab A200 Tegra 2 tablet ', 'acer_tab_1a.jpg', 'acer_tab_1b.jpg', 'acer_tab_1c.jpg', 69000, '<p>The Iconia Tab A200 will ship with Android 3.2 initially, although Acer is expecting to start shipping Android 4.0 in January as well as providing an update for those that got the tablet with Android 3.2. The Tegra 2 processor is a standard 1GHz dual core model and it has been paired up with 1GB of RAM and eight or 16GB of eMMC memory for storage.</p>', 'on', 'acer tablets'),
(34, 5, 4, '2016-07-14 09:03:28', 'ASUS MeMO Pad Smart 10"', 'asus_tab_1a.png', 'asus_tab_1b.png', 'asus_tab_1c.png', 78000, '<div class="product-intro">\r\n<ul>\r\n<li>Nvidia quad-core CPU, best performance in entertainment</li>\r\n<li>10.1&rdquo; IPS Panel--Ultra-bright 170&deg; Viewing Angle</li>\r\n<li>Sonicmaster Technology</li>\r\n<li>HDMI 1.4a for full 1080p output</li>\r\n<li>Stereo speakers and incredible sound effects</li>\r\n<li>Incredible Beauty - Stylish design available in three colors</li>\r\n<li>Sharp and sensitive 5MP auto-focus camera</li>\r\n</ul>\r\n</div>', 'on', 'asus tablets'),
(35, 5, 5, '2016-07-14 09:08:44', 'Toshiba Folio 100', 'toshiba_tab_1a.jpg', 'toshiba_tab_1b.jpg', 'toshiba_tab_1c.jpg', 74000, '<p><strong>Toshiba introduces its first Android based tablet computer</strong></p>\r\n<p>FOLIO 100 media tablet offers rich multimedia experience including Flash 10.1 support and features WLAN and Bluetooth<br /> Neuss, Germany, 2nd September 2010 &ndash; Toshiba Europe GmbH today introduced its new media tablet FOLIO 100. The 25.7cm / 10.1&rdquo; personal media tablet is targeted at people looking for a 100% portable and versatile device that is always at hand for making the most of their digital life. The FOLIO 100 comes with a wide selection of apps and services dedicated to media consumption, web browsing and social networking, and offers a rich multimedia experience. Easy and enjoyable to use, the FOLIO 100 has a highly intuitive graphical interface developed by Toshiba to run on top of Android 2.2 (Froyo). The FOLIO 100 will be available during the fourth quarter of 2010 throughout Europe, Middle East and Africa.</p>', 'on', 'toshiba tablets'),
(36, 5, 6, '2016-07-14 09:13:24', 'Lenovo A7-30GC TAB2', 'lenovo_tab_1a.jpg', 'lenovo_tab_1b.jpg', 'lenovo_tab_1c.jpg', 53000, '<ul class="sideSpecList">\r\n<li>1.3GHz nVidia Tegra 3 T30SL processor</li>\r\n<li>Android 4.0 Ice Cream Sandwich 4.1.1</li>\r\n<li>9in (1280x800, 168ppi) LED-backlit multitouch TFT</li>\r\n<li>16GB storage</li>\r\n<li>1GB DDR3L RAM</li>\r\n</ul>', 'on', 'lenovo tablets'),
(37, 5, 7, '2016-07-14 09:21:32', 'Symphony Xplorer T8Q', 'symphony_tab_1a.png', 'symphony_tab_1b.png', 'symphony_tab_1c.png', 15000, '<p><span class="m-b-xs text-small font-sm-phone p-all-4 text-dker"> OS - Android OS, v4.2.1 (Jelly Bean)</span></p>\r\n<p><span class=" text-small font-sm-phone p-all-4 text-dker">Display-Size - 8 inches</span></p>\r\n<div class="row-fluid">\r\n<div class="span6 fit-text"><span class="m-b-xs text-small font-sm-phone p-all-4 text-dker"> RAM - 1 GB </span></div>\r\n<div class="span6 fit-text">&nbsp;</div>\r\n<div class="span6 fit-text"><span class=" text-small font-sm-phone p-all-4 text-dker"> Internal-Memory - 16 GB</span></div>\r\n</div>', 'on', 'symphony tablets'),
(38, 5, 8, '2016-07-14 09:25:53', 'Samsung Galaxy Tab 4 (10.1, Wi-Fi)', 'samsung_tab_1a.jpg', 'samsung_tab_1b.jpg', 'samsung_tab_1c.jpg', 35000, '<div class="wrap inner-x left">\r\n<div class="title active white m-white">Rich multimedia experience</div>\r\n<div class="desc active white m-white">The 10.1" 16:10 WXGA (1280 x 800) screen provides a crystal clear view. &ldquo;Multi Window&rdquo; multi-tasking lets you watch movies, check e-mail, shop online, and chat with friends on a single screen. A 1.2GHz quad-core processor keeps everything running smoothly. * Also enjoy a free, one-year digital subscription to Bloomberg Businessweek+ optimised for the 10.1" screen.</div>\r\n</div>', 'on', 'samsung tablets'),
(39, 5, 9, '2016-07-14 09:30:46', 'Walton Primo Walpad 8X', 'walton_tab_1a.jpg', 'walton_tab_1b.jpg', 'walton_tab_1c.jpg', 25000, '<p><strong><span style="font-family: verdana, geneva; font-size: 18pt;">Basic information:</span></strong><br /> <strong>Operating System:</strong> Android 4.4.2 (Kitkat)<br /> <strong>Processor:</strong> Octa-Core 1.7GHz<br /> <strong>GPU:</strong> Mali 450 MP<br /> <strong>RAM:</strong> 2GB<br /> <strong>Storage space:</strong> 16GB<br /> <strong>External memory:</strong> Support Micro SD card, up to 32GB</p>', 'on', 'walton_tablets'),
(42, 6, 1, '2016-07-14 09:43:25', 'HP Pavilion 2310mfa/mfd Full HD LCD wide-screen monitor and TV', 'hp_tv_1a.jpg', 'hp_tv_1b.jpg', 'hp_tv_1c.jpg', 130000, '<p>&nbsp;The HP Pavilion 2310mfa/mfd Full HD LCD wide-screen monitor and TV has the following features:</p>\r\n<div style="margin: 1em 20px 1em 0px;">\r\n<ul>\r\n<li>\r\n<div style="margin-top: 5px;">Built-in TV tuner with remote control</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div style="margin: 1em 20px 1em 0px;">\r\n<ul>\r\n<li>\r\n<div style="margin-top: 5px;">BrightView Technology enhances clarity and provides brilliant colors</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div style="margin: 1em 20px 1em 0px;">\r\n<ul>\r\n<li>\r\n<div style="margin-top: 5px;">1920 x 1080 Full HD factory-set resolution</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div style="margin: 1em 20px 1em 0px;">\r\n<ul>\r\n<li>\r\n<div style="margin-top: 5px;">Supports HDMI, VGA and composite with RCA video input connectors</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div style="margin: 1em 20px 1em 0px;">\r\n<ul>\r\n<li>\r\n<div style="margin-top: 5px;">Supports High-bandwidth Digital Content Protection (HDCP) to prevent transmission of non-encrypted high definition content</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div style="margin: 1em 20px 1em 0px;">\r\n<ul>\r\n<li>\r\n<div style="margin-top: 5px;">Plug and Play capability, if supported by your computer system</div>\r\n</li>\r\n</ul>\r\n</div>\r\n<div style="margin: 1em 20px 1em 0px;">\r\n<ul>\r\n<li>\r\n<div style="margin-top: 5px;">On-screen display (OSD) adjustments for ease of setup and screen optimization</div>\r\n</li>\r\n</ul>\r\n</div>', 'on', 'hp tv'),
(43, 6, 2, '2016-07-14 10:03:24', 'DELL TV 37" LCD', 'dell_tv_1a.jpg', 'dell_tv_1b.jpg', 'dell_tv_1c.jpg', 47000, '<p>TV type LCD TV <br />Screen size 37 in <br />Viewing Angle 178 degrees <br />Viewing Angle (Vertical) 178 degrees <br />Video Interface Component, composite, HDMI, S-Video <br />PC Interface VGA (HD-15) <br />Timer Functions Sleep <br />TV Tuner 1x analog/digital combo, 1x analog <br />HDMI Ports Qty 2 ports <br />Manufacturer Dell, Inc.</p>', 'on', 'dell tvs'),
(44, 6, 3, '2016-07-14 10:06:18', 'Acer AT58 TV LED Series', 'acer_tv_1a.jpg', 'acer_tv_1b.jpg', 'acer_tv_1c.jpg', 73000, '<p>The latest from the house of <strong>Pininfarina</strong> that specializes in interior and product design, is the brand new <strong>Acer AT58 TV LED Series</strong>. The Acer AT58 TV was designed by Pininfarina with an aim to attract and relax the user. The design flaunts the right angles and straight lines that have been softened to harmonize with the surroundings. The new TV series features slightly curved edges, ultra-thin profile, transparent frame with the logo designed by Pininfarina and the lustrous pedestal.</p>', 'on', 'acer tv'),
(45, 6, 4, '2016-07-14 10:12:54', 'ASUS 24T1E LED TV', 'asus_tv_1a.jpg', 'asus_tv_1b.jpg', 'asus_tv_1c.jpg', 46000, '<p>23.6 inch, 1920x1080, 93 ppi, TN, HDMI input, 300 cd/m&sup2;, 20000 : 1, 5 ms</p>', 'on', 'asus tv'),
(46, 6, 5, '2016-07-14 10:15:17', 'Toshiba 46PB20E 46" Multi-System LCD TV 110 220 240 volts pal ntsc', 'toshiba_tv_1a.jpg', 'toshiba_tv_1b.jpg', 'toshiba_tv_1c.jpg', 39000, '<ul>\r\n<ul>\r\n<li>Full HD 1920 X 1080 Resolution</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>480i, 576i, 480p, 576p, 1080i, 720p, 1080p Video Signal INPUT</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>World-Wide NTSC/PAL BG/PAL I/Secam BG, DK/ PAL DK TV tuners</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>110-240 Volts for world wide use</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>50,000:1 Dynamic Contrast Ratio for superb quality Picture</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>Meta Brain Pro Engine, Newly designed for the best picture quality, vivid, smooth, brilliant image, with crystal clear clarity</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>Slim LCD panel, can be wall mounted or used on Provided table stand</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>Intelligent backlight control</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>HDMI inputs and analog inputs to connect all your HD and non HD devices</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>PC input via VGA</li>\r\n</ul>', 'on', 'toshiba tv'),
(47, 6, 8, '2016-07-14 10:28:33', 'Samsung UA-48J5200 48" Full HD MultiSystem Smart WIFI LED TV ', 'samsung_tv_1a.jpg', 'samsung_tv_1b.jpg', 'sumsung_tv_1c.jpg', 82000, '<ul>\r\n<ul>\r\n<li>48" Full HD, 1920 x 1080 Resolution</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li><strong>Multisystem World-Wide Color Systems:<br />PAL/NTSC/SECAM</strong></li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>World Wide Dual Voltage:<br />110, 120 Volt, 220, 230, 240 Volt</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>HDMI and USB Inputs</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>ConnectShare USB Movie</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>WiFi &amp; Smart Multisystem TV</li>\r\n</ul>', 'on', 'samsung tv'),
(48, 6, 9, '2016-07-14 10:30:08', 'Walton LED TV', 'walton_tv_1a.jpg', 'walton_tv_1b.jpg', 'walton_tv_1c.jpg', 77000, '<ul>\r\n<ul>\r\n<li>48" Full HD, 1920 x 1080 Resolution</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li><strong>Multisystem World-Wide Color Systems:<br />PAL/NTSC/SECAM</strong></li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>World Wide Dual Voltage:<br />110, 120 Volt, 220, 230, 240 Volt</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>HDMI and USB Inputs</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>ConnectShare USB Movie</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>WiFi &amp; Smart Multisystem TV</li>\r\n</ul>', 'on', 'walton tv'),
(49, 6, 6, '2016-07-14 10:35:57', 'Lenovo LED TV', 'lenovo_tv_1a.jpg', 'lenovo_tv_1b.jpg', 'lenovo_tv_1c.jpg', 81000, '<ul>\r\n<ul>\r\n<li>48" Full HD, 1920 x 1080 Resolution</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li><strong>Multisystem World-Wide Color Systems:<br />PAL/NTSC/SECAM</strong></li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>World Wide Dual Voltage:<br />110, 120 Volt, 220, 230, 240 Volt</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>HDMI and USB Inputs</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>ConnectShare USB Movie</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>WiFi &amp; Smart Multisystem TV</li>\r\n</ul>', 'on', 'lenovo led tv'),
(50, 3, 7, '2016-07-17 19:20:32', 'Symphony Xplorer H175', 'symphony_mob_1a.jpg', 'samsung_mobile_1b.png', 'samsung_mobile_1c.png', 16000, '<p>&nbsp;<span style="font-size: large;"><span style="color: blue;"><strong><strong>Symphony Xplorer H175 Mobile Phone Key Features:</strong></strong></span></span></p>\r\n<ul>\r\n<li>Android 5.1 Lollipop</li>\r\n<li>5&rdquo; IPS HD Display</li>\r\n<li>1.3 GHz Quad Core</li>\r\n<li>13 MP + 5 MP Camera</li>\r\n<li>2 GB RAM + 16 GB ROM</li>\r\n<li>4000 mAh Li-Poly Battery</li>\r\n<li>142.4 X 72 X 8.99 mm</li>\r\n<li>OTG &amp; OTA</li>\r\n</ul>', 'on', 'Symphony Xplorer H175'),
(51, 1, 3, '2016-07-18 03:56:33', 'Acer Aspire DG100', '15a.jpg', '15b.jpg', '15c.jpg', 50000, '<p><strong>GooD COndition</strong></p>', 'on', 'Acer Aspire DG100');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
