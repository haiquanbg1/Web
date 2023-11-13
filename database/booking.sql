-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 13, 2023 at 05:47 AM
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `Addghe` (IN `phong` INT(11), IN `ten` VARCHAR(50), IN `soghe` INT(11))   BEGIN
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
(13, 'Nguyễn Quang Dũng', 'Hồng Ánh, Huỳnh Hạo Khang, Mai Tài Phến, Công Ninh, Hứa Vĩ Văn, Tuyền Mập, Tuấn Trần.', 'Tiếng Việt', 'Đất Rừng Phương Nam phiên bản điện ảnh được kế thừa và phát triển từ tiểu thuyết cùng tên của nhà văn Đoàn Giỏi và tác phẩm truyền hình nổi tiếng “Đất Phương Nam” của đạo diễn Nguyễn Vinh Sơn. Bộ phim kể về hành trình phiêu lưu của An - một cậu bé chẳng may mất mẹ trên đường đi tìm cha. Cùng với An, khán giả sẽ trải nghiệm sự trù phú của thiên nhiên và nét đẹp văn hoá đặc sắc của vùng đất Nam Kì Lục Tỉnh, sự hào hiệp của những người nông dân bám đất bám rừng và tinh thần yêu nước kháng Pháp đầu thế kỉ 20. Bên cạnh đó, tình cảm gia đình, tình bạn, tình người, tình thầy trò, tình yêu nước là những cung bậc cảm xúc sâu sắc sẽ đọng lại qua mỗi bước chân của An và đồng bạn.', 'https://www.youtube.com/embed/wMdBxzHaP6w?rel=0&showinfo=0&autoplay=1', 12, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f10%2f04%2f385416936%2D716209960553337%2D3035849014953668405%2Dn%2D162339%2D041023%2D58.png', '2023-10-14 14:08:09', '2023-10-14 14:08:09'),
(14, 'Thitipan Raksasat', 'Thanachat Tullayachat, Savika Chaiyadej, Denkhun Ngamnet, Panisara Rikulsurakan', 'Tiếng Thái', 'Ging đưa con trai đi nghỉ mát ở căn nhà gỗ nằm giữa rừng cây. Tuy nhiên, cậu bé đã bị bắt cóc vào lúc nửa đêm. Sau bao nỗ lực tìm kiếm, manh mối duy nhất của vụ án đều hướng về người đàn ông tên In, làm nghề mai táng ở đền thờ. Quá tuyệt vọng, Ging đành nhờ cậy thầy đồng địa phương thực hiện nghi lễ hiến tế giữa rừng để tìm tung tích con trai. Những bí ẩn trong ngôi nhà ven rừng dần lộ ra, những cơn ác mộng máu me và hàng loạt cái chết đột ngột ập tới, liệu Ging có đang vướng vào một âm mưu tà ám. Và rằng con trai cô có thật sự đang mất tích?', 'https://www.youtube.com/embed/HyuykY4fOxA?rel=0&showinfo=0&autoplay=1', 18, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f09%2f27%2fz4731364793788%2D48a5acdf3510b6a6d0917b85b5e4e402%2D142643%2D270923%2D73.png', '2023-10-14 14:08:09', '2023-10-14 14:08:09'),
(15, 'David Gordon Green', 'Jennifer Nettles, Ellen Burstyn, Leslie Odom Jr.', 'Tiếng anh', 'Phần tiếp theo của bộ phim năm 1973 kể về một cô bé 12 tuổi bị một thực thể ma quỷ bí ẩn chiếm hữu, buộc mẹ cô phải tìm đến sự giúp đỡ của hai linh mục để cứu cô.', 'https://www.youtube.com/embed/nFGOGdlMgTk?rel=0&showinfo=0&autoplay=1', 18, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f10%2f03%2f400x633%2D110201%2D031023%2D57.jpg', '2023-10-14 14:08:09', '2023-10-14 14:08:09'),
(16, 'Kim Sung-Sik', 'Gang Dong Won, Esom, Lee Dong Hwi, Kim Jong Soo, Lee Jung Eun, Park Myoung Hyun, Park So Yi', 'Tiếng Hàn', 'Chuyện phim xoay quanh nhân vật thầy trừ tà Cheon (Gang Dong Won thủ vai), cùng với chiến hữu của mình In Bae (Lee Dong Hwi thủ vai), chuyên đi lừa đảo với những màn trừ tà pha ke sử dụng công nghệ cao cùng khả năng hùng biện và tài thao túng tâm lý đỉnh cao. Tuy chuyên đi trừ tà nhưng cả hai đều không thể nhìn thấy và không tin vào ma quỷ cho tới khi họ phải đối đầu với một con ác quỷ thật đang khống chế em gái (Park So Yi thủ vai) của Yoo Kyung (Esom thủ vai). Yoo Kyung sở hữu đôi mắt âm dương có thể nhìn thấy những linh hồn. Kết hợp với thầy trừ tà Cheon và In Bae, họ phải đối đầu với con ác quỷ thật sự - Beom Cheom (Huh Joon Ho thủ vai) và từ đó, thầy trừ tà Cheon vô tình khám phá được bí mật đằng sau cái chết của em trai và ông nội mình. Nhận được sự giúp đỡ của một nhân vật bí ẩn cùng với những pha hành động trừ tà đẹp mắt, liệu thầy trừ tà Cheon có giúp được em gái của Yoo Kyung và diệt trừ ác quỷ đó?', 'https://www.youtube.com/embed/sLZacV9sZDc?rel=0&showinfo=0&autoplay=1', 16, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f10%2f03%2fcheon%2Dmain%2Dposter%2Dprinting%2D1%2D112321%2D031023%2D48.png', '2023-10-14 14:08:33', '2023-10-14 14:08:33'),
(17, 'Lương Đình Dũng', 'Quốc Toàn, Minh Hiền, Đức Trí, Tạ Xuân Tuế, Ba Trường', 'Tiếng Việt', 'Nhân vật chính là một chàng thanh niên 26 tuổi, sống đơn độc giữa trung tâm thành phố nhộn nhịp, mưu sinh bằng nghề mổ gà. Một ngày, sự xuất hiện của nhóm giang hồ và một cô gái điếm đã tác động đến cuộc sống của anh. Điều đó đã làm cho bản năng hoang dã của chàng thanh niên trỗi dậy không kiểm soát.', 'https://www.youtube.com/embed/Y0EMm3vMXyk?rel=0&showinfo=0&autoplay=1', 18, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f10%2f03%2fth%2Dnh%2Dph%2Dng%2Dg%2Dt%2Dpayoff%2Dposter%2Dkh%2Di%2Dchi%2Du%2D13%2D10%2D2023%2D1%2D113244%2D031023%2D35.png', '2023-10-14 14:08:33', '2023-10-14 14:08:33'),
(18, 'Kim Jee-Woon', 'Um Tae-goo, Yeom Hye-ran, Jung Woo-Sung, Jung Mi-hyeong, Jung Kyung-ho', 'Tiếng Hàn', 'Cú Máy Ăn Tiền lấy bối cảnh thực tế và câu chuyện làm phim những năm 1970 ở Hàn Quốc. Kim Yeol (Song Kang Ho thủ vai) - một đạo diễn điện ảnh có bộ phim đầu tay được giới phê bình khen ngợi, nhưng sự nghiệp của ông tuột dốc không phanh khi liên tiếp ra đời những tác phẩm bị coi là “phim rác”. Sau khi hoàn thành xong bộ phim mới nhất là Cobweb, đạo diễn Kim cảm thấy cần quay lại cái kết để có thể tạo ra một kiệt tác. Tuy nhiên, kịch bản mới không vượt qua được khâu kiểm duyệt và các diễn viên cũng không thể hiểu được cái kết mới của ông. Giữa lịch trình rối rắm, sự phản đối từ nhà sản xuất, sự can thiệp của cơ quan kiểm duyệt và những mâu thuẫn đang xung đột trước mắt khiến đạo diễn Kim như muốn phát điên, nhưng ông vẫn tiếp tục một cách bất chấp: “Nếu tôi có thể thay đổi cái kết, một kiệt tác sẽ xuất hiện. Tất cả những gì tôi cần là 2 ngày”.', 'https://www.youtube.com/embed/z5hcWvhK9Ps?rel=0&showinfo=0&autoplay=1', 16, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f10%2f09%2fcw%2D400x633%2D162007%2D091023%2D43.jpg', '2023-10-14 14:12:00', '2023-10-14 14:12:00'),
(19, 'Tân DS', 'Isaac, Rocker Nguyễn, La Thành, Emma Lê, Lợi Trần, Ngọc Hồ', 'Tiếng Việt', 'Bộ phim xoay quanh câu chuyện về các bạn trẻ dù xuất hiện tại những bối cảnh khác nhau và đối mặt vấn đề riêng, tất cả cùng có chung một điểm là những người trẻ đang đứng trước những ngọn núi phải chinh phục của chính mình.', 'https://www.youtube.com/embed/RqFV-tHeNeg?rel=0&showinfo=0&autoplay=1', 13, 'https://files.betacorp.vn/files/media%2fimages%2f2023%2f09%2f25%2fz4634513673125%2D74c3a1baf3aa7e6362fa00c94073e0d2%2D103834%2D250923%2D24.png', '2023-10-14 14:12:00', '2023-10-14 14:12:00');

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
(13, 'Đất Rừng Phương Nam', 110, '2023-10-20', 'Tâm lý', '2023-10-14 13:43:02', '2023-10-14 13:43:02', b'1'),
(14, 'Kumanthong: Quỷ Linh Nhi', 87, '2023-10-06', 'Kinh Dị', '2023-10-14 13:49:20', '2023-10-14 13:49:20', b'1'),
(15, 'Quỷ Ám: Tín Đồ', 111, '2023-10-06', 'Kinh Dị', '2023-10-14 13:49:20', '2023-10-14 13:49:20', b'1'),
(16, 'Thanh Gươm Trừ Tà', 98, '2023-10-06', 'Hài Hước, Kinh Dị', '2023-10-14 13:49:20', '2023-10-14 13:49:20', b'1'),
(17, 'Thành Phố Ngủ Gật', 73, '2023-10-13', 'Hồi Hộp, Tội Phạm', '2023-10-14 13:49:20', '2023-10-14 13:49:20', b'1'),
(18, 'Cú Máy Ăn Tiền', 132, '2023-10-13', 'Tâm lý, Hài hước', '2023-10-14 13:49:20', '2023-10-14 13:49:20', b'1'),
(19, 'Giao Lộ 8675', 107, '2023-10-06', 'Hài hước, Hành động', '2023-10-14 13:49:20', '2023-10-14 13:49:20', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `ghes`
--

CREATE TABLE `ghes` (
  `Ma_ghe` int(11) NOT NULL,
  `Ten_ghe` varchar(50) NOT NULL,
  `Loai_ghe` varchar(50) NOT NULL,
  `Ma_phong` int(11) DEFAULT NULL,
  `Gia` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ghes`
--

INSERT INTO `ghes` (`Ma_ghe`, `Ten_ghe`, `Loai_ghe`, `Ma_phong`, `Gia`) VALUES
(1, 'A1', 'Ghế thường', 1, 50000),
(2, 'A2', 'Ghế thường', 1, 50000),
(3, 'A3', 'Ghế thường', 1, 50000),
(4, 'A4', 'Ghế thường', 1, 50000),
(5, 'A5', 'Ghế thường', 1, 50000),
(6, 'A6', 'Ghế thường', 1, 50000),
(7, 'A7', 'Ghế thường', 1, 50000),
(8, 'A8', 'Ghế thường', 1, 50000),
(9, 'A9', 'Ghế thường', 1, 50000),
(10, 'A10', 'Ghế thường', 1, 50000),
(11, 'B1', 'Ghế thường', 1, 50000),
(12, 'B2', 'Ghế thường', 1, 50000),
(13, 'B3', 'Ghế thường', 1, 50000),
(14, 'B4', 'Ghế thường', 1, 50000),
(15, 'B5', 'Ghế thường', 1, 50000),
(16, 'B6', 'Ghế thường', 1, 50000),
(17, 'B7', 'Ghế thường', 1, 50000),
(18, 'B8', 'Ghế thường', 1, 50000),
(19, 'B9', 'Ghế thường', 1, 50000),
(20, 'B10', 'Ghế thường', 1, 50000),
(21, 'C1', 'Ghế vip', 1, 55000),
(22, 'C2', 'Ghế vip', 1, 55000),
(23, 'C3', 'Ghế vip', 1, 55000),
(24, 'C4', 'Ghế vip', 1, 55000),
(25, 'C5', 'Ghế vip', 1, 55000),
(26, 'C6', 'Ghế vip', 1, 55000),
(27, 'C7', 'Ghế vip', 1, 55000),
(28, 'C8', 'Ghế vip', 1, 55000),
(29, 'C9', 'Ghế vip', 1, 55000),
(30, 'C10', 'Ghế vip', 1, 55000),
(31, 'D1', 'Ghế vip', 1, 55000),
(32, 'D2', 'Ghế vip', 1, 55000),
(33, 'D3', 'Ghế vip', 1, 55000),
(34, 'D4', 'Ghế vip', 1, 55000),
(35, 'D5', 'Ghế vip', 1, 55000),
(36, 'D6', 'Ghế vip', 1, 55000),
(37, 'D7', 'Ghế vip', 1, 55000),
(38, 'D8', 'Ghế vip', 1, 55000),
(39, 'D9', 'Ghế vip', 1, 55000),
(40, 'D10', 'Ghế vip', 1, 55000),
(41, 'E1', 'Ghế vip', 1, 55000),
(42, 'E2', 'Ghế vip', 1, 55000),
(43, 'E3', 'Ghế vip', 1, 55000),
(44, 'E4', 'Ghế vip', 1, 55000),
(45, 'E5', 'Ghế vip', 1, 55000),
(46, 'E6', 'Ghế vip', 1, 55000),
(47, 'E7', 'Ghế vip', 1, 55000),
(48, 'E8', 'Ghế vip', 1, 55000),
(49, 'E9', 'Ghế vip', 1, 55000),
(50, 'E10', 'Ghế vip', 1, 55000),
(51, 'F1', 'Ghế vip', 1, 55000),
(52, 'F2', 'Ghế vip', 1, 55000),
(53, 'F3', 'Ghế vip', 1, 55000),
(54, 'F4', 'Ghế vip', 1, 55000),
(55, 'F5', 'Ghế vip', 1, 55000),
(56, 'F6', 'Ghế vip', 1, 55000),
(57, 'F7', 'Ghế vip', 1, 55000),
(58, 'F8', 'Ghế vip', 1, 55000),
(59, 'F9', 'Ghế vip', 1, 55000),
(60, 'F10', 'Ghế vip', 1, 55000),
(61, 'G1', 'Ghế vip', 1, 55000),
(62, 'G2', 'Ghế vip', 1, 55000),
(63, 'G3', 'Ghế vip', 1, 55000),
(64, 'G4', 'Ghế vip', 1, 55000),
(65, 'G5', 'Ghế vip', 1, 55000),
(66, 'G6', 'Ghế vip', 1, 55000),
(67, 'G7', 'Ghế vip', 1, 55000),
(68, 'G8', 'Ghế vip', 1, 55000),
(69, 'G9', 'Ghế vip', 1, 55000),
(70, 'G10', 'Ghế vip', 1, 55000),
(71, 'H1', 'Ghế vip', 1, 55000),
(72, 'H2', 'Ghế vip', 1, 55000),
(73, 'H3', 'Ghế vip', 1, 55000),
(74, 'H4', 'Ghế vip', 1, 55000),
(75, 'H5', 'Ghế vip', 1, 55000),
(76, 'H6', 'Ghế vip', 1, 55000),
(77, 'H7', 'Ghế vip', 1, 55000),
(78, 'H8', 'Ghế vip', 1, 55000),
(79, 'H9', 'Ghế vip', 1, 55000),
(80, 'H10', 'Ghế vip', 1, 55000),
(81, 'I1', 'Ghế vip', 1, 55000),
(82, 'I2', 'Ghế vip', 1, 55000),
(83, 'I3', 'Ghế vip', 1, 55000),
(84, 'I4', 'Ghế vip', 1, 55000),
(85, 'I5', 'Ghế vip', 1, 55000),
(86, 'I6', 'Ghế vip', 1, 55000),
(87, 'I7', 'Ghế vip', 1, 55000),
(88, 'I8', 'Ghế vip', 1, 55000),
(89, 'I9', 'Ghế vip', 1, 55000),
(90, 'I10', 'Ghế vip', 1, 55000),
(91, 'K1', 'Ghế đôi', 1, 110000),
(92, 'K2', 'Ghế đôi', 1, 110000),
(93, 'K3', 'Ghế đôi', 1, 110000),
(94, 'K4', 'Ghế đôi', 1, 110000),
(95, 'K5', 'Ghế đôi', 1, 110000),
(96, 'A1', 'Ghế thường', 2, 50000),
(97, 'A2', 'Ghế thường', 2, 50000),
(98, 'A3', 'Ghế thường', 2, 50000),
(99, 'A4', 'Ghế thường', 2, 50000),
(100, 'A5', 'Ghế thường', 2, 50000),
(101, 'A6', 'Ghế thường', 2, 50000),
(102, 'A7', 'Ghế thường', 2, 50000),
(103, 'A8', 'Ghế thường', 2, 50000),
(104, 'A9', 'Ghế thường', 2, 50000),
(105, 'A10', 'Ghế thường', 2, 50000),
(106, 'B1', 'Ghế thường', 2, 50000),
(107, 'B2', 'Ghế thường', 2, 50000),
(108, 'B3', 'Ghế thường', 2, 50000),
(109, 'B4', 'Ghế thường', 2, 50000),
(110, 'B5', 'Ghế thường', 2, 50000),
(111, 'B6', 'Ghế thường', 2, 50000),
(112, 'B7', 'Ghế thường', 2, 50000),
(113, 'B8', 'Ghế thường', 2, 50000),
(114, 'B9', 'Ghế thường', 2, 50000),
(115, 'B10', 'Ghế thường', 2, 50000),
(116, 'C1', 'Ghế vip', 2, 55000),
(117, 'C2', 'Ghế vip', 2, 55000),
(118, 'C3', 'Ghế vip', 2, 55000),
(119, 'C4', 'Ghế vip', 2, 55000),
(120, 'C5', 'Ghế vip', 2, 55000),
(121, 'C6', 'Ghế vip', 2, 55000),
(122, 'C7', 'Ghế vip', 2, 55000),
(123, 'C8', 'Ghế vip', 2, 55000),
(124, 'C9', 'Ghế vip', 2, 55000),
(125, 'C10', 'Ghế vip', 2, 55000),
(126, 'D1', 'Ghế vip', 2, 55000),
(127, 'D2', 'Ghế vip', 2, 55000),
(128, 'D3', 'Ghế vip', 2, 55000),
(129, 'D4', 'Ghế vip', 2, 55000),
(130, 'D5', 'Ghế vip', 2, 55000),
(131, 'D6', 'Ghế vip', 2, 55000),
(132, 'D7', 'Ghế vip', 2, 55000),
(133, 'D8', 'Ghế vip', 2, 55000),
(134, 'D9', 'Ghế vip', 2, 55000),
(135, 'D10', 'Ghế vip', 2, 55000),
(136, 'E1', 'Ghế vip', 2, 55000),
(137, 'E2', 'Ghế vip', 2, 55000),
(138, 'E3', 'Ghế vip', 2, 55000),
(139, 'E4', 'Ghế vip', 2, 55000),
(140, 'E5', 'Ghế vip', 2, 55000),
(141, 'E6', 'Ghế vip', 2, 55000),
(142, 'E7', 'Ghế vip', 2, 55000),
(143, 'E8', 'Ghế vip', 2, 55000),
(144, 'E9', 'Ghế vip', 2, 55000),
(145, 'E10', 'Ghế vip', 2, 55000),
(146, 'F1', 'Ghế vip', 2, 55000),
(147, 'F2', 'Ghế vip', 2, 55000),
(148, 'F3', 'Ghế vip', 2, 55000),
(149, 'F4', 'Ghế vip', 2, 55000),
(150, 'F5', 'Ghế vip', 2, 55000),
(151, 'F6', 'Ghế vip', 2, 55000),
(152, 'F7', 'Ghế vip', 2, 55000),
(153, 'F8', 'Ghế vip', 2, 55000),
(154, 'F9', 'Ghế vip', 2, 55000),
(155, 'F10', 'Ghế vip', 2, 55000),
(156, 'G1', 'Ghế vip', 2, 55000),
(157, 'G2', 'Ghế vip', 2, 55000),
(158, 'G3', 'Ghế vip', 2, 55000),
(159, 'G4', 'Ghế vip', 2, 55000),
(160, 'G5', 'Ghế vip', 2, 55000),
(161, 'G6', 'Ghế vip', 2, 55000),
(162, 'G7', 'Ghế vip', 2, 55000),
(163, 'G8', 'Ghế vip', 2, 55000),
(164, 'G9', 'Ghế vip', 2, 55000),
(165, 'G10', 'Ghế vip', 2, 55000),
(166, 'H1', 'Ghế vip', 2, 55000),
(167, 'H2', 'Ghế vip', 2, 55000),
(168, 'H3', 'Ghế vip', 2, 55000),
(169, 'H4', 'Ghế vip', 2, 55000),
(170, 'H5', 'Ghế vip', 2, 55000),
(171, 'H6', 'Ghế vip', 2, 55000),
(172, 'H7', 'Ghế vip', 2, 55000),
(173, 'H8', 'Ghế vip', 2, 55000),
(174, 'H9', 'Ghế vip', 2, 55000),
(175, 'H10', 'Ghế vip', 2, 55000),
(176, 'I1', 'Ghế vip', 2, 55000),
(177, 'I2', 'Ghế vip', 2, 55000),
(178, 'I3', 'Ghế vip', 2, 55000),
(179, 'I4', 'Ghế vip', 2, 55000),
(180, 'I5', 'Ghế vip', 2, 55000),
(181, 'I6', 'Ghế vip', 2, 55000),
(182, 'I7', 'Ghế vip', 2, 55000),
(183, 'I8', 'Ghế vip', 2, 55000),
(184, 'I9', 'Ghế vip', 2, 55000),
(185, 'I10', 'Ghế vip', 2, 55000),
(186, 'K1', 'Ghế đôi', 2, 110000),
(187, 'K2', 'Ghế đôi', 2, 110000),
(188, 'K3', 'Ghế đôi', 2, 110000),
(189, 'K4', 'Ghế đôi', 2, 110000),
(190, 'K5', 'Ghế đôi', 2, 110000),
(191, 'A1', 'Ghế thường', 3, 50000),
(192, 'A2', 'Ghế thường', 3, 50000),
(193, 'A3', 'Ghế thường', 3, 50000),
(194, 'A4', 'Ghế thường', 3, 50000),
(195, 'A5', 'Ghế thường', 3, 50000),
(196, 'A6', 'Ghế thường', 3, 50000),
(197, 'A7', 'Ghế thường', 3, 50000),
(198, 'A8', 'Ghế thường', 3, 50000),
(199, 'A9', 'Ghế thường', 3, 50000),
(200, 'A10', 'Ghế thường', 3, 50000),
(201, 'B1', 'Ghế thường', 3, 50000),
(202, 'B2', 'Ghế thường', 3, 50000),
(203, 'B3', 'Ghế thường', 3, 50000),
(204, 'B4', 'Ghế thường', 3, 50000),
(205, 'B5', 'Ghế thường', 3, 50000),
(206, 'B6', 'Ghế thường', 3, 50000),
(207, 'B7', 'Ghế thường', 3, 50000),
(208, 'B8', 'Ghế thường', 3, 50000),
(209, 'B9', 'Ghế thường', 3, 50000),
(210, 'B10', 'Ghế thường', 3, 50000),
(211, 'C1', 'Ghế vip', 3, 55000),
(212, 'C2', 'Ghế vip', 3, 55000),
(213, 'C3', 'Ghế vip', 3, 55000),
(214, 'C4', 'Ghế vip', 3, 55000),
(215, 'C5', 'Ghế vip', 3, 55000),
(216, 'C6', 'Ghế vip', 3, 55000),
(217, 'C7', 'Ghế vip', 3, 55000),
(218, 'C8', 'Ghế vip', 3, 55000),
(219, 'C9', 'Ghế vip', 3, 55000),
(220, 'C10', 'Ghế vip', 3, 55000),
(221, 'D1', 'Ghế vip', 3, 55000),
(222, 'D2', 'Ghế vip', 3, 55000),
(223, 'D3', 'Ghế vip', 3, 55000),
(224, 'D4', 'Ghế vip', 3, 55000),
(225, 'D5', 'Ghế vip', 3, 55000),
(226, 'D6', 'Ghế vip', 3, 55000),
(227, 'D7', 'Ghế vip', 3, 55000),
(228, 'D8', 'Ghế vip', 3, 55000),
(229, 'D9', 'Ghế vip', 3, 55000),
(230, 'D10', 'Ghế vip', 3, 55000),
(231, 'E1', 'Ghế vip', 3, 55000),
(232, 'E2', 'Ghế vip', 3, 55000),
(233, 'E3', 'Ghế vip', 3, 55000),
(234, 'E4', 'Ghế vip', 3, 55000),
(235, 'E5', 'Ghế vip', 3, 55000),
(236, 'E6', 'Ghế vip', 3, 55000),
(237, 'E7', 'Ghế vip', 3, 55000),
(238, 'E8', 'Ghế vip', 3, 55000),
(239, 'E9', 'Ghế vip', 3, 55000),
(240, 'E10', 'Ghế vip', 3, 55000),
(241, 'F1', 'Ghế vip', 3, 55000),
(242, 'F2', 'Ghế vip', 3, 55000),
(243, 'F3', 'Ghế vip', 3, 55000),
(244, 'F4', 'Ghế vip', 3, 55000),
(245, 'F5', 'Ghế vip', 3, 55000),
(246, 'F6', 'Ghế vip', 3, 55000),
(247, 'F7', 'Ghế vip', 3, 55000),
(248, 'F8', 'Ghế vip', 3, 55000),
(249, 'F9', 'Ghế vip', 3, 55000),
(250, 'F10', 'Ghế vip', 3, 55000),
(251, 'G1', 'Ghế vip', 3, 55000),
(252, 'G2', 'Ghế vip', 3, 55000),
(253, 'G3', 'Ghế vip', 3, 55000),
(254, 'G4', 'Ghế vip', 3, 55000),
(255, 'G5', 'Ghế vip', 3, 55000),
(256, 'G6', 'Ghế vip', 3, 55000),
(257, 'G7', 'Ghế vip', 3, 55000),
(258, 'G8', 'Ghế vip', 3, 55000),
(259, 'G9', 'Ghế vip', 3, 55000),
(260, 'G10', 'Ghế vip', 3, 55000),
(261, 'H1', 'Ghế vip', 3, 55000),
(262, 'H2', 'Ghế vip', 3, 55000),
(263, 'H3', 'Ghế vip', 3, 55000),
(264, 'H4', 'Ghế vip', 3, 55000),
(265, 'H5', 'Ghế vip', 3, 55000),
(266, 'H6', 'Ghế vip', 3, 55000),
(267, 'H7', 'Ghế vip', 3, 55000),
(268, 'H8', 'Ghế vip', 3, 55000),
(269, 'H9', 'Ghế vip', 3, 55000),
(270, 'H10', 'Ghế vip', 3, 55000),
(271, 'I1', 'Ghế vip', 3, 55000),
(272, 'I2', 'Ghế vip', 3, 55000),
(273, 'I3', 'Ghế vip', 3, 55000),
(274, 'I4', 'Ghế vip', 3, 55000),
(275, 'I5', 'Ghế vip', 3, 55000),
(276, 'I6', 'Ghế vip', 3, 55000),
(277, 'I7', 'Ghế vip', 3, 55000),
(278, 'I8', 'Ghế vip', 3, 55000),
(279, 'I9', 'Ghế vip', 3, 55000),
(280, 'I10', 'Ghế vip', 3, 55000),
(281, 'K1', 'Ghế đôi', 3, 110000),
(282, 'K2', 'Ghế đôi', 3, 110000),
(283, 'K3', 'Ghế đôi', 3, 110000),
(284, 'K4', 'Ghế đôi', 3, 110000),
(285, 'K5', 'Ghế đôi', 3, 110000),
(286, 'A1', 'Ghế thường', 4, 50000),
(287, 'A2', 'Ghế thường', 4, 50000),
(288, 'A3', 'Ghế thường', 4, 50000),
(289, 'A4', 'Ghế thường', 4, 50000),
(290, 'A5', 'Ghế thường', 4, 50000),
(291, 'A6', 'Ghế thường', 4, 50000),
(292, 'A7', 'Ghế thường', 4, 50000),
(293, 'A8', 'Ghế thường', 4, 50000),
(294, 'A9', 'Ghế thường', 4, 50000),
(295, 'A10', 'Ghế thường', 4, 50000),
(296, 'B1', 'Ghế thường', 4, 50000),
(297, 'B2', 'Ghế thường', 4, 50000),
(298, 'B3', 'Ghế thường', 4, 50000),
(299, 'B4', 'Ghế thường', 4, 50000),
(300, 'B5', 'Ghế thường', 4, 50000),
(301, 'B6', 'Ghế thường', 4, 50000),
(302, 'B7', 'Ghế thường', 4, 50000),
(303, 'B8', 'Ghế thường', 4, 50000),
(304, 'B9', 'Ghế thường', 4, 50000),
(305, 'B10', 'Ghế thường', 4, 50000),
(306, 'C1', 'Ghế vip', 4, 55000),
(307, 'C2', 'Ghế vip', 4, 55000),
(308, 'C3', 'Ghế vip', 4, 55000),
(309, 'C4', 'Ghế vip', 4, 55000),
(310, 'C5', 'Ghế vip', 4, 55000),
(311, 'C6', 'Ghế vip', 4, 55000),
(312, 'C7', 'Ghế vip', 4, 55000),
(313, 'C8', 'Ghế vip', 4, 55000),
(314, 'C9', 'Ghế vip', 4, 55000),
(315, 'C10', 'Ghế vip', 4, 55000),
(316, 'D1', 'Ghế vip', 4, 55000),
(317, 'D2', 'Ghế vip', 4, 55000),
(318, 'D3', 'Ghế vip', 4, 55000),
(319, 'D4', 'Ghế vip', 4, 55000),
(320, 'D5', 'Ghế vip', 4, 55000),
(321, 'D6', 'Ghế vip', 4, 55000),
(322, 'D7', 'Ghế vip', 4, 55000),
(323, 'D8', 'Ghế vip', 4, 55000),
(324, 'D9', 'Ghế vip', 4, 55000),
(325, 'D10', 'Ghế vip', 4, 55000),
(326, 'E1', 'Ghế vip', 4, 55000),
(327, 'E2', 'Ghế vip', 4, 55000),
(328, 'E3', 'Ghế vip', 4, 55000),
(329, 'E4', 'Ghế vip', 4, 55000),
(330, 'E5', 'Ghế vip', 4, 55000),
(331, 'E6', 'Ghế vip', 4, 55000),
(332, 'E7', 'Ghế vip', 4, 55000),
(333, 'E8', 'Ghế vip', 4, 55000),
(334, 'E9', 'Ghế vip', 4, 55000),
(335, 'E10', 'Ghế vip', 4, 55000),
(336, 'F1', 'Ghế vip', 4, 55000),
(337, 'F2', 'Ghế vip', 4, 55000),
(338, 'F3', 'Ghế vip', 4, 55000),
(339, 'F4', 'Ghế vip', 4, 55000),
(340, 'F5', 'Ghế vip', 4, 55000),
(341, 'F6', 'Ghế vip', 4, 55000),
(342, 'F7', 'Ghế vip', 4, 55000),
(343, 'F8', 'Ghế vip', 4, 55000),
(344, 'F9', 'Ghế vip', 4, 55000),
(345, 'F10', 'Ghế vip', 4, 55000),
(346, 'G1', 'Ghế vip', 4, 55000),
(347, 'G2', 'Ghế vip', 4, 55000),
(348, 'G3', 'Ghế vip', 4, 55000),
(349, 'G4', 'Ghế vip', 4, 55000),
(350, 'G5', 'Ghế vip', 4, 55000),
(351, 'G6', 'Ghế vip', 4, 55000),
(352, 'G7', 'Ghế vip', 4, 55000),
(353, 'G8', 'Ghế vip', 4, 55000),
(354, 'G9', 'Ghế vip', 4, 55000),
(355, 'G10', 'Ghế vip', 4, 55000),
(356, 'H1', 'Ghế vip', 4, 55000),
(357, 'H2', 'Ghế vip', 4, 55000),
(358, 'H3', 'Ghế vip', 4, 55000),
(359, 'H4', 'Ghế vip', 4, 55000),
(360, 'H5', 'Ghế vip', 4, 55000),
(361, 'H6', 'Ghế vip', 4, 55000),
(362, 'H7', 'Ghế vip', 4, 55000),
(363, 'H8', 'Ghế vip', 4, 55000),
(364, 'H9', 'Ghế vip', 4, 55000),
(365, 'H10', 'Ghế vip', 4, 55000),
(366, 'I1', 'Ghế vip', 4, 55000),
(367, 'I2', 'Ghế vip', 4, 55000),
(368, 'I3', 'Ghế vip', 4, 55000),
(369, 'I4', 'Ghế vip', 4, 55000),
(370, 'I5', 'Ghế vip', 4, 55000),
(371, 'I6', 'Ghế vip', 4, 55000),
(372, 'I7', 'Ghế vip', 4, 55000),
(373, 'I8', 'Ghế vip', 4, 55000),
(374, 'I9', 'Ghế vip', 4, 55000),
(375, 'I10', 'Ghế vip', 4, 55000),
(376, 'K1', 'Ghế đôi', 4, 110000),
(377, 'K2', 'Ghế đôi', 4, 110000),
(378, 'K3', 'Ghế đôi', 4, 110000),
(379, 'K4', 'Ghế đôi', 4, 110000),
(380, 'K5', 'Ghế đôi', 4, 110000),
(381, 'A1', 'Ghế thường', 5, 50000),
(382, 'A2', 'Ghế thường', 5, 50000),
(383, 'A3', 'Ghế thường', 5, 50000),
(384, 'A4', 'Ghế thường', 5, 50000),
(385, 'A5', 'Ghế thường', 5, 50000),
(386, 'A6', 'Ghế thường', 5, 50000),
(387, 'A7', 'Ghế thường', 5, 50000),
(388, 'A8', 'Ghế thường', 5, 50000),
(389, 'A9', 'Ghế thường', 5, 50000),
(390, 'A10', 'Ghế thường', 5, 50000),
(391, 'B1', 'Ghế thường', 5, 50000),
(392, 'B2', 'Ghế thường', 5, 50000),
(393, 'B3', 'Ghế thường', 5, 50000),
(394, 'B4', 'Ghế thường', 5, 50000),
(395, 'B5', 'Ghế thường', 5, 50000),
(396, 'B6', 'Ghế thường', 5, 50000),
(397, 'B7', 'Ghế thường', 5, 50000),
(398, 'B8', 'Ghế thường', 5, 50000),
(399, 'B9', 'Ghế thường', 5, 50000),
(400, 'B10', 'Ghế thường', 5, 50000),
(401, 'C1', 'Ghế vip', 5, 55000),
(402, 'C2', 'Ghế vip', 5, 55000),
(403, 'C3', 'Ghế vip', 5, 55000),
(404, 'C4', 'Ghế vip', 5, 55000),
(405, 'C5', 'Ghế vip', 5, 55000),
(406, 'C6', 'Ghế vip', 5, 55000),
(407, 'C7', 'Ghế vip', 5, 55000),
(408, 'C8', 'Ghế vip', 5, 55000),
(409, 'C9', 'Ghế vip', 5, 55000),
(410, 'C10', 'Ghế vip', 5, 55000),
(411, 'D1', 'Ghế vip', 5, 55000),
(412, 'D2', 'Ghế vip', 5, 55000),
(413, 'D3', 'Ghế vip', 5, 55000),
(414, 'D4', 'Ghế vip', 5, 55000),
(415, 'D5', 'Ghế vip', 5, 55000),
(416, 'D6', 'Ghế vip', 5, 55000),
(417, 'D7', 'Ghế vip', 5, 55000),
(418, 'D8', 'Ghế vip', 5, 55000),
(419, 'D9', 'Ghế vip', 5, 55000),
(420, 'D10', 'Ghế vip', 5, 55000),
(421, 'E1', 'Ghế vip', 5, 55000),
(422, 'E2', 'Ghế vip', 5, 55000),
(423, 'E3', 'Ghế vip', 5, 55000),
(424, 'E4', 'Ghế vip', 5, 55000),
(425, 'E5', 'Ghế vip', 5, 55000),
(426, 'E6', 'Ghế vip', 5, 55000),
(427, 'E7', 'Ghế vip', 5, 55000),
(428, 'E8', 'Ghế vip', 5, 55000),
(429, 'E9', 'Ghế vip', 5, 55000),
(430, 'E10', 'Ghế vip', 5, 55000),
(431, 'F1', 'Ghế vip', 5, 55000),
(432, 'F2', 'Ghế vip', 5, 55000),
(433, 'F3', 'Ghế vip', 5, 55000),
(434, 'F4', 'Ghế vip', 5, 55000),
(435, 'F5', 'Ghế vip', 5, 55000),
(436, 'F6', 'Ghế vip', 5, 55000),
(437, 'F7', 'Ghế vip', 5, 55000),
(438, 'F8', 'Ghế vip', 5, 55000),
(439, 'F9', 'Ghế vip', 5, 55000),
(440, 'F10', 'Ghế vip', 5, 55000),
(441, 'G1', 'Ghế vip', 5, 55000),
(442, 'G2', 'Ghế vip', 5, 55000),
(443, 'G3', 'Ghế vip', 5, 55000),
(444, 'G4', 'Ghế vip', 5, 55000),
(445, 'G5', 'Ghế vip', 5, 55000),
(446, 'G6', 'Ghế vip', 5, 55000),
(447, 'G7', 'Ghế vip', 5, 55000),
(448, 'G8', 'Ghế vip', 5, 55000),
(449, 'G9', 'Ghế vip', 5, 55000),
(450, 'G10', 'Ghế vip', 5, 55000),
(451, 'H1', 'Ghế vip', 5, 55000),
(452, 'H2', 'Ghế vip', 5, 55000),
(453, 'H3', 'Ghế vip', 5, 55000),
(454, 'H4', 'Ghế vip', 5, 55000),
(455, 'H5', 'Ghế vip', 5, 55000),
(456, 'H6', 'Ghế vip', 5, 55000),
(457, 'H7', 'Ghế vip', 5, 55000),
(458, 'H8', 'Ghế vip', 5, 55000),
(459, 'H9', 'Ghế vip', 5, 55000),
(460, 'H10', 'Ghế vip', 5, 55000),
(461, 'I1', 'Ghế vip', 5, 55000),
(462, 'I2', 'Ghế vip', 5, 55000),
(463, 'I3', 'Ghế vip', 5, 55000),
(464, 'I4', 'Ghế vip', 5, 55000),
(465, 'I5', 'Ghế vip', 5, 55000),
(466, 'I6', 'Ghế vip', 5, 55000),
(467, 'I7', 'Ghế vip', 5, 55000),
(468, 'I8', 'Ghế vip', 5, 55000),
(469, 'I9', 'Ghế vip', 5, 55000),
(470, 'I10', 'Ghế vip', 5, 55000),
(471, 'K1', 'Ghế đôi', 5, 110000),
(472, 'K2', 'Ghế đôi', 5, 110000),
(473, 'K3', 'Ghế đôi', 5, 110000),
(474, 'K4', 'Ghế đôi', 5, 110000),
(475, 'K5', 'Ghế đôi', 5, 110000);

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
(10, 12, 5, '2023-10-04', '23:00:00', '2023-10-19 08:25:48', '2023-09-30 08:58:49', b'0'),
(11, 12, 3, '2023-10-08', '15:00:00', '2023-10-19 08:25:48', '2023-10-02 06:10:02', b'0'),
(12, 12, 3, '2023-10-08', '08:00:00', '2023-10-19 08:25:48', '2023-10-02 06:35:32', b'0'),
(13, 12, 1, '2023-10-06', '18:00:00', '2023-10-19 08:25:48', '2023-10-02 07:12:36', b'0'),
(14, 12, 2, '2023-10-06', '20:00:00', '2023-10-19 08:25:48', '2023-10-02 07:12:59', b'0'),
(15, 12, 1, '2023-10-06', '22:10:00', '2023-10-19 08:25:48', '2023-10-02 07:13:25', b'0'),
(16, 12, 4, '2023-10-12', '18:20:00', '2023-10-19 08:25:48', '2023-10-03 08:44:55', b'0'),
(17, 8, 2, '2023-10-24', '15:30:00', '2023-10-26 08:00:15', '2023-10-19 08:29:31', b'0'),
(18, 15, 2, '2023-10-31', '10:00:00', '2023-10-26 08:07:25', '2023-10-26 08:01:01', b'0'),
(19, 15, 2, '2023-10-31', '00:00:00', '2023-11-02 06:52:35', '2023-10-26 08:01:29', b'0'),
(20, 17, 3, '2023-10-31', '19:00:00', '2023-11-02 06:52:35', '2023-10-26 08:02:20', b'0'),
(21, 8, 5, '2023-10-30', '19:00:00', '2023-11-02 06:52:35', '2023-10-26 08:20:06', b'0'),
(22, 8, 5, '2023-11-01', '17:25:00', '2023-11-02 06:52:35', '2023-10-26 08:25:48', b'0'),
(26, 8, 5, '2023-10-31', '23:00:00', '2023-11-02 06:52:35', '2023-10-27 16:07:45', b'0'),
(27, 8, 3, '2023-11-02', '23:50:00', '2023-11-06 06:06:50', '2023-11-02 06:55:58', b'0'),
(28, 17, 5, '2023-11-07', '02:11:00', '2023-11-06 06:13:51', '2023-11-06 06:11:33', b'0'),
(29, 17, 3, '2023-11-07', '02:11:00', '2023-11-10 07:11:36', '2023-11-06 06:13:43', b'0'),
(30, 8, 5, '2023-11-07', '17:30:00', '2023-11-10 07:11:36', '2023-11-06 08:26:52', b'0'),
(31, 12, 5, '2023-11-11', '16:19:00', '2023-11-10 07:19:19', '2023-11-10 07:19:19', b'1');

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
  `password` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Ngay_sinh` date DEFAULT NULL,
  `Gioi_tinh` bit(1) DEFAULT NULL,
  `So_dien_thoai` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `Ngay_sinh`, `Gioi_tinh`, `So_dien_thoai`) VALUES
(0, '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00', b'0', '0'),
(1, 'Pham Quan', 'quanpham2112004@gmail.com', '$2y$10$L3sJwI3PwusapX6XhDKe..CNUNecLMxKuFQwgS1owhnklP/yQEBYe', '2023-10-02 02:11:50', '2023-10-02 02:11:50', '2004-11-02', b'1', '0368407458'),
(2, 'Quan', 'Phamquan2112004@gmail.com', '$2y$10$rAJHoRYolNaunrfi2umxBuAWYnmE.4juVmikWoLfBfdtL4fdpoKXC', '2023-10-02 02:13:36', '2023-10-02 02:13:36', '2004-11-02', b'1', '0368407458'),
(3, 'Khanh', 'khanhga@gmail.com', '$2y$10$NAYcXL9d4qYPz3mqpVfFWulrE1UcQFjgvUuB0Taq./hBIq8xsM83W', '2023-10-02 02:14:36', '2023-10-02 02:14:36', '2004-11-26', b'1', '0368407458'),
(4, 'khanh', 'Khanhgaa@gmail.com', '$2y$10$2UFhcmuGBXI7MC9tqopWfOnGMDIlHmHLBNPZ3AUFve.zFrOjzPXwe', '2023-10-02 02:15:43', '2023-10-02 02:15:43', '2023-10-17', b'0', '0368407458'),
(5, 'Nguyễn Quang Cường', 'Cuongnguyen@gmail.com', '$2y$10$ZuKzp06LE2FvfJXH4ykMruZWoqESqyqBwhWSY43xOLAEpxW9IDpDu', '2023-10-25 23:59:11', '2023-10-25 23:59:11', '2004-02-06', b'0', '0986532645'),
(6, 'Trần Trung Hiếu', 'hieuyb1223@gmail.com', '$2y$10$7LBUM.Xf53QNM2hDlKAG3OUo8q4blpxJB35mgHmWorErJ/tFLaTja', '2023-10-26 01:03:38', '2023-10-26 01:03:38', '2004-06-20', b'0', '0384164200'),
(7, 'Đoàn Trung Hiếu', 'Doanhieu@gmail.com', '$2y$10$E6FWqBvKsdqLJmO9y2Pj.uD5T9rFfsVT1vAwLbzzyjRMYfLgOTpO6', '2023-10-26 01:04:31', '2023-10-26 01:04:31', '2004-10-11', b'0', '0356984762'),
(8, 'Nguyễn Đăng Doanh', 'Doanhnguyen@gmail.com', '$2y$10$CDbJvM7.VFvsaTdw97O0C.QPT.8ajia7lSiRyJhBwuVLM8fg9J2Te', '2023-10-26 01:18:19', '2023-10-26 01:18:19', '2004-11-13', b'0', '0913144019'),
(9, 'Đạt', 'datnguyen@gmail.com', '$2y$10$JkIYdXtKfYuIbT5r3MfnVOEVE22DDleFXIejLzJ5KmWMa0c3/dP1.', '2023-11-02 00:24:58', '2023-11-02 00:24:58', '2006-11-14', b'0', '0965423456'),
(10, 'Trần Minh Tuấn', 'tranminhtuan@gmail.com', '$2y$10$6nfSuJQq6ekzkm5KeAxLy.KNOMwInFNlwv01lvY05ckpHEyd50sIq', '2023-11-06 01:14:01', '2023-11-06 01:14:01', '2004-01-20', b'0', '0986231456'),
(11, 'bla bla', 'bla@gmail.com', '$2y$10$Y9ZPHmDmN3KD/8dt1O71xudGMeJeQpJMCEYdLwf9thPA/5qzIN9Ni', '2023-11-10 00:17:30', '2023-11-10 00:17:30', '2023-11-07', b'0', '26526526');

-- --------------------------------------------------------

--
-- Table structure for table `ves`
--

CREATE TABLE `ves` (
  `Ma_ghe` int(11) NOT NULL,
  `Ma_lich_chieu` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `Ma_khach_hang` int(10) NOT NULL,
  `Trang_thai` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ves`
--

INSERT INTO `ves` (`Ma_ghe`, `Ma_lich_chieu`, `updated_at`, `created_at`, `Ma_khach_hang`, `Trang_thai`) VALUES
(150, 18, '2023-10-26 08:05:09', '2023-10-26 08:05:09', 6, 2),
(151, 18, '2023-10-26 08:05:06', '2023-10-26 08:05:06', 6, 2),
(152, 18, '2023-10-26 08:05:13', '2023-10-26 08:05:13', 6, 2),
(161, 18, '2023-10-26 08:05:16', '2023-10-26 08:05:16', 6, 2),
(190, 17, '2023-10-19 09:20:24', '2023-10-19 09:20:24', 2, 2),
(190, 18, '2023-10-26 08:05:03', '2023-10-26 08:05:03', 6, 2),
(191, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(191, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(192, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(192, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(193, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(193, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(194, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(194, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(195, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(195, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(196, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(196, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(197, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(197, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(198, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(198, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(199, 20, '2023-10-26 08:18:55', '2023-10-26 08:18:55', 8, 2),
(199, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(199, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(200, 20, '2023-10-26 08:18:48', '2023-10-26 08:18:48', 8, 2),
(200, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(200, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(201, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(201, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(202, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(202, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(203, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(203, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(204, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(204, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(205, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(205, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(206, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(206, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(207, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(207, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(208, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(208, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(209, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(209, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(210, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(210, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(211, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(211, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(212, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(212, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(213, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(213, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(214, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(214, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(215, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(215, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(216, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(216, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(217, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(217, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(218, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(218, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(219, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(219, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(220, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(220, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(221, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(221, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(222, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(222, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(223, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(223, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(224, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(224, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(225, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(225, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(226, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(226, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(227, 27, '2023-11-02 06:57:06', '2023-11-02 06:55:58', 0, NULL),
(227, 29, '2023-11-06 08:14:55', '2023-11-06 06:13:43', 10, 2),
(228, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(228, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(229, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(229, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(230, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(230, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(231, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(231, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(232, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(232, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(233, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(233, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(234, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(234, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(235, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(235, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(236, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(236, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(237, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(237, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(238, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(238, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(239, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(239, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(240, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(240, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(241, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(241, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(242, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(242, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(243, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(243, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(244, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(244, 29, '2023-11-06 08:14:55', '2023-11-06 06:13:43', 10, 2),
(245, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(245, 29, '2023-11-06 08:14:55', '2023-11-06 06:13:43', 10, 2),
(246, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(246, 29, '2023-11-06 08:14:55', '2023-11-06 06:13:43', 10, 2),
(247, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(247, 29, '2023-11-06 08:14:55', '2023-11-06 06:13:43', 10, 2),
(248, 20, '2023-10-26 08:06:14', '2023-10-26 08:06:14', 6, 2),
(248, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(248, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(249, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(249, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(250, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(250, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(251, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(251, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(252, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(252, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(253, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(253, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(254, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(254, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(255, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(255, 29, '2023-11-06 08:14:55', '2023-11-06 06:13:43', 10, 2),
(256, 20, '2023-10-26 08:06:11', '2023-10-26 08:06:11', 6, 2),
(256, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(256, 29, '2023-11-06 08:14:55', '2023-11-06 06:13:43', 10, 2),
(257, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(257, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(258, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(258, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(259, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(259, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(260, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(260, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(261, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(261, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(262, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(262, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(263, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(263, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(264, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(264, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(265, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(265, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(266, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(266, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(267, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(267, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(268, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(268, 29, '2023-11-06 06:14:38', '2023-11-06 06:13:43', 2, 2),
(269, 20, '2023-10-26 08:18:43', '2023-10-26 08:18:43', 8, 2),
(269, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(269, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(270, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(270, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(271, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(271, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(272, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(272, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(273, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(273, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(274, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(274, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(275, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(275, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(276, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(276, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(277, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(277, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(278, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(278, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(279, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(279, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(280, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(280, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(281, 20, '2023-10-26 08:06:18', '2023-10-26 08:06:18', 6, 2),
(281, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(281, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(282, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(282, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(283, 20, '2023-10-26 08:18:52', '2023-10-26 08:18:52', 8, 2),
(283, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(283, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(284, 27, '2023-11-02 06:55:58', '2023-11-02 06:55:58', 0, NULL),
(284, 29, '2023-11-06 06:14:38', '2023-11-06 06:13:43', 2, 2),
(285, 27, '2023-11-02 07:30:27', '2023-11-02 06:55:58', 9, 2),
(285, 29, '2023-11-06 06:13:43', '2023-11-06 06:13:43', 0, NULL),
(381, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(381, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(381, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(382, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(382, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(382, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(383, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(383, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(383, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(384, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(384, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(384, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(385, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(385, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(385, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(386, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(386, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(386, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(387, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(387, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(387, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(388, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(388, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(388, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(389, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(389, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(389, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(390, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(390, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(390, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(391, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(391, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(391, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(392, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(392, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(392, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(393, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(393, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(393, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(394, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(394, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(394, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(395, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(395, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(395, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(396, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(396, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(396, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(397, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(397, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(397, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(398, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(398, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(398, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(399, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(399, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(399, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(400, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(400, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(400, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(401, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(401, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(401, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(402, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(402, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(402, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(403, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(403, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(403, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(404, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(404, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(404, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(405, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(405, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(405, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(406, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(406, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(406, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(407, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(407, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:52', 10, 2),
(407, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(408, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(408, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(408, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(409, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(409, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(409, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(410, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(410, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(410, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(411, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(411, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(411, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(412, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(412, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(412, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(413, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(413, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:52', 10, 2),
(413, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(414, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(414, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(414, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(415, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(415, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(415, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(416, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(416, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(416, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(417, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(417, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(417, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(418, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(418, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(418, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(419, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(419, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:52', 10, 2),
(419, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(420, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(420, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(420, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(421, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(421, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(421, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(422, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(422, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(422, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(423, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(423, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(423, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(424, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(424, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(424, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(425, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(425, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(425, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(426, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(426, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(426, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(427, 26, '2023-10-27 16:09:08', '2023-10-27 16:07:45', 0, NULL),
(427, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(427, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(428, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(428, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(428, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(429, 21, '2023-10-26 08:22:54', '2023-10-26 08:22:54', 8, 2),
(429, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(429, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(429, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(430, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(430, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(430, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(431, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(431, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(431, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(432, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(432, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(432, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(433, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(433, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(433, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(434, 21, '2023-10-26 08:22:52', '2023-10-26 08:22:52', 8, 2),
(434, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(434, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(434, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(435, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(435, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:52', 10, 2),
(435, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(436, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(436, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:52', 10, 2),
(436, 31, '2023-11-10 07:49:02', '2023-11-10 07:19:19', 6, 2),
(437, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(437, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(437, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(438, 26, '2023-10-27 16:33:05', '2023-10-27 16:07:45', 2, 2),
(438, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(438, 31, '2023-11-10 07:21:18', '2023-11-10 07:19:19', 0, NULL),
(439, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(439, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(439, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(440, 21, '2023-10-26 08:22:58', '2023-10-26 08:22:58', 8, 2),
(440, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(440, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:52', 10, 2),
(440, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(441, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(441, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(441, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(442, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(442, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(442, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(443, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(443, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:52', 10, 2),
(443, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(444, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(444, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(444, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(445, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(445, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(445, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(446, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(446, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(446, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(447, 21, '2023-10-26 08:22:37', '2023-10-26 08:22:37', 8, 2),
(447, 26, '2023-10-27 16:33:05', '2023-10-27 16:07:45', 2, 2),
(447, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(447, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(448, 26, '2023-10-27 16:32:28', '2023-10-27 16:07:45', 0, NULL),
(448, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(448, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(449, 26, '2023-10-27 16:33:05', '2023-10-27 16:07:45', 2, 2),
(449, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(449, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(450, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(450, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(450, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(451, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(451, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(451, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(452, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(452, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(452, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(453, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(453, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(453, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(454, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(454, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(454, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(455, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(455, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(455, 31, '2023-11-10 07:49:02', '2023-11-10 07:19:19', 6, 2),
(456, 21, '2023-10-26 08:22:41', '2023-10-26 08:22:41', 8, 2),
(456, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(456, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(456, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(457, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(457, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:52', 10, 2),
(457, 31, '2023-11-10 07:49:02', '2023-11-10 07:19:19', 6, 2),
(458, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(458, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(458, 31, '2023-11-10 07:20:07', '2023-11-10 07:19:19', 2, 2),
(459, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(459, 30, '2023-11-06 08:26:52', '2023-11-06 08:26:52', 0, NULL),
(459, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(460, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(460, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(460, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(461, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(461, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(461, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(462, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(462, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(462, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(463, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(463, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(463, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(464, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(464, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(464, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(465, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(465, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(465, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(466, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(466, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(466, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(467, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(467, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(467, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(468, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(468, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(468, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(469, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(469, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(469, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(470, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(470, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(470, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL),
(471, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(471, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:53', 10, 2),
(471, 31, '2023-11-10 07:49:02', '2023-11-10 07:19:19', 6, 2),
(472, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(472, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(472, 31, '2023-11-10 07:49:02', '2023-11-10 07:19:19', 6, 2),
(473, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(473, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(473, 31, '2023-11-10 07:49:02', '2023-11-10 07:19:19', 6, 2),
(474, 21, '2023-10-26 08:22:49', '2023-10-26 08:22:49', 8, 2),
(474, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(474, 30, '2023-11-06 08:28:34', '2023-11-06 08:26:53', 10, 2),
(474, 31, '2023-11-10 07:49:02', '2023-11-10 07:19:19', 6, 2),
(475, 26, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(475, 30, '2023-11-06 08:26:53', '2023-11-06 08:26:53', 0, NULL),
(475, 31, '2023-11-10 07:19:19', '2023-11-10 07:19:19', 0, NULL);

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
  ADD PRIMARY KEY (`Ma_ghe`,`Ma_lich_chieu`,`Ma_khach_hang`),
  ADD KEY `FK_ves_lich_chieus` (`Ma_lich_chieu`),
  ADD KEY `FK_ves_users` (`Ma_khach_hang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_tiet_phims`
--
ALTER TABLE `chi_tiet_phims`
  MODIFY `Ma_phim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `danh_sach_phims`
--
ALTER TABLE `danh_sach_phims`
  MODIFY `Ma_phim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ghes`
--
ALTER TABLE `ghes`
  MODIFY `Ma_ghe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT for table `lich_chieus`
--
ALTER TABLE `lich_chieus`
  MODIFY `Ma_lich_chieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  ADD CONSTRAINT `FK_ve_ghe` FOREIGN KEY (`Ma_ghe`) REFERENCES `ghes` (`Ma_ghe`),
  ADD CONSTRAINT `FK_ves_lich_chieus` FOREIGN KEY (`Ma_lich_chieu`) REFERENCES `lich_chieus` (`Ma_lich_chieu`),
  ADD CONSTRAINT `FK_ves_users` FOREIGN KEY (`Ma_khach_hang`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
