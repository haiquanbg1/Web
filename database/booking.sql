-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 13, 2023 at 06:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`` PROCEDURE `Addghe` (IN `phong` INT(11), IN `ten` VARCHAR(50), IN `soghe` INT(11))   BEGIN
	-- Chuoi in ra man hinh--
        DECLARE str  VARCHAR(255) DEFAULT '';
        DECLARE i INT(11) DEFAULT 1;
        
        DECLARE gia INT(11);
        DECLARE loai varchar(50);
        
        
		Case ten
			when "A" then
				SET gia=50000;
                SET loai="Ghế thường";
			when "B" then
            	SET gia=50000;
                SET loai="Ghế thường";
			when "K" then
            	SET gia=110000;
                SET loai="Ghế đôi";
			else
				SET gia=55000;
                SET loai="Ghế vip";
		end case;
        WHILE (i <= soghe) DO
            SET str = concat(ten, i);
            SET i = i + 1;
            insert into ghes(Gia, Ten_ghe, Loai_ghe, Ma_phong) values(gia, str, loai, phong);
        END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_phims`
--

CREATE TABLE `chi_tiet_phims` (
  `Ma_phim` int(11) NOT NULL,
  `Dao_dien` varchar(50) NOT NULL,
  `Dien_vien` varchar(500) NOT NULL,
  `Ngon_ngu` varchar(50) NOT NULL,
  `Tom_tat` text NOT NULL,
  `Trailer` text NOT NULL,
  `Tuoi_gioi_han` int(11) NOT NULL,
  `Image` text DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chi_tiet_phims`
--

