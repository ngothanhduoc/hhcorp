-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2015 at 06:28 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hhcorp`
--

-- --------------------------------------------------------

--
-- Table structure for table `anwser`
--

CREATE TABLE IF NOT EXISTS `anwser` (
`id_anwser` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content_admin` text NOT NULL,
  `anw_time` date NOT NULL,
  `status` enum('on','off') NOT NULL DEFAULT 'on'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `anwser`
--

INSERT INTO `anwser` (`id_anwser`, `title`, `name`, `content`, `create_time`, `phone`, `email`, `content_admin`, `anw_time`, `status`) VALUES
(1, 'Tư vấn dùng thuốc sinh học', 'nguyễn văn A', 'Tư vấn dùng thuốc sinh học', '2014-10-15 16:35:27', '0123456789', 'nguyenvana@gmail.com', '<p>Trả lời s&aacute;đa</p>\r\n', '0000-00-00', 'on'),
(2, 'chu de 1', 'Duoc', '', '2014-10-15 16:01:16', '08094384902830', 'duoc@gmail.com', '', '0000-00-00', 'on'),
(3, 'jkdals', 'duocnt', '', '2014-10-15 16:02:13', '8943829428', 'nguon@fjks.com', '', '0000-00-00', 'on'),
(4, 'đá', 'ewewew', 'sdá', '2014-10-15 16:04:10', '545435354', 'fsdf@sdf.hgf', '', '0000-00-00', 'on'),
(5, 'sdá', 'sđá', '<p><span style="color:rgb(102, 102, 102); font-family:helvetica neue,arial,helvetica,sans-serif; font-size:12px">Admin Trả lời&nbsp;</span></p>\r\n', '2014-10-15 16:33:04', '434234', 'cdffsdf@sdfs', '', '0000-00-00', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
`id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `alias`, `introtext`, `fulltext`, `status`, `catid`, `created`, `created_by`, `modified`, `modified_by`, `hits`) VALUES
(1, 'Giới Thiệu', 'gioi-thieu', 'InTRO Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. \r\n                Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis \r\n                dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. \r\n                Aliquam in felis sit amet augue.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. \r\n                Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis \r\n                dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. \r\n                Aliquam in felis sit amet augue.\r\n', 1, 0, '2014-09-24 13:56:12', 1, '2014-10-03 00:33:42', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`id_contact` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` enum('on','off') NOT NULL DEFAULT 'on',
  `time_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `name`, `email`, `subject`, `message`, `status`, `time_create`) VALUES
(1, 'dasdas', 'dasdasda@das', 'asda', 'dasdasd', 'off', '2014-10-03 17:23:23'),
(2, 'duocnt', 'duoc@duoa', 'auo', 'aod\r\n', 'off', '2014-10-03 17:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `contact_yahoo`
--

CREATE TABLE IF NOT EXISTS `contact_yahoo` (
`id_yahoo` int(11) NOT NULL,
  `nick` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact_yahoo`
--

INSERT INTO `contact_yahoo` (`id_yahoo`, `nick`, `date`) VALUES
(1, 'ngothanhduoc1991', '2014-10-15 15:01:18'),
(2, '123', '2014-10-15 15:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `function`
--

CREATE TABLE IF NOT EXISTS `function` (
`id_function` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `name_display` varchar(200) DEFAULT NULL,
  `alias` varchar(45) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `url` text,
  `order` int(11) DEFAULT NULL,
  `is_leaf` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `function`
--

INSERT INTO `function` (`id_function`, `name`, `name_display`, `alias`, `parent_id`, `url`, `order`, `is_leaf`, `create_time`, `update_time`) VALUES
(1, 'add', 'Add Menu', 'backend-menu-add', 3, '/backend/menu/add', 1, 1, '2014-08-29 10:10:00', '2015-01-27 21:33:19'),
(2, 'index', 'Danh sách menu', 'backend-menu-index', 3, '/backend/menu/index', 1, 1, '2014-08-29 10:10:00', '2014-08-29 10:10:00'),
(3, 'group', 'Nhóm menu', 'backend-menu-group', 3, '/backend/menu/group', NULL, 1, NULL, NULL),
(4, 'addgroup', 'Thêm nhóm menu', 'backend-menu-addgroup', 3, '/backend/menu/addgroup', NULL, 1, NULL, NULL),
(5, 'index', 'Danh sách User', 'backend-account-index', 2, '/backend/account/index', NULL, 1, NULL, NULL),
(6, 'add', 'Thêm User', 'backend-account-add', 2, '/backend/account/add', NULL, 1, NULL, NULL),
(7, 'index', 'Danh sách bài viết', 'backend-newsevent-index', 10, '/backend/newsevent/index', NULL, 1, NULL, '2014-10-15 20:57:33'),
(8, 'add', 'Thêm bài viết', 'backend-newsevent-add', 10, '/backend/newsevent/add', NULL, 1, NULL, '2014-10-15 20:57:47'),
(9, 'category', 'Danh mục bài viết', 'backend-newsevent-category', 4, '/backend/newsevent/category', NULL, 1, NULL, NULL),
(10, 'addcategory', 'Thêm danh mục bài viết', 'backend-newsevent-addcategory', 4, '/backend/newsevent/addcategory', NULL, 1, NULL, NULL),
(11, 'index', 'Danh sách game', 'backend-game-index', 1, '/backend/game/index', NULL, 1, NULL, NULL),
(12, 'add', 'Thêm game', 'backend-game-add', 1, '/backend/game/add', NULL, 1, NULL, NULL),
(13, 'gallery', 'Thư viện hình ảnh', 'backend-system-gallery', 5, '/backend/system/gallery', NULL, 1, NULL, NULL),
(14, 'category', 'Thể loại game', 'backend-game-category', 1, '/backend/game/category', NULL, 1, '2014-09-03 02:49:07', '2014-09-03 08:44:18'),
(15, 'addcategory', 'Thêm thể loại game', 'backend-game-addcategory', 1, '/backend/game/addcategory', NULL, 1, '2014-09-03 02:50:21', '2014-09-03 08:44:39'),
(16, 'publisher', 'Nhà phát hành', 'backend-game-publisher', 1, '/backend/game/publisher', NULL, 1, '2014-09-03 08:45:52', NULL),
(17, 'addpublisher', 'Thêm nhà phát hành', 'backend-game-addpublisher', 1, '/backend/game/addpublisher', NULL, 1, '2014-09-03 08:46:58', NULL),
(18, 'icon', 'Quản lý icons', 'backend-system-icon', 5, '/backend/system/icon', NULL, 1, '2014-09-06 09:06:40', '2014-09-06 10:15:39'),
(19, 'Platform', 'Quản lý Platform', 'backend-game-platform', 1, '/backend/game/platform', NULL, 1, '2014-09-09 15:34:30', '2014-09-09 16:48:41'),
(20, 'add platform', 'Thêm Platform', 'backend-game-add_platform', 1, '/backend/game/add_platform', NULL, 1, '2014-09-09 15:35:03', '2014-09-09 16:48:49'),
(24, 'index', 'Bài viết', 'backend-article-index', 6, '/backend/article/index', NULL, 1, '2014-09-24 12:11:01', '2014-09-24 13:35:43'),
(25, 'add', 'Thêm bài viết', 'backend-article-add', 6, '/backend/article/add', NULL, 1, '2014-09-24 13:37:30', NULL),
(27, 'add', 'ADD product', 'backend-product-add', 8, '/backend/product/add', NULL, 1, '2014-10-05 13:14:27', NULL),
(28, 'index', 'List Slide', 'backend-home-index', 7, '/backend/home/index', NULL, 1, '2014-10-05 13:17:15', '2014-10-05 18:10:17'),
(29, 'product', 'List Product', 'backend-product-index', 8, '/backend/product/index', NULL, 1, '2014-10-05 13:17:48', '2014-10-05 15:05:37'),
(30, 'index', 'List Contact', 'backend-contact-index', 9, '/backend/contact/index', NULL, 1, '2014-10-05 15:32:49', '2014-10-05 15:48:12'),
(31, 'index', 'Danh Sách Nick', 'backend-yahoo-index', 11, '/backend/yahoo/index', NULL, 1, '2014-10-15 21:06:24', NULL),
(32, 'add', 'Thêm Nick Hỗ Trợ', 'backend-yahoo-add', 11, '/backend/yahoo/add', NULL, 1, '2014-10-15 21:06:50', NULL),
(33, 'index', 'Danh Sách Ảnh', 'backend-slide-index', 12, '/backend/slide/index', NULL, 1, '2014-10-15 21:10:41', NULL),
(34, 'add', 'Thêm Ảnh', 'backend-slide-add', 12, '/backend/slide/add', NULL, 1, '2014-10-15 21:11:13', '2014-10-15 21:17:12'),
(35, 'index', 'Danh Sách Câu Hỏi', 'backend-anw-index', 13, '/backend/anw/index', NULL, 1, '2014-10-15 23:08:34', NULL),
(36, 'edit', 'Trả lời', 'backend-anw-edit', 13, '/backend/anw/edit', NULL, 1, '2014-10-15 23:09:18', NULL),
(37, 'index', 'Danh Sách Nhóm SP', 'backend-group_product-index', 8, '/backend/group_product/index', NULL, 1, '2014-10-20 23:37:25', NULL),
(38, 'add', 'Thêm Nhóm SP', 'backend-group_product-add', 8, '/backend/group_product/add', NULL, 1, '2014-10-20 23:39:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `function_group`
--

CREATE TABLE IF NOT EXISTS `function_group` (
`id` int(11) NOT NULL,
  `display_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_display` int(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `function_group`
--

INSERT INTO `function_group` (`id`, `display_name`, `order`, `class`, `alias`, `is_display`) VALUES
(2, 'Management Accounts', 2, '', 'account', 1),
(3, 'Management Menu', 3, '', 'menu', 1),
(6, 'Management Articles', 6, '', 'article', 1),
(8, 'Management Products', 1, 'product', 'product', 1),
(9, 'CONTACT', 1, 'contact', 'contact', 1),
(10, 'Management News Post', 1, 'news', 'news', 1),
(11, 'Help', 1, 'yahoo', 'yahoo', 1),
(12, 'Management Slide', 1, 'slide', 'slide', 1),
(13, 'Management FAQ', 1, 'anw', 'anw', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_product`
--

CREATE TABLE IF NOT EXISTS `group_product` (
`id_group_product` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `images` varchar(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `group_product`
--

INSERT INTO `group_product` (`id_group_product`, `name`, `alias`, `images`, `create_time`) VALUES
(1, 'Accounting', 'accounting', '/public/assets/images/news/images/accounting.png', '2015-01-22 15:58:34'),
(2, 'Animals', 'animals', '/public/assets/images/news/images/animals.png', '2015-01-22 15:58:23'),
(3, 'Beauty', 'beauty', '/public/assets/images/news/images/beauty.png', '2015-01-22 15:58:42'),
(4, 'Cleaning', 'cleaning', '/public/assets/images/news/images/clean.png', '2015-01-22 15:58:49'),
(5, 'Construction', 'construction', '/public/assets/images/news/images/construction.png', '2015-01-22 16:30:47'),
(6, 'Education', 'education', '/public/assets/images/news/images/education(1).png', '2015-01-22 16:24:11'),
(7, 'Electrical', 'electrical', '/public/assets/images/news/images/icon.png', '2015-01-22 15:59:19'),
(8, 'Employment Agencies', 'employment-agencies', '/public/assets/images/news/images/employment-agencies.png', '2015-01-22 15:59:25'),
(9, 'Employment', 'employment-agencies', '/public/assets/images/news/images/employment-agencies.png', '2015-01-25 07:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id_slide` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` text NOT NULL,
  `type` enum('company','partner') NOT NULL DEFAULT 'company',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_slide`, `name`, `image`, `type`, `date`) VALUES
(1, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'company', '0000-00-00 00:00:00'),
(2, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'company', '0000-00-00 00:00:00'),
(3, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'company', '0000-00-00 00:00:00'),
(4, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'company', '0000-00-00 00:00:00'),
(5, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'company', '0000-00-00 00:00:00'),
(6, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'company', '0000-00-00 00:00:00'),
(7, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'company', '0000-00-00 00:00:00'),
(8, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'partner', '2014-10-13 17:00:00'),
(9, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'partner', '0000-00-00 00:00:00'),
(10, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'partner', '0000-00-00 00:00:00'),
(11, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'partner', '0000-00-00 00:00:00'),
(12, 'abc', '/public/assets/images/20080513_4D3SD1BQ_tb.jpg', 'partner', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id_news` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `name`, `image`, `content`, `create_time`) VALUES
(1, 'Tin Tức Nông Nghiệp', '/public/assets/images/12.jpg', 'Thông tin nông nghiệp', '2014-10-14 17:00:00'),
(2, 'Thông tin thị trường', '/public/assets/images/12.jpg', 'Thông tin nông nghiệp', '2014-10-14 17:00:00'),
(3, 'Tin Tức 1', '/public/assets/images/news/images/12.jpg', '<p>Tin Tức 1</p>\r\n', '2014-10-15 13:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id_product` int(11) NOT NULL,
  `id_group_product` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image_small` varchar(200) NOT NULL,
  `image_big` varchar(200) NOT NULL,
  `rate` varchar(200) DEFAULT NULL,
  `address` text,
  `open_date` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `status` enum('on','off') NOT NULL DEFAULT 'on',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_group_product`, `name`, `description`, `image_small`, `image_big`, `rate`, `address`, `open_date`, `phone`, `status`, `create_time`) VALUES
(1, 1, 'Bankstown', '<p>123</p>\r\n', '/public/assets/images/news/images/banner.jpg', '', '4', 'Công Viên Hoàng Văn Thụ', '07am - 11pm', '42342342', 'on', '2014-10-21 17:02:25'),
(2, 1, 'duoc 12', '<p>123</p>\r\n', '/public/assets/images/news/images/banner.jpg', '', '3', 'Chợ Bến Thành', '07am - 11pm', '23424423', 'on', '2014-10-21 17:03:17'),
(3, 1, 'Petrolimex', '<p>123</p>\r\n', '/public/assets/images/news/images/banner.jpg', '', '5', '141 Lý Chính Thắng ', '07am - 11pm', '433242345', 'on', '2015-01-26 16:02:29'),
(38, 1, 'Pergola', '<p>&quot;Đặc biệt kết m&oacute;n lẩu nấm tr&agrave;m ở đ&acirc;y. L&uacute;c đầu thấy trong menu lạ lạ n&ecirc;n ăn thử, ngon lắm lu&ocirc;n. Nấm kh&ocirc;ng dai như nấm b&agrave;o ngư nhưng sực sực, ngọt ngọt l&uacute;c vừa nhai nhưng c&oacute; dư vị đăng đắng đặc trưng khi nuốt v&agrave;o, th&iacute;ch lắm. Hải sản b&ecirc;n trong nồi lẩu cực kỳ tươi, thịt t&ocirc;m ngọt, chắc mẫm lu&ocirc;n. Lẩu n&agrave;y theo dạng tương tự như soup chứ kh&ocirc;ng c&oacute; ăn k&egrave;m với b&uacute;n v&agrave; rau, lạ m&agrave; ngon, gi&aacute; cả tương xứng với chất lượng.&quot; - Phước Phạm<br />\r\n<br />\r\n&nbsp;</p>\r\n', '/public/assets/images/news/images/banner.jpg', '', '4', 'Lữ Gia, 15, 11, Hồ Chí Minh', '07am - 11pm', '0854495082', 'on', '2015-01-27 16:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
`id_slide` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` enum('on','off') NOT NULL DEFAULT 'on',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `image`, `name`, `description`, `status`, `create_time`) VALUES
(2, '/public/frontend/assets/images/IMG (46).jpg', 'Slide 2', 'I''m a description. Click to edit ', 'on', '2014-10-04 18:17:11'),
(3, '/public/frontend/assets/images/IMG (68).jpg', 'Slide 3', 'I''m a description. Click to edit ', 'on', '2014-10-04 18:17:11'),
(4, '/public/frontend/assets/images/flower_branch_stem_petals_background_66692_1920x1080.jpg', 'Slide 4', 'I''m a description. Click to edit ', 'on', '2014-10-04 18:17:11'),
(5, '/public/assets/images/news/images/IMG (45).jpg', 'duoc', '<p>duoc duoc</p>\r\n', 'on', '2014-10-05 07:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_admin` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `full_name` varchar(45) DEFAULT NULL,
  `description` text,
  `status` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_admin`, `username`, `password`, `full_name`, `description`, `status`, `create_time`, `update_time`, `permission`) VALUES
(2, 'duocnt', 'e10adc3949ba59abbe56e057f20f883e', 'Ngô Thành Được', NULL, '1', '2014-08-29 00:00:00', '2014-10-20 23:40:08', NULL),
(3, 'admin', '94bb14b10dbae6d4ab09d97387e49bdb', 'Admin', NULL, '1', '2014-10-15 23:40:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_function`
--

CREATE TABLE IF NOT EXISTS `user_has_function` (
  `id_admin` int(11) NOT NULL,
  `id_function` int(11) NOT NULL,
  `allow` text,
  `create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_has_function`
--

INSERT INTO `user_has_function` (`id_admin`, `id_function`, `allow`, `create_date`) VALUES
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 5, NULL, NULL),
(2, 6, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL),
(2, 24, NULL, NULL),
(2, 25, NULL, NULL),
(2, 27, NULL, NULL),
(2, 29, NULL, NULL),
(2, 30, NULL, NULL),
(2, 31, NULL, NULL),
(2, 32, NULL, NULL),
(2, 33, NULL, NULL),
(2, 34, NULL, NULL),
(2, 35, NULL, NULL),
(2, 36, NULL, NULL),
(2, 37, NULL, NULL),
(2, 38, NULL, NULL),
(3, 7, NULL, NULL),
(3, 8, NULL, NULL),
(3, 24, NULL, NULL),
(3, 25, NULL, NULL),
(3, 27, NULL, NULL),
(3, 29, NULL, NULL),
(3, 30, NULL, NULL),
(3, 31, NULL, NULL),
(3, 32, NULL, NULL),
(3, 33, NULL, NULL),
(3, 34, NULL, NULL),
(3, 35, NULL, NULL),
(3, 36, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anwser`
--
ALTER TABLE `anwser`
 ADD PRIMARY KEY (`id_anwser`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `contact_yahoo`
--
ALTER TABLE `contact_yahoo`
 ADD PRIMARY KEY (`id_yahoo`);

--
-- Indexes for table `function`
--
ALTER TABLE `function`
 ADD PRIMARY KEY (`id_function`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `function_group`
--
ALTER TABLE `function_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_product`
--
ALTER TABLE `group_product`
 ADD PRIMARY KEY (`id_group_product`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
 ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_admin`), ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- Indexes for table `user_has_function`
--
ALTER TABLE `user_has_function`
 ADD PRIMARY KEY (`id_admin`,`id_function`), ADD KEY `fk_user_has_function_function1_idx` (`id_function`), ADD KEY `fk_user_has_function_user1_idx` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anwser`
--
ALTER TABLE `anwser`
MODIFY `id_anwser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact_yahoo`
--
ALTER TABLE `contact_yahoo`
MODIFY `id_yahoo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `function`
--
ALTER TABLE `function`
MODIFY `id_function` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `function_group`
--
ALTER TABLE `function_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `group_product`
--
ALTER TABLE `group_product`
MODIFY `id_group_product` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_has_function`
--
ALTER TABLE `user_has_function`
ADD CONSTRAINT `user_has_function_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `user` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `user_has_function_ibfk_2` FOREIGN KEY (`id_function`) REFERENCES `function` (`id_function`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
