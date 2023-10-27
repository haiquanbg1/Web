-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 27, 2023 at 06:35 PM
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
  `Gia` double NOT NULL,
  `Ten_ghe` varchar(50) NOT NULL,
  `Loai_ghe` varchar(50) NOT NULL,
  `Ma_phong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ghes`
--

INSERT INTO `ghes` (`Ma_ghe`, `Gia`, `Ten_ghe`, `Loai_ghe`, `Ma_phong`) VALUES
(1, 50000, 'A1', 'Ghế thường', 1),
(2, 50000, 'A2', 'Ghế thường', 1),
(3, 50000, 'A3', 'Ghế thường', 1),
(4, 50000, 'A4', 'Ghế thường', 1),
(5, 50000, 'A5', 'Ghế thường', 1),
(6, 50000, 'A6', 'Ghế thường', 1),
(7, 50000, 'A7', 'Ghế thường', 1),
(8, 50000, 'A8', 'Ghế thường', 1),
(9, 50000, 'A9', 'Ghế thường', 1),
(10, 50000, 'A10', 'Ghế thường', 1),
(11, 50000, 'B1', 'Ghế thường', 1),
(12, 50000, 'B2', 'Ghế thường', 1),
(13, 50000, 'B3', 'Ghế thường', 1),
(14, 50000, 'B4', 'Ghế thường', 1),
(15, 50000, 'B5', 'Ghế thường', 1),
(16, 50000, 'B6', 'Ghế thường', 1),
(17, 50000, 'B7', 'Ghế thường', 1),
(18, 50000, 'B8', 'Ghế thường', 1),
(19, 50000, 'B9', 'Ghế thường', 1),
(20, 50000, 'B10', 'Ghế thường', 1),
(21, 55000, 'C1', 'Ghế vip', 1),
(22, 55000, 'C2', 'Ghế vip', 1),
(23, 55000, 'C3', 'Ghế vip', 1),
(24, 55000, 'C4', 'Ghế vip', 1),
(25, 55000, 'C5', 'Ghế vip', 1),
(26, 55000, 'C6', 'Ghế vip', 1),
(27, 55000, 'C7', 'Ghế vip', 1),
(28, 55000, 'C8', 'Ghế vip', 1),
(29, 55000, 'C9', 'Ghế vip', 1),
(30, 55000, 'C10', 'Ghế vip', 1),
(31, 55000, 'D1', 'Ghế vip', 1),
(32, 55000, 'D2', 'Ghế vip', 1),
(33, 55000, 'D3', 'Ghế vip', 1),
(34, 55000, 'D4', 'Ghế vip', 1),
(35, 55000, 'D5', 'Ghế vip', 1),
(36, 55000, 'D6', 'Ghế vip', 1),
(37, 55000, 'D7', 'Ghế vip', 1),
(38, 55000, 'D8', 'Ghế vip', 1),
(39, 55000, 'D9', 'Ghế vip', 1),
(40, 55000, 'D10', 'Ghế vip', 1),
(41, 55000, 'E1', 'Ghế vip', 1),
(42, 55000, 'E2', 'Ghế vip', 1),
(43, 55000, 'E3', 'Ghế vip', 1),
(44, 55000, 'E4', 'Ghế vip', 1),
(45, 55000, 'E5', 'Ghế vip', 1),
(46, 55000, 'E6', 'Ghế vip', 1),
(47, 55000, 'E7', 'Ghế vip', 1),
(48, 55000, 'E8', 'Ghế vip', 1),
(49, 55000, 'E9', 'Ghế vip', 1),
(50, 55000, 'E10', 'Ghế vip', 1),
(51, 55000, 'F1', 'Ghế vip', 1),
(52, 55000, 'F2', 'Ghế vip', 1),
(53, 55000, 'F3', 'Ghế vip', 1),
(54, 55000, 'F4', 'Ghế vip', 1),
(55, 55000, 'F5', 'Ghế vip', 1),
(56, 55000, 'F6', 'Ghế vip', 1),
(57, 55000, 'F7', 'Ghế vip', 1),
(58, 55000, 'F8', 'Ghế vip', 1),
(59, 55000, 'F9', 'Ghế vip', 1),
(60, 55000, 'F10', 'Ghế vip', 1),
(61, 55000, 'G1', 'Ghế vip', 1),
(62, 55000, 'G2', 'Ghế vip', 1),
(63, 55000, 'G3', 'Ghế vip', 1),
(64, 55000, 'G4', 'Ghế vip', 1),
(65, 55000, 'G5', 'Ghế vip', 1),
(66, 55000, 'G6', 'Ghế vip', 1),
(67, 55000, 'G7', 'Ghế vip', 1),
(68, 55000, 'G8', 'Ghế vip', 1),
(69, 55000, 'G9', 'Ghế vip', 1),
(70, 55000, 'G10', 'Ghế vip', 1),
(71, 55000, 'H1', 'Ghế vip', 1),
(72, 55000, 'H2', 'Ghế vip', 1),
(73, 55000, 'H3', 'Ghế vip', 1),
(74, 55000, 'H4', 'Ghế vip', 1),
(75, 55000, 'H5', 'Ghế vip', 1),
(76, 55000, 'H6', 'Ghế vip', 1),
(77, 55000, 'H7', 'Ghế vip', 1),
(78, 55000, 'H8', 'Ghế vip', 1),
(79, 55000, 'H9', 'Ghế vip', 1),
(80, 55000, 'H10', 'Ghế vip', 1),
(81, 55000, 'I1', 'Ghế vip', 1),
(82, 55000, 'I2', 'Ghế vip', 1),
(83, 55000, 'I3', 'Ghế vip', 1),
(84, 55000, 'I4', 'Ghế vip', 1),
(85, 55000, 'I5', 'Ghế vip', 1),
(86, 55000, 'I6', 'Ghế vip', 1),
(87, 55000, 'I7', 'Ghế vip', 1),
(88, 55000, 'I8', 'Ghế vip', 1),
(89, 55000, 'I9', 'Ghế vip', 1),
(90, 55000, 'I10', 'Ghế vip', 1),
(91, 110000, 'K1', 'Ghế đôi', 1),
(92, 110000, 'K2', 'Ghế đôi', 1),
(93, 110000, 'K3', 'Ghế đôi', 1),
(94, 110000, 'K4', 'Ghế đôi', 1),
(95, 110000, 'K5', 'Ghế đôi', 1),
(96, 50000, 'A1', 'Ghế thường', 2),
(97, 50000, 'A2', 'Ghế thường', 2),
(98, 50000, 'A3', 'Ghế thường', 2),
(99, 50000, 'A4', 'Ghế thường', 2),
(100, 50000, 'A5', 'Ghế thường', 2),
(101, 50000, 'A6', 'Ghế thường', 2),
(102, 50000, 'A7', 'Ghế thường', 2),
(103, 50000, 'A8', 'Ghế thường', 2),
(104, 50000, 'A9', 'Ghế thường', 2),
(105, 50000, 'A10', 'Ghế thường', 2),
(106, 50000, 'B1', 'Ghế thường', 2),
(107, 50000, 'B2', 'Ghế thường', 2),
(108, 50000, 'B3', 'Ghế thường', 2),
(109, 50000, 'B4', 'Ghế thường', 2),
(110, 50000, 'B5', 'Ghế thường', 2),
(111, 50000, 'B6', 'Ghế thường', 2),
(112, 50000, 'B7', 'Ghế thường', 2),
(113, 50000, 'B8', 'Ghế thường', 2),
(114, 50000, 'B9', 'Ghế thường', 2),
(115, 50000, 'B10', 'Ghế thường', 2),
(116, 55000, 'C1', 'Ghế vip', 2),
(117, 55000, 'C2', 'Ghế vip', 2),
(118, 55000, 'C3', 'Ghế vip', 2),
(119, 55000, 'C4', 'Ghế vip', 2),
(120, 55000, 'C5', 'Ghế vip', 2),
(121, 55000, 'C6', 'Ghế vip', 2),
(122, 55000, 'C7', 'Ghế vip', 2),
(123, 55000, 'C8', 'Ghế vip', 2),
(124, 55000, 'C9', 'Ghế vip', 2),
(125, 55000, 'C10', 'Ghế vip', 2),
(126, 55000, 'D1', 'Ghế vip', 2),
(127, 55000, 'D2', 'Ghế vip', 2),
(128, 55000, 'D3', 'Ghế vip', 2),
(129, 55000, 'D4', 'Ghế vip', 2),
(130, 55000, 'D5', 'Ghế vip', 2),
(131, 55000, 'D6', 'Ghế vip', 2),
(132, 55000, 'D7', 'Ghế vip', 2),
(133, 55000, 'D8', 'Ghế vip', 2),
(134, 55000, 'D9', 'Ghế vip', 2),
(135, 55000, 'D10', 'Ghế vip', 2),
(136, 55000, 'E1', 'Ghế vip', 2),
(137, 55000, 'E2', 'Ghế vip', 2),
(138, 55000, 'E3', 'Ghế vip', 2),
(139, 55000, 'E4', 'Ghế vip', 2),
(140, 55000, 'E5', 'Ghế vip', 2),
(141, 55000, 'E6', 'Ghế vip', 2),
(142, 55000, 'E7', 'Ghế vip', 2),
(143, 55000, 'E8', 'Ghế vip', 2),
(144, 55000, 'E9', 'Ghế vip', 2),
(145, 55000, 'E10', 'Ghế vip', 2),
(146, 55000, 'F1', 'Ghế vip', 2),
(147, 55000, 'F2', 'Ghế vip', 2),
(148, 55000, 'F3', 'Ghế vip', 2),
(149, 55000, 'F4', 'Ghế vip', 2),
(150, 55000, 'F5', 'Ghế vip', 2),
(151, 55000, 'F6', 'Ghế vip', 2),
(152, 55000, 'F7', 'Ghế vip', 2),
(153, 55000, 'F8', 'Ghế vip', 2),
(154, 55000, 'F9', 'Ghế vip', 2),
(155, 55000, 'F10', 'Ghế vip', 2),
(156, 55000, 'G1', 'Ghế vip', 2),
(157, 55000, 'G2', 'Ghế vip', 2),
(158, 55000, 'G3', 'Ghế vip', 2),
(159, 55000, 'G4', 'Ghế vip', 2),
(160, 55000, 'G5', 'Ghế vip', 2),
(161, 55000, 'G6', 'Ghế vip', 2),
(162, 55000, 'G7', 'Ghế vip', 2),
(163, 55000, 'G8', 'Ghế vip', 2),
(164, 55000, 'G9', 'Ghế vip', 2),
(165, 55000, 'G10', 'Ghế vip', 2),
(166, 55000, 'H1', 'Ghế vip', 2),
(167, 55000, 'H2', 'Ghế vip', 2),
(168, 55000, 'H3', 'Ghế vip', 2),
(169, 55000, 'H4', 'Ghế vip', 2),
(170, 55000, 'H5', 'Ghế vip', 2),
(171, 55000, 'H6', 'Ghế vip', 2),
(172, 55000, 'H7', 'Ghế vip', 2),
(173, 55000, 'H8', 'Ghế vip', 2),
(174, 55000, 'H9', 'Ghế vip', 2),
(175, 55000, 'H10', 'Ghế vip', 2),
(176, 55000, 'I1', 'Ghế vip', 2),
(177, 55000, 'I2', 'Ghế vip', 2),
(178, 55000, 'I3', 'Ghế vip', 2),
(179, 55000, 'I4', 'Ghế vip', 2),
(180, 55000, 'I5', 'Ghế vip', 2),
(181, 55000, 'I6', 'Ghế vip', 2),
(182, 55000, 'I7', 'Ghế vip', 2),
(183, 55000, 'I8', 'Ghế vip', 2),
(184, 55000, 'I9', 'Ghế vip', 2),
(185, 55000, 'I10', 'Ghế vip', 2),
(186, 110000, 'K1', 'Ghế đôi', 2),
(187, 110000, 'K2', 'Ghế đôi', 2),
(188, 110000, 'K3', 'Ghế đôi', 2),
(189, 110000, 'K4', 'Ghế đôi', 2),
(190, 110000, 'K5', 'Ghế đôi', 2),
(191, 50000, 'A1', 'Ghế thường', 3),
(192, 50000, 'A2', 'Ghế thường', 3),
(193, 50000, 'A3', 'Ghế thường', 3),
(194, 50000, 'A4', 'Ghế thường', 3),
(195, 50000, 'A5', 'Ghế thường', 3),
(196, 50000, 'A6', 'Ghế thường', 3),
(197, 50000, 'A7', 'Ghế thường', 3),
(198, 50000, 'A8', 'Ghế thường', 3),
(199, 50000, 'A9', 'Ghế thường', 3),
(200, 50000, 'A10', 'Ghế thường', 3),
(201, 50000, 'B1', 'Ghế thường', 3),
(202, 50000, 'B2', 'Ghế thường', 3),
(203, 50000, 'B3', 'Ghế thường', 3),
(204, 50000, 'B4', 'Ghế thường', 3),
(205, 50000, 'B5', 'Ghế thường', 3),
(206, 50000, 'B6', 'Ghế thường', 3),
(207, 50000, 'B7', 'Ghế thường', 3),
(208, 50000, 'B8', 'Ghế thường', 3),
(209, 50000, 'B9', 'Ghế thường', 3),
(210, 50000, 'B10', 'Ghế thường', 3),
(211, 55000, 'C1', 'Ghế vip', 3),
(212, 55000, 'C2', 'Ghế vip', 3),
(213, 55000, 'C3', 'Ghế vip', 3),
(214, 55000, 'C4', 'Ghế vip', 3),
(215, 55000, 'C5', 'Ghế vip', 3),
(216, 55000, 'C6', 'Ghế vip', 3),
(217, 55000, 'C7', 'Ghế vip', 3),
(218, 55000, 'C8', 'Ghế vip', 3),
(219, 55000, 'C9', 'Ghế vip', 3),
(220, 55000, 'C10', 'Ghế vip', 3),
(221, 55000, 'D1', 'Ghế vip', 3),
(222, 55000, 'D2', 'Ghế vip', 3),
(223, 55000, 'D3', 'Ghế vip', 3),
(224, 55000, 'D4', 'Ghế vip', 3),
(225, 55000, 'D5', 'Ghế vip', 3),
(226, 55000, 'D6', 'Ghế vip', 3),
(227, 55000, 'D7', 'Ghế vip', 3),
(228, 55000, 'D8', 'Ghế vip', 3),
(229, 55000, 'D9', 'Ghế vip', 3),
(230, 55000, 'D10', 'Ghế vip', 3),
(231, 55000, 'E1', 'Ghế vip', 3),
(232, 55000, 'E2', 'Ghế vip', 3),
(233, 55000, 'E3', 'Ghế vip', 3),
(234, 55000, 'E4', 'Ghế vip', 3),
(235, 55000, 'E5', 'Ghế vip', 3),
(236, 55000, 'E6', 'Ghế vip', 3),
(237, 55000, 'E7', 'Ghế vip', 3),
(238, 55000, 'E8', 'Ghế vip', 3),
(239, 55000, 'E9', 'Ghế vip', 3),
(240, 55000, 'E10', 'Ghế vip', 3),
(241, 55000, 'F1', 'Ghế vip', 3),
(242, 55000, 'F2', 'Ghế vip', 3),
(243, 55000, 'F3', 'Ghế vip', 3),
(244, 55000, 'F4', 'Ghế vip', 3),
(245, 55000, 'F5', 'Ghế vip', 3),
(246, 55000, 'F6', 'Ghế vip', 3),
(247, 55000, 'F7', 'Ghế vip', 3),
(248, 55000, 'F8', 'Ghế vip', 3),
(249, 55000, 'F9', 'Ghế vip', 3),
(250, 55000, 'F10', 'Ghế vip', 3),
(251, 55000, 'G1', 'Ghế vip', 3),
(252, 55000, 'G2', 'Ghế vip', 3),
(253, 55000, 'G3', 'Ghế vip', 3),
(254, 55000, 'G4', 'Ghế vip', 3),
(255, 55000, 'G5', 'Ghế vip', 3),
(256, 55000, 'G6', 'Ghế vip', 3),
(257, 55000, 'G7', 'Ghế vip', 3),
(258, 55000, 'G8', 'Ghế vip', 3),
(259, 55000, 'G9', 'Ghế vip', 3),
(260, 55000, 'G10', 'Ghế vip', 3),
(261, 55000, 'H1', 'Ghế vip', 3),
(262, 55000, 'H2', 'Ghế vip', 3),
(263, 55000, 'H3', 'Ghế vip', 3),
(264, 55000, 'H4', 'Ghế vip', 3),
(265, 55000, 'H5', 'Ghế vip', 3),
(266, 55000, 'H6', 'Ghế vip', 3),
(267, 55000, 'H7', 'Ghế vip', 3),
(268, 55000, 'H8', 'Ghế vip', 3),
(269, 55000, 'H9', 'Ghế vip', 3),
(270, 55000, 'H10', 'Ghế vip', 3),
(271, 55000, 'I1', 'Ghế vip', 3),
(272, 55000, 'I2', 'Ghế vip', 3),
(273, 55000, 'I3', 'Ghế vip', 3),
(274, 55000, 'I4', 'Ghế vip', 3),
(275, 55000, 'I5', 'Ghế vip', 3),
(276, 55000, 'I6', 'Ghế vip', 3),
(277, 55000, 'I7', 'Ghế vip', 3),
(278, 55000, 'I8', 'Ghế vip', 3),
(279, 55000, 'I9', 'Ghế vip', 3),
(280, 55000, 'I10', 'Ghế vip', 3),
(281, 110000, 'K1', 'Ghế đôi', 3),
(282, 110000, 'K2', 'Ghế đôi', 3),
(283, 110000, 'K3', 'Ghế đôi', 3),
(284, 110000, 'K4', 'Ghế đôi', 3),
(285, 110000, 'K5', 'Ghế đôi', 3),
(286, 50000, 'A1', 'Ghế thường', 4),
(287, 50000, 'A2', 'Ghế thường', 4),
(288, 50000, 'A3', 'Ghế thường', 4),
(289, 50000, 'A4', 'Ghế thường', 4),
(290, 50000, 'A5', 'Ghế thường', 4),
(291, 50000, 'A6', 'Ghế thường', 4),
(292, 50000, 'A7', 'Ghế thường', 4),
(293, 50000, 'A8', 'Ghế thường', 4),
(294, 50000, 'A9', 'Ghế thường', 4),
(295, 50000, 'A10', 'Ghế thường', 4),
(296, 50000, 'B1', 'Ghế thường', 4),
(297, 50000, 'B2', 'Ghế thường', 4),
(298, 50000, 'B3', 'Ghế thường', 4),
(299, 50000, 'B4', 'Ghế thường', 4),
(300, 50000, 'B5', 'Ghế thường', 4),
(301, 50000, 'B6', 'Ghế thường', 4),
(302, 50000, 'B7', 'Ghế thường', 4),
(303, 50000, 'B8', 'Ghế thường', 4),
(304, 50000, 'B9', 'Ghế thường', 4),
(305, 50000, 'B10', 'Ghế thường', 4),
(306, 55000, 'C1', 'Ghế vip', 4),
(307, 55000, 'C2', 'Ghế vip', 4),
(308, 55000, 'C3', 'Ghế vip', 4),
(309, 55000, 'C4', 'Ghế vip', 4),
(310, 55000, 'C5', 'Ghế vip', 4),
(311, 55000, 'C6', 'Ghế vip', 4),
(312, 55000, 'C7', 'Ghế vip', 4),
(313, 55000, 'C8', 'Ghế vip', 4),
(314, 55000, 'C9', 'Ghế vip', 4),
(315, 55000, 'C10', 'Ghế vip', 4),
(316, 55000, 'D1', 'Ghế vip', 4),
(317, 55000, 'D2', 'Ghế vip', 4),
(318, 55000, 'D3', 'Ghế vip', 4),
(319, 55000, 'D4', 'Ghế vip', 4),
(320, 55000, 'D5', 'Ghế vip', 4),
(321, 55000, 'D6', 'Ghế vip', 4),
(322, 55000, 'D7', 'Ghế vip', 4),
(323, 55000, 'D8', 'Ghế vip', 4),
(324, 55000, 'D9', 'Ghế vip', 4),
(325, 55000, 'D10', 'Ghế vip', 4),
(326, 55000, 'E1', 'Ghế vip', 4),
(327, 55000, 'E2', 'Ghế vip', 4),
(328, 55000, 'E3', 'Ghế vip', 4),
(329, 55000, 'E4', 'Ghế vip', 4),
(330, 55000, 'E5', 'Ghế vip', 4),
(331, 55000, 'E6', 'Ghế vip', 4),
(332, 55000, 'E7', 'Ghế vip', 4),
(333, 55000, 'E8', 'Ghế vip', 4),
(334, 55000, 'E9', 'Ghế vip', 4),
(335, 55000, 'E10', 'Ghế vip', 4),
(336, 55000, 'F1', 'Ghế vip', 4),
(337, 55000, 'F2', 'Ghế vip', 4),
(338, 55000, 'F3', 'Ghế vip', 4),
(339, 55000, 'F4', 'Ghế vip', 4),
(340, 55000, 'F5', 'Ghế vip', 4),
(341, 55000, 'F6', 'Ghế vip', 4),
(342, 55000, 'F7', 'Ghế vip', 4),
(343, 55000, 'F8', 'Ghế vip', 4),
(344, 55000, 'F9', 'Ghế vip', 4),
(345, 55000, 'F10', 'Ghế vip', 4),
(346, 55000, 'G1', 'Ghế vip', 4),
(347, 55000, 'G2', 'Ghế vip', 4),
(348, 55000, 'G3', 'Ghế vip', 4),
(349, 55000, 'G4', 'Ghế vip', 4),
(350, 55000, 'G5', 'Ghế vip', 4),
(351, 55000, 'G6', 'Ghế vip', 4),
(352, 55000, 'G7', 'Ghế vip', 4),
(353, 55000, 'G8', 'Ghế vip', 4),
(354, 55000, 'G9', 'Ghế vip', 4),
(355, 55000, 'G10', 'Ghế vip', 4),
(356, 55000, 'H1', 'Ghế vip', 4),
(357, 55000, 'H2', 'Ghế vip', 4),
(358, 55000, 'H3', 'Ghế vip', 4),
(359, 55000, 'H4', 'Ghế vip', 4),
(360, 55000, 'H5', 'Ghế vip', 4),
(361, 55000, 'H6', 'Ghế vip', 4),
(362, 55000, 'H7', 'Ghế vip', 4),
(363, 55000, 'H8', 'Ghế vip', 4),
(364, 55000, 'H9', 'Ghế vip', 4),
(365, 55000, 'H10', 'Ghế vip', 4),
(366, 55000, 'I1', 'Ghế vip', 4),
(367, 55000, 'I2', 'Ghế vip', 4),
(368, 55000, 'I3', 'Ghế vip', 4),
(369, 55000, 'I4', 'Ghế vip', 4),
(370, 55000, 'I5', 'Ghế vip', 4),
(371, 55000, 'I6', 'Ghế vip', 4),
(372, 55000, 'I7', 'Ghế vip', 4),
(373, 55000, 'I8', 'Ghế vip', 4),
(374, 55000, 'I9', 'Ghế vip', 4),
(375, 55000, 'I10', 'Ghế vip', 4),
(376, 110000, 'K1', 'Ghế đôi', 4),
(377, 110000, 'K2', 'Ghế đôi', 4),
(378, 110000, 'K3', 'Ghế đôi', 4),
(379, 110000, 'K4', 'Ghế đôi', 4),
(380, 110000, 'K5', 'Ghế đôi', 4),
(381, 50000, 'A1', 'Ghế thường', 5),
(382, 50000, 'A2', 'Ghế thường', 5),
(383, 50000, 'A3', 'Ghế thường', 5),
(384, 50000, 'A4', 'Ghế thường', 5),
(385, 50000, 'A5', 'Ghế thường', 5),
(386, 50000, 'A6', 'Ghế thường', 5),
(387, 50000, 'A7', 'Ghế thường', 5),
(388, 50000, 'A8', 'Ghế thường', 5),
(389, 50000, 'A9', 'Ghế thường', 5),
(390, 50000, 'A10', 'Ghế thường', 5),
(391, 50000, 'B1', 'Ghế thường', 5),
(392, 50000, 'B2', 'Ghế thường', 5),
(393, 50000, 'B3', 'Ghế thường', 5),
(394, 50000, 'B4', 'Ghế thường', 5),
(395, 50000, 'B5', 'Ghế thường', 5),
(396, 50000, 'B6', 'Ghế thường', 5),
(397, 50000, 'B7', 'Ghế thường', 5),
(398, 50000, 'B8', 'Ghế thường', 5),
(399, 50000, 'B9', 'Ghế thường', 5),
(400, 50000, 'B10', 'Ghế thường', 5),
(401, 55000, 'C1', 'Ghế vip', 5),
(402, 55000, 'C2', 'Ghế vip', 5),
(403, 55000, 'C3', 'Ghế vip', 5),
(404, 55000, 'C4', 'Ghế vip', 5),
(405, 55000, 'C5', 'Ghế vip', 5),
(406, 55000, 'C6', 'Ghế vip', 5),
(407, 55000, 'C7', 'Ghế vip', 5),
(408, 55000, 'C8', 'Ghế vip', 5),
(409, 55000, 'C9', 'Ghế vip', 5),
(410, 55000, 'C10', 'Ghế vip', 5),
(411, 55000, 'D1', 'Ghế vip', 5),
(412, 55000, 'D2', 'Ghế vip', 5),
(413, 55000, 'D3', 'Ghế vip', 5),
(414, 55000, 'D4', 'Ghế vip', 5),
(415, 55000, 'D5', 'Ghế vip', 5),
(416, 55000, 'D6', 'Ghế vip', 5),
(417, 55000, 'D7', 'Ghế vip', 5),
(418, 55000, 'D8', 'Ghế vip', 5),
(419, 55000, 'D9', 'Ghế vip', 5),
(420, 55000, 'D10', 'Ghế vip', 5),
(421, 55000, 'E1', 'Ghế vip', 5),
(422, 55000, 'E2', 'Ghế vip', 5),
(423, 55000, 'E3', 'Ghế vip', 5),
(424, 55000, 'E4', 'Ghế vip', 5),
(425, 55000, 'E5', 'Ghế vip', 5),
(426, 55000, 'E6', 'Ghế vip', 5),
(427, 55000, 'E7', 'Ghế vip', 5),
(428, 55000, 'E8', 'Ghế vip', 5),
(429, 55000, 'E9', 'Ghế vip', 5),
(430, 55000, 'E10', 'Ghế vip', 5),
(431, 55000, 'F1', 'Ghế vip', 5),
(432, 55000, 'F2', 'Ghế vip', 5),
(433, 55000, 'F3', 'Ghế vip', 5),
(434, 55000, 'F4', 'Ghế vip', 5),
(435, 55000, 'F5', 'Ghế vip', 5),
(436, 55000, 'F6', 'Ghế vip', 5),
(437, 55000, 'F7', 'Ghế vip', 5),
(438, 55000, 'F8', 'Ghế vip', 5),
(439, 55000, 'F9', 'Ghế vip', 5),
(440, 55000, 'F10', 'Ghế vip', 5),
(441, 55000, 'G1', 'Ghế vip', 5),
(442, 55000, 'G2', 'Ghế vip', 5),
(443, 55000, 'G3', 'Ghế vip', 5),
(444, 55000, 'G4', 'Ghế vip', 5),
(445, 55000, 'G5', 'Ghế vip', 5),
(446, 55000, 'G6', 'Ghế vip', 5),
(447, 55000, 'G7', 'Ghế vip', 5),
(448, 55000, 'G8', 'Ghế vip', 5),
(449, 55000, 'G9', 'Ghế vip', 5),
(450, 55000, 'G10', 'Ghế vip', 5),
(451, 55000, 'H1', 'Ghế vip', 5),
(452, 55000, 'H2', 'Ghế vip', 5),
(453, 55000, 'H3', 'Ghế vip', 5),
(454, 55000, 'H4', 'Ghế vip', 5),
(455, 55000, 'H5', 'Ghế vip', 5),
(456, 55000, 'H6', 'Ghế vip', 5),
(457, 55000, 'H7', 'Ghế vip', 5),
(458, 55000, 'H8', 'Ghế vip', 5),
(459, 55000, 'H9', 'Ghế vip', 5),
(460, 55000, 'H10', 'Ghế vip', 5),
(461, 55000, 'I1', 'Ghế vip', 5),
(462, 55000, 'I2', 'Ghế vip', 5),
(463, 55000, 'I3', 'Ghế vip', 5),
(464, 55000, 'I4', 'Ghế vip', 5),
(465, 55000, 'I5', 'Ghế vip', 5),
(466, 55000, 'I6', 'Ghế vip', 5),
(467, 55000, 'I7', 'Ghế vip', 5),
(468, 55000, 'I8', 'Ghế vip', 5),
(469, 55000, 'I9', 'Ghế vip', 5),
(470, 55000, 'I10', 'Ghế vip', 5),
(471, 110000, 'K1', 'Ghế đôi', 5),
(472, 110000, 'K2', 'Ghế đôi', 5),
(473, 110000, 'K3', 'Ghế đôi', 5),
(474, 110000, 'K4', 'Ghế đôi', 5),
(475, 110000, 'K5', 'Ghế đôi', 5);

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
(19, 15, 2, '2023-10-31', '00:00:00', '2023-10-26 08:01:29', '2023-10-26 08:01:29', b'1'),
(20, 17, 3, '2023-10-31', '19:00:00', '2023-10-26 08:02:20', '2023-10-26 08:02:20', b'1'),
(21, 8, 5, '2023-10-30', '19:00:00', '2023-10-26 08:20:06', '2023-10-26 08:20:06', b'1'),
(22, 8, 5, '2023-11-01', '17:25:00', '2023-10-26 08:25:48', '2023-10-26 08:25:48', b'1'),
(26, 8, 5, '2023-10-31', '23:00:00', '2023-10-27 16:07:45', '2023-10-27 16:07:45', b'1');

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
(8, 'Nguyễn Đăng Doanh', 'Doanhnguyen@gmail.com', '$2y$10$CDbJvM7.VFvsaTdw97O0C.QPT.8ajia7lSiRyJhBwuVLM8fg9J2Te', '2023-10-26 01:18:19', '2023-10-26 01:18:19', '2004-11-13', b'0', '0913144019');

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
  `Ma_khach_hang` int(10) NOT NULL,
  `Trang_thai` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ves`
--

INSERT INTO `ves` (`Ma_ghe`, `Ma_lich_chieu`, `Gia`, `updated_at`, `created_at`, `Ma_khach_hang`, `Trang_thai`) VALUES
(150, 18, 55000, '2023-10-26 08:05:09', '2023-10-26 08:05:09', 6, 2),
(151, 18, 55000, '2023-10-26 08:05:06', '2023-10-26 08:05:06', 6, 2),
(152, 18, 55000, '2023-10-26 08:05:13', '2023-10-26 08:05:13', 6, 2),
(161, 18, 55000, '2023-10-26 08:05:16', '2023-10-26 08:05:16', 6, 2),
(190, 17, 110000, '2023-10-19 09:20:24', '2023-10-19 09:20:24', 2, 2),
(190, 18, 110000, '2023-10-26 08:05:03', '2023-10-26 08:05:03', 6, 2),
(199, 20, 50000, '2023-10-26 08:18:55', '2023-10-26 08:18:55', 8, 2),
(200, 20, 50000, '2023-10-26 08:18:48', '2023-10-26 08:18:48', 8, 2),
(248, 20, 55000, '2023-10-26 08:06:14', '2023-10-26 08:06:14', 6, 2),
(256, 20, 55000, '2023-10-26 08:06:11', '2023-10-26 08:06:11', 6, 2),
(269, 20, 55000, '2023-10-26 08:18:43', '2023-10-26 08:18:43', 8, 2),
(281, 20, 110000, '2023-10-26 08:06:18', '2023-10-26 08:06:18', 6, 2),
(283, 20, 110000, '2023-10-26 08:18:52', '2023-10-26 08:18:52', 8, 2),
(381, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(382, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(383, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(384, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(385, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(386, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(387, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(388, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(389, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(390, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(391, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(392, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(393, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(394, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(395, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(396, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(397, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(398, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(399, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(400, 26, 50000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(401, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(402, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(403, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(404, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(405, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(406, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(407, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(408, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(409, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(410, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(411, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(412, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(413, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(414, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(415, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(416, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(417, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(418, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(419, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(420, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(421, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(422, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(423, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(424, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(425, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(426, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(427, 26, 55000, '2023-10-27 16:09:08', '2023-10-27 16:07:45', 0, NULL),
(428, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(429, 21, 55000, '2023-10-26 08:22:54', '2023-10-26 08:22:54', 8, 2),
(429, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(430, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(431, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(432, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(433, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(434, 21, 55000, '2023-10-26 08:22:52', '2023-10-26 08:22:52', 8, 2),
(434, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(435, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(436, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(437, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(438, 26, 55000, '2023-10-27 16:33:05', '2023-10-27 16:07:45', 2, 2),
(439, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(440, 21, 55000, '2023-10-26 08:22:58', '2023-10-26 08:22:58', 8, 2),
(440, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(441, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(442, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(443, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(444, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(445, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(446, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(447, 21, 55000, '2023-10-26 08:22:37', '2023-10-26 08:22:37', 8, 2),
(447, 26, 55000, '2023-10-27 16:33:05', '2023-10-27 16:07:45', 2, 2),
(448, 26, 55000, '2023-10-27 16:32:28', '2023-10-27 16:07:45', 0, NULL),
(449, 26, 55000, '2023-10-27 16:33:05', '2023-10-27 16:07:45', 2, 2),
(450, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(451, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(452, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(453, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(454, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(455, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(456, 21, 55000, '2023-10-26 08:22:41', '2023-10-26 08:22:41', 8, 2),
(456, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(457, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(458, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(459, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(460, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(461, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(462, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(463, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(464, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(465, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(466, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(467, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(468, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(469, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(470, 26, 55000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(471, 26, 110000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(472, 26, 110000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(473, 26, 110000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(474, 21, 110000, '2023-10-26 08:22:49', '2023-10-26 08:22:49', 8, 2),
(474, 26, 110000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL),
(475, 26, 110000, '2023-10-27 16:07:45', '2023-10-27 16:07:45', 0, NULL);

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
  MODIFY `Ma_lich_chieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