INSERT INTO `chi_tiet_phims` (`Ma_phim`, `Dao_dien`, `Dien_vien`, `Ngon_ngu`, `Tom_tat`, `Trailer`, `Tuoi_gioi_han`, `Image`, `updated_at`, `created_at`) VALUES
(8, 'Michael Chaves', 'Taissa Farmiga, Bonnie Aarons, Storm Reid, Jonas Bloquet, Anna Popplewell', 'Tiếng Anh', 'Valak trở lại với \"Ác Quỷ Ma Sơ 2\". Đây sẽ là phần hậu truyện của Ác Quỷ Ma Sơ và đồng thời là phần phim thứ chín thuộc Vũ trụ The Conjuring. Lấy bối cảnh nước Pháp năm 1956, cùng cái chết bí ẩn của một linh mục, một giai thoại đáng sợ và ám ảnh sẽ mở ra. Phần phim tiếp tục xoay quanh nhân vật chính - Sơ Irene - do Taissa Farmiga thủ vai.', 'https://www.youtube.com/embed/otM2V_g8Kqo?rel=0&showinfo=0&autoplay=1', 18, 'https://github.com/haiquanbg1/Web/blob/main/web/public/Fe/images/the_nun_film.jpg?raw=true', '2023-09-27 09:41:41', '2023-09-25 08:11:21'),
(9, 'Hitoshi One', 'Yumiko Kobayashi, Miki Narahashi, Aoi Morikawa, Satomi Kourogi, Suzuki Mogura', 'Tiếng Việt', '3DCG! Shin Cậu Bé Bút Chì: Đại Chiến Siêu Năng Lực ~Sushi Bay~ xoay quanh câu chuyện về hai nguồn sáng đặc biệt từ vũ trụ mang theo siêu năng lực đặc biệt tới Trái Đất. Một nguồn sáng tích cực “nhập” vào nhóc Shin, khiến cặp mông núng nính của cậu chàng trở nên nóng bỏng và có khả năng điều khiển những đồ vật xung quanh theo ý muốn.', 'https://www.youtube.com/embed/P6CGQuA73w0?rel=0&showinfo=0&autoplay=1', 6, 'https://github.com/haiquanbg1/Web/blob/main/web/public/Fe/images/shin_film.jpg?raw=true', '2023-09-27 09:42:10', '2023-09-25 08:14:23'),
(10, 'Kenneth Branagh', 'Kenneth Branagh, Michelle Yeoh, Jamie Dornan, Tina Fey, Jude Hill', 'Tiếng Anh', 'Dựa trên tiểu thuyết Hallowe\'en Party của nhà văn Agatha Christie, hành trình phá án của thám tử Hercule Poirot tiếp tục được đưa lên màn ảnh rộng.', 'https://www.youtube.com/embed/maw2FnYE_a0?rel=0&showinfo=0&autoplay=1', 18, 'https://github.com/haiquanbg1/Web/blob/main/web/public/Fe/images/an_mang_o_venice.jpg?raw=true', '2023-09-27 09:41:05', '2023-09-25 09:53:34'),
(11, 'Scott Waugh', 'Jason Statham, 50 Cent, Megan Fox', 'Tiếng Anh', 'Sẵn sàng cho những màn cận chiến nghẹt thở từ “anh trọc” Jason Statham, “già gân” Sylvester Stallone cùng dàn sao mới toanh 50 Cent, Megan Fox và Tony Jaa', 'https://www.youtube.com/embed/TixcSyLkznw?rel=0&showinfo=0&autoplay=1', 18, 'https://github.com/haiquanbg1/Web/blob/main/web/public/Fe/images/bietdoidanhthue.png?raw=true', '2023-09-27 09:40:05', '2023-09-25 10:08:18'),
(12, 'Jason Yu', 'Lee Sun Kyun, Jung Yu Mi, Kim Gook Hee', 'Tiếng Hàn', 'Được Bong Joon Ho nhận xét là “phim kinh dị độc đáo nhất của thập kỷ\", ngôi vương phòng vé Hàn Quốc - MỘNG DU xoay quanh chuỗi sự kiện ma quái quấy rối giấc ngủ của một cặp vợ chồng trẻ. “Nó\" sẽ thức tỉnh lúc nửa đêm.', 'https://www.youtube.com/embed/WvffHiNHS8Q?rel=0&showinfo=0&autoplay=1', 16, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f09%2f27%2f500x750-1695625144958-095841-270923-52.png', '2023-09-27 15:11:49', '2023-09-27 15:11:49'),
(13, 'Thitipan Raksasat', 'Thanachat Tullayachat, Savika Chaiyadej, Denkhun Ngamnet, Panisara Rikulsurakan', 'Tiếng Thái', 'Ging đưa con trai đi nghỉ mát ở căn nhà gỗ nằm giữa rừng cây. Tuy nhiên, cậu bé đã bị bắt cóc vào lúc nửa đêm. Sau bao nỗ lực tìm kiếm, manh mối duy nhất của vụ án đều hướng về người đàn ông tên In, làm nghề mai táng ở đền thờ. Quá tuyệt vọng, Ging đành nhờ cậy thầy đồng địa phương thực hiện nghi lễ hiến tế giữa rừng để tìm tung tích con trai. Những bí ẩn trong ngôi nhà ven rừng dần lộ ra, những cơn ác mộng máu me và hàng loạt cái chết đột ngột ập tới, liệu Ging có đang vướng vào một âm mưu tà ám. Và rằng con trai cô có thật sự đang mất tích?', 'https://www.youtube.com/embed/HyuykY4fOxA?rel=0&showinfo=0&autoplay=1', 18, 'https://github.com/haiquanbg1/Web/blob/main/Image/kumanthong.jpg?raw=true', '2023-10-06 06:28:16', '2023-10-06 06:28:16'),
(14, 'David Gordon Green', 'Jennifer Nettles, Ellen Burstyn, Leslie Odom Jr.', 'Tiếng Anh', 'Phần tiếp theo của bộ phim năm 1973 kể về một cô bé 12 tuổi bị một thực thể ma quỷ bí ẩn chiếm hữu, buộc mẹ cô phải tìm đến sự giúp đỡ của hai linh mục để cứu cô.', 'https://www.youtube.com/embed/nFGOGdlMgTk?rel=0&showinfo=0&autoplay=1', 18, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f10%2f03%2f400x633-110201-031023-57.jpg', '2023-10-13 13:54:21', '2023-10-06 06:31:20'),
(15, 'Just Philippot', 'Guillaume Canet, Laetitia Dosch, Patience Munchenbach', 'Tiếng Pháp', 'Giữa một đợt nắng nóng bất thường, thì mây mưa giống như làn gió xua tan oi bức. Nhưng những đám mây kỳ lạ trên bầu trời nước Pháp lại đem tới cho con người sự huỷ diệt và chết chóc. Hàng loạt trận mưa axit đổ xuống, đốt cháy mạng sống của vạn vật dưới mặt đất. Trước sự huỷ diệt tàn bạo của thiên nhiên, một cô gái 15 tuổi phải cùng với cha mẹ mình tìm cách chạy trốn khỏi những cơn mưa axit.', 'https://www.youtube.com/embed/7pFH2HffdKA?rel=0&showinfo=0&autoplay=1', 13, 'https://github.com/haiquanbg1/Web/blob/main/Image/mua_axit.jpg?raw=true', '2023-10-06 06:35:36', '2023-10-06 06:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `danh_sach_phims`
--

CREATE TABLE `danh_sach_phims` (
  `Ma_phim` int(10) NOT NULL,
  `Ten_phim` text DEFAULT NULL,
  `Thoi_luong` int(10) NOT NULL,
  `Ngay_khoi_chieu` date NOT NULL,
  `The_loai` varchar(500) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `Trang_thai` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danh_sach_phims`
--

INSERT INTO `danh_sach_phims` (`Ma_phim`, `Ten_phim`, `Thoi_luong`, `Ngay_khoi_chieu`, `The_loai`, `updated_at`, `created_at`, `Trang_thai`) VALUES
(8, 'Ác Quỷ Ma Sơ II', 110, '2023-09-08', 'Kinh Dị, Hồi Hộp', '2023-09-25 08:11:21', '2023-09-25 08:11:21', b'1'),
(9, '3DCG! Shin - Cậu Bé Bút Chì: Đại Chiến Siêu Năng Lực ~ Shusi Bay ~', 94, '2023-08-25', 'Hoạt hình, Phiêu lưu', '2023-09-29 07:41:23', '2023-09-25 08:14:23', b'0'),
(10, 'Án Mạng Ở Venice', 103, '2023-09-15', 'Tội Phạm, Tâm lý', '2023-09-25 09:53:34', '2023-09-25 09:53:34', b'1'),
(11, 'Biệt Đội Đánh Thuê 4', 103, '2023-09-22', 'Hành động, Phiêu lưu', '2023-09-25 10:08:18', '2023-09-25 10:08:18', b'1'),
(12, 'Mộng Du', 100, '2023-10-06', 'Tâm lý, Kinh dị', '2023-09-27 15:11:49', '2023-09-27 15:11:49', b'1'),
(13, 'Kumanthong: Quỷ Linh Nhi', 87, '2023-10-06', 'Kinh dị', '2023-10-06 06:28:16', '2023-10-06 06:28:16', b'1'),
(14, 'Quỷ Ám: Tín Đồ', 111, '2023-10-13', 'Kinh dị', '2023-10-06 06:31:20', '2023-10-06 06:31:20', b'1'),
(15, 'Thảm Họa Mưa Axit', 101, '2023-09-29', 'Hành động, Hồi Hộp', '2023-10-06 06:35:36', '2023-10-06 06:35:36', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `ghes`
--

CREATE TABLE `ghes` (
  `Ma_ghe` int(11) NOT NULL,
  `Gia` double NOT NULL,
  `Ten_ghe` varchar(50) NOT NULL,
  `Loai_ghe` varchar(50) NOT NULL,
  `Ma_phong` int(11) DEFAULT NULL,
  `Trang_thai` int(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ghes`
--

INSERT INTO `ghes` (`Ma_ghe`, `Gia`, `Ten_ghe`, `Loai_ghe`, `Ma_phong`, `Trang_thai`, `updated_at`) VALUES
(1, 50000, 'A1', 'Ghế thường', 1, 0, NULL),
(2, 50000, 'A2', 'Ghế thường', 1, 0, NULL),
(3, 50000, 'A3', 'Ghế thường', 1, 0, NULL),
(4, 50000, 'A4', 'Ghế thường', 1, 0, NULL),
(5, 50000, 'A5', 'Ghế thường', 1, 0, NULL),
(6, 50000, 'A6', 'Ghế thường', 1, 1, '2023-10-13 16:30:17'),
(7, 50000, 'A7', 'Ghế thường', 1, 0, NULL),
(8, 50000, 'A8', 'Ghế thường', 1, 0, NULL),
(9, 50000, 'A9', 'Ghế thường', 1, 0, NULL),
(10, 50000, 'A10', 'Ghế thường', 1, 0, NULL),
(11, 50000, 'B1', 'Ghế thường', 1, 0, NULL),
(12, 50000, 'B2', 'Ghế thường', 1, 0, NULL),
(13, 50000, 'B3', 'Ghế thường', 1, 0, NULL),
(14, 50000, 'B4', 'Ghế thường', 1, 0, NULL),
(15, 50000, 'B5', 'Ghế thường', 1, 0, NULL),
(16, 50000, 'B6', 'Ghế thường', 1, 0, NULL),
(17, 50000, 'B7', 'Ghế thường', 1, 0, '2023-10-13 16:29:55'),
(18, 50000, 'B8', 'Ghế thường', 1, 0, '2023-10-13 16:30:04'),
(19, 50000, 'B9', 'Ghế thường', 1, 0, NULL),
(20, 50000, 'B10', 'Ghế thường', 1, 0, NULL),
(21, 55000, 'C1', 'Ghế vip', 1, 0, NULL),
(22, 55000, 'C2', 'Ghế vip', 1, 0, NULL),
(23, 55000, 'C3', 'Ghế vip', 1, 0, NULL),
(24, 55000, 'C4', 'Ghế vip', 1, 0, NULL),
(25, 55000, 'C5', 'Ghế vip', 1, 0, NULL),
(26, 55000, 'C6', 'Ghế vip', 1, 0, NULL),
(27, 55000, 'C7', 'Ghế vip', 1, 0, NULL),
(28, 55000, 'C8', 'Ghế vip', 1, 0, NULL),
(29, 55000, 'C9', 'Ghế vip', 1, 0, NULL),
(30, 55000, 'C10', 'Ghế vip', 1, 0, NULL),
(31, 55000, 'D1', 'Ghế vip', 1, 0, NULL),
(32, 55000, 'D2', 'Ghế vip', 1, 0, NULL),
(33, 55000, 'D3', 'Ghế vip', 1, 0, NULL),
(34, 55000, 'D4', 'Ghế vip', 1, 0, NULL),
(35, 55000, 'D5', 'Ghế vip', 1, 0, NULL),
(36, 55000, 'D6', 'Ghế vip', 1, 0, NULL),
(37, 55000, 'D7', 'Ghế vip', 1, 0, NULL),
(38, 55000, 'D8', 'Ghế vip', 1, 0, NULL),
(39, 55000, 'D9', 'Ghế vip', 1, 0, NULL),
(40, 55000, 'D10', 'Ghế vip', 1, 0, NULL),
(41, 55000, 'E1', 'Ghế vip', 1, 0, NULL),
(42, 55000, 'E2', 'Ghế vip', 1, 0, NULL),
(43, 55000, 'E3', 'Ghế vip', 1, 0, NULL),
(44, 55000, 'E4', 'Ghế vip', 1, 0, NULL),
(45, 55000, 'E5', 'Ghế vip', 1, 0, NULL),
(46, 55000, 'E6', 'Ghế vip', 1, 0, NULL),
(47, 55000, 'E7', 'Ghế vip', 1, 0, NULL),
(48, 55000, 'E8', 'Ghế vip', 1, 0, NULL),
(49, 55000, 'E9', 'Ghế vip', 1, 0, NULL),
(50, 55000, 'E10', 'Ghế vip', 1, 0, NULL),
(51, 55000, 'F1', 'Ghế vip', 1, 0, NULL),
(52, 55000, 'F2', 'Ghế vip', 1, 0, NULL),
(53, 55000, 'F3', 'Ghế vip', 1, 0, NULL),
(54, 55000, 'F4', 'Ghế vip', 1, 0, NULL),
(55, 55000, 'F5', 'Ghế vip', 1, 0, NULL),
(56, 55000, 'F6', 'Ghế vip', 1, 0, NULL),
(57, 55000, 'F7', 'Ghế vip', 1, 0, NULL),
(58, 55000, 'F8', 'Ghế vip', 1, 0, NULL),
(59, 55000, 'F9', 'Ghế vip', 1, 0, NULL),
(60, 55000, 'F10', 'Ghế vip', 1, 0, NULL),
(61, 55000, 'G1', 'Ghế vip', 1, 0, NULL),
(62, 55000, 'G2', 'Ghế vip', 1, 0, NULL),
(63, 55000, 'G3', 'Ghế vip', 1, 0, NULL),
(64, 55000, 'G4', 'Ghế vip', 1, 0, NULL),
(65, 55000, 'G5', 'Ghế vip', 1, 0, NULL),
(66, 55000, 'G6', 'Ghế vip', 1, 0, NULL),
(67, 55000, 'G7', 'Ghế vip', 1, 0, NULL),
(68, 55000, 'G8', 'Ghế vip', 1, 0, NULL),
(69, 55000, 'G9', 'Ghế vip', 1, 0, NULL),
(70, 55000, 'G10', 'Ghế vip', 1, 0, NULL),
(71, 55000, 'H1', 'Ghế vip', 1, 0, NULL),
(72, 55000, 'H2', 'Ghế vip', 1, 0, NULL),
(73, 55000, 'H3', 'Ghế vip', 1, 0, NULL),
(74, 55000, 'H4', 'Ghế vip', 1, 0, NULL),
(75, 55000, 'H5', 'Ghế vip', 1, 0, NULL),
(76, 55000, 'H6', 'Ghế vip', 1, 0, NULL),
(77, 55000, 'H7', 'Ghế vip', 1, 0, NULL),
(78, 55000, 'H8', 'Ghế vip', 1, 0, NULL),
(79, 55000, 'H9', 'Ghế vip', 1, 0, NULL),
(80, 55000, 'H10', 'Ghế vip', 1, 0, NULL),
(81, 55000, 'I1', 'Ghế vip', 1, 0, NULL),
(82, 55000, 'I2', 'Ghế vip', 1, 0, NULL),
(83, 55000, 'I3', 'Ghế vip', 1, 0, NULL),
(84, 55000, 'I4', 'Ghế vip', 1, 0, NULL),
(85, 55000, 'I5', 'Ghế vip', 1, 0, NULL),
(86, 55000, 'I6', 'Ghế vip', 1, 0, NULL),
(87, 55000, 'I7', 'Ghế vip', 1, 0, NULL),
(88, 55000, 'I8', 'Ghế vip', 1, 0, NULL),
(89, 55000, 'I9', 'Ghế vip', 1, 0, NULL),
(90, 55000, 'I10', 'Ghế vip', 1, 0, NULL),
(91, 110000, 'K1', 'Ghế đôi', 1, 0, NULL),
(92, 110000, 'K2', 'Ghế đôi', 1, 0, NULL),
(93, 110000, 'K3', 'Ghế đôi', 1, 0, NULL),
(94, 110000, 'K4', 'Ghế đôi', 1, 0, NULL),
(95, 110000, 'K5', 'Ghế đôi', 1, 0, NULL),
(96, 50000, 'A1', 'Ghế thường', 2, 0, NULL),
(97, 50000, 'A2', 'Ghế thường', 2, 0, NULL),
(98, 50000, 'A3', 'Ghế thường', 2, 0, NULL),
(99, 50000, 'A4', 'Ghế thường', 2, 0, NULL),
(100, 50000, 'A5', 'Ghế thường', 2, 0, NULL),
(101, 50000, 'A6', 'Ghế thường', 2, 0, NULL),
(102, 50000, 'A7', 'Ghế thường', 2, 0, NULL),
(103, 50000, 'A8', 'Ghế thường', 2, 0, NULL),
(104, 50000, 'A9', 'Ghế thường', 2, 0, NULL),
(105, 50000, 'A10', 'Ghế thường', 2, 0, NULL),
(106, 50000, 'B1', 'Ghế thường', 2, 0, NULL),
(107, 50000, 'B2', 'Ghế thường', 2, 0, NULL),
(108, 50000, 'B3', 'Ghế thường', 2, 0, NULL),
(109, 50000, 'B4', 'Ghế thường', 2, 0, NULL),
(110, 50000, 'B5', 'Ghế thường', 2, 0, NULL),
(111, 50000, 'B6', 'Ghế thường', 2, 0, NULL),
(112, 50000, 'B7', 'Ghế thường', 2, 0, NULL),
(113, 50000, 'B8', 'Ghế thường', 2, 0, NULL),
(114, 50000, 'B9', 'Ghế thường', 2, 0, NULL),
(115, 50000, 'B10', 'Ghế thường', 2, 0, NULL),
(116, 55000, 'C1', 'Ghế vip', 2, 0, NULL),
(117, 55000, 'C2', 'Ghế vip', 2, 0, NULL),
(118, 55000, 'C3', 'Ghế vip', 2, 0, NULL),
(119, 55000, 'C4', 'Ghế vip', 2, 0, NULL),
(120, 55000, 'C5', 'Ghế vip', 2, 0, NULL),
(121, 55000, 'C6', 'Ghế vip', 2, 0, NULL),
(122, 55000, 'C7', 'Ghế vip', 2, 0, NULL),
(123, 55000, 'C8', 'Ghế vip', 2, 0, NULL),
(124, 55000, 'C9', 'Ghế vip', 2, 0, NULL),
(125, 55000, 'C10', 'Ghế vip', 2, 0, NULL),
(126, 55000, 'D1', 'Ghế vip', 2, 0, NULL),
(127, 55000, 'D2', 'Ghế vip', 2, 0, NULL),
(128, 55000, 'D3', 'Ghế vip', 2, 0, NULL),
(129, 55000, 'D4', 'Ghế vip', 2, 0, NULL),
(130, 55000, 'D5', 'Ghế vip', 2, 0, NULL),
(131, 55000, 'D6', 'Ghế vip', 2, 0, NULL),
(132, 55000, 'D7', 'Ghế vip', 2, 0, NULL),
(133, 55000, 'D8', 'Ghế vip', 2, 0, NULL),
(134, 55000, 'D9', 'Ghế vip', 2, 0, NULL),
(135, 55000, 'D10', 'Ghế vip', 2, 0, NULL),
(136, 55000, 'E1', 'Ghế vip', 2, 0, NULL),
(137, 55000, 'E2', 'Ghế vip', 2, 0, NULL),
(138, 55000, 'E3', 'Ghế vip', 2, 0, NULL),
(139, 55000, 'E4', 'Ghế vip', 2, 0, NULL),
(140, 55000, 'E5', 'Ghế vip', 2, 0, NULL),
(141, 55000, 'E6', 'Ghế vip', 2, 0, NULL),
(142, 55000, 'E7', 'Ghế vip', 2, 0, NULL),
(143, 55000, 'E8', 'Ghế vip', 2, 0, NULL),
(144, 55000, 'E9', 'Ghế vip', 2, 0, NULL),
(145, 55000, 'E10', 'Ghế vip', 2, 0, NULL),
(146, 55000, 'F1', 'Ghế vip', 2, 0, NULL),
(147, 55000, 'F2', 'Ghế vip', 2, 0, NULL),
(148, 55000, 'F3', 'Ghế vip', 2, 0, NULL),
(149, 55000, 'F4', 'Ghế vip', 2, 0, NULL),
(150, 55000, 'F5', 'Ghế vip', 2, 0, NULL),
(151, 55000, 'F6', 'Ghế vip', 2, 0, NULL),
(152, 55000, 'F7', 'Ghế vip', 2, 0, NULL),
(153, 55000, 'F8', 'Ghế vip', 2, 0, NULL),
(154, 55000, 'F9', 'Ghế vip', 2, 0, NULL),
(155, 55000, 'F10', 'Ghế vip', 2, 0, NULL),
(156, 55000, 'G1', 'Ghế vip', 2, 0, NULL),
(157, 55000, 'G2', 'Ghế vip', 2, 0, NULL),
(158, 55000, 'G3', 'Ghế vip', 2, 0, NULL),
(159, 55000, 'G4', 'Ghế vip', 2, 0, NULL),
(160, 55000, 'G5', 'Ghế vip', 2, 0, NULL),
(161, 55000, 'G6', 'Ghế vip', 2, 0, NULL),
(162, 55000, 'G7', 'Ghế vip', 2, 0, NULL),
(163, 55000, 'G8', 'Ghế vip', 2, 0, NULL),
(164, 55000, 'G9', 'Ghế vip', 2, 0, NULL),
(165, 55000, 'G10', 'Ghế vip', 2, 0, NULL),
(166, 55000, 'H1', 'Ghế vip', 2, 0, NULL),
(167, 55000, 'H2', 'Ghế vip', 2, 0, NULL),
(168, 55000, 'H3', 'Ghế vip', 2, 0, NULL),
(169, 55000, 'H4', 'Ghế vip', 2, 0, NULL),
(170, 55000, 'H5', 'Ghế vip', 2, 0, NULL),
(171, 55000, 'H6', 'Ghế vip', 2, 0, NULL),
(172, 55000, 'H7', 'Ghế vip', 2, 0, NULL),
(173, 55000, 'H8', 'Ghế vip', 2, 0, NULL),
(174, 55000, 'H9', 'Ghế vip', 2, 0, NULL),
(175, 55000, 'H10', 'Ghế vip', 2, 0, NULL),
(176, 55000, 'I1', 'Ghế vip', 2, 0, NULL),
(177, 55000, 'I2', 'Ghế vip', 2, 0, NULL),
(178, 55000, 'I3', 'Ghế vip', 2, 0, NULL),
(179, 55000, 'I4', 'Ghế vip', 2, 0, NULL),
(180, 55000, 'I5', 'Ghế vip', 2, 0, NULL),
(181, 55000, 'I6', 'Ghế vip', 2, 0, NULL),
(182, 55000, 'I7', 'Ghế vip', 2, 0, NULL),
(183, 55000, 'I8', 'Ghế vip', 2, 0, NULL),
(184, 55000, 'I9', 'Ghế vip', 2, 0, NULL),
(185, 55000, 'I10', 'Ghế vip', 2, 0, NULL),
(186, 110000, 'K1', 'Ghế đôi', 2, 0, NULL),
(187, 110000, 'K2', 'Ghế đôi', 2, 0, NULL),
(188, 110000, 'K3', 'Ghế đôi', 2, 0, NULL),
(189, 110000, 'K4', 'Ghế đôi', 2, 0, NULL),
(190, 110000, 'K5', 'Ghế đôi', 2, 0, NULL),
(191, 50000, 'A1', 'Ghế thường', 3, 0, NULL),
(192, 50000, 'A2', 'Ghế thường', 3, 0, NULL),
(193, 50000, 'A3', 'Ghế thường', 3, 0, NULL),
(194, 50000, 'A4', 'Ghế thường', 3, 0, NULL),
(195, 50000, 'A5', 'Ghế thường', 3, 0, NULL),
(196, 50000, 'A6', 'Ghế thường', 3, 0, NULL),
(197, 50000, 'A7', 'Ghế thường', 3, 0, NULL),
(198, 50000, 'A8', 'Ghế thường', 3, 0, NULL),
(199, 50000, 'A9', 'Ghế thường', 3, 0, NULL),
(200, 50000, 'A10', 'Ghế thường', 3, 0, NULL),
(201, 50000, 'B1', 'Ghế thường', 3, 0, NULL),
(202, 50000, 'B2', 'Ghế thường', 3, 0, NULL),
(203, 50000, 'B3', 'Ghế thường', 3, 0, NULL),
(204, 50000, 'B4', 'Ghế thường', 3, 0, NULL),
(205, 50000, 'B5', 'Ghế thường', 3, 0, NULL),
(206, 50000, 'B6', 'Ghế thường', 3, 0, NULL),
(207, 50000, 'B7', 'Ghế thường', 3, 0, NULL),
(208, 50000, 'B8', 'Ghế thường', 3, 0, NULL),
(209, 50000, 'B9', 'Ghế thường', 3, 0, NULL),
(210, 50000, 'B10', 'Ghế thường', 3, 0, NULL),
(211, 55000, 'C1', 'Ghế vip', 3, 0, NULL),
(212, 55000, 'C2', 'Ghế vip', 3, 0, NULL),
(213, 55000, 'C3', 'Ghế vip', 3, 0, NULL),
(214, 55000, 'C4', 'Ghế vip', 3, 0, NULL),
(215, 55000, 'C5', 'Ghế vip', 3, 0, NULL),
(216, 55000, 'C6', 'Ghế vip', 3, 0, NULL),
(217, 55000, 'C7', 'Ghế vip', 3, 0, NULL),
(218, 55000, 'C8', 'Ghế vip', 3, 0, NULL),
(219, 55000, 'C9', 'Ghế vip', 3, 0, NULL),
(220, 55000, 'C10', 'Ghế vip', 3, 0, NULL),
(221, 55000, 'D1', 'Ghế vip', 3, 0, NULL),
(222, 55000, 'D2', 'Ghế vip', 3, 0, NULL),
(223, 55000, 'D3', 'Ghế vip', 3, 0, NULL),
(224, 55000, 'D4', 'Ghế vip', 3, 0, NULL),
(225, 55000, 'D5', 'Ghế vip', 3, 0, NULL),
(226, 55000, 'D6', 'Ghế vip', 3, 0, NULL),
(227, 55000, 'D7', 'Ghế vip', 3, 0, NULL),
(228, 55000, 'D8', 'Ghế vip', 3, 0, NULL),
(229, 55000, 'D9', 'Ghế vip', 3, 0, NULL),
(230, 55000, 'D10', 'Ghế vip', 3, 0, NULL),
(231, 55000, 'E1', 'Ghế vip', 3, 0, NULL),
(232, 55000, 'E2', 'Ghế vip', 3, 0, NULL),
(233, 55000, 'E3', 'Ghế vip', 3, 0, NULL),
(234, 55000, 'E4', 'Ghế vip', 3, 0, NULL),
(235, 55000, 'E5', 'Ghế vip', 3, 0, NULL),
(236, 55000, 'E6', 'Ghế vip', 3, 0, NULL),
(237, 55000, 'E7', 'Ghế vip', 3, 0, NULL),
(238, 55000, 'E8', 'Ghế vip', 3, 0, NULL),
(239, 55000, 'E9', 'Ghế vip', 3, 0, NULL),
(240, 55000, 'E10', 'Ghế vip', 3, 0, NULL),
(241, 55000, 'F1', 'Ghế vip', 3, 0, NULL),
(242, 55000, 'F2', 'Ghế vip', 3, 0, NULL),
(243, 55000, 'F3', 'Ghế vip', 3, 0, NULL),
(244, 55000, 'F4', 'Ghế vip', 3, 0, NULL),
(245, 55000, 'F5', 'Ghế vip', 3, 0, NULL),
(246, 55000, 'F6', 'Ghế vip', 3, 0, NULL),
(247, 55000, 'F7', 'Ghế vip', 3, 0, NULL),
(248, 55000, 'F8', 'Ghế vip', 3, 0, NULL),
(249, 55000, 'F9', 'Ghế vip', 3, 0, NULL),
(250, 55000, 'F10', 'Ghế vip', 3, 0, NULL),
(251, 55000, 'G1', 'Ghế vip', 3, 0, NULL),
(252, 55000, 'G2', 'Ghế vip', 3, 0, NULL),
(253, 55000, 'G3', 'Ghế vip', 3, 0, NULL),
(254, 55000, 'G4', 'Ghế vip', 3, 0, NULL),
(255, 55000, 'G5', 'Ghế vip', 3, 0, NULL),
(256, 55000, 'G6', 'Ghế vip', 3, 0, NULL),
(257, 55000, 'G7', 'Ghế vip', 3, 0, NULL),
(258, 55000, 'G8', 'Ghế vip', 3, 0, NULL),
(259, 55000, 'G9', 'Ghế vip', 3, 0, NULL),
(260, 55000, 'G10', 'Ghế vip', 3, 0, NULL),
(261, 55000, 'H1', 'Ghế vip', 3, 0, NULL),
(262, 55000, 'H2', 'Ghế vip', 3, 0, NULL),
(263, 55000, 'H3', 'Ghế vip', 3, 0, NULL),
(264, 55000, 'H4', 'Ghế vip', 3, 0, NULL),
(265, 55000, 'H5', 'Ghế vip', 3, 0, NULL),
(266, 55000, 'H6', 'Ghế vip', 3, 0, NULL),
(267, 55000, 'H7', 'Ghế vip', 3, 0, NULL),
(268, 55000, 'H8', 'Ghế vip', 3, 0, NULL),
(269, 55000, 'H9', 'Ghế vip', 3, 0, NULL),
(270, 55000, 'H10', 'Ghế vip', 3, 0, NULL),
(271, 55000, 'I1', 'Ghế vip', 3, 0, NULL),
(272, 55000, 'I2', 'Ghế vip', 3, 0, NULL),
(273, 55000, 'I3', 'Ghế vip', 3, 0, NULL),
(274, 55000, 'I4', 'Ghế vip', 3, 0, NULL),
(275, 55000, 'I5', 'Ghế vip', 3, 0, NULL),
(276, 55000, 'I6', 'Ghế vip', 3, 0, NULL),
(277, 55000, 'I7', 'Ghế vip', 3, 0, NULL),
(278, 55000, 'I8', 'Ghế vip', 3, 0, NULL),
(279, 55000, 'I9', 'Ghế vip', 3, 0, NULL),
(280, 55000, 'I10', 'Ghế vip', 3, 0, NULL),
(281, 110000, 'K1', 'Ghế đôi', 3, 0, NULL),
(282, 110000, 'K2', 'Ghế đôi', 3, 0, NULL),
(283, 110000, 'K3', 'Ghế đôi', 3, 0, NULL),
(284, 110000, 'K4', 'Ghế đôi', 3, 0, NULL),
(285, 110000, 'K5', 'Ghế đôi', 3, 0, NULL),
(286, 50000, 'A1', 'Ghế thường', 4, 0, NULL),
(287, 50000, 'A2', 'Ghế thường', 4, 0, NULL),
(288, 50000, 'A3', 'Ghế thường', 4, 0, NULL),
(289, 50000, 'A4', 'Ghế thường', 4, 0, NULL),
(290, 50000, 'A5', 'Ghế thường', 4, 0, NULL),
(291, 50000, 'A6', 'Ghế thường', 4, 0, NULL),
(292, 50000, 'A7', 'Ghế thường', 4, 0, NULL),
(293, 50000, 'A8', 'Ghế thường', 4, 0, NULL),
(294, 50000, 'A9', 'Ghế thường', 4, 0, NULL),
(295, 50000, 'A10', 'Ghế thường', 4, 0, NULL),
(296, 50000, 'B1', 'Ghế thường', 4, 0, NULL),
(297, 50000, 'B2', 'Ghế thường', 4, 0, NULL),
(298, 50000, 'B3', 'Ghế thường', 4, 0, NULL),
(299, 50000, 'B4', 'Ghế thường', 4, 0, NULL),
(300, 50000, 'B5', 'Ghế thường', 4, 0, NULL),
(301, 50000, 'B6', 'Ghế thường', 4, 0, NULL),
(302, 50000, 'B7', 'Ghế thường', 4, 0, NULL),
(303, 50000, 'B8', 'Ghế thường', 4, 0, NULL),
(304, 50000, 'B9', 'Ghế thường', 4, 0, NULL),
(305, 50000, 'B10', 'Ghế thường', 4, 0, NULL),
(306, 55000, 'C1', 'Ghế vip', 4, 0, NULL),
(307, 55000, 'C2', 'Ghế vip', 4, 0, NULL),
(308, 55000, 'C3', 'Ghế vip', 4, 0, NULL),
(309, 55000, 'C4', 'Ghế vip', 4, 0, NULL),
(310, 55000, 'C5', 'Ghế vip', 4, 0, NULL),
(311, 55000, 'C6', 'Ghế vip', 4, 0, NULL),
(312, 55000, 'C7', 'Ghế vip', 4, 0, NULL),
(313, 55000, 'C8', 'Ghế vip', 4, 0, NULL),
(314, 55000, 'C9', 'Ghế vip', 4, 0, NULL),
(315, 55000, 'C10', 'Ghế vip', 4, 0, NULL),
(316, 55000, 'D1', 'Ghế vip', 4, 0, NULL),
(317, 55000, 'D2', 'Ghế vip', 4, 0, NULL),
(318, 55000, 'D3', 'Ghế vip', 4, 0, NULL),
(319, 55000, 'D4', 'Ghế vip', 4, 0, NULL),
(320, 55000, 'D5', 'Ghế vip', 4, 0, NULL),
(321, 55000, 'D6', 'Ghế vip', 4, 0, NULL),
(322, 55000, 'D7', 'Ghế vip', 4, 0, NULL),
(323, 55000, 'D8', 'Ghế vip', 4, 0, NULL),
(324, 55000, 'D9', 'Ghế vip', 4, 0, NULL),
(325, 55000, 'D10', 'Ghế vip', 4, 0, NULL),
(326, 55000, 'E1', 'Ghế vip', 4, 0, NULL),
(327, 55000, 'E2', 'Ghế vip', 4, 0, NULL),
(328, 55000, 'E3', 'Ghế vip', 4, 0, NULL),
(329, 55000, 'E4', 'Ghế vip', 4, 0, NULL),
(330, 55000, 'E5', 'Ghế vip', 4, 0, NULL),
(331, 55000, 'E6', 'Ghế vip', 4, 0, NULL),
(332, 55000, 'E7', 'Ghế vip', 4, 0, NULL),
(333, 55000, 'E8', 'Ghế vip', 4, 0, NULL),
(334, 55000, 'E9', 'Ghế vip', 4, 0, NULL),
(335, 55000, 'E10', 'Ghế vip', 4, 0, NULL),
(336, 55000, 'F1', 'Ghế vip', 4, 0, NULL),
(337, 55000, 'F2', 'Ghế vip', 4, 0, NULL),
(338, 55000, 'F3', 'Ghế vip', 4, 0, NULL),
(339, 55000, 'F4', 'Ghế vip', 4, 0, NULL),
(340, 55000, 'F5', 'Ghế vip', 4, 0, NULL),
(341, 55000, 'F6', 'Ghế vip', 4, 0, NULL),
(342, 55000, 'F7', 'Ghế vip', 4, 0, NULL),
(343, 55000, 'F8', 'Ghế vip', 4, 0, NULL),
(344, 55000, 'F9', 'Ghế vip', 4, 0, NULL),
(345, 55000, 'F10', 'Ghế vip', 4, 0, NULL),
(346, 55000, 'G1', 'Ghế vip', 4, 0, NULL),
(347, 55000, 'G2', 'Ghế vip', 4, 0, NULL),
(348, 55000, 'G3', 'Ghế vip', 4, 0, NULL),
(349, 55000, 'G4', 'Ghế vip', 4, 0, NULL),
(350, 55000, 'G5', 'Ghế vip', 4, 0, NULL),
(351, 55000, 'G6', 'Ghế vip', 4, 0, NULL),
(352, 55000, 'G7', 'Ghế vip', 4, 0, NULL),
(353, 55000, 'G8', 'Ghế vip', 4, 0, NULL),
(354, 55000, 'G9', 'Ghế vip', 4, 0, NULL),
(355, 55000, 'G10', 'Ghế vip', 4, 0, NULL),
(356, 55000, 'H1', 'Ghế vip', 4, 0, NULL),
(357, 55000, 'H2', 'Ghế vip', 4, 0, NULL),
(358, 55000, 'H3', 'Ghế vip', 4, 0, NULL),
(359, 55000, 'H4', 'Ghế vip', 4, 0, NULL),
(360, 55000, 'H5', 'Ghế vip', 4, 0, NULL),
(361, 55000, 'H6', 'Ghế vip', 4, 0, NULL),
(362, 55000, 'H7', 'Ghế vip', 4, 0, NULL),
(363, 55000, 'H8', 'Ghế vip', 4, 0, NULL),
(364, 55000, 'H9', 'Ghế vip', 4, 0, NULL),
(365, 55000, 'H10', 'Ghế vip', 4, 0, NULL),
(366, 55000, 'I1', 'Ghế vip', 4, 0, NULL),
(367, 55000, 'I2', 'Ghế vip', 4, 0, NULL),
(368, 55000, 'I3', 'Ghế vip', 4, 0, NULL),
(369, 55000, 'I4', 'Ghế vip', 4, 0, NULL),
(370, 55000, 'I5', 'Ghế vip', 4, 0, NULL),
(371, 55000, 'I6', 'Ghế vip', 4, 0, NULL),
(372, 55000, 'I7', 'Ghế vip', 4, 0, NULL),
(373, 55000, 'I8', 'Ghế vip', 4, 0, NULL),
(374, 55000, 'I9', 'Ghế vip', 4, 0, NULL),
(375, 55000, 'I10', 'Ghế vip', 4, 0, NULL),
(376, 110000, 'K1', 'Ghế đôi', 4, 0, NULL),
(377, 110000, 'K2', 'Ghế đôi', 4, 0, NULL),
(378, 110000, 'K3', 'Ghế đôi', 4, 0, NULL),
(379, 110000, 'K4', 'Ghế đôi', 4, 0, NULL),
(380, 110000, 'K5', 'Ghế đôi', 4, 0, NULL),
(381, 50000, 'A1', 'Ghế thường', 5, 0, NULL),
(382, 50000, 'A2', 'Ghế thường', 5, 0, NULL),
(383, 50000, 'A3', 'Ghế thường', 5, 0, NULL),
(384, 50000, 'A4', 'Ghế thường', 5, 0, NULL),
(385, 50000, 'A5', 'Ghế thường', 5, 0, NULL),
(386, 50000, 'A6', 'Ghế thường', 5, 0, NULL),
(387, 50000, 'A7', 'Ghế thường', 5, 0, NULL),
(388, 50000, 'A8', 'Ghế thường', 5, 0, NULL),
(389, 50000, 'A9', 'Ghế thường', 5, 0, NULL),
(390, 50000, 'A10', 'Ghế thường', 5, 0, NULL),
(391, 50000, 'B1', 'Ghế thường', 5, 0, NULL),
(392, 50000, 'B2', 'Ghế thường', 5, 0, NULL),
(393, 50000, 'B3', 'Ghế thường', 5, 0, NULL),
(394, 50000, 'B4', 'Ghế thường', 5, 0, NULL),
(395, 50000, 'B5', 'Ghế thường', 5, 0, NULL),
(396, 50000, 'B6', 'Ghế thường', 5, 0, NULL),
(397, 50000, 'B7', 'Ghế thường', 5, 0, NULL),
(398, 50000, 'B8', 'Ghế thường', 5, 0, NULL),
(399, 50000, 'B9', 'Ghế thường', 5, 0, NULL),
(400, 50000, 'B10', 'Ghế thường', 5, 0, NULL),
(401, 55000, 'C1', 'Ghế vip', 5, 0, NULL),
(402, 55000, 'C2', 'Ghế vip', 5, 0, NULL),
(403, 55000, 'C3', 'Ghế vip', 5, 0, NULL),
(404, 55000, 'C4', 'Ghế vip', 5, 0, NULL),
(405, 55000, 'C5', 'Ghế vip', 5, 0, NULL),
(406, 55000, 'C6', 'Ghế vip', 5, 0, NULL),
(407, 55000, 'C7', 'Ghế vip', 5, 0, NULL),
(408, 55000, 'C8', 'Ghế vip', 5, 0, NULL),
(409, 55000, 'C9', 'Ghế vip', 5, 0, NULL),
(410, 55000, 'C10', 'Ghế vip', 5, 0, NULL),
(411, 55000, 'D1', 'Ghế vip', 5, 0, NULL),
(412, 55000, 'D2', 'Ghế vip', 5, 0, NULL),
(413, 55000, 'D3', 'Ghế vip', 5, 0, NULL),
(414, 55000, 'D4', 'Ghế vip', 5, 0, NULL),
(415, 55000, 'D5', 'Ghế vip', 5, 0, NULL),
(416, 55000, 'D6', 'Ghế vip', 5, 0, NULL),
(417, 55000, 'D7', 'Ghế vip', 5, 0, NULL),
(418, 55000, 'D8', 'Ghế vip', 5, 0, NULL),
(419, 55000, 'D9', 'Ghế vip', 5, 0, NULL),
(420, 55000, 'D10', 'Ghế vip', 5, 0, NULL),
(421, 55000, 'E1', 'Ghế vip', 5, 0, NULL),
(422, 55000, 'E2', 'Ghế vip', 5, 0, NULL),
(423, 55000, 'E3', 'Ghế vip', 5, 0, NULL),
(424, 55000, 'E4', 'Ghế vip', 5, 0, NULL),
(425, 55000, 'E5', 'Ghế vip', 5, 0, NULL),
(426, 55000, 'E6', 'Ghế vip', 5, 0, NULL),
(427, 55000, 'E7', 'Ghế vip', 5, 0, NULL),
(428, 55000, 'E8', 'Ghế vip', 5, 0, NULL),
(429, 55000, 'E9', 'Ghế vip', 5, 0, NULL),
(430, 55000, 'E10', 'Ghế vip', 5, 0, NULL),
(431, 55000, 'F1', 'Ghế vip', 5, 0, NULL),
(432, 55000, 'F2', 'Ghế vip', 5, 0, NULL),
(433, 55000, 'F3', 'Ghế vip', 5, 0, NULL),
(434, 55000, 'F4', 'Ghế vip', 5, 0, NULL),
(435, 55000, 'F5', 'Ghế vip', 5, 0, NULL),
(436, 55000, 'F6', 'Ghế vip', 5, 0, NULL),
(437, 55000, 'F7', 'Ghế vip', 5, 0, NULL),
(438, 55000, 'F8', 'Ghế vip', 5, 0, NULL),
(439, 55000, 'F9', 'Ghế vip', 5, 0, NULL),
(440, 55000, 'F10', 'Ghế vip', 5, 0, NULL),
(441, 55000, 'G1', 'Ghế vip', 5, 0, NULL),
(442, 55000, 'G2', 'Ghế vip', 5, 0, NULL),
(443, 55000, 'G3', 'Ghế vip', 5, 0, NULL),
(444, 55000, 'G4', 'Ghế vip', 5, 0, NULL),
(445, 55000, 'G5', 'Ghế vip', 5, 0, NULL),
(446, 55000, 'G6', 'Ghế vip', 5, 0, NULL),
(447, 55000, 'G7', 'Ghế vip', 5, 0, NULL),
(448, 55000, 'G8', 'Ghế vip', 5, 0, NULL),
(449, 55000, 'G9', 'Ghế vip', 5, 0, NULL),
(450, 55000, 'G10', 'Ghế vip', 5, 0, NULL),
(451, 55000, 'H1', 'Ghế vip', 5, 0, NULL),
(452, 55000, 'H2', 'Ghế vip', 5, 0, NULL),
(453, 55000, 'H3', 'Ghế vip', 5, 0, NULL),
(454, 55000, 'H4', 'Ghế vip', 5, 0, NULL),
(455, 55000, 'H5', 'Ghế vip', 5, 0, NULL),
(456, 55000, 'H6', 'Ghế vip', 5, 0, NULL),
(457, 55000, 'H7', 'Ghế vip', 5, 0, NULL),
(458, 55000, 'H8', 'Ghế vip', 5, 0, NULL),
(459, 55000, 'H9', 'Ghế vip', 5, 0, NULL),
(460, 55000, 'H10', 'Ghế vip', 5, 0, NULL),
(461, 55000, 'I1', 'Ghế vip', 5, 0, NULL),
(462, 55000, 'I2', 'Ghế vip', 5, 0, NULL),
(463, 55000, 'I3', 'Ghế vip', 5, 0, NULL),
(464, 55000, 'I4', 'Ghế vip', 5, 0, NULL),
(465, 55000, 'I5', 'Ghế vip', 5, 0, NULL),
(466, 55000, 'I6', 'Ghế vip', 5, 0, NULL),
(467, 55000, 'I7', 'Ghế vip', 5, 0, NULL),
(468, 55000, 'I8', 'Ghế vip', 5, 0, NULL),
(469, 55000, 'I9', 'Ghế vip', 5, 0, NULL),
(470, 55000, 'I10', 'Ghế vip', 5, 0, NULL),
(471, 110000, 'K1', 'Ghế đôi', 5, 0, NULL),
(472, 110000, 'K2', 'Ghế đôi', 5, 0, NULL),
(473, 110000, 'K3', 'Ghế đôi', 5, 0, NULL),
(474, 110000, 'K4', 'Ghế đôi', 5, 0, NULL),
(475, 110000, 'K5', 'Ghế đôi', 5, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lich_chieus`
--

CREATE TABLE `lich_chieus` (
  `Ma_lich_chieu` int(11) NOT NULL,
  `Ma_phim` int(10) NOT NULL,
  `Ma_phong` int(11) NOT NULL,
  `Ngay_chieu` date NOT NULL,
  `Gio_chieu` time NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `Trang_thai` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lich_chieus`
--

INSERT INTO `lich_chieus` (`Ma_lich_chieu`, `Ma_phim`, `Ma_phong`, `Ngay_chieu`, `Gio_chieu`, `updated_at`, `created_at`, `Trang_thai`) VALUES
(8, 10, 2, '2023-09-28', '10:00:00', '2023-09-30 08:02:49', '2023-09-27 12:56:54', b'0'),
(9, 10, 1, '2023-09-27', '22:00:00', '2023-09-30 08:02:49', '2023-09-27 12:57:23', b'0'),
(10, 12, 5, '2023-10-04', '23:00:00', '2023-10-06 06:38:10', '2023-09-30 08:58:49', b'0'),
(11, 12, 3, '2023-10-08', '15:00:00', '2023-10-09 05:07:06', '2023-10-02 06:10:02', b'0'),
(12, 12, 3, '2023-10-08', '08:00:00', '2023-10-09 05:07:06', '2023-10-02 06:35:32', b'0'),
(13, 12, 1, '2023-10-06', '18:00:00', '2023-10-09 05:07:06', '2023-10-02 07:12:36', b'0'),
(14, 12, 2, '2023-10-06', '20:00:00', '2023-10-09 05:07:07', '2023-10-02 07:12:59', b'0'),
(15, 12, 1, '2023-10-06', '22:10:00', '2023-10-09 05:07:07', '2023-10-02 07:13:25', b'0'),
(16, 12, 4, '2023-10-12', '18:20:00', '2023-10-13 13:41:17', '2023-10-03 08:44:55', b'0'),
(17, 9, 1, '2023-10-05', '03:40:00', '2023-10-04 07:40:08', '2023-10-04 07:40:08', b'0'),
(18, 12, 1, '2023-10-19', '21:56:00', '2023-10-13 13:56:28', '2023-10-13 13:56:28', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_24_051027_create_sliders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phongs`
--

CREATE TABLE `phongs` (
  `Ma_phong` int(11) NOT NULL,
  `Ten_phong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phongs`
--

INSERT INTO `phongs` (`Ma_phong`, `Ten_phong`) VALUES
(1, 'Phòng 1'),
(2, 'Phòng 2'),
(3, 'Phòng 3'),
(4, 'Phòng 4'),
(5, 'Phòng 5');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `Image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `Image`, `created_at`, `updated_at`) VALUES
(1, 'https://files.betacorp.vn/files/ecm/2023/04/21/mer-resize-1702-x-621-140337-210423-86.png', '2023-09-23 22:39:53', '2023-09-23 22:39:53'),
(2, 'https://files.betacorp.vn/files/ecm/2023/09/22/untitled-2-095758-220923-79.jpg', '2023-09-23 22:54:14', '2023-09-23 22:54:14'),
(3, 'https://files.betacorp.vn/files/ecm/2023/09/19/patrol-sneak-show-shrink-150607-190923-86.jpg', '2023-09-23 22:54:28', '2023-09-23 22:54:28'),
(4, 'https://files.betacorp.vn/files/ecm/2023/09/20/379433503-1316837865601775-5354625697645944422-n-142228-200923-86.jpg', '2023-09-23 22:54:44', '2023-09-23 22:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Ngay_sinh` date DEFAULT NULL,
  `Gioi_tinh` bit(1) DEFAULT NULL,
  `So_dien_thoai` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `Ngay_sinh`, `Gioi_tinh`, `So_dien_thoai`) VALUES
(1, 'Pham Quan', 'quanpham2112004@gmail.com', NULL, '$2y$10$L3sJwI3PwusapX6XhDKe..CNUNecLMxKuFQwgS1owhnklP/yQEBYe', NULL, '2023-10-02 02:11:50', '2023-10-02 02:11:50', '2004-11-02', b'1', '0368407458'),
(2, 'Quan', 'Phamquan2112004@gmail.com', NULL, '$2y$10$rAJHoRYolNaunrfi2umxBuAWYnmE.4juVmikWoLfBfdtL4fdpoKXC', NULL, '2023-10-02 02:13:36', '2023-10-02 02:13:36', '2004-11-02', b'1', '0368407458'),
(3, 'Khanh', 'khanhga@gmail.com', NULL, '$2y$10$NAYcXL9d4qYPz3mqpVfFWulrE1UcQFjgvUuB0Taq./hBIq8xsM83W', NULL, '2023-10-02 02:14:36', '2023-10-02 02:14:36', '2004-11-26', b'1', '0368407458'),
(4, 'khanh', 'Khanhgaa@gmail.com', NULL, '$2y$10$2UFhcmuGBXI7MC9tqopWfOnGMDIlHmHLBNPZ3AUFve.zFrOjzPXwe', NULL, '2023-10-02 02:15:43', '2023-10-02 02:15:43', '2023-10-17', b'0', '0368407458'),
(5, 'Pham Quan', 'Quandz@gmail.com', NULL, '$2y$10$EpmYzA5o3gtemnrb7sLPHOcIdAIQNUu8j0Iupn4GRdEUC8iMQBaP.', NULL, '2023-10-04 21:50:39', '2023-10-04 21:50:39', '2004-11-02', b'0', '0368407458');

-- --------------------------------------------------------

--
-- Table structure for table `ves`
--

CREATE TABLE `ves` (
  `Ma_ghe` int(11) NOT NULL,
  `Ma_lich_chieu` int(11) NOT NULL,
  `Gia` double NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `Ma_khach_hang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ves`
--

INSERT INTO `ves` (`Ma_ghe`, `Ma_lich_chieu`, `Gia`, `updated_at`, `created_at`, `Ma_khach_hang`) VALUES
(6, 18, 50000, '2023-10-13 16:30:17', '2023-10-13 16:30:17', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_phims`
--
ALTER TABLE `chi_tiet_phims`
  ADD PRIMARY KEY (`Ma_phim`) USING BTREE;

--
-- Indexes for table `danh_sach_phims`
--
ALTER TABLE `danh_sach_phims`
  ADD PRIMARY KEY (`Ma_phim`) USING BTREE;

--
-- Indexes for table `ghes`
--
ALTER TABLE `ghes`
  ADD PRIMARY KEY (`Ma_ghe`) USING BTREE,
  ADD KEY `FK_ghe_phong` (`Ma_phong`);

--
-- Indexes for table `lich_chieus`
--
ALTER TABLE `lich_chieus`
  ADD PRIMARY KEY (`Ma_lich_chieu`) USING BTREE,
  ADD KEY `FK_lich_chieus_danh_sach_phims` (`Ma_phim`) USING BTREE,
  ADD KEY `FK_lich_chieus_phong` (`Ma_phong`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phongs`
--
ALTER TABLE `phongs`
  ADD PRIMARY KEY (`Ma_phong`) USING BTREE;

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `ves`
--
ALTER TABLE `ves`
  ADD PRIMARY KEY (`Ma_ghe`,`Ma_khach_hang`,`Ma_lich_chieu`),
  ADD KEY `FK_ves_lich_chieus` (`Ma_lich_chieu`),
  ADD KEY `FK_ves_users` (`Ma_khach_hang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_tiet_phims`
--
ALTER TABLE `chi_tiet_phims`
  MODIFY `Ma_phim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `danh_sach_phims`
--
ALTER TABLE `danh_sach_phims`
  MODIFY `Ma_phim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ghes`
--
ALTER TABLE `ghes`
  MODIFY `Ma_ghe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT for table `lich_chieus`
--
ALTER TABLE `lich_chieus`
  MODIFY `Ma_lich_chieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phongs`
--
ALTER TABLE `phongs`
  MODIFY `Ma_phong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_phims`
--
ALTER TABLE `chi_tiet_phims`
  ADD CONSTRAINT `FK_chi_tiet_phims_danh_sach_phims` FOREIGN KEY (`Ma_phim`) REFERENCES `danh_sach_phims` (`Ma_phim`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `ghes`
--
ALTER TABLE `ghes`
  ADD CONSTRAINT `FK_ghe_phong` FOREIGN KEY (`Ma_phong`) REFERENCES `phongs` (`Ma_phong`);

--
-- Constraints for table `lich_chieus`
--
ALTER TABLE `lich_chieus`
  ADD CONSTRAINT `FK_lich_chieus_danh_sach_phims` FOREIGN KEY (`Ma_phim`) REFERENCES `danh_sach_phims` (`Ma_phim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lich_chieus_phongs` FOREIGN KEY (`Ma_phong`) REFERENCES `phongs` (`Ma_phong`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ves`
--
ALTER TABLE `ves`
  ADD CONSTRAINT `FK_ves_ghes` FOREIGN KEY (`Ma_ghe`) REFERENCES `ghes` (`Ma_ghe`),
  ADD CONSTRAINT `FK_ves_lich_chieus` FOREIGN KEY (`Ma_lich_chieu`) REFERENCES `lich_chieus` (`Ma_lich_chieu`),
  ADD CONSTRAINT `FK_ves_users` FOREIGN KEY (`Ma_khach_hang`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
