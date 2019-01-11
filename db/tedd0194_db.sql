-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2019 at 11:04 PM
-- Server version: 5.6.41-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tedd0194_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `slug`, `image`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(7, 'noi-cua-chung-toi', '6c52e5df64c2d4e68c7e3781272cc262.jpg', 0, '2018-12-04 11:12:48', 'administrator', '2018-12-04 11:12:48', 'administrator'),
(8, 'mon-an-cua-chung-toi', 'a39d0b5eb6ccf2ad1cfd80339c683c4c.jpg', 0, '2018-12-18 11:36:23', 'administrator', '2018-12-18 11:36:23', 'administrator'),
(9, 'cau-chuyen-ve-chung-toi', '78dac366717ccfe4a80380535cf00df2.jpg', 0, '2018-12-05 09:46:30', 'administrator', '2018-12-05 09:46:30', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `about_lang`
--

CREATE TABLE `about_lang` (
  `id` int(11) NOT NULL,
  `about_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadescription` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_lang`
--

INSERT INTO `about_lang` (`id`, `about_id`, `title`, `description`, `content`, `language`, `metakeywords`, `metadescription`) VALUES
(11, 7, '   Nơi của chung tôi', '   Không chỉ chu đáo trong từng món ăn ngon, việc lựa chọn địa điểm lí tưởng cũng là mối quan tâm hàng đầu của Teddy’s American Grill House. Yêu cầu đặt ra trước hết, phải đảm bảo việc đi lại thuận tiện cho khách hàng trong và ngoài nước, đồng thời không gian phố cũng không quá buồn tẻ những cũng không ồn ào náo nhiệt để thực khách có thể trải nghiệm ẩm thực một cách tinh tế nhất. Từ những trăn trở đó, chúng tôi đã lựa chọn con đường Lý Thường Kiệt, con phố mang tên một danh tướng thời Lý, có công lớn trong việc lãnh đạo cuộc kháng chiến chống quân Tống xâm lược (1075 -1077)\r\n', '<p>Kh&ocirc;ng giống với kiến tr&uacute;c của phố cổ - san s&aacute;t những ng&ocirc;i nh&agrave; h&igrave;nh ống, lu&ocirc;n hối hả kẻ mua người b&aacute;n, phố L&yacute; Thường Kiệt thuộc &ldquo;bi&ecirc;n chế&rdquo; khu phố T&acirc;y, nằm gọn trong l&ograve;ng phố c&oacute; nhiều kh&aacute;ch sạn, nh&agrave; h&agrave;ng, bar, c&agrave; ph&ecirc; v&agrave; c&oacute; cả những ng&ocirc;i nh&agrave;, biệt thự nhỏ được thiết kế theo kiến tr&uacute;c ch&acirc;u &Acirc;u rất cổ k&iacute;nh v&agrave; sang trọng.<br />Từ đường L&ecirc; Duẫn, chỉ cần rẽ tr&aacute;i sẽ đến phố L&yacute; Thường Kiệt. Ngo&agrave;i ra, do nằm ở vị tr&iacute; trung t&acirc;m, phố giao nhau với đường Phan Huy Ch&uacute;, Phan Chu Trinh, Ng&ocirc; Quyền, H&agrave;ng B&agrave;i, B&agrave; Triệu, Quang Trung, Thợ Nhuộm, Qu&aacute;n Sứ, Phan Bội Ch&acirc;u, rất dễ d&agrave;ng để t&igrave;m đến. <br />Đến phố L&yacute; Thường Kiệt h&ocirc;m nay, c&aacute;c thực kh&aacute;ch sẽ cảm nhận được một c&aacute;i g&igrave; đ&oacute; thật nhẹ nh&agrave;ng, y&ecirc;n tĩnh. Dường như mọi sinh hoạt ở đ&acirc;y đều diễn ra chầm chậm, đều đều, kh&ocirc;ng ồn &agrave;o n&aacute;o nhiệt như những con phố kh&aacute;c. Dưới c&aacute;i lạnh của trời đ&ocirc;ng H&agrave; Nội, h&atilde;y c&ugrave;ng những người y&ecirc;u thương gh&eacute; Teddy&rsquo;s American Grill House để c&oacute; những trải nghiệm tuyệt vời nhất.<br />Địa chỉ: 51 L&yacute; Thường Kiệt, Ho&agrave;n Kiếm, H&agrave; Nội</p>', 'vi', '   Nơi của chung tôi', '   Nơi của chung tôi'),
(12, 7, 'Our Place   ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.   ', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'en', 'Our Place   ', 'Our Place   '),
(13, 8, '     Món ăn của chúng tôi', '     CÙNG TEDDY’S HOUSE KHÁM PHÁ THỰC ĐƠN HOÀN HẢO CHUẨN ÂU- MỸ\r\n\r\nGiá trị cốt lõi của các thương hiệu, nhà hàng thành công nằm ở chính sự hài lòng của khách hàng, một trong những yếu tố có đóng góp phần rất lớn đó là thực đơn. Không chỉ đơn thuần giới thiệu món ăn, thực đơn còn thể hiện phong cách của nhà hàng cũng như tính chuyên nghiệp và giá trị thương hiệu của nhà hàng đó. \r\n', '<p>Về phục vụ m&oacute;n ăn, một thực đơn chuẩn &Acirc;u Mỹ phải đảm bảo gồm c&oacute; c&aacute;c phần ăn: khai vị, m&oacute;n ch&iacute;nh (đi c&ugrave;ng sẽ l&agrave; m&oacute;n ăn k&egrave;m) v&agrave; tr&aacute;ng miệng.&nbsp;</p>\r\n<p>Với đặc trưng l&agrave; nh&agrave; h&agrave;ng nướng, ch&uacute;ng t&ocirc;i hiểu r&otilde; mong muốn của kh&aacute;ch h&agrave;ng đ&oacute; l&agrave; những phần beefsteak, thịt nướng chuẩn vị Mỹ &Acirc;u, với 7 loại thịt nướng, 7 hương vị v&agrave; h&agrave;m lượng dinh dưỡng kh&aacute;c nhau, chắc chắn sẽ mang lại sự h&agrave;i l&ograve;ng cho người thưởng thức. Ngo&agrave;i ra, để đ&aacute;p ứng nhu cầu ng&agrave;y c&agrave;ng đa dạng của lĩnh vực ẩm thực, Teddy&rsquo;s House cũng bổ sung th&ecirc;m những phần Sandwich thơm ngon nh&acirc;n thịt g&agrave;, thịt lợn nướng.</p>\r\n<p>Trong lĩnh vực đồ uống, Teddy&rsquo;s House h&acirc;n hạnh mang lại những đồ uống c&oacute; lợi cho sức khỏe như nước chanh tươi (100%), tr&agrave; lạnh, tr&agrave; hoa quả, v&agrave; đặc biệt l&agrave; Craft Beer (Bia thủ c&ocirc;ng). Kh&aacute;c với bia đ&oacute;ng chai hay lon dạng thương mại đại tr&agrave;, bia thủ c&ocirc;ng th&ocirc;ng thường được sản xuất với quy m&ocirc; nhỏ, được r&oacute;t trực tiếp từ th&ugrave;ng chứa hoặc th&ugrave;ng &aacute;p lực hơi ga. V&igrave; kh&ocirc;ng qua qu&aacute; tr&igrave;nh tiệt tr&ugrave;ng, vốn l&agrave;m thay đổi v&agrave; mất nhiều hương vị của nguy&ecirc;n liệu, n&ecirc;n bia thủ c&ocirc;ng c&oacute; ưu điểm l&agrave; hầu như giữ được ch&acirc;n thật hương vị c&aacute;c nguy&ecirc;n liệu l&agrave;m bia, mang lại trải nghiệm mới lạ cho thực kh&aacute;ch.</p>', 'vi', '     Món ăn của chúng tôi', '     Món ăn của chúng tôi'),
(14, 8, 'Our Food     ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.     ', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'en', 'Our Food     ', 'Our Food     '),
(15, 9, '  Câu chuyện về chúng tôi', 'Trong sự phát triển của ngành dịch vụ hiện nay, có thể nói F&B đang vươn lên trở thành tay đua số một. Đầu tư vào lĩnh vực này ngày càng tăng cao, những nhà hàng thi nhau mọc lên như nấm, các thực khách có vô vàn những sự lựa chọn.  Tuy nhiên, để tìm được một địa điểm ăn uống ngon miệng, đúng chuẩn hương vị, không gian phù hợp với cung cách phục vụ chuyên nghiệp lại là câu chuyện khác. \r\n', '<p>L&agrave; những người đam m&ecirc; ẩm thực &Acirc;u Mỹ, từng được trải nghiệm những m&oacute;n nướng mang hương vị của miền T&acirc;y Hoa Kỳ cũng như thưởng thức c&aacute;c m&oacute;n ngon &Acirc;u ch&acirc;u được đ&aacute;nh gi&aacute; bằng sao Michelin, ch&uacute;ng t&ocirc;i lu&ocirc;n ấp ủ một ước mơ, đ&oacute; l&agrave; mang những tinh hoa đ&oacute; đến gần hơn với thực kh&aacute;ch Việt Nam. Nh&agrave; h&agrave;ng Teddy&rsquo;s American Grill House h&igrave;nh th&agrave;nh từ đấy. Nhưng, k&eacute;o theo đ&oacute; cũng l&agrave; một loạt những trăn trở, kh&ocirc;ng chỉ ở kh&acirc;u t&igrave;m kiếm nguồn nguy&ecirc;n liệu đầu v&agrave;o, m&agrave; c&ograve;n l&agrave;m thế n&agrave;o để tuyển chọn những đầu bếp giỏi v&agrave; c&oacute; t&acirc;m huyết, lựa chọn địa điểm cửa h&agrave;ng sao cho thuận tiện, gi&aacute; th&agrave;nh hợp l&yacute; ph&ugrave; hợp với nhiều đối tượng kh&aacute;ch h&agrave;ng kh&aacute;c nhau,&hellip;</p>\r\n<p><br />Sau nhiều th&aacute;ng ng&agrave;y trăn trở, h&agrave;ng trăm cuộc họp, h&agrave;ng chục chuyến bay, nhiều chuyến khảo s&aacute;t thị trường, cho đến năm 2018 , dự &aacute;n th&agrave;nh lập nh&agrave; h&agrave;ng Teddy&rsquo;s American Grill House ch&iacute;nh thức được bắt tay v&agrave;o thực hiện. Những hợp đồng cung cấp nguy&ecirc;n liệu từ c&aacute;c đối t&aacute;c tin cậy đi đến k&iacute; kết, c&aacute;c đầu bếp đ&atilde; sẵn s&agrave;ng nổi lửa, phục vụ những thực kh&aacute;ch kh&oacute; t&iacute;nh nhất.</p>\r\n<p><br />Với khao kh&aacute;t mang đến những gi&aacute; trị ẩm thực chuẩn mực, ch&uacute;ng t&ocirc;i hi vọng rằng qu&yacute; kh&aacute;ch sẽ c&oacute; những trải nghiệm tuyệt vời tại Teddy&rsquo;s American Grill House. </p>', 'vi', '  Câu chuyện về chúng tôi', '  Câu chuyện về chúng tôi'),
(16, 9, 'The story of us  ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  ', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'en', 'The story of us  ', 'The story of us  ');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(4) DEFAULT '1' COMMENT '0: active; 1:deactive',
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_activated`, `is_deleted`) VALUES
(24, '639129cf92e5310c140ce622f534a257.jpg', '2018-05-14 13:40:02', 'administrator', '2018-05-14 13:40:02', 'administrator', 1, 1),
(25, 'f4e0415f312373271066db0c109d0ca1.jpg', '2018-05-14 18:07:17', 'administrator', '2018-05-14 18:07:17', 'administrator', 1, 1),
(26, 'c169ac4e4225021f5da9a48af6b8e555.png', '2018-05-30 15:30:28', 'administrator', '2018-05-30 15:30:28', 'administrator', 1, 1),
(27, 'e96bff60c2110c71b354e55bebe3928d.jpg', '2018-05-30 15:37:07', 'administrator', '2018-05-30 15:37:07', 'administrator', 1, 1),
(28, '379ba476b21ee130b157ec4c1a943f0b.png', '2018-05-30 15:36:57', 'administrator', '2018-05-30 15:36:57', 'administrator', 1, 1),
(29, '5ace26413ac19a4a0f6281a9902ef5ec.jpg', '2018-10-22 15:09:52', 'administrator', '2018-10-22 15:09:52', 'administrator', 1, 0),
(30, '86e28fb7378f29528b05c3134f2ee6a8.jpg', '2018-10-22 15:09:14', 'administrator', '2018-10-22 15:09:14', 'administrator', 1, 0),
(31, '1ca8fe11a9118b8e861f600ce27b0d4c.jpeg', '2018-10-22 10:08:25', 'administrator', '2018-10-22 10:08:25', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner_lang`
--

CREATE TABLE `banner_lang` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_lang`
--

INSERT INTO `banner_lang` (`id`, `banner_id`, `title`, `description`, `language`) VALUES
(45, 24, 'test11', 'test12', 'vi'),
(46, 24, 'test1123', 'test1123', 'en'),
(47, 25, 'test22', 'test22', 'vi'),
(48, 25, 'test22', 'test22', 'en'),
(49, 26, 'test221 3', 'test221 3', 'vi'),
(50, 26, 'test221test221 3', 'test221test221 3', 'en'),
(51, 27, 'test22122', 'test22122', 'vi'),
(52, 27, 'test22122222', 'test22122222', 'en'),
(53, 28, 'Xin chào', 'Xin chào', 'vi'),
(54, 28, 'Hello', 'Hello', 'en'),
(55, 29, 'banner', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'vi'),
(56, 29, 'banner', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(57, 30, 'banner', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'vi'),
(58, 30, 'banner', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en'),
(59, 31, 'Welcome to our restaurant!', 'ádsada', 'vi'),
(60, 31, 'Welcome to our restaurant!', 'áda', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('02dbn79or0c5rta7rcut6jvlskf1et7h', '45.64.41.3', 1543124715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333132343731353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('033607ckf86gqr0hagu0qbcc9ofeq0jj', '69.171.251.9', 1545107038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373033383b),
('03mapops9on4lsdvt5mqu5lv85s2vntk', '66.220.149.16', 1546478550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363437383535303b),
('04c1if0jv71fvdgdgmaokm1i0oie9tro', '178.154.200.77', 1543924230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333932343233303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('051dbpoig419jbj2cu1japamp9idsqo0', '113.23.38.99', 1546693844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363639333832303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('064lolml79l7vfm9lqjv06mq1v12tckb', '178.154.200.77', 1543900852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333930303835323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('08h799861c69k22dnqj9kouh9k4o75nd', '59.153.243.28', 1545450191, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353435303131373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0aruq3bhkd3krqhpppjtikk5i6hplk7u', '60.191.38.77', 1546914073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363931343037333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0bjg82ob33h2b7r33nlmjprphkkalufd', '31.13.115.11', 1545190606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353139303630363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0d1uep8tg18ns715uecpsb6klbku58pi', '27.67.181.242', 1546001285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363030313234383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0d32tk7d6mpcaub157um66k58a30hqgs', '113.20.98.246', 1546656137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363635363133373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0hgnpjd7frn3sbt9l8cte9acffcjosnb', '101.96.66.42', 1546485974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438353936313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0hjcm1savvh6koh09g471ahh25giqafn', '66.249.71.125', 1544259342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343235393334323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0iq6cvbf50n40ev4t9sdnq3l2sf4mjrm', '42.118.76.1', 1545139707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353133393730373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0m8gn8sjakv8oc5n1e498i7j0rr636g5', '178.154.171.3', 1544008809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343030383830393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0nm3gbb77afosnis01uduqt0o05h9p1b', '178.154.171.3', 1546715540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363731353534303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0qu04kfbn54hah4sj0ooril5doshkoak', '113.23.53.87', 1544203457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343230333435303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0ubmnftb7c2tikummqst8so4e3ak4f7j', '118.71.198.16', 1547112184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373131323138343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0uuab127r6qp9ujr7uecvpodhlmp1obn', '14.231.87.158', 1546478021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363437373937373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('105v3jfhlan01rbflpi2dbi9fgd79cnc', '194.99.105.20', 1547087246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373038373234323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('10vv2o3k7dafdfmi6c048oebhuhrfs3m', '14.177.76.92', 1545883906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838333930363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('12jjojsh28p0o74971ng0mre7llvoegf', '34.229.49.117', 1543796929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333739363932393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('13h37kbmedb4ish8m7l78vk8h7d2smhb', '173.252.95.35', 1543980272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938303237323b),
('14j6gh3hip8a0pietf8e5fu344r9scl7', '66.249.82.172', 1547007549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373030373339313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1592hbc1t7pbo6g8jc3vjgesbodv99jd', '66.220.149.10', 1546478549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363437383534393b),
('16268kce3kiuvmrvdqp6p27vvjqn0sbe', '27.67.142.67', 1546685062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363638353036323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('16qo2fibpn6sctvo0i5doclnt6a4dqng', '173.252.79.2', 1544948893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343934383839333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('16r4e8ra2ql13675idnqp4ah02v1sqov', '173.252.87.17', 1544431710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343433313731303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('17u52l0h0rkkef3ccarnqsf1ldhr1cme', '171.240.33.151', 1544514020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343531333938343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433393737373634223b6c6173745f636865636b7c693a313534343531333437383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('19c459ia8nl38h7thjcj06gp3kqolq1i', '66.249.71.76', 1544474067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343437343036373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('19qfant3kt9his3fgib55lesftcanbdb', '66.220.149.17', 1546478548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363437383534383b),
('1a0re6c5m9qhsg3gkkmo14t7j2mv6b35', '58.187.67.99', 1546558276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363535383237363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1aq97fab02tumhq5mci4lofb5ggka8u2', '86.190.80.105', 1545466578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353436363535363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1c07o9t7uerur5a6sm3d2uldfstf5b5t', '14.177.70.218', 1546246000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234353833343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1clhpo7u12a92rponrfc9f43hbdlu38e', '69.171.251.34', 1545107040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373034303b),
('1cu17dnnf7kil8jjo009r6gp0b5udirr', '14.248.8.241', 1546158011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135383031313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1eeflkdvd224sin1jfvds4821lio5e2n', '103.7.36.98', 1547166579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373136363533343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1ej9s4019mkcf4b5mchqsfl7qtcm7da4', '35.155.227.129', 1545209823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353230393832333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1f90547241253uqgat6sv0fof21lrmhb', '60.191.38.77', 1546013151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363031333135313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1fm0fa83p3ha2e2f8u7umpmqe5c08cim', '112.72.94.124', 1543161051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333135393535313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1ftk5oi7lfrag7e37kho6h862us3vnt0', '31.13.115.10', 1544431710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343433313731303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1gliq6rcgnkjcqs99emdivqfmseacgeb', '171.237.221.191', 1545450243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353435303032363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1k92i2ika7k0gahn0n4hmr15krb4ehpo', '60.191.38.77', 1546836459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363833363435393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1l3cgb8saci9o7cu7a2fanetv494bml6', '209.17.96.34', 1545102662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130323636323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1nvbv9g6kio4sdkkg706t830cqmlljn5', '171.229.240.96', 1545166762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353136363437343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1rbrcvs7llut630lg6g70elb1ok9dk5s', '118.70.176.200', 1546830219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363833303231393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1t6j3f9g259hvdplbekl5j1om0jksatc', '113.185.15.146', 1544247735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343234373731353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('1voab43vkq1l6k4jb8ifn1hfhpu3klm7', '116.96.252.127', 1545880275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838303232313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435313037323935223b6c6173745f636865636b7c693a313534353837393434323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2056eb5trs9r1516en9e8m0tkcnirgtq', '66.249.71.87', 1546757904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363735373930343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('20br5duiluk9ga0itub12ihu0okul36e', '171.224.2.130', 1543965132, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333936353132383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('20fa1pbm7vgklilt9pojt7p1nna85jtm', '173.252.79.4', 1544948887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343934383838373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('20lindbau8h76c9ejmjl269q79jp4c32', '173.252.79.8', 1543455694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333435353639343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('22qm1unp0r9sbe9lsest16b5cpo8ml7h', '223.24.185.249', 1546190228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363139303232383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2393c9j5vrsocusbgk1kqh5qc5kfpjk8', '66.220.149.21', 1543894932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839343933323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('24ni2i54gamjm99qshbdg7iln90bi5l9', '101.96.121.17', 1547170864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373137303836343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('24rc2h6l55jkhkq9vb39rfa0b8qg6u0h', '116.96.252.127', 1546484912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438343931323b),
('25d7pks4hj6cp7l7gu5kcf6sv0dovved', '66.249.64.202', 1546859288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363835393238383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('25opt8hre9vfd2ukt7fd5um7s1ej091c', '58.186.223.121', 1543373051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333337333031303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('26flqgemohstkm3mpormh55f7epghhut', '27.76.240.139', 1543391249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333339313234393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('27084vrdcg0ohej1v497tsff9rabt6hc', '69.171.251.27', 1543939515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333933393531353b),
('27vl9cp2li5bbjrbdcetdvjt1l6n81ja', '59.153.245.4', 1544170796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343137303739363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('294koocvmab332bcp0evo7pmihmahn8v', '173.252.79.1', 1545108281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130383238313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('294tia5rsd70660qv5qtmd45h081vgjj', '117.4.240.187', 1545396337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353339363333373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('29kiu2po1u6btjqbk1sdhomn0pdrl6ie', '116.96.85.236', 1546658609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363635383630393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2cbcg6cffdf44oi242kn3sldoa2h4giq', '173.252.87.5', 1543136596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333133363539363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2cire54ho6oem85aumo81l07729v3r8n', '66.220.149.2', 1545107454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373435343b),
('2djkn3ot201pfat7p1sc4qoj92dfp529', '173.252.87.4', 1543308146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333330383134363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2e17bri6hbf2q727539a064kq6nksn16', '173.252.87.1', 1543308144, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333330383134343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2eptfhskmqm41bj951rk4vek3mk932va', '123.16.0.44', 1545636104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353633363130343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2iat5o02dhuhsdah24urcvgrmii1hgv3', '13.57.233.99', 1546825310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363832353331303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2k20abqelvngvl2hd3iq7ttim7olv378', '173.252.79.8', 1546680725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363638303732353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2mtb7iga93ifhmhuqm00nuqmi0i5a2le', '27.76.240.139', 1543891805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839313830353b),
('2ntlj413oip3ho562q6fm1bhebd0ujen', '173.252.79.1', 1543894796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839343739363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2o4rfm3k6g7sl67jioq76h12cgo8pgmb', '42.113.106.145', 1545702784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353730323734353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2p1bq0hq8osghpld0ki1jse2mbenaprn', '209.17.96.50', 1546942682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363934323638323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2q2e1lv06v545sjigoue3iaa03l0p6lu', '173.252.127.7', 1545108297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130383239373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2q78vc3qvgfgljd6f4041ciqsvkq1fvg', '199.102.235.140', 1546914182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363931343138323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2s5h1a5egijvl3g85oad2sbo235abao0', '66.220.149.40', 1545190575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353139303537353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2t8vnqbdahf2gmm76v4b2lef5dvmhal5', '118.71.224.252', 1547174453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373137343335393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2tq8820kntrvidmfh2vcr2seeii96d3v', '14.177.239.125', 1545575598, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353537353539383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2vdf6pf6noise6ebs9dkidtste1pca7r', '116.96.252.127', 1546489402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438393234373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2vr4oaltv2o3pthsld3dticu3r6ul6v4', '178.154.171.3', 1546776580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363737363538303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('319b379a7lqtc0jv048lqnlrdebfs6um', '178.154.200.77', 1545670091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353637303039313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('37evdb364rp4b1u4tapq4uvcf5dqvjsl', '59.153.242.114', 1546496606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363439363532363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('399m9b2k9d12pr791rckc746fuv221tt', '35.155.227.129', 1545708571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353730383537313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3ak4o48u93i1atqe3r1di1fkptgc8753', '59.153.243.97', 1543392367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333339323335353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3bd47rp2c7otuisiv5efq30ghh76cg4d', '52.53.201.78', 1546356186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363335363138363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3blvj2epp5qtpjsi3mra9pv9u3cnd94s', '59.153.242.11', 1544683467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343638333330363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3bp80t1gj330hr4v1r1o7pejqi3be59j', '14.177.239.125', 1545572982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353537323937343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3cgeg6t3l0g3kdmob8jhmq3lk40neihq', '42.113.156.137', 1545674725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353637343732343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3d01ql8bep16o5p49ubm6vmimkjng61f', '116.96.252.127', 1546488824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438383533323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3dcq3pp784ha25tgubd76j03aqo8mt97', '14.238.7.254', 1545368719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353336383731393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3eibvcbj00nid1463qfvhccat62km8lb', '171.224.2.130', 1543942822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333934323832323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3g1ni8hhh0a3jr3ngr6e8nnhkmo918op', '173.252.87.14', 1543091406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333039313430363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3gkbk60d3gpoc99kto2daltjs5nsgjr5', '171.241.0.161', 1543044405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333034343430353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3hc86fi1n1p1vq6r1vs6t2451r166jr0', '173.252.127.15', 1547028437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373032383433373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3i155ibcgil54ogoier4hq3mmgjpaaiq', '64.233.173.172', 1546242460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234323431383b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('3icfl7o3335emn2o3o4brdf1ic8ic1ao', '58.187.12.4', 1545175890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353137353839303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3ikip4p8p9mkmif16gsrufsb1clrhj1p', '173.252.95.35', 1543899271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839393237313b),
('3ipr3p36jh0rr4u4u2rdqc1qgoi89a9d', '113.185.11.23', 1546860328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363836303332383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3jqkbplne6k9liakpmrb4pvcha67s3um', '66.249.71.87', 1545969437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353936393433373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3qvteh6tdguk6h2too0q39nofm1v6gee', '45.125.209.135', 1546860006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363835393930313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3s4cjah6m0iak4ulfl9l2m0c02kbgl8r', '137.111.165.22', 1545707795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353730373739353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3tc1orr7j7imobo65oshqjt1prqeaksv', '113.185.32.140', 1545487527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353438373532373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('40auuoop34o7piu92gdh9be1ipq6u2l3', '1.55.134.168', 1543492231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333439323233313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('411vqto7qvqcm6qr7l83p6u4s0v9ujj9', '173.252.87.9', 1543244872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333234343837323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('423kgm2rfddngp38u83kpmdvj2sk8pvn', '27.76.240.139', 1543891650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839313434393b617574685f6d6573736167657c733a35333a223c703e54c3a069206b686fe1baa36e20686fe1bab763206de1baad74206b68e1baa975206b68c3b46e6720c491c3ba6e673c2f703e223b5f5f63695f766172737c613a313a7b733a31323a22617574685f6d657373616765223b733a333a226f6c64223b7d),
('45ph1mhm7entlufr5r3llsucdqk549a7', '173.252.79.2', 1546136287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363133363238373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('46ia7o117h2vvm03tc9c1rf5jtn041ka', '209.17.97.106', 1545085054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353038353035343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('474elqd7g4ov6c66ee0hlh1sd9b8fk7n', '66.249.71.87', 1545767559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353736373535393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('49ae2sbnej1l565o4f6loo7ckqm7rcdj', '209.17.96.234', 1546622524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363632323532343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('49lnemp301f1usrgtvupl7j9vqm3tb7g', '183.80.244.244', 1546495328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363439353332383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4bqrlufr2ctrcpsrgg912cl056h5rv3c', '66.249.82.170', 1546245064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234353035323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4e0smp1f4jk15suf4dk7a92akqgkskri', '173.252.87.8', 1546006190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363030363139303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4f0cp62g0dvi48a8hii4gbm2pvqe8nj5', '42.112.161.170', 1546965275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363936353231353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4inld6cj4pqk7vmsp044uf07vct3f3bc', '173.252.127.24', 1544431742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343433313734323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4j6decmnk5oapaorppmjtj83bpqfqnkf', '171.241.151.224', 1545107091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130363739343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435303138343531223b6c6173745f636865636b7c693a313534353130363739343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4k8qlf5c9v8mfhikooiut8t0lm0vv9qd', '66.249.82.172', 1545022881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353032323835323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4kbd9fsl3lfm2ggna2g0nsg55s1s4kt8', '173.252.87.3', 1544431710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343433313731303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4n1bpce3jq22mg9q1a1patg1i5lb3io0', '173.252.87.12', 1543200133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333230303133333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4nisa3l1mg3kv7eu6cfpd1bgsvns4mnh', '101.99.14.215', 1543940618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333934303535323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4poq8f7rapildeisliml13oggt2u20mc', '203.162.6.131', 1544516330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343531363039323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4qugnptf43lru7j304ojgcua0d13ppje', '178.154.171.3', 1546861339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363836313333393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4s490uvbbcstkqun221a5l2p565flbf6', '116.96.252.127', 1545879737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837393434323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435313037323935223b6c6173745f636865636b7c693a313534353837393434323b6c616e67416262726576696174696f6e7c733a323a227669223b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('4slb0d84g6q7k9479vt4t1r5934btaaq', '42.116.101.95', 1543391872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333339313738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4tfehdkhhfs5k3prpthor3lq2ib9rfeq', '66.220.149.5', 1545018632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353031383633323b),
('4vd2fqimnuiqk2q0g35c742bdq1jrd45', '60.191.38.77', 1546912791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363931323739313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4vgg5i2kosv4ji5flksj3vq75h2mrebt', '66.249.71.46', 1545976824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353937363832343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('50830iqq4jc4o0c7qde5i7cp6hd85a7d', '173.252.87.9', 1543091401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333039313430313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('50p0btelc2fo7hjdp9oo2uq6o3hel1q2', '173.252.95.15', 1543990818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333939303831373b),
('51n87fe81nuh69qo0fsm3iskjkaldcm3', '66.102.6.10', 1545040300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353034303330303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('52dhu43pq926mjj199dlk33m4c5rgkpo', '173.252.95.28', 1543983425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938333432353b),
('55154j4cu0e10icus9v83186997uehno', '113.185.15.87', 1546675657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363637353635373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('560apc7bc1dsd248r2bsaoms4j6o1fr1', '171.240.33.151', 1544513473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343531333437333b),
('561v1g96cjtmedilg76cuuf4983bmdp9', '118.70.118.239', 1545645688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634353638383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('57n8826rb29klp0orummqjaqk17dg7qc', '184.151.36.40', 1547182487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373138323337373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('58ktp8qhrdtjt971f9p27bpehvk0ufr9', '122.228.19.80', 1545159810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353135393831303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5bq12pvik2aprikkeuh83dstp496jtg9', '123.24.183.181', 1545387071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353338363939393b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('5clb1ocnhrkto2km3n9561m6dpt11jf5', '178.154.171.3', 1546143799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363134333739393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5ffpjf7kfeg834kauoi1qu41641okll9', '42.113.156.172', 1545647708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634373434333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5gvfat9qd367b12timfpeufk31ue2cdo', '116.96.252.127', 1545879438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837393433383b),
('5igpno5uge8k93kuheb0c2o9du7cq9mo', '173.252.79.2', 1545927405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353932373430353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5is5es5bq5cfm770bi79cpodpcunaq3m', '123.25.21.90', 1546048152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363034383030353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5jq3v4j9ofto3lo8mkr2qihv3fner3vr', '113.190.145.69', 1546572811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363537323831313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5jv2l6k45ugjp30jltpvnbcrtlgom3j8', '27.67.139.51', 1545116373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131363337333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5rmq5qocilbq4itg25a12ee0hb37aio3', '116.96.252.127', 1546486743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438363437333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5sclldaa8j8p0gpr3eep1jeeu3pmoehv', '173.252.95.12', 1546490494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363439303439343b),
('5u233492tni2gdc8ka6c01hgspr82j8k', '14.231.87.158', 1546618718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363631383638323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5ue1s9ampm5f2qrsj3icmluca4p0k9f4', '222.254.19.224', 1544597152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343539373135323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5vdj16u4jh3batdv5pktdsclh771sptl', '13.57.233.99', 1546545317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363534353331373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5vf8kqgglci7nqidlljlealso9l5a1hj', '27.76.240.139', 1543977761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333937373736313b),
('61rtffan88odfmvlc0a59t1gr3ourdrd', '52.53.201.78', 1546758189, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363735383138393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('62eqd8ubvgl0dea5ajkkfue71vd6t7p4', '173.252.95.6', 1543895984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353938343b),
('668evipkhj37vlst1vu6q1ir2989lc78', '60.191.38.77', 1546075241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363037353234313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('66ggh0qvqc6ama761lvi1ld4v1ovfcpk', '173.252.95.27', 1545110975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303937353b),
('672gv6854pc6i13td9cmfe3a8t1cb91a', '173.252.79.6', 1543894796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839343739363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('68mfmbcl6r479l51ttebrtns4n1j85h7', '171.241.151.224', 1545106787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130363738373b),
('6a2jq23ut869dpdlkomgmu0p6at9ofnv', '118.69.93.208', 1543536814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333533363735373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6a3erqn4cp1b1j63vguifoa32ptr227d', '113.185.15.192', 1545022930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353032323839383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6ab7ssmvfbals5oecvlbstcj8cvodh8g', '222.252.59.127', 1545580022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353537393839343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6hrpmce8dsoqq8mror4s9sc35n107lle', '171.224.2.130', 1543951135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333935313133313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6i9mkrr2v1g3g508ij1152jv9h4ccl3l', '42.119.43.202', 1543536734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333533363733343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6k3k9gmgr66dut86ru7dohjq959o99df', '209.17.97.18', 1546280020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363238303032303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6l6kddqu3ndktv4loi21mvnde2d1h5gv', '222.254.19.224', 1543895920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353931383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6pmunghg295nmfme4obu6unl1489rldc', '171.224.2.130', 1543779424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333737393432343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6rt31833b4q3q51iuhc4q924stoshr99', '52.53.201.78', 1547123866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373132333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('6t6khoh729185kid525ot46560v2pkts', '14.177.118.66', 1544528940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343532383934303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('70b1ki39iknt2jgkb04qo3n3okilb78a', '60.191.38.77', 1546836237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363833363233373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('72gt46vhuh4v4o1v6jd35mnum533aiqg', '178.154.171.3', 1546671744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363637313734343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('73efqb6ra5sc6h58dk4k8m9vdltklve0', '178.154.171.3', 1544655606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343635353630363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('74g6fr2a8efumt5a8ceqli7o4b7g43f1', '66.249.71.42', 1546153062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135333036323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('751v7vt7qfrn31dp0bvke7fm3ngc0jk9', '66.220.149.2', 1546478550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363437383535303b),
('7623usn03ubmk02rpvmbe185jkkr21ju', '171.241.151.224', 1545018516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353031383435313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353434353133343738223b6c6173745f636865636b7c693a313534353031383435313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('77pkdkitbjd12pc11qrqk18qhk6rj7s8', '66.249.71.89', 1545710235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353731303233353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('78c0ccrkp2t0l3q96dds30dcvcc3srgj', '42.113.197.68', 1544979446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343937393433343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('79h3pl2fvj7290rkp9ro7qsfv4ub1dig', '27.76.240.139', 1543978465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333937383431323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433383935393331223b6c6173745f636865636b7c693a313534333937373736343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7c9n0cv55lattqim5sflbcs2g8q4hfqh', '14.177.221.16', 1546394803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363339343830333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7f0c55jdt5t5v5sjvsc5ermqaslee50f', '66.249.71.42', 1546443133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363434333133333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7f7kmn87k8g03lkmifnt1p3k8hb2o2fe', '14.162.49.221', 1545400927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353430303932373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7fb6hqapn57n112jnkrip2g4hre8heh1', '42.119.43.251', 1546660622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363636303632323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7flltt5nsuajp7sl12faulvdv7nvdds1', '14.177.38.178', 1546244580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234343538303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7g5ifjg041vs4e7mbonulagrlfrkck0p', '5.101.219.231', 1544748280, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343734383238303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7j1ho5pgedi90fbblnok64l7q61rn99f', '42.114.30.236', 1546424837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363432343833373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7k4fdp51gdlcjpngsvf7shlvsb76vhrm', '66.249.71.46', 1546444896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363434343839363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7k6jqieth7q73odbc1dls90g1dagkog5', '171.237.221.191', 1545892772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353839323735333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7kbuo771u1hmmjrpkp9v3vr011tbfqpo', '104.248.2.67', 1544441060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343434313036303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7lj27gahjrrtnc6j1uj9h0d1ufurea6c', '118.70.185.26', 1546482534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438323533343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7loapp1soiu3kfacig6b1iclvr4snqm8', '173.252.127.1', 1545190605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353139303630353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7nhivbdop7hn99afne5cuc3u60e9b6lo', '14.177.232.62', 1546572511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363537323531313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7q2iu3a6to6p650l8eo41of8opj2cpi3', '66.220.149.31', 1545107454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373435343b),
('7r96pph03alk9fb9rp3les2e7o61h3kn', '173.252.79.3', 1546680725, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363638303732353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7rcbkh5j8fn9qa6j1p2bs46rsrchdke5', '60.191.38.77', 1546014915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363031343931353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7sd1sjl5db2vurafn7socs150idcm3kd', '172.110.16.10', 1544640003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343634303030333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7u9jov18j9i0vkmnlnbq30jenjt7hsu2', '14.231.87.158', 1546488611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438383537383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353436343834393232223b6c6173745f636865636b7c693a313534363438373334323b),
('82ucljolik233tvvnf7b3i11ki70385p', '66.220.149.7', 1545107450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373435303b),
('83rkan402o4c38shrhpm0i2kt3kipj7o', '116.96.252.127', 1546487732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438373433343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('83s1e26q10jmeto78hqcctlgddbde0ti', '123.25.21.90', 1546048154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363034373939323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('870i05egi82teatt9qf5ukurgru1nukc', '113.185.15.211', 1546144424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363134343432343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('88nsn1nt6s0hgqtqqbci4lk7l5lrp8fj', '52.53.201.78', 1546941378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363934313337383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8a03jf4ggmpj456vo5kjll7bdc22v1ig', '101.99.15.73', 1546225609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363232353630393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8as6tp224kbirp3jdssll9cb9nslouph', '123.24.49.138', 1545279829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353237393830323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8b82crc92p6hqsfqj0c059eq1efphcg1', '113.185.15.211', 1546159597, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135393539373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8c5703pc2j5k89m3qnof82or01d7cd9c', '52.53.201.78', 1546155165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135353136353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8ck0no51ist16h377vat955qqg3rd442', '209.17.96.10', 1546974351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363937343335313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8ds2gd8inssrmcm78dcthdhfmua65gaf', '66.249.69.204', 1543525910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333532353931303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8ecv0tuvaoeruelrfjtphs7icqb1lsk2', '66.249.71.44', 1543340105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333334303130353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8hotdb8ggdi0b8kdvjjjrt3ch46ogpmh', '14.177.70.218', 1546246403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234363136353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8jp31s90d4ichtmnv9iub18rft980e6q', '209.17.97.98', 1546942957, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363934323935373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8khbe32p4m1svudr1jh2ecfgjtm3ij8n', '42.118.76.97', 1544607490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343630373436313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8qkvq77kprumfqn5452sh19bfcc4v5oq', '173.252.87.14', 1543359826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333335393832363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8s1ca68k890gdara5avr3kj387fmm6qd', '118.71.158.61', 1543372322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333337323332323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8svs5d3msu7q4p1n7rfvd2jv220lfmf0', '14.177.118.66', 1544528185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343532373933383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8vg27bgkkriveqk8npb4662niuo79i80', '173.252.79.6', 1546488376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438383337363b),
('90u8tp0kpvsiib3qknftqkp1n5tfcfk9', '209.17.96.10', 1547151919, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373135313931393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9183fearprl7dp2imtapqf2ihndhd71p', '173.252.79.8', 1544064929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343036343932393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('91cth6mk8lacn7oi5g09l010b0jskfdd', '178.154.171.3', 1543916120, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333931363132303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9819ik5ff1p0ln3vi7af73o843njngno', '66.220.149.6', 1543980249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938303234393b),
('9aspbo77m000oc0l0lg48de1mh0qdsm9', '165.227.121.208', 1546795639, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363739353633393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9c8vt7b5crpefhsirs7feh23joee4dt1', '27.67.177.183', 1544770502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343737303530323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9cj7uoevbfvtk59v5gngfjmqaqsdqaoc', '113.185.32.140', 1545486490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353438363439303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9dik29mks7kqbbc56p9avqp5ibgqj7r0', '66.220.149.27', 1543980247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938303234373b),
('9efpim7p33i58qa9sj3q27bi0f2mhse6', '27.76.240.139', 1543201739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333230313733393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9eiuhijqvorjcogpm00fmqdfc0d2sr4a', '58.186.223.5', 1543034658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333033343535393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9gb5eu6jk44btm9ar54nt4gn2i3s8n89', '14.231.87.158', 1546487647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438373334323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353436343834393232223b6c6173745f636865636b7c693a313534363438373334323b),
('9gcldt7qestb5591h3galg86o78aik19', '117.0.255.243', 1546761275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363736313230373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9h3rlh4rlgpnfn27shv7bqar8o7udp92', '13.57.233.99', 1545982445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353938323434353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9ho8bn76kntnoujkj9058ciuhogqakli', '118.70.80.185', 1546393738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363339333733383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9j9a91m2o7amp2tbmh7vvmhcc2vgqjg7', '123.24.45.114', 1546692550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363639323535303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9jm9nsatkm1nt0bgtc4tsq8skni48t5j', '69.171.251.26', 1545190575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353139303537353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9lpl6n4hq0rs73erdk8qi3vuivr01rk0', '178.154.200.77', 1543883396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333838333339363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9mkc8acbrhcql26aunnrb435f6al15k2', '66.249.82.174', 1546613184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363631333131363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9nn8n9q7v77v77mmonaa1rvsq2o4iu8i', '27.76.240.139', 1543895295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353137373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383030343930223b6c6173745f636865636b7c693a313534333839313638383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9p9dcvovrp6v0c6ujcb1akppqmbnad9t', '66.249.69.202', 1543525894, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333532353839343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9qua4ovab868dkqr6npafb8acpqsmkqk', '171.255.241.84', 1545914221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353931343232313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9r8b86c3094n28g4f2festif1b3ov50v', '173.252.87.15', 1543308145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333330383134353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9res23oomuuadttphe0hjln4hj82mmdo', '178.154.200.77', 1546512782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363531323738323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9ugbabe8lbut9seaqo8a8f3ubp17nva4', '64.246.165.160', 1546094150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363039343135303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a3l0at2tbju2a19asua5h1i12s9mqdd6', '27.67.10.30', 1546495234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363439353135393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a568fvt6cqnmsp6ulls3pq3vm86pcghf', '35.155.227.129', 1545209240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353230393234303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a6ungr81u0sus9c4sv2jrpddjt5fg9b5', '14.177.64.24', 1544779078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343737393032303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a73l5mlba8se93glmfgajhhlgvddpord', '66.102.9.42', 1546249888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234393838323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a8ap8tkf4f95h54iojhrso2o79sg0tei', '178.154.171.3', 1543900766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333930303736363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a8brndthkif97ampfkplchgmmhov1vdv', '173.252.79.2', 1543642374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333634323337343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a8iaf7fs3t77fqrkd5skdlodeueed62p', '183.81.86.79', 1547044141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373034343131303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a9qb7eh5is34fodi7q7dv42ca22ollrc', '178.154.171.3', 1545665356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353636353335363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('acko836mab4o9gtirfhck7furg4nr2st', '66.220.149.11', 1545110984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303938343b),
('ae7ma9t2urqvg9afuec16ob2d471hgbd', '59.153.243.218', 1545719079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353731393037343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ag8c9l4eqs2a4oeo1olmdu31uma5mhh5', '117.7.216.84', 1546678301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363637383330313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ah70dv2bmog117grn5tlgkku93is7tad', '171.237.221.191', 1545671133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353637313131313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ahpq5bnmkgrtq001su7dmgk3vv3b3e30', '116.96.252.127', 1546486093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438353739343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('aisg5ipstmdb18j3aagm0kcevis546ki', '178.154.200.77', 1546523903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363532333930333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ak1ncu60ne6gnteqligpvqo8a7rg1voe', '173.252.79.3', 1544003135, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343030333133353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('al9vt31j9b8vts76crc449emlik3grfv', '206.225.95.23', 1544102197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343130323139373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('an6jsnraq0ejvt7mi9l5jbi585pqleqg', '173.252.79.6', 1543642369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333634323336393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('aovbdhanmvif12098jqt916imb4n20rk', '118.70.185.26', 1546927841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363932373834313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('apddghqscpppu29j0sefs2iuolohgnkh', '66.220.149.1', 1546478550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363437383535303b),
('apm52di55gvtp9gv4nno12jp79cb7m7h', '14.177.118.66', 1544528881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343532383631393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('aqapm13hivbcr3rlrv1c2h5hadli6sbs', '27.67.136.203', 1546337088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363333373038383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('asnf4qdlkvsrs71hurkgj3bqj5ps1bih', '173.252.87.14', 1546405626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363430353632363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('atd58i17k25ni0f7p2jh0so9h3hge2q1', '113.190.72.226', 1545985261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353938353233383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('aubnfro7s83qgb2odgi371qi9nupqtsd', '27.76.240.139', 1543895312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353131333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433383931363838223b6c6173745f636865636b7c693a313534333839313832383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('av78b7pqcq6qv9nc2umrtbejkv0m0o1u', '171.240.33.151', 1544513481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343531333437383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433393737373634223b6c6173745f636865636b7c693a313534343531333437383b),
('av8h49rabmtcognl2oeabsovv55epf7l', '173.252.79.7', 1545109763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130393736333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('b1cl6v2ah6o6b1fh5ctuvkgh1d95ej3o', '66.220.149.36', 1545107450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373435303b),
('b30qh29k4p95stk2l1vsdmak9128beo2', '173.252.79.8', 1546136296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363133363239363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('b3ncm8mc38u0iap8b68rs4ubk3diclf9', '171.241.151.224', 1545107030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373033303b),
('b475kbdmmrero7q44cjejbliuhdu963j', '116.96.252.127', 1546488520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438383232393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('b57cvcsvundeeibsifnqfillrdv64oit', '18.236.221.49', 1545616817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353631363831373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('b5dnf3rdungeavnjb431qfjs930g2gt2', '1.54.213.42', 1547128142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373132383134323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('b647njr8pdbr3c329sj8fu0kmnj5i03k', '209.17.96.34', 1543896593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839363539333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('b666kr66qkbl3iioroeeum0srdr965ld', '209.17.97.10', 1545416489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353431363438393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('b6lh6p0nkif36gppgid8ecrb0u6apg1b', '222.254.19.224', 1543895959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353933313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433383931383238223b6c6173745f636865636b7c693a313534333839353933313b),
('b7gl4c9mllbm80kk2i3q6odoh591vq6i', '178.154.171.3', 1546512199, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363531323139393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('badbbfa0tcgu3ek2aqqv4pop42lrv1i9', '173.252.95.17', 1543899272, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839393237323b),
('bemu5pteb564ktr0mphp6pcqmvlh9pdh', '209.17.97.18', 1543896899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839363839393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bf5indc37kvmloosof6jmur6506are6g', '116.96.252.127', 1545879981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837393734343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435313037323935223b6c6173745f636865636b7c693a313534353837393434323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bgdnnt1chiv146iniik3v3b2jrodtp93', '123.16.13.241', 1545486263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353438363236333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bj1o8l962u3ovqoctkhbi0m16nud3r9o', '66.249.71.89', 1545159552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353135393535323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bjs188ekmj4o53ni4hpom8e6o2keb539', '122.228.19.80', 1545116979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131363937393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bl5gjrhhgfrlsufhggt8k4oln3al3r7v', '31.13.115.7', 1543038046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333033383034363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bmjrou7ktunr0s3q4dblkob1br8vb01a', '173.252.87.8', 1543200133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333230303133333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bmn7qj3mm17tu9tk7cqt65jagj9p5d9a', '14.182.177.9', 1545109950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130393736323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bnplc2e2mbkevnun6ejoekqm181uoska', '185.245.85.229', 1545753735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353735333733323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('boi3aral1p5lmo1db3anm7bn7hp03ofk', '66.249.71.42', 1546091180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363039313138303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bol0j0mo65or1p60lb82p6239spv1jnt', '116.96.252.127', 1546487405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438373132303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bq66n0q653afjuvtreb3ab2fn139gj3k', '116.99.38.69', 1547044043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373034333833393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c0dmr9da8h0bnn7fjhaj2916is1522to', '183.81.85.199', 1546157064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135373035363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c0g7fj00d43cfrnc6cd6j830k4r585si', '27.79.251.109', 1546267930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363236373933303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c1b26e6jpje26khrfq9cv8v8rf8247fj', '173.252.79.2', 1545927410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353932373431303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c45cb3hp1tvr6c8e54l6o8qtk3c3urjp', '123.24.85.152', 1546798490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363739383439303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c7jdjphavlvu791nv5brminccg4au0fg', '66.249.71.87', 1546747064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363734373036343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c7olqj8hci28ea7jm4s48g36nfbsel4d', '27.67.185.124', 1543987196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938373039363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c8donhmbilern30jljjt2a3ffj5dllbj', '118.71.172.67', 1543895948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353934383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c8sec41b04rp2l30p637m52sn4b4tkfl', '173.252.79.6', 1545107855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373835353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c8uak3lbde94f3qshjn97oi3vsqdk26c', '66.249.82.172', 1543092274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333039323237343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c9jnh4osc1rj05csbo0mat7lsddo2842', '66.249.71.44', 1545081472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353038313437323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cbisf6l981e7520su0slohnh4u278qau', '66.220.149.18', 1546478550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363437383535303b),
('cdk74eit28fcc5r1d4jsfleu429t2bmh', '116.96.252.127', 1546489127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438383834343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ce7et9j4kp4e7lt0tngc2itacjsrl0ak', '202.151.166.150', 1546256853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363235363739303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cfn6dj1jknohm7vmcpspb6pje296p25i', '66.249.64.204', 1546806479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363830363437393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cg0mouhi6df1e4ke7upvgkuvbht4ctcn', '66.249.71.46', 1546607411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363630373431313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cgvmf6ngorc3u9p1qrbs0k0bdi022v2o', '66.249.82.174', 1547105294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373130353139343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('chdjggbfb0l2t8qe358g1inbmimsf6f6', '173.252.79.6', 1544948893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343934383839333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('chmc4eja21ginoqhbfjunilkbbm2b5aj', '31.13.115.3', 1545190605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353139303630353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cj2ahau5n66qkb9doefjrdc4tlkseir0', '118.69.93.17', 1546490829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363439303830333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ckfihuohtrcuvloe1bucm1k00nmskrnn', '42.112.55.184', 1546488575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438383536353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('clgcu0h9et5t2kastib0i6osj010ik6n', '137.111.13.126', 1546997043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363939363939353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cmhstvqkc68mja65tat9djk737i980if', '69.171.251.1', 1545020993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353032303939333b),
('corpcnov41mqpnnviv1t4ackd54pr49s', '171.237.221.191', 1545477138, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353437373132373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('csgrvovrhvamgos38s780hbjttre2a4d', '209.17.97.98', 1544564833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343536343833333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ctljrduk7euc0p8kv1sa3rbqc36i1nr7', '101.99.23.76', 1546414568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363431343536383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ctttv74pr5gl2n0hmm99lsg7699v4mos', '173.252.79.8', 1543455699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333435353639393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cv4eq44pbsskaou59ljah9o2hb6tdiar', '54.172.118.182', 1545702784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353730323738343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cvbhor0t47ru9asci66bhnsd1vk5c1m0', '173.252.87.15', 1543200128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333230303132383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('cvm7gg7f357c55odmu46e7f3t8s2r9s7', '66.249.71.46', 1544707061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343730373036313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d0a3mpkktleb7fvj2kpptbdcmv2fvsk8', '171.241.151.224', 1545018449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353031383434393b),
('d0bkb8l3bicq4k2nkjcrehstqk2b3ap7', '173.209.212.153', 1547002875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373030323833343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d11ha8iir21q6hg566bm50l6u9i7ajg3', '14.177.199.75', 1546774397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363737343336343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d20fnl2f7r13k7oo9pm3qk5n23smm64v', '173.252.95.17', 1543983426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938333432363b),
('d3bhmooqn84uc4esrj06rt8n6hmoebm7', '66.249.71.42', 1545468115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353436383131353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d4shkm4novlvp3091na59pqqmvinh2kg', '92.223.88.232', 1546486605, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438363630323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d5tqr1ilbq5oi0q4pb348tik0df30ave', '122.216.206.178', 1546920843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363932303834333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d72as4lgp82se4b5l7de3bqd4un9gmk5', '66.249.71.44', 1546191232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363139313233323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d7gehaih2gl5omk4cj7gkcmoqugdlgcj', '60.191.38.77', 1547200907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230303930373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d9rc35q6f5ga12u236pj02si6hb729u4', '52.53.201.78', 1544732706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343733323730363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d9ud2t0445vge5iqrkaoenbuehljpd3b', '59.153.243.63', 1546829408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363832393430383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d9vdo92d7767fkktvior4imf0bor4p3k', '159.65.179.67', 1544442176, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343434323137363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('da3kk3dp7jcjc0i9ficule3him27v2c8', '89.39.107.196', 1546866398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363836363339383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('daed9no1tvifttn18jqmfumutkmm4mc7', '52.53.201.78', 1545952727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353935323732373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('dd3tsqn5lb5r6k8luvmeoilc6sk8j1lv', '27.76.240.139', 1543891905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839313832383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433383931363838223b6c6173745f636865636b7c693a313534333839313832383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ddnfbhe6vgdj79897u6e6mlmh1fra3pq', '13.57.233.99', 1546264100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363236343130303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ddttu8irrchqacolvs73hjcnpgv9ng3k', '66.249.71.42', 1543603487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333630333438373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('deump005fgcip2em8jo2n17lnc8sppoe', '85.206.165.5', 1545140286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353134303238303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('dn76engor7bsucqactrduh2au1nemv9j', '178.154.200.77', 1546042941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363034323934313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('dp8ipfovm6mc4lstvk8hieetaa3s63ln', '173.252.95.22', 1546490495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363439303439353b),
('dpmkat823f4doei45p9l1mnb1c14o3i2', '208.54.86.234', 1546754371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363735343230383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('dq5c78efqud3cln2rctn2hj166g1ogb2', '66.220.149.37', 1545107448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373434383b),
('dtbc9cirm9045mtl213qb1l61ng21ock', '147.135.254.225', 1545505370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353530353337303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('du401g47a4q03o6skig6s12kjsg3359h', '1.55.134.168', 1543590667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333539303538383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('dvbgjlfh3cqcd363a94rp95h7sa2cm56', '178.154.200.77', 1543960242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333936303234323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('e2rr448mers3a2oh9nahvmmaf9f8rqn4', '52.53.201.78', 1545142461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353134323436313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('e6qgleth8s4pdli2kunt2b6vjjkfi82q', '222.254.19.224', 1543889290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333838393239303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('eb1qn2a1jei30j5p6cqe64a3rq9c00pv', '14.231.87.158', 1546621054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363632313035343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ecls36i5mcemhb895j1m1bu1v1ugad4q', '142.93.68.104', 1546794737, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363739343733373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ei2gmv65f19i2h6lgmnvp5h53kauqhl1', '118.70.254.4', 1546396275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363339363237353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('eih9jdu233hhmrep69hq8p16misjhqlm', '178.154.171.3', 1545372398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353337323339383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('eipv9g2pj4abt6glp88jtm1e9r2qq74k', '209.17.97.50', 1545437461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353433373436313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ejsthih51uc8209ts8fuad9lj9saudke', '66.249.84.44', 1546246194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234363139303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('eoh9u1os6ssg6f3j9tat94b9kv11n559', '178.154.171.3', 1546765690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363736353639303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('epj8f9m2g3ud5t38ao7jtkvikuagpdmk', '203.119.8.103', 1543641242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333634313234323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('epptj418c3f38ctga2n631qhdmni4a4d', '31.13.115.20', 1546511325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363531313332343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('f0gfn022tf95bgcjeu2sjvi0s5odq3r4', '167.99.106.216', 1546883362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363838333336323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('f0q04vp86vu7sv8tkgml24ret7t8h1cc', '171.241.151.224', 1545107467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373239353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435313036373934223b6c6173745f636865636b7c693a313534353130373239353b),
('f25sl02pchont92roda75qe43ndr2h3l', '42.114.33.54', 1546255746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363235353733333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('f500alie8kj7k8rj29fredjp9a0v8gnp', '173.252.79.4', 1545645699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634353639393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('f7u7t8relqf9bapu1faqnqbs7flkr0ls', '59.153.245.106', 1545638115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353633383039353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('f8bij4nqr1o5tdu0rqpbbr0sh4j7cudd', '14.231.87.158', 1546620505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363632303335353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353436343837333432223b6c6173745f636865636b7c693a313534363631383732303b),
('fcml6hoph1qt2qgul3ke3ao4i1h9lukp', '120.138.68.219', 1543044257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333034343235373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fctj88dlrrt2quq5psg72ds0lo0dlock', '69.171.251.9', 1543897585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839373538353b),
('fdooahp72d0jkmd0oc3cnvic3d1utcnv', '58.187.66.196', 1545216271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353231363137353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fdup4788haifj60ut9de49k43opugbv9', '113.185.32.140', 1545486350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353438363138313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ffb7hur8hosqjfftnauhht1aqj3u19be', '173.252.95.3', 1545110974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303937343b),
('fhj59fkpb8eqqdo88ubi24ib8anmkd4k', '209.17.96.218', 1544228691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343232383639313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fjhvjlmevkt6nrile54pbhk970t65j8i', '173.252.79.6', 1543896547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839363534373b),
('fmcrbbhcjdlthu0nkn1jnu8r7v59j6nu', '173.252.79.1', 1543894795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839343739353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fp8g08fi3887le0mo1q10pb8bl01tqes', '92.223.88.245', 1544690031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343639303032303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fptcecu9jjqf7fj3n7cvqd78juvd62b9', '178.154.200.77', 1546754814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363735343831343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fr1indqjridp71b7r0311mu0jq7jmetc', '66.249.71.42', 1545953416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353935333431363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fr65j1g8kr1h20u3hkuce2uvh5ptm7vk', '118.70.176.200', 1546422581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363432323331333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fs8huqd3o04hj55sbqtc1aij6656r72q', '173.252.79.4', 1546226465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363232363436353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fsij7temf16squjra9sorh5g0c8o6pi3', '113.190.17.192', 1545364796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353336343739363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fvettn5roarlcv4qqd6fhumesc6o3pht', '173.252.79.5', 1544064931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343036343933313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('fvrd4bvihojsh9m6oqilt7br8qhii953', '1.55.134.168', 1543591254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333539313033303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g04spevnl0dt5h5b0vvdk5l6m4kbpiem', '60.191.38.77', 1547203216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230333231363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g0a97utmcbuuho94lt7s9c4qa9kfoo69', '173.252.79.2', 1543642370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333634323337303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g0g30ocsn8adc2du33kmkorfdum6s52r', '116.96.252.127', 1546487802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438373737303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g0gf1cvub50p3ocau4vmgvf1fmroq577', '113.160.214.126', 1546823578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363832333537383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g41qr17qq56qmm1qom1uq8tn3ucqjenv', '123.16.0.44', 1545632876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353633323837363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g61f3f2e0db4pfa967pt4kbt2s21uksn', '178.154.171.3', 1545071156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353037313135363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g6d091do1bbj0okckfeaf81h8r20ld88', '113.161.77.241', 1546602203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363630323230333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g6ne7drq5n916405fmij3r48uaacj81g', '113.190.107.138', 1545582421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353538323432313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g7feqmb1i4movipdrl99vs68qs81s3us', '173.252.95.35', 1545110974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303937343b),
('g7fr7u2o7lta7qofg8phcobjoo6098ii', '14.177.118.66', 1544525077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343532353037373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gcsd03lpjt43naobu95015rn7u7fkp35', '185.206.225.233', 1546175814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363137353830323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gdnpu94l148g7uj00np268ut0mdu9kjg', '14.177.244.41', 1546500354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363530303335343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ge7bomj9pdrh95uo7a11lgrcqrcqe4ul', '14.231.87.158', 1546618999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363631383732303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353436343837333432223b6c6173745f636865636b7c693a313534363631383732303b),
('gei8n3vfd300e40e5fcam83ak4v76a38', '178.154.171.3', 1543993445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333939333434353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gg68ppkafac8mpsqvicdaicpr6eqhi4r', '173.252.95.28', 1543983426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938333432363b),
('ghmh0obp5uupb9cufh98r9rnff7r6uao', '173.252.79.8', 1545645700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634353730303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gi8a1obsl3l5aoui53tss0ptvpm3u627', '173.252.95.4', 1545110975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303937353b),
('giigrc9appjjrchtamet7ksqdd7vesuc', '113.190.234.59', 1546410898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363431303839383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('giolmnvrt1s1au8ehcsbftnl3anmune5', '137.111.165.22', 1545707799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353730373739393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('giqra304f2n74ah39qgsov27iknd81sb', '118.70.176.200', 1546829221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363832393232313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gmhk2hsacfijja3dl5ige4qetlh49qkg', '113.190.252.126', 1547195459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373139353435393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gndn6f65j4qnsqa5l6r2vr3q9mrel7ir', '66.249.71.42', 1544825299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343832353239393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gnfl8d0k2c1a1uu1mb7c00lapdmq3k3g', '27.67.32.70', 1545624263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353632343234363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gqc73fl0vherpbks7jk9s9m23vtp5pok', '209.17.96.42', 1544504731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343530343733313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('h0vtjamgcah0clsbihlmslvshvssvqhc', '66.220.149.10', 1543980249, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938303234393b),
('h1e49iup5bo7m9rrhjsocpuoshojofl7', '69.171.251.10', 1543897584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839373538343b),
('h1tliod81av9l9e0lbnklkhgrkn1o2ac', '194.99.104.204', 1544487567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343438373535393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('h2irkg5f208tod69ikgfs794bpkhh1vq', '209.17.97.2', 1544592245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343539323234353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('h47vucs7qdlt7v8aj7e33ha63gtbs57f', '173.252.95.18', 1545110975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303937353b),
('h5l9821bjgk53enr88eb8v5b1uk08j1o', '66.249.71.85', 1546487862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438373836323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('h9jfal4g05neqartb3hu6q85gbrrl4dg', '171.241.43.27', 1547046847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373034363834373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('haj2e12700h2889mk0b7lslbvvegq2n4', '66.249.82.174', 1543032762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333033323736323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hb646g8bt8al95cvv1hcni22b8i41hng', '66.249.64.23', 1546836477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363833363437373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hc65nkcb9ev4sr6vo9rim8psh58quins', '173.252.79.6', 1546488376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438383337363b),
('hd5t9k1hvqo65ruoh3tkd5qq8sq2jk30', '64.246.161.42', 1544304107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343330343130373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hdga02bq2ti29gidf2t01arhvr48j7e3', '14.231.87.158', 1546487339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438373333393b),
('hedf84fakqggsbln12s1a5qgpnhd1c8d', '66.220.149.12', 1545018631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353031383633313b),
('hfq6ecebe06jjpvfpf788j48v8315lik', '27.76.240.139', 1543981076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938313037363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433383935393331223b6c6173745f636865636b7c693a313534333937373736343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hjucnvgf2mhdi0gbvalmtm7a3e8i410a', '42.113.156.172', 1545647993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634373939333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hkgcjg1b3i7mlri5qc0jvapt4dkbide7', '66.249.71.46', 1546328288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363332383238383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hkje03k9a8ldua0vhqsqc80ldmcu0ckq', '116.96.252.127', 1545624807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353632343738383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hl2hcsucnhj7a8ro12u7re1a3cl8066a', '113.190.61.231', 1546417138, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363431373039303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hlqfku7elde471v0nhsk7v84ke1qgcbt', '223.24.185.249', 1546190226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363139303232363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ho401d3vf27341pn7lolnljak8bbavmq', '59.153.243.134', 1545719485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353731393438353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hou9g77k1p7cf2s0b9c2pldp0t0qoc8r', '27.76.240.139', 1543896513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839363531323b),
('hs1k67bs26sdth9n3r2ctl0kqbvofjhp', '14.177.70.218', 1546246557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234363535373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hui6utd69sip98fl9eh5ov3jm61713j2', '171.241.151.224', 1545107283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373238323b),
('i3nhk68daopassl6pi0tbpi16lftjd5o', '37.9.113.80', 1543087527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333038373532373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('i7nhop12roctg9n0ql859gl9jqep682i', '173.252.79.5', 1545927411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353932373431313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('i80bgl1d65ljp2j10vv2hgfldgc0sv5u', '58.187.12.101', 1544357683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343335373638333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('i82adbg5c5ni8koojq9pqnv3i5aadnbb', '66.249.71.46', 1546586968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363538363936383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('i9q3lqlgd6gdu8gundgqeeis24qvm9bl', '66.249.71.85', 1545451033, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353435313033333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ibfofhc062b6iob2qkc0c2beesch61rf', '112.72.94.124', 1546618139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363631383034353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ibi77agrhaf2e2tfb0u19t5oep3db24h', '173.252.87.8', 1543244871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333234343837313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('idpapte4dlr0sr79q3ihta7lhsrngv9d', '27.76.240.139', 1543200931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333230303633343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('idr7run877f4aegtdrfapqor2nbg00n7', '118.70.129.125', 1547117092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373131373030393b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('iedvevn2u48r9tltvq4nsbtkgm0heqjm', '113.185.15.61', 1546680062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363638303036323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('iensm42ajl1o2r20mgihc4rd26cjn0hs', '178.154.171.3', 1546042419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363034323431393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ig7odvioseg8065op2c1gqu6ngplo9bd', '37.120.158.171', 1544224584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343232343537383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('iohtl4chrjj5o2cccli8g5r4sc3f1hds', '113.23.53.102', 1546938089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363933383038393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('iov6mdirog2ato5ih1ihqs30h1o4msmj', '59.153.244.111', 1547221756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373232313735363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('irquktrskjct7faslf7s038gj3iik6rf', '173.252.127.33', 1545110983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303938333b),
('ivgbh1lqoaskgq1imshcq8ueljops13b', '14.177.118.66', 1544528408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343532383236333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('j0mcdv7tqpcabs00ih0ld1ofs6np5ne9', '66.249.71.42', 1546246881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234363838313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('j31fdtpg8hv10dif1nv9n8kodaim8237', '178.154.171.3', 1547005436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373030353433363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('j3nn9n7t7kdrqa4jubsvb9kerigkdkfv', '116.96.252.127', 1545881181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838313138313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435313037323935223b6c6173745f636865636b7c693a313534353837393434323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('j5416sp9504nslp82h9iegpg0mqi2188', '66.220.149.37', 1545107453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373435333b),
('j6438imprrs8gu2a9uim9g0c8bgu6gq9', '178.154.200.77', 1546866986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363836363938363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('j8u0bl0n2npm0vk488iujeevcoqt181p', '69.171.251.7', 1544431745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343433313734353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('j9g75pig0tjnog1gm09r94a2ujtqfbg6', '113.22.53.241', 1545502368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353530323335323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jaobjseofgqb6odenrebu0mueqbkru6c', '116.96.252.127', 1546405167, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363430353136373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jd9j3v1j6f76iiv5e335b31its4hr4ja', '159.89.191.169', 1546466897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363436363839373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jfoqjl5jft380nhpkg1880go1h8bjig8', '42.113.156.137', 1545666704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353636363533393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jfupnbqh9iqamscn041h9asda8s35h27', '123.16.43.7', 1546441984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363434313930353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jgr3792ur1e1jvon3o4fke946rtnfbu2', '66.249.71.46', 1546361353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363336313335333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jgv7hnif21vp3mlonqfdnr7berd7vgm6', '171.253.143.155', 1546337396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363333373339363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jhr2m5kgmv42vi7ppmrne1spt684j14n', '1.55.134.168', 1543495218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333439353139363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jiuil48kh8ji5ldratt6hedln58h7nss', '116.96.252.127', 1546489726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438393630363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jk35d98ugn6sjiu60icmoi2l6d3mj60k', '52.53.201.78', 1544532236, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343533323233363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jof4ssha740oi556f28ca0kqub6sgal5', '194.99.105.121', 1544805105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343830353039383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('joln34l1sk4rteku4cd5lmb8qktn8hvs', '113.185.15.152', 1544018372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343031383238313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jqte71gnqpm9hgmogv1iqe8no8lgum8t', '14.177.232.62', 1546571684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363537313638343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jvrr4gcl157dm4kv8k6vreftornlnvec', '173.252.79.2', 1544064931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343036343933313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('k1mp415nhic7kks5qlfl1oi4t4tffh7b', '178.154.171.3', 1543908819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333930383831393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('k4h86ie1aarbmp93tk7a7oapauoulcle', '69.171.251.20', 1545020976, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353032303937363b),
('k4urctkeg8da4ov53d97348sch1dnb7k', '66.220.149.34', 1546238207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363233383230373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('k5qfcte0ei69otpbar2kri6afuele5sb', '66.249.71.124', 1544420864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343432303836343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('k6ckjsh282g48itf5kfakg0ih0tk9cv3', '123.16.174.191', 1546266181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363236363036313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('k8g89589ouse5ppc71m3nahehkkp400p', '66.220.149.21', 1545107454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373435343b),
('k9am57jmgr00dr6bm49n35keuiq0d7di', '178.154.171.3', 1546755852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363735353835323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kb5mhgpqleen5ovt91kbs8m1g3ucfo3a', '66.249.71.42', 1546153069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135333036393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kc32kebncdtv9h0g6ebtdb5fgr7sh4ib', '173.252.87.16', 1545580004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353538303030343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kc7st7cth71nip8tk71n912ptb5mot21', '118.71.192.64', 1545220984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353232303934393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kd34dj2p35paev5e2b2do5uouqbss66q', '173.252.79.2', 1546136295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363133363239353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ke1s04rfi4rjvmj9g100dmlcee5j8cd6', '113.190.140.3', 1545629237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353632393136343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kf09i7ea9j14beoi3dna8gke1t6384up', '13.57.233.99', 1545702011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353730323031313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kf0o8tcin7knc3ul4pcbevs4lkvks8na', '173.252.95.30', 1544350741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343335303734313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kf1ubpiavpkvvn17u27vmrdfpfof0kc1', '52.91.61.38', 1545201323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353230313332333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kf9otr0lku523bmblloijlme72c9ct2q', '173.252.79.2', 1543895982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353938323b),
('ki769tn17g0ujv5an63ucumgnb2hrn63', '173.252.79.6', 1543895983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353938333b),
('kii693pf4dq627ik3vsdi24ujsolkvvo', '206.225.95.23', 1546468994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363436383939343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kmk6u1oeusol8d1kfj88p56aqahi62kr', '59.153.242.227', 1547101267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373130313236373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kmq1kb81t6ohs48qhe8db2uegjv6fqet', '109.142.137.3', 1546256328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363235363332383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('knh4g2lodbc4g23enspv7vt5hek6me37', '13.57.233.99', 1545136629, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353133363632393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ko0hmt5h48u2426i5gc2hj1i1ocmfoga', '31.13.115.10', 1545190575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353139303537353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kokr7b3kp7q3pp3e7tnr1i3776ommjm5', '209.17.97.66', 1545067545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353036373534353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kpn8eidvcdaaieusrfko10mqld6k4eku', '113.20.108.31', 1543392359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333339323335393b),
('kqcb3k8rp04rf6hdlk90efo0tp09fi51', '173.252.79.8', 1543455699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333435353639393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kr1d810iruak75e2raecncl4relnl67g', '173.252.87.6', 1543894913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839343931333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kr1kbsuhskp5si4t7berp4e7rutnottg', '66.249.71.87', 1546153058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135333035383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ksr4784s8lfbu51omb73cu4ka20bt77k', '173.252.79.1', 1545107856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373835363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kt6oekce5icf4blp435o9f74dr4ogfb6', '60.191.38.77', 1546071407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363037313430373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kt9jfdkrb4ket17vhki4g6see163a11p', '113.190.97.212', 1547205210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230353231303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ktpfgteut4l78mgo0qf8qi2brpug118p', '173.252.95.12', 1546490495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363439303439353b),
('l1i6q1rh2ojjfoegv9epe3ohl18gmpsi', '173.252.87.15', 1543038018, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333033383031383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('l2l7t6tk5gihjvhfan1q3ius99i8aarb', '116.96.252.127', 1546485392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438353234303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('l4ia4ohdp684rnhj2rvljlmb17sv2ei5', '113.23.64.37', 1547220043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373232303034333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('l6i856lkc9tm20hk3r9k8prp1fl2kac6', '178.154.171.3', 1545784748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353738343734383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('l8hrpep2i2k6lpdgnd883aabvv9oh8d6', '69.171.251.34', 1545107040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373034303b),
('l9jdm8sntqfulbujhedvp74pf68021d1', '118.70.133.239', 1546665216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363636353138323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lak4me96nklc3vta777kbi732f3tf3t5', '66.249.82.174', 1547006393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373030363232313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ld18u6udlh0k2phtpi54so30lu21dcj3', '171.241.0.161', 1543042982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333034323938323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('le0s9srsjd3c2bretssassvld9lk0ils', '27.3.73.24', 1546441808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363434313538393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lemto0tiul7uco917ac4lkod8d9h5tnt', '66.249.64.202', 1546801671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363830313637313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lf16963pflrg4mdslgh40mesdjl9vlb4', '52.53.201.78', 1545344709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353334343730393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lkhb9h8pjdlhsl865tu5igafnkijp8q2', '185.183.106.169', 1546657988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363635373938323b6c616e67416262726576696174696f6e7c733a323a227669223b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('llt788peg9q6vedulm0i665ek2n10kbm', '27.76.240.139', 1543894787, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839343738373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433383931363838223b6c6173745f636865636b7c693a313534333839313832383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lnsg1h48ibl0kgigim5615uimrqctott', '173.252.87.3', 1543308127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333330383132373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lo7busv5h6v4sqb1pibsibpofrd6buj8', '122.228.19.80', 1545112139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131323133393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lp0l03nl0aa4nmp2pi3h49438j1aucmg', '14.231.87.158', 1546613761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363631333736313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lstdr0of8vhprnkei258gigljl5fb71o', '178.154.200.77', 1546042458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363034323435373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('lt6b1pf38195pjovusqoudhigkd4shg4', '42.112.114.236', 1544766238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343736363233383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ltbiukdf80el4b04kt23gi2smrqolqb2', '42.113.252.109', 1545116257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131363235373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('luju62i3ilvf6apbpsaeb0d10287fr99', '66.249.71.42', 1543077988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333037373938383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('m0962ap43p8u55r4tui8kb5q7j4emp66', '209.17.96.242', 1545826729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353832363732393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('m2ggl7keqc5c2pjpv2md2gg2sahkpmob', '171.250.121.205', 1547173671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373137333634373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('m35e4meh61tin41i31htuur2e1fg1nd6', '66.249.69.237', 1543565831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333536353833313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('m46i64d78gcrtaqphhjni79t6u01gucb', '119.56.104.26', 1546245094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234353039343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('m6vaskaq40uou1pp9m2808dtnet71dvt', '113.185.15.97', 1546407104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363430363930393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('m7i4ij5bkvmo75cohd9fuh7itftaols8', '14.177.221.16', 1546394854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363339343835343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mdnpsco47rlq6b34d419fp469c6q906e', '173.252.79.1', 1545107856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373835363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mfmjig65tc97pcd2fqlr59gku7j1gi34', '118.70.254.15', 1546690254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363639303232343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mg2bv4oe855apjjuq7699qikhcei00c3', '173.252.87.15', 1543359827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333335393832373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mkomg7rl50kttel7s5nti1kh9tgutqlq', '66.249.82.170', 1546065591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363036353537383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mp8lel9plmjcvhp8soqjlojlpem9ei0q', '31.13.115.14', 1545381871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353338313837313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mq4cbjkjbl186leu2e3el2nfqfg9jhgk', '185.245.85.235', 1545474612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353437343630383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mrdke5kp31ldumfhavrn5vu540d46619', '178.154.171.3', 1543883215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333838333231353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mu7r554nrpe0e4n8a494af3qiut6ofif', '173.252.79.5', 1543895984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353938343b),
('mvjdaq1ioesllen6lvfrkkslcbefap6k', '173.252.79.6', 1543642374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333634323337343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('n0ca71dm8d0gftqes6rcq33mqckrv17u', '178.154.171.3', 1545652994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353635323939343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('n2nfmji00pramim7m4oqn7u0pg96vu56', '66.249.82.172', 1545391530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353339313533303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('n63rca5giiudh5lk0ouoi0b0p2d4t0u9', '178.154.200.77', 1543993734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333939333733343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('n6volucqc2vbvtm639r0nv6b484vslhu', '38.130.184.1', 1545502256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353530323235363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('n7vvtj8mb0g9pcbq7nrrtfpto4ndq9e4', '173.252.79.2', 1546226463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363232363436333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('n80i47scloq5c9bkfkd28a04p5u8t1e2', '116.96.252.127', 1546423387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363432333336363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('n9u24ab5ep39h9qo15ndomv5fnd94oh3', '54.70.66.1', 1545616818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353631363831383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('n9utcbrjnnu07dufota264kle76ig49g', '173.252.79.5', 1546226465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363232363436353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nc4ecq1dnudi8n8s3d17o44gubb3m3i0', '66.220.149.36', 1545107454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373435343b),
('nd2o4r780fd92ds0pf34uinjp8ie0rst', '183.81.72.23', 1546157173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135373035363b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('ndidccsh5bie3f07np0nvd6j358rju92', '118.71.2.58', 1545572668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353537323539323b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('ne5p9cmrqoq2dci805hbfd9233am0igc', '113.20.109.100', 1546783783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363738333734333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('negm8l6k9uck555csvr9agbsj3e8ukg6', '173.252.79.4', 1544003140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343030333134303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nguudhif36qmuok3b4dokn9g3th37fu1', '54.186.178.251', 1545201209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353230313230393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nj90nl2s6n1e7629efsciohvujr84464', '118.71.18.92', 1545201331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353230313038333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('njs8bc2sl1kqfspv5n29d9pjsg7n3l5p', '66.249.84.44', 1546246195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234363139313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nkj8ogctbilekl5q9m2j1i1rgrkp066c', '59.153.245.231', 1546485060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438353033363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nnl2gmfhjc6apjeq47skpc2ejlcoc73g', '66.249.71.44', 1547003219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373030333231393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nond1uiofl066mvnf6bgofg6esi2n29e', '171.241.151.224', 1545107233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373231333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435303138343531223b6c6173745f636865636b7c693a313534353130363739343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nosvd8pp0hreml9j1d9pjqgjqvik8dj5', '122.228.19.80', 1545162208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353136323230383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('npd321o7hpkc72ca70siobu7enbbdi4t', '66.102.6.10', 1544676822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343637363832323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('npje1d80tqe37turem1godihe3ibg7f1', '173.252.79.2', 1544003140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343030333134303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('npq9rr2u9eoopf93lnmftcoj50p0nt1p', '178.154.171.3', 1545711538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353731313533383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nr57iephmiour4kiq71me6n9gp6hsfup', '173.252.87.17', 1543200128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333230303132383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nsfadv8ecb0l8r7a5np46tethfoi6ssf', '86.190.77.138', 1546807644, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363830373634343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ntj7o963c3j0i2n7s81v4orube7vom2c', '35.155.227.129', 1545626208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353632363230383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nvu188jnhaah2ca7s68kkb3iacohf1ap', '37.9.113.172', 1545182963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353138323936333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('o0be7fu64504bamv5aa8mj1e5fl3lgr8', '1.55.134.168', 1543594372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333539343337323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('o0p79mdaa0flctffm0r16f6p5slda6io', '66.249.69.237', 1543528876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333532383837363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('o1dhg9oev26rs0uf7piar0jdcgfu7dat', '42.113.106.145', 1545616744, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353631363732313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('o3032r4lpgkvon97e5ca0uh5apa2cp2b', '112.72.94.124', 1543161062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333136313035333b6c616e67416262726576696174696f6e7c733a323a22656e223b),
('o5lqf4vnqsnev7dmt2tttpmi4mo0neat', '173.252.79.3', 1545645698, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634353639383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('o67chak79q7ktr4i8t3cmh46cgvuh6oo', '113.185.15.88', 1545363512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353336333531323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('oevfa16l7u128rv44sh2285bl5lbjdbh', '27.76.240.139', 1543896524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839363532343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383030343930223b6c6173745f636865636b7c693a313534333839313638383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('oihtejjp4fef04kdgal2jjrqn49eg4np', '45.64.41.2', 1543043833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333034333833333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ol26sci92o5n5jtgijqvporlh81enk5i', '66.249.71.85', 1545159443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353135393434333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('olemr1f2nqn707vlr86dhb9af48eonrq', '66.249.71.44', 1546263466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363236333436363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('omarsamd886vspnm06il3p4g1fto3fml', '173.252.79.8', 1546488375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438383337353b),
('oq1cpeckgs1coakqjfpaf1nrb2vt2hjp', '178.154.200.77', 1544655610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343635353631303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('os5ia8gfknhj921s5c0hkni3leb0qubt', '203.119.8.103', 1546342058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363334323035383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('osk78lrq2tt42ig2ut2pv2h50r8kn03t', '171.224.2.130', 1544229136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343232393038353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('osoor4ldh44974vhi0bq78pqsbe5nl0u', '14.232.161.66', 1546566125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363536353931343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ot1ja0jp7e1h99o09cnlju2voefrvmco', '178.154.171.3', 1543941418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333934313431383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('otp05cugj933elg4p7gh4vstnqbp3hqe', '66.249.82.174', 1545051049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353035313034393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('oviu8ol42tsh46j50hi05ss036o36p5t', '173.252.95.25', 1544432255, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343433323235353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p0q14at63vka70hrbrtovaoimtpr9d9g', '171.224.2.130', 1543961053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333936313035333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p251uqgpv7ac9mu7rdha4f1rin64kts7', '66.249.71.44', 1546720834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363732303833343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p29o054ostqnrp3kt3rea4ta4i40kok3', '178.154.171.3', 1544995292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343939353239323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p3v3u112lgiffne06ehi3r5otd41pgpt', '27.67.139.10', 1546680715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363638303731353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p42rn3nitiecmipng9ftf8upevnldnf9', '54.204.206.3', 1543980331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938303333313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p5hngutmc7956bfk4003brrj25na792c', '173.252.79.3', 1544948887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343934383838373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p62gdd9pnckds4298sd32hjd4bumn9f7', '14.162.190.109', 1546161910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363136313836343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p66klqs97f3dgf91o818o2sfr8v18oqn', '27.67.136.20', 1546859700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363835393730303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p7spfode7ds8q88l1f2odv2097ojvf1s', '117.1.160.13', 1546226466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363232363434383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p8u0s9tn60s2apod398ld3a6h3s89jt3', '209.17.96.234', 1544138860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343133383836303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p933t6c7u4jsq26e1akp0i4g1nh6clbm', '173.252.95.15', 1543895985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353938353b),
('pc4hs3mbu8kgua0bakavccmjbn1se6h4', '49.195.72.39', 1546238150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363233383135303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pdld254t1qr5us72g65thff42g5aj394', '66.220.149.38', 1545018632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353031383633323b),
('ph02ruikhqc221v142nghea86jlj9qee', '171.229.240.96', 1545166816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353136363831363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pjhtsakq5n4ardpibg7d951qfijpkcal', '66.249.71.62', 1543989876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333938393837353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pka4023e7n0e1mbjj1023vbof4u29uht', '222.252.14.240', 1546559840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363535393834303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pm0ubfcfbnapgfkdinjt082m3olqhm5o', '13.57.233.99', 1547094949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373039343934393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pmh27sg28kb09v91ct8jco9a6gqmvaqu', '118.70.180.4', 1546174739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363137343733393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pn0iosuuctf13eak7e6ljjc6gp41ekca', '13.57.233.99', 1544570310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343537303331303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pnuel881b10qd9eko7f4ugunl19icggl', '58.187.161.20', 1544064917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343036343931373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pomfhdqr53n82f665vae933to2sdli0j', '69.171.251.11', 1546490509, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363439303530393b),
('ppf5d1ee3gq537pldq1hqs13vfp82mqr', '14.162.166.181', 1546754897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363735343837343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pptodsu06464b6vbb8te1mlt1s8hr66c', '173.252.79.6', 1543455694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333435353639343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pq8sfij6u3dh79hp26erlamnk1o54q3c', '173.252.87.5', 1543136596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333133363539363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pquud7eibi103oam2spgd8hua483pct9', '171.241.151.224', 1544778676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343737383435373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('q0b88t6qf7dp9t8iptdleddt4ehul9j9', '118.70.254.4', 1546395768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363339353736383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('q2m4qolnhe8g0i5fq9q9fhid0hehip9s', '60.51.17.17', 1546909706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363930393637323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('q7cij5bptnp3psn25thh4nt471eq2mgh', '183.81.85.199', 1546156413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135363431333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('q8tpc1f92om8en4tlqr9r66d8rocph9a', '1.55.134.168', 1543572674, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333537323637343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qc29412kdp4o1bmnh3chjav6mvnai1mv', '173.252.79.2', 1543896548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839363534383b),
('qdhdamfbbqageeauq512k26vme8hng49', '1.55.134.168', 1543489704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333438393637303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qffa2ev32jskvbcchl8b6bf3vnkoa1tu', '52.53.201.78', 1545544746, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353534343734363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qkvjg252843r1t8l54mloe0nqnl92s9v', '167.99.106.216', 1546884572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363838343537323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qm1bu8c1m370qg04qkcb0v6r8soe9bsg', '113.190.97.212', 1547207980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230373938303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qni572cdkh7ngln6uemhq828nr9i2g9u', '52.53.201.78', 1544938967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343933383936373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qq00h2ls1mvm25n76cr5k0see9ncvntt', '113.185.14.81', 1546595647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363539353632353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qq0vmdi1fropmqfrnn309dc85ecu1dkc', '171.241.195.62', 1544925290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343932353232313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qqmhs4p85fsv8lnfujm63erdc1qkkpba', '171.237.221.191', 1545485643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353438353633383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qrh2ruci4qsrbjmngsfjjjpe5ge0fors', '178.154.200.77', 1543960406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333936303430363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qrhmua3hfmp2e5099rpbegljthb6kh7f', '173.252.87.14', 1543038017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333033383031373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qtg68e25eo8cj8kdvrd21hegtq6ff272', '137.111.13.126', 1545547466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353534373339373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qu8uloq3s5hurdareniadcos8sde1dm0', '173.252.95.36', 1545110975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303937353b),
('qvv7jvim7si4rg7epu4123ta4el0bs09', '147.135.254.225', 1545505369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353530353336393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qvvn1ht159mki8l83hkm949l9m6a99rk', '116.96.252.127', 1546485188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438343932323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('r36omphk8jtbc2fm5lv6a7kpv9f38mj9', '178.154.171.3', 1543959852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333935393835323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('r4kr32chgfu4nsd53djbfn5fh8f91hk8', '101.53.37.130', 1547206231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373230363233313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('r5qhulo6hqcp1rm21uu0i4lf2arjan6v', '45.64.41.4', 1543130305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333133303330353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('r7efdn551aovv3b8d233ffcsia14rr9h', '113.190.98.185', 1545543898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353534333839383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('r7qgnhv1r3b6olt8mg1gvur5dishhmue', '173.252.87.5', 1543091401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333039313430313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('reldaq3mnffo04i4s39ku9lnej93a4av', '117.4.244.105', 1546405645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363430353634353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ri074f8puh7t7tsf92p962p5vsc33ac4', '118.70.129.125', 1547116987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373131363938373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rkrriprhqh569aa07iugko5bsuiplhb0', '113.23.38.99', 1546704608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363730343438363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rlc0ugh2dgb8u1tc0b8q7s6avkblqfpu', '14.162.88.192', 1546154478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363135343437383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rm7fkva48d7foskmrq457jv3qlou2mtk', '171.241.151.224', 1545107789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130373639373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435303138343531223b6c6173745f636865636b7c693a313534353130363739343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rn31eu2ahr4qikd2335vaai92tt3sefb', '123.16.1.8', 1546484961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438343936313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rnvsfcnelkvp5mq8rv5qis472pfh6kat', '123.24.1.210', 1545112729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131323732393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rs3kiemulg04p9siahd7qp4v4rle5ns1', '66.249.64.202', 1546840015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363834303031353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rsenfdktq5ormv8niokqur0pola2qhon', '171.241.151.224', 1545018619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353031383631383b),
('rtbs9bffhnctq6aovp4mvaganqce98cn', '27.76.240.139', 1543977990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333937373736343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433383935393331223b6c6173745f636865636b7c693a313534333937373736343b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('s1safbsu6rer0ut4qbuvvg3sg1gdohfl', '14.231.87.158', 1546477686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363437373631303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('s3qoada0blvn6uio1crqsjg2monbo1rv', '31.13.127.11', 1546405263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363430353236333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('s5mqumok08b6s30im9nm7j6ba80rjve9', '35.155.227.129', 1545623338, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353632333333383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('s74desfu6mkamhdm1hlic3t12ml7knmr', '14.231.63.211', 1544444884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343434343838343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('s76ldq6smmfrec5ajg1nde1aod61dufe', '42.114.30.243', 1546405621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363430353632313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('s7nbds90gicr46ia8g4c1uv759nsipti', '52.53.201.78', 1545747090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353734373039303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('saefh2s3t5qnhh8o18rrc0g5thddke3n', '66.102.6.10', 1546249831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363234393832363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sco8dltuv2tdk3r0sot347mj3q5kosop', '117.7.237.225', 1545640232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634303233313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sj90j9odvs65br351dno70l23l7t8umd', '178.154.200.77', 1546512364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363531323336343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sjt7jdd3q55s4v6u3eioj1307ojerd5n', '27.79.161.108', 1544864377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343836343337373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sk3lmc5ff11bq89336am2tvqpc5h8jjr', '178.154.171.3', 1546795827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363739353832373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('smr7t45igs3gb63olk24b62g0ot0l5sr', '173.252.79.3', 1546680717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363638303731373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sq994759vsejpakqdkp6sh1frkvssnea', '38.130.163.229', 1545502318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353530323331383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sr4n5ikalep4jvfdston8kuduocimgbq', '209.17.96.58', 1544529248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343532393234383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('srep6kn85g1d30091dr1quqarcsgglp9', '42.113.156.172', 1545647823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634373735343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sts0noo2khkcvnehl567hn0st1js407e', '59.153.244.78', 1546743476, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363734333437363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('t602sgll3chrnoci10jht00ka127l90v', '18.206.159.236', 1545702862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353730323836323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('t6e8kshgv9ktfvg9fl27q4qk9230ua2c', '178.154.171.3', 1547048530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373034383533303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('t912h5gjmodd80n1vv1c0omv4k3hig6f', '116.96.252.127', 1546486448, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438363135393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tc5v7eps3c6ilv41mr93q2qcohmd74lv', '178.154.171.3', 1543892656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839323635363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('td7t57fnvkqj86oorgdmmrq5pare7idc', '27.76.240.139', 1543896771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839363537353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353433383931363838223b6c6173745f636865636b7c693a313534333839313832383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tenj4fp1qa2o25pg9gujn1h2eb2cufm2', '42.117.156.160', 1546782085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363738323037373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tf4ba1j2uajmfjrsg5t3o67olpkk4h2h', '173.252.95.31', 1543897601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839373630313b),
('tfhb2k4f5qvq6h2k7ao59j1sv2q0dstq', '118.70.254.15', 1545469122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353436393037383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tkvfsvqdh0vinc9lv5rs1d9fqfhgfchf', '173.252.79.7', 1543896549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839363534393b),
('tlg0bpftcovik3tob5sbibcujjpl0ek2', '52.53.201.78', 1546556529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363535363532383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tn1bbmu93ir2fjr671uvqr9tgg9mde97', '171.237.221.191', 1545486263, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353438363137333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tpsso88ompb3rojlbpn54pf330caqlar', '171.241.151.224', 1545106929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353130363930393b617574685f6d6573736167657c733a35333a223c703e54c3a069206b686fe1baa36e20686fe1bab763206de1baad74206b68e1baa975206b68c3b46e6720c491c3ba6e673c2f703e223b5f5f63695f766172737c613a313a7b733a31323a22617574685f6d657373616765223b733a333a226f6c64223b7d),
('tqavu5uki7c5bv8cjr5eu97qngq4gvvf', '13.57.233.99', 1544852827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343835323832373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tqqtq1pgjfi4n8agv7je6ckfsqp2fb3e', '178.154.171.3', 1543883584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333838333538343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('traorcoe7imc4ci77acn4bb0va0hsh70', '13.57.233.99', 1545419763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353431393736333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tu5620ic3d59e79vklh132kmb2i9bau1', '173.252.95.29', 1543899269, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839393236393b),
('u1itqu9pnuf0pomb9hhb7k5l2v816s2q', '178.154.171.3', 1546730362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363733303336323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('u3067b39nn5va40kfr340eai18pksmts', '118.70.212.42', 1543472202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333437323230323b),
('u42cu9lcihnjo2qjhq40d58stu9d1fu4', '116.96.252.127', 1546487100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438363831353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353435383739343432223b6c6173745f636865636b7c693a313534363438343932323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('u55h2ovquaa7fq2iulmjhkko6vbkbtkr', '123.24.45.114', 1546674057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363637343035373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('u64r2maopv6qfrvq2rmpok814t2s0frh', '31.13.115.15', 1545190607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353139303630373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('u9vhca3gr0pn3p25cdcmke3a4fqui9v6', '113.190.106.25', 1545927382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353932373338323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('uavgkql70k1sjc704hrqefm3snu9h0qm', '59.153.242.60', 1546777013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363737373031333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ub7ceolb46jf7lelo0rvf78fseum2e26', '173.252.95.15', 1543895982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839353938323b),
('uf4tdhmeoobd7ggh3bktj91nt2v0h377', '58.186.223.5', 1543052201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333035323130393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ufp1jga0f2c7g8jsijsjtd12op7s1hma', '171.241.151.224', 1545110900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131303930303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ugal0c71tpd16c2g5egpl72117ibf3em', '69.171.251.22', 1543939514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333933393531343b),
('uh8k56ia7d5nke1qc2hm9lsu6g1p7p9a', '66.249.82.170', 1546442012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363434313833313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('uhc25ul7ue64nq8iql2voag0mja8v07i', '69.171.251.22', 1544431745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343433313734353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('uiki7ihbcr0d73h1k1ckntgb0melddm7', '59.153.242.32', 1546660182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363636303134363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('uj7l019qcu8dbla4q8smkjo2vnedp71g', '66.226.75.93', 1547022416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534373032323431363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ulevu66kcrvegs61pi9db6ccat2nus7l', '178.154.200.77', 1546755849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363735353834393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('un6h1dduaslqmkc0iaputrojs15dmhhp', '69.171.251.9', 1543897585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839373538353b),
('unesahrg62uijpsfv42guget4v9buhoq', '173.252.87.5', 1543091406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333039313430363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ut5d0i0r0q5848herbglnjndskgq0smd', '178.154.171.3', 1546750471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363735303437313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('uu2q4l1kts0c5c1vt243eojvk7s0cdn4', '69.171.251.29', 1543939515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333933393531353b),
('v0kmufdtv0qtr09gl9s5npg5t8dkm747', '27.67.43.4', 1545814158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353831343030303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v1e38lhmr99vujojfr0vibi2odm19mad', '137.111.165.22', 1545547377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353534373238303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v2n5470nbs7u5q62cphsdnuapuca2ik7', '117.1.249.116', 1546798388, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363739383337303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v2vfe416fej6je5tv1ngj8al9916itkq', '178.154.171.3', 1546523576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363532333537363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v4ohokb07mcdkkh3ldul2s6r0ae1q592', '173.252.87.19', 1545112795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353131323739353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v7od9asp0lgn569io6lunu7jgm8ftrqf', '31.13.115.6', 1545190575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353139303537353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v875dcjai3h026al72mt6big2csr2jdu', '118.70.254.15', 1545469041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353436393034313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vbd9mvlnoessj022dpjom9tr4khd6pnk', '14.162.91.197', 1546507668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363530373634393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vdfihapvjakjkm5f819jvgvdu101gjs1', '118.70.118.239', 1545644757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353634343535393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vhbicts2pp48k3e28mlq8ukeg62it329', '113.179.40.113', 1545461457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353436313330333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vi9ceoi8s6dvfustuu04ln9fi9dk6kqm', '173.252.79.2', 1544003136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343030333133363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('viu245d0fe5niluj04u40igts2fci650', '123.16.0.44', 1545639918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353633393931383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vkplp9dd59pfvmjocirm8jatsc5qqu92', '66.249.64.204', 1546801673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363830313637333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vm6n0koo6u79aq7r6s97qbik97ki92mh', '209.17.97.90', 1546395626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363339353632363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vmos0a88tlkot9pd9cu24r13ijuenn6i', '178.154.171.3', 1545926871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353932363837313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vsg5df98eijo7jsv3qa1slg6ltf3s24t', '14.231.87.158', 1546487658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534363438373634393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353436343834393232223b6c6173745f636865636b7c693a313534363438373334323b),
('vv0atqqpoahi458p1bi35478kpgi60av', '178.154.200.77', 1544211833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343231313833333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vvd581fjfq7pgu4o6tsd90ms88kf5rui', '171.224.2.130', 1543957322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333935373331383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vvsbtoc253cm30rb0sfrdkjlaop04m80', '27.76.240.139', 1543891883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534333839313638383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383030343930223b6c6173745f636865636b7c693a313534333839313638383b);

-- --------------------------------------------------------

--
-- Table structure for table `client_gmail`
--

CREATE TABLE `client_gmail` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_gmail`
--

INSERT INTO `client_gmail` (`id`, `email`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, '12quyen12@gmail.com', '2018-05-14 09:01:43', 'administrator', '2018-05-14 09:01:43', 'administrator', 0),
(2, 'quyen@gmail.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `value`) VALUES
(1, 'number_desk_placed_online', '2'),
(2, 'total_number_desk_online', '3');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `numberphone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `map` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `modified_at` datetime NOT NULL,
  `modified_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `company`, `address`, `numberphone`, `email`, `website`, `map`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 'Teddy&#039;s American Grill house', '51 Lý Thường Kiệt, Hoàn Kiếm Hà Nội', '(84) 90 464 11 51', 'teddysgrillhouse@gmail.com', 'www.teddys.com', '&lt;iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3597.551769504351!2d152.66335424079355!3d-25.619806616947017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6beb5ce97fefd8f1%3A0x8dafd7f59c5e4c8!2s917+Teddington+Rd%2C+Teddington+QLD+4650%2C+%C3%9Ac!5e0!3m2!1svi!2s!4v1540800880797\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen&gt;&lt;/iframe&gt;', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `desk`
--

CREATE TABLE `desk` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_id` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desk`
--

INSERT INTO `desk` (`id`, `title`, `slug`, `floor_id`, `slot`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, 'Bàn số 1', 'ban-so-1', 12, 6, 'available', '2018-05-30 15:35:38', 'administrator', '2018-05-30 15:35:38', 'administrator', 0),
(2, 'Bàn số 2', 'ban-so-2', 13, 8, 'available', '2018-05-07 20:27:55', 'administrator', '2018-05-07 20:27:55', 'administrator', 0),
(3, 'Bàn số 3', 'ban-so-3', 14, 6, 'available', '2018-05-08 16:49:17', 'administrator', '2018-05-08 16:49:17', 'administrator', 0),
(4, 'Bàn số 4', 'ban-so-4', 13, 7, 'available', '2018-05-30 10:32:42', 'administrator', '2018-05-30 10:32:42', 'administrator', 0),
(5, 'Bàn số 5', 'ban-so-5', 12, 6, '123', '2018-05-30 10:32:33', 'administrator', '2018-05-30 10:32:33', 'administrator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`id`, `title`, `slug`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(12, 'Tầng 1', 'tang-1', '2018-05-30 15:35:17', 'administrator', '2018-05-30 15:35:17', 'administrator', 0),
(13, 'Tầng 2', 'tang-2', '2018-05-07 17:34:39', 'administrator', '2018-05-07 17:34:39', 'administrator', 0),
(14, 'Tầng 3', 'tang-3', '2018-05-07 17:45:47', 'administrator', '2018-05-07 17:45:47', 'administrator', 0),
(15, 'Tầng 4', 'tang-4', '2018-05-30 14:16:54', 'administrator', '2018-05-30 14:16:54', 'administrator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `check_menu_children` int(11) NOT NULL DEFAULT '0' COMMENT '0 : nochildrenmenu; 1 : childrenmenue',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_post` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `sort`, `parent_id`, `url`, `slug`, `is_activated`, `is_deleted`, `check_menu_children`, `created_at`, `created_by`, `updated_at`, `updated_by`, `slug_post`) VALUES
(1, 4, 0, 'http://localhost/teddy/gioi-thieu/', 'gioi-thieu', 0, 0, 0, '2018-06-04 15:39:45', 'administrator', '2018-06-04 15:39:45', 'administrator', ''),
(4, 3, 0, 'http://localhost/teddy/trang-chu', 'trang-chu', 0, 0, 0, '2018-06-04 09:34:50', 'administrator', '2018-06-04 09:34:50', 'administrator', NULL),
(5, 6, 0, 'http://localhost/teddy/bai-viet/', 'bai-viet', 0, 0, 1, '2018-06-04 10:12:46', 'administrator', '2018-06-04 10:12:46', 'administrator', ''),
(6, 2, 5, 'http://localhost/teddy/tin-tuc-1/', 'tin-tuc-1', 0, 0, 0, '2018-06-04 10:07:48', 'administrator', '2018-06-04 10:07:48', 'administrator', ''),
(7, 1, 5, 'http://localhost/teddy/tuyen-dung/', 'tuyen-dung', 0, 0, 1, '2018-06-04 10:11:46', 'administrator', '2018-06-04 10:11:46', 'administrator', ''),
(8, 5, 0, 'http://localhost/teddy/thuc-don/', 'thuc-don', 0, 0, 0, '2018-06-04 09:34:50', 'administrator', '2018-06-04 09:34:50', 'administrator', NULL),
(9, 7, 0, 'http://localhost/teddy/lien-he', 'lien-he', 0, 0, 0, '2018-06-04 09:34:50', 'administrator', '2018-06-04 09:34:50', 'administrator', NULL),
(10, 0, 7, 'http://localhost/teddy/tuyen-dung/1', 'tuyen-dung', 1, 0, 1, '2018-06-04 10:14:44', 'administrator', '2018-06-04 10:14:44', 'administrator', '1'),
(11, 0, 10, 'http://localhost/teddy/bai-viet/', 'bai-viet', 1, 0, 0, '2018-06-04 10:14:44', 'administrator', '2018-06-04 10:14:44', 'administrator', ''),
(17, 1, 0, 'http://localhost/teddy/bai-viet/1', 'bai-viet', 0, 0, 1, '2018-08-22 16:09:28', 'Nguyễn', '2018-08-22 16:09:28', 'Nguyễn', '1'),
(18, 0, 17, 'http://localhost/teddy/bai-viet/aaaaaaaaa', 'bai-viet', 0, 0, 0, '2018-08-22 16:09:28', 'Nguyễn', '2018-08-22 16:09:28', 'Nguyễn', 'aaaaaaaaa'),
(19, 2, 0, 'http://localhost/teddy/tin-tuc-1', 'tin-tuc-1', 0, 0, 0, '2018-08-22 16:41:03', 'Nguyễn', '2018-08-22 16:41:03', 'Nguyễn', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu_lang`
--

CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_lang`
--

INSERT INTO `menu_lang` (`id`, `menu_id`, `title`, `language`) VALUES
(1, 1, '                           Giới thiệu', 'vi'),
(2, 1, 'About                           ', 'en'),
(7, 4, 'Trang chủ', 'vi'),
(8, 4, 'Home', 'en'),
(9, 5, '                  Bài viết', 'vi'),
(10, 5, 'Blog                  ', 'en'),
(11, 6, '                         Tin tức', 'vi'),
(12, 6, 'News                         ', 'en'),
(13, 7, '                   Tuyển dụng', 'vi'),
(14, 7, 'Recruitment                   ', 'en'),
(15, 8, '   Thực đơn ', 'vi'),
(16, 8, 'Menu        ', 'en'),
(17, 9, 'Liên hệ', 'vi'),
(18, 9, 'Contact', 'en'),
(19, 10, '      COn con', 'vi'),
(20, 10, 'COn con      ', 'en'),
(21, 11, '                                     conconcon', 'vi'),
(22, 11, 'conconcon                                     ', 'en'),
(33, 17, '       baibai', 'vi'),
(34, 17, 'baibai       ', 'en'),
(35, 18, '     con baibai', 'vi'),
(36, 18, 'con baibai     ', 'en'),
(37, 19, '   tin tuc 1', 'vi'),
(38, 19, 'aaaaaaaa      ', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `slug`, `avatar`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(5, 12, 'teddys-happy-new-year-combo', '', 'aba07814742e27b352d12d12e30c8aaa.jpg', '2019-01-03 11:21:31', 'administrator', '2019-01-03 11:21:31', 'administrator', 0, 0),
(6, 13, 'tuyen-dung-4', '', '77772f1e45478de9083321d09ce94b56.jpg', '2018-10-22 14:52:26', 'administrator', '2018-10-22 14:52:26', 'administrator', 0, 0),
(8, 13, 'tuyen-dung-3', '', 'b4f0b0326ad7213383c94a3902faf2ee.jpg', '2018-10-22 14:51:43', 'administrator', '2018-10-22 14:51:43', 'administrator', 0, 0),
(9, 13, 'tuyen-dung-2', '', 'b255ec48d86e25e68a166f60d789771d.jpg', '2018-10-22 14:50:52', 'administrator', '2018-10-22 14:50:52', 'administrator', 0, 0),
(10, 11, 'bai-viet-1', '', 'ddb662b76455f5eb7bc1b403e7227ffc.jpg', '2018-10-22 14:49:23', 'administrator', '2018-10-22 14:49:23', 'administrator', 0, 0),
(12, 13, 'tuyen-dung-1', '', '165207d9f9af29947f346c943a29cc80.jpg', '2018-10-22 14:47:47', 'administrator', '2018-10-22 14:47:47', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0 : list; 1 : detail',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `parent_id`, `project`, `image`, `sort`, `type`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(11, 'bai-viet', 0, '', 'd85646a0c5ab793da19e3d1d605507d1.jpg', 1, 0, 0, 0, '2018-10-22 14:42:58', 'administrator', '2018-10-22 14:42:58', 'administrator'),
(12, 'tin-tuc-1', 11, '', 'ec5094961dcbdd96ded9ffb28b44bf99.jpg', NULL, 0, 0, 0, '2018-10-22 14:44:32', 'administrator', '2018-10-22 14:44:32', 'administrator'),
(13, 'tuyen-dung', 11, '', 'c8274b7853bbcef98f7766756b1dde4a.jpg', NULL, 0, 0, 0, '2018-10-22 14:46:40', 'administrator', '2018-10-22 14:46:40', 'administrator'),
(14, 'con-tuyen-dung', 13, '', NULL, NULL, 0, 0, 1, '2018-05-21 16:04:28', 'administrator', '2018-05-21 16:04:28', 'administrator'),
(15, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 14, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:06:11', 'administrator', '2018-05-30 12:06:11', 'administrator'),
(16, 'asdasdasdasdasd', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:21:30', 'administrator', '2018-05-30 12:21:30', 'administrator'),
(17, 'asdasdasdasdasd-1', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:44:55', 'administrator', '2018-05-30 12:44:55', 'administrator'),
(18, 'asdasdasdasdasd-2', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 12:45:31', 'administrator', '2018-05-30 12:45:31', 'administrator'),
(19, 'qqqqqqqqqqqqqqq', 0, '', NULL, NULL, 0, 0, 1, '2018-05-30 14:05:04', 'administrator', '2018-05-30 14:05:04', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `post_category_lang`
--

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `post_category_id`, `title`, `language`, `metakeywords`, `metadescription`) VALUES
(21, 11, '   Bài viết', 'vi', '  Danh muc mới', 'danh mục mới'),
(22, 11, 'BLog   ', 'en', '  category new', 'category new'),
(23, 12, '    Tin tức 1', 'vi', '     Tin tức 1', '     Tin tức 1'),
(24, 12, 'News    ', 'en', ' News    ', ' News    '),
(25, 13, '  Tuyển dụng', 'vi', '   Tuyển dụng', '   Tuyển dụng'),
(26, 13, 'Recruitment  ', 'en', ' Recruitment  ', ' Recruitment  '),
(27, 14, 'COn tuyen dung', 'vi', '', ''),
(28, 14, 'COn tuyen dung', 'en', '', ''),
(29, 15, ' aaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'vi', '', ''),
(30, 15, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa ', 'en', '', ''),
(31, 16, 'asdasdasdasdasd', 'vi', '', ''),
(32, 16, 'asdasdasdasdasd', 'en', '', ''),
(33, 17, 'asdasdasdasdasd', 'vi', '', ''),
(34, 17, 'asdasdasdasdasd', 'en', '', ''),
(35, 18, 'asdasdasdasdasd', 'vi', '', ''),
(36, 18, 'asdasdasdasdasd', 'en', '', ''),
(37, 19, 'qqqqqqqqqqqqqqq', 'vi', '', ''),
(38, 19, 'qqqqqqqqqqqqqqq', 'en', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_lang`
--

CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `title`, `description`, `content`, `language`, `metakeywords`, `metadescription`) VALUES
(9, 5, '  Teddy\'s Happy New Year Combo', ' Teddy đã sẵn sàng mở cửa chào đón và phục vụ các bạn một măm mới an lạnh và ấm áp nhất.  Cùng với Teddy’s soft opening để chào đón không khí tưng bừng của Năm mới 2019, hãy để chúng tôi dành tặng bạn và người thân những ưu đãi đặc biệt nhất!', ' <p>NEW YEAR COMBO OFFER</p>\r\n<p>Set 1: Cheer our love (Combo cho 2 người) <br />- 1 phần Caesar Salad<br />- 2 phần Pan-seared Topblade Steak<br />- Choice of Sauce<br />- 1 phần French Fries<br />- 2 phần Yogurt Parfait<br />- Tặng k&egrave;m 2 ly vang<br />Chỉ với c&ograve;n 429k (Gi&aacute; gốc 530k)</p>\r\n<p>Set 2: Let&rsquo;s Hang out (Combo cho 4 người) <br />- 1 phần Cobb Salad<br />- 4 Pumpkin Soup<br />- 1 phần Tortilla with Salad and Guacamole<br />- 2 phần BBQ Pork Ribs (1kg)<br />- 4 phần Creme Brulee<br />- Tặng 1 chai vang<br />Chỉ với c&ograve;n 939k (Gi&aacute; gốc 1038k)</p>\r\n<p>Set 3: We&rsquo;re all invited (Combo cho 6 người) <br />- 2 phần Caesar Salad<br />- 2 phần Onion Rings<br />- 1 đĩa nướng tổng hợp: 2 phần Pan-seared Topblade Steak (400gr), 2 phần BBQ Pork Ribs (1kg), 1 phần Chicken Wings, French Fries (300gr), salad, rau củ nướng &amp; sauce.<br />- Tặng 1 chai vang<br />Chỉ với c&ograve;n 1129k (Gi&aacute; gốc 1400k)</p>\r\n<p>----------</p>\r\n<p>Lưu &yacute;:<br />Rượu vang chỉ tặng cho kh&aacute;ch đặt b&agrave;n.<br />Combo kh&ocirc;ng d&ugrave;ng k&egrave;m với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.<br />Gi&aacute; tr&ecirc;n chưa bao gồm 10% VAT <br />Combo được &aacute;p dụng từ ng&agrave;y 31/12 đến hết ng&agrave;y 2/1.</p>', 'vi', '    ', '    '),
(10, 5, 'News 1    ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum   ', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p> ', 'en', '    ', '    '),
(11, 6, 'Tuyển dụng 4', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'vi', ' Tuyển dụng 4', ' Tuyển dụng 4'),
(12, 6, 'Tuyển dụng 4', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', ' Tuyển dụng 4', ' Tuyển dụng 4'),
(13, 8, 'Tuyển dụng 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'vi', ' Tuyển dụng 3', ' Tuyển dụng 3'),
(14, 8, 'Tuyển dụng 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', ' Tuyển dụng 3', ' Tuyển dụng 3'),
(15, 9, 'Tuyển dụng 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'vi', ' Tuyển dụng 2', ' Tuyển dụng 2'),
(16, 9, 'Tuyển dụng 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', ' Tuyển dụng 2', ' Tuyển dụng 2'),
(17, 10, 'Bài viết 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'vi', ' Bài viết 1', ' Bài viết 1'),
(18, 10, 'Bài viết 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', ' Bài viết 1', ' Bài viết 1'),
(21, 12, 'tuyển dụng 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'vi', 'tuyển dụng 1', 'tuyển dụng 1'),
(22, 12, 'tuyển dụng 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', 'tuyển dụng 1', 'tuyển dụng 1');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(20) DEFAULT NULL,
  `discount` int(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive',
  `isspecial` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `slug`, `avatar`, `image`, `price`, `discount`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`, `isspecial`) VALUES
(20, 15, '1', '697a80227c61aad750549cb18b510244.jpeg', '[\"697a80227c61aad750549cb18b510244.jpeg\"]', 100000, 10000, '2018-05-10 16:51:51', 'administrator', '2018-05-10 16:51:51', 'administrator', 1, 1, 0),
(21, 15, 'new-year-set-1-cheer-our-love-2pax-1', 'd753d83ffe6e675ee0a0e4a25c92b859.jpg', '[\"736c15bf3a6eb9898c9fcb39b9a96ea1.jpg\"]', 429000, 0, '2019-01-03 10:56:10', 'administrator', '2019-01-03 10:56:10', 'administrator', 0, 0, 0),
(22, 15, 'new-year-set-1-cheer-our-love-2pax', 'ed931ce4aa908ed150b7fffe0ce2759e.jpg', '[\"1b5157a132641149ee97acbf60eaf1a2.jpg\"]', 530000, 101000, '2019-01-04 23:47:20', 'administrator', '2019-01-04 23:47:20', 'administrator', 0, 1, 0),
(23, 15, 'new-year-set-2-lets-hang-out-4pax', 'f8fc46d229f875a507762bd068a1061a.jpg', '[\"85c33d2195638b9ad19d09460c6f49f7.jpeg\"]', 1038000, 99000, '2019-01-03 10:52:13', 'administrator', '2019-01-03 10:52:13', 'administrator', 0, 0, 0),
(24, 15, 'new-year-set-3-were-all-invited-6pax', 'a4ba27572c3c02ef0e974d49297357ee.jpg', '[\"9002a0c0730f0efdab05478ce59a4787.jpeg\"]', 1129000, 0, '2019-01-03 10:50:51', 'administrator', '2019-01-03 10:50:51', 'administrator', 0, 0, 0),
(27, 15, 'cobb-salad', '53710a142273d0867da8250159887b8e.jpg', '[\"aad98acd30e26f56ac8b8ee5be780dce.jpg\"]', 129000, 0, '2019-01-03 10:51:49', 'administrator', '2019-01-03 10:51:49', 'administrator', 0, 0, 0),
(28, 15, 'loaded-chili-soup', '971025d8c898277b0312ff2db487cf20.jpg', '[\"5474e881156b307128d216986e4f4a65.jpg\"]', 89000, 0, '2019-01-03 10:54:20', 'administrator', '2019-01-03 10:54:20', 'administrator', 0, 0, 0),
(29, 15, 'chili-fries', 'b04bfc210ac0fa8732a2ec9260c59270.jpg', '[\"b7d18ef0249d80228ba3b544d2652398.jpg\"]', 89000, 0, '2019-01-03 11:04:23', 'administrator', '2019-01-03 11:04:23', 'administrator', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1: deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `slug`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(15, 'chefs-choice', 0, 0, '2019-01-04 23:46:33', 'administrator', '2019-01-04 23:46:33', 'administrator', '', '98f44e81677677ec265179c15a8c6900.jpg', NULL, 0),
(16, '2', 15, 1, '2018-05-30 15:34:36', 'administrator', '2018-05-30 15:34:36', 'administrator', '', 'cd8d63d23a6bd32a46ad381f6fd7903f.png', NULL, 0),
(17, 'okokok', 0, 1, '2018-05-30 11:30:33', 'administrator', '2018-05-30 11:30:33', 'administrator', '', NULL, NULL, 0),
(18, 'test1', 16, 1, '2018-05-30 15:33:55', 'administrator', '2018-05-30 15:33:55', 'administrator', '', '43279078ee56c8a0ef505548b43a766a.jpg', NULL, 1),
(19, 'steak', 0, 0, '2018-10-22 10:01:30', 'administrator', '2018-10-22 10:01:30', 'administrator', '', '020d5e63a2a4f6143a6b5d4c1e2accf9.jpg', NULL, 0),
(20, 'hamburger', 0, 0, '2018-12-27 10:02:17', 'administrator', '2018-12-27 10:02:17', 'administrator', '', 'a9a59ae486e747611c48a6d2c5faa106.jpg', NULL, 0),
(21, 'craft-beer', 0, 0, '2018-12-27 10:06:18', 'administrator', '2018-12-27 10:06:18', 'administrator', '', 'fa7f62871ddf356b82275d8b50c6b7b5.jpeg', NULL, 0),
(22, 'others', 0, 0, '2018-10-22 10:04:31', 'administrator', '2018-10-22 10:04:31', 'administrator', '', '8511c2eaee2bbfe09ddf286b1a553ead.jpeg', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_category_lang`
--

CREATE TABLE `product_category_lang` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category_lang`
--

INSERT INTO `product_category_lang` (`id`, `product_category_id`, `title`, `description`, `language`) VALUES
(73, 15, 'Chef\'s Choice', NULL, 'vi'),
(74, 15, 'Chef\'s Choice', NULL, 'en'),
(75, 16, '2', NULL, 'vi'),
(76, 16, '2', NULL, 'en'),
(77, 17, 'okokok', NULL, 'vi'),
(78, 17, 'okokok', NULL, 'en'),
(79, 18, ' test1', NULL, 'vi'),
(80, 18, ' test1', NULL, 'en'),
(81, 19, 'Steak', NULL, 'vi'),
(82, 19, 'Steak', NULL, 'en'),
(83, 20, 'Hamburger', NULL, 'vi'),
(84, 20, 'Hamburger', NULL, 'en'),
(85, 21, 'Craft Beer', NULL, 'vi'),
(86, 21, 'Craft Beer', NULL, 'en'),
(87, 22, 'Others', NULL, 'vi'),
(88, 22, 'Others', NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `product_lang`
--

CREATE TABLE `product_lang` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` text COLLATE utf8mb4_unicode_ci,
  `metadescription` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lang`
--

INSERT INTO `product_lang` (`id`, `product_id`, `title`, `description`, `content`, `language`, `metakeywords`, `metadescription`) VALUES
(37, 20, '1', '1', '<p>1</p>', 'vi', NULL, NULL),
(38, 20, '1', '1', '<p>1</p>', 'en', NULL, NULL),
(39, 21, 'New year Set 1: Cheer our love (2pax)', 'Combo cho 2 người gồm: 1 phần Caesar Salad; 2 phần Pan-seared Topblade Steak; Choice of Sauce; 1 phần French Fries; 2 phần Yogurt Parfait; Tặng kèm 2 ly vang. (Giá gốc 530k)\r\n', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'vi', NULL, NULL),
(40, 21, 'product 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', NULL, NULL),
(41, 22, 'New year Set 1: Cheer our love (2pax)', 'Combo cho 2 người gồm:\r\n1 phần Caesar Salad;\r\n2 phần Pan-seared Topblade Steak;\r\nChoice of Sauce;\r\n1 phần French Fries;\r\n2 phần Yogurt Parfait;\r\nTặng kèm 2 ly vang.\r\n(Giá gốc 530k)', '<p><br />⭕️Set 1: Cheer our love (Combo cho 2 người) <br />- 1 phần Caesar Salad<br />- 2 phần Pan-seared Topblade Steak<br />- Choice of Sauce<br />- 1 phần French Fries<br />- 2 phần Yogurt Parfait<br />- Tặng k&egrave;m 2 ly vang<br />Chỉ với c&ograve;n 429k (Gi&aacute; gốc 530k)</p>\r\n<p>----------<br />Lưu &yacute;:<br />Rượu vang chỉ tặng cho kh&aacute;ch đặt b&agrave;n.<br />Combo kh&ocirc;ng d&ugrave;ng k&egrave;m với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.<br />Gi&aacute; tr&ecirc;n chưa bao gồm 10% VAT <br />Combo được &aacute;p dụng từ ng&agrave;y 31/12 đến hết ng&agrave;y 2/1.</p>', 'vi', NULL, NULL),
(42, 22, 'moi mooi moi', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', NULL, NULL),
(43, 23, 'New year Set 2: Let’s Hang out (4pax)', 'Combo cho 4 người gồm:  \r\n1 phần Cobb Salad;\r\n4 Pumpkin Soup;\r\n1 phần Tortilla with Salad and Guacamole;\r\n2 phần BBQ Pork Ribs (1kg);\r\n4 phần Creme Brulee;\r\nTặng 1 chai vang.\r\n(Giá gốc 1038k)', '<p><span class=\"_5mfr\"><span class=\"_6qdm\">⭕️</span></span>Set 2: Let&rsquo;s Hang out (Combo cho 4 người)&nbsp;<br />- 1 phần Cobb Salad<br />- 4 Pumpkin Soup<br />- 1 phần Tortilla with Salad and Guacamole<br />- 2 phần BBQ Pork Ribs (1kg)<br />- 4 phần Creme Brulee<br />- Tặng 1 chai vang<br />Chỉ với c&ograve;n 939k (Gi&aacute; gốc 1038k)</p>', 'vi', NULL, NULL),
(44, 23, 'san pham 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', NULL, NULL),
(45, 24, 'New year Set 3:  We’re all invited (6pax)', 'Combo cho 6 người gồm: \r\n2 phần Caesar Salad;\r\n2 phần Onion Rings;\r\n1 đĩa nướng tổng hợp (2 phần Pan-seared Topblade Steak (400gr), 2 phần BBQ Pork Ribs (1kg), 1 phần Chicken Wings, French Fries (300gr), salad, rau củ nướng & sauce)\r\nTặng 1 chai vang.\r\n (Giá gốc 1400k)', '<p>new test vi</p>', 'vi', NULL, NULL),
(46, 24, 'new test en', 'new test en', '<p>new test en</p>', 'en', NULL, NULL),
(47, 27, 'Cobb Salad', 'Món ăn là sự tổng hợp của nhiều nguyên liệu: quả bơ tươi, thịt xông khói cháy cạnh, lườn gà áp chảo, trứng luộc, phô mai, cà chua, rau diếp xanh và lớp dressing kiểu Pháp béo ngậy làm từ giấm rượu vang đỏ, dầu oliu, mù tạt vàng Dijon, tỏi băm, lá basil và muối tiêu vừa đủ. Cobb Salad mang đến hương vị hài hòa, tươi ngon của hơn 10 loại nguyên liệu khác nhau, được đánh giá là một món ăn “ngon toàn diện”, trở thành một phần không thể thiếu trong việc giữ gìn vóc dáng quyến rũ của các chị em phái đẹp', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'vi', NULL, NULL),
(48, 27, '111111', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', NULL, NULL),
(49, 28, 'Loaded Chili Soup', 'Đặc trưng của món soup là hương vị của ớt bột paprika, một loại ớt bắt nguồn từ Hungary. Hương vị của ớt hòa quyện với thịt thăn bò mềm, hành tây, cà chua tươi, bột tỏi, khoai tây,... và nước cốt bò hầm tạo nên một món ăn thơm ngon, bổ dưỡng.Và chắc chắn không thể quên phủ lên bề mặt soup một lớp mỏng phomai chedder để tăng thêm phần béo ngậy. \r\nThưởng thức Loaded Chili Soup, khứu giác của bạn sẽ được đánh thức bởi hương thơm của ớt paprika nhưng vị cay chỉ thoáng nhẹ qua đầu lưỡi. Sắc đỏ rực từ tương cà chua như đưa bạn đến với miền Tây nước Mỹ, nơi có những chàng cao bồi bụi bặm, nóng bỏng.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'vi', NULL, NULL),
(50, 28, '2222222222', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 'en', NULL, NULL),
(51, 29, 'Chili Fries', 'Được ưa chuộng tại các sân bóng chày những ngày nóng nực đi cổ vũ cho đội nhà, chili fries (khoai tây chiên ăn cùng tương ớt và phô mai) gần như đã trở thành một món ăn nhẹ đặc trưng của nước Mỹ. Đây là một phiên bản cải biên từ món fries với phô mai phổ biến - fries được rưới phô mai nacho - và nó vươn mình lên vị trí cao nhất vì có thêm tương ớt hay ăn cùng carne asada (một món thịt bò bít tết của Mỹ La-tin). Chili cheese fries ngon nhất khi thưởng thức từ một khay bìa carton.', '<p>Tr&aacute;i ngược với niềm tin phổ biến, Lorem Ipsum kh&ocirc;ng đơn giản l&agrave; văn bản ngẫu nhi&ecirc;n. N&oacute; c&oacute; nguồn gốc từ một phần của văn học Latin cổ điển từ năm 45 TCN, l&agrave;m cho n&oacute; hơn 2000 tuổi. Richard McClintock, một gi&aacute;o sư người Latinh tại trường đại học Hampden-Sydney ở Virginia, đ&atilde; t&igrave;m kiếm một trong những từ ngữ, từ ngữ Lorem Ipsum, v&agrave; th&ocirc;ng qua c&aacute;c tr&iacute;ch dẫn của từ trong văn học cổ điển, đ&atilde; kh&aacute;m ph&aacute; ra nguồn kh&ocirc;ng thể giải th&iacute;ch được. Lorem Ipsum xuất ph&aacute;t từ c&aacute;c phần 1.10.32 v&agrave; 1.10.33 của \"de Finibus Bonorum v&agrave; Malorum\" (C&otilde;i T&agrave; &aacute;c v&agrave; &Aacute;c ma) của Cicero, được viết v&agrave;o năm 45 TCN. Cuốn s&aacute;ch n&agrave;y l&agrave; một luận thuyết về l&yacute; thuyết đạo đức, rất phổ biến trong thời kỳ Phục hưng. D&ograve;ng đầu ti&ecirc;n của Lorem Ipsum, \"Lorem ipsum dolor sit amet ..\", xuất ph&aacute;t từ một d&ograve;ng trong phần 1.10.32.</p>\r\n<p>Đoạn ti&ecirc;u chuẩn của Lorem Ipsum được sử dụng từ những năm 1500 được sao ch&eacute;p dưới đ&acirc;y cho những người quan t&acirc;m. C&aacute;c phần 1.10.32 v&agrave; 1.10.33 từ \"de Finibus Bonorum et Malorum\" của Cicero cũng được t&aacute;i tạo dưới h&igrave;nh thức ban đầu của ch&uacute;ng, k&egrave;m theo c&aacute;c bản tiếng Anh từ bản dịch năm 1914 của H. Rackham.</p>', 'vi', NULL, NULL),
(52, 29, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `set_desk`
--

CREATE TABLE `set_desk` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_desk`
--

INSERT INTO `set_desk` (`id`, `name`, `email`, `phone`, `slot`, `time`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, 'Nguyen Quyen', '12quyen12@gmail.com', 2147483647, 5, '2018-05-14 10:15:00', 2, '2018-05-31 15:12:57', 'Nguyễn', '2018-05-31 15:12:57', 'Nguyễn', 0),
(2, 'Nguyễn Văn Quyền', '12quyen12@gmail.com', 1628299929, 7, '2018-05-15 10:45:00', 2, '2018-05-31 14:13:26', 'Nguyễn', '2018-05-31 14:13:26', 'Nguyễn', 0),
(3, 'Nguyễn Văn Quyền', '12quyen12@gmail.com', 1628299929, 7, '2018-05-15 10:45:00', 0, '2018-05-31 15:13:01', 'Nguyễn', '2018-05-31 15:13:01', 'Nguyễn', 0),
(4, 'Nguyễn Văn Quyền', '12quyen12@gmail.com', 1628299929, 7, '2018-05-15 11:45:00', 2, '2018-05-31 13:46:18', 'Nguyễn', '2018-05-31 13:46:18', 'Nguyễn', 0),
(5, 'drinks', '12quyen12@gmail.com', 2147483647, 8, '2018-05-17 18:15:00', 2, '2018-05-31 14:13:40', 'Nguyễn', '2018-05-31 14:13:40', 'Nguyễn', 0),
(6, 'Nguyễn Văn Hoàn', '12quyen12@gmail.com', 1628299929, 4, '2018-05-30 10:15:00', 2, '2018-08-22 16:01:25', 'administrator', '2018-08-22 16:01:25', 'administrator', 0),
(7, 'Trần Văn Toàn', '12quyen12@gmail.com', 1628299929, 7, '2018-05-30 10:15:00', 2, '2018-05-31 14:13:47', 'Nguyễn', '2018-05-31 14:13:47', 'Nguyễn', 0),
(8, 'Trần Văn Toàn 1', '12quyen12@gmail.com', 1628299929, 7, '2018-05-30 10:15:00', 2, '2018-05-31 14:13:50', 'Nguyễn', '2018-05-31 14:13:50', 'Nguyễn', 0),
(9, 'Trần Văn Toàn 2', '12quyen12@gmail.com', 1628299929, 7, '2018-05-30 10:15:00', 0, '2018-08-22 16:08:38', 'Nguyễn', '2018-08-22 16:08:38', 'Nguyễn', 0),
(10, 'Trần Thị Hằng', 'hang@gmail.com', 2147483647, 6, '2018-06-01 08:15:00', 2, '2018-05-31 14:17:31', 'Nguyễn', '2018-05-31 14:17:31', 'Nguyễn', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'ewko85jHZ4lHF3TC2PB97O', 1268889823, 1546618720, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '::1', 'Nguyễn', '$2y$08$YZ93AFDDhMYrpTazS5OzTeEfqI2URPL0Wi23EWJlVnx1Z9nqCxuoe', NULL, 'nguyenquyen@gmail.com', NULL, NULL, NULL, NULL, 1527739906, 1527740063, 1, 'Nguyễn', 'Quyền', NULL, NULL),
(3, '::1', 'Nguyễn', '$2y$08$sntGYsf6LzI8TNiV/amyPeckAiIqt6CvPmZ3AlCHj1Kg47n/WJ1.q', NULL, 'minhtruong93gtvt@gmail.com', NULL, NULL, 1534928777, NULL, 1534928712, 1535094561, 1, 'Nguyễn', 'An', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_lang`
--
ALTER TABLE `about_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_lang`
--
ALTER TABLE `banner_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`banner_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `client_gmail`
--
ALTER TABLE `client_gmail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desk`
--
ALTER TABLE `desk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floor_id` (`floor_id`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Indexes for table `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Indexes for table `product_lang`
--
ALTER TABLE `product_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`product_id`);

--
-- Indexes for table `set_desk`
--
ALTER TABLE `set_desk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `about_lang`
--
ALTER TABLE `about_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `banner_lang`
--
ALTER TABLE `banner_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `client_gmail`
--
ALTER TABLE `client_gmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `desk`
--
ALTER TABLE `desk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu_lang`
--
ALTER TABLE `menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_lang`
--
ALTER TABLE `product_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `set_desk`
--
ALTER TABLE `set_desk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner_lang`
--
ALTER TABLE `banner_lang`
  ADD CONSTRAINT `banner_lang_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banner` (`id`);

--
-- Constraints for table `desk`
--
ALTER TABLE `desk`
  ADD CONSTRAINT `desk_ibfk_1` FOREIGN KEY (`floor_id`) REFERENCES `floor` (`id`);

--
-- Constraints for table `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD CONSTRAINT `menu_lang_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Constraints for table `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD CONSTRAINT `post_category_lang_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Constraints for table `post_lang`
--
ALTER TABLE `post_lang`
  ADD CONSTRAINT `post_lang_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD CONSTRAINT `product_category_lang_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `product_lang`
--
ALTER TABLE `product_lang`
  ADD CONSTRAINT `product_lang_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
