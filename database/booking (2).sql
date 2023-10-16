-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2023 lúc 10:32 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `booking`
--

DELIMITER $$
--
-- Thủ tục
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
-- Cấu trúc bảng cho bảng `chi_tiet_phims`
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
-- Đang đổ dữ liệu cho bảng `chi_tiet_phims`
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
-- Cấu trúc bảng cho bảng `danh_sach_phims`
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
-- Đang đổ dữ liệu cho bảng `danh_sach_phims`
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
-- Cấu trúc bảng cho bảng `ghes`
--

CREATE TABLE `ghes` (
  `Ma_ghe` int(11) NOT NULL,
  `Gia` double NOT NULL,
  `Ten_ghe` varchar(50) NOT NULL,
  `Loai_ghe` varchar(50) NOT NULL,
  `Ma_phong` int(11) DEFAULT NULL,
  `Trang_thai` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ghes`
--

INSERT INTO `ghes` (`Ma_ghe`, `Gia`, `Ten_ghe`, `Loai_ghe`, `Ma_phong`, `Trang_thai`) VALUES
(1, 50000, 'A1', 'Ghế thường', 1, 0),
(2, 50000, 'A2', 'Ghế thường', 1, 0),
(3, 50000, 'A3', 'Ghế thường', 1, 0),
(4, 50000, 'A4', 'Ghế thường', 1, 0),
(5, 50000, 'A5', 'Ghế thường', 1, 0),
(6, 50000, 'A6', 'Ghế thường', 1, 0),
(7, 50000, 'A7', 'Ghế thường', 1, 0),
(8, 50000, 'A8', 'Ghế thường', 1, 0),
(9, 50000, 'A9', 'Ghế thường', 1, 0),
(10, 50000, 'A10', 'Ghế thường', 1, 0),
(11, 50000, 'B1', 'Ghế thường', 1, 0),
(12, 50000, 'B2', 'Ghế thường', 1, 0),
(13, 50000, 'B3', 'Ghế thường', 1, 0),
(14, 50000, 'B4', 'Ghế thường', 1, 0),
(15, 50000, 'B5', 'Ghế thường', 1, 0),
(16, 50000, 'B6', 'Ghế thường', 1, 0),
(17, 50000, 'B7', 'Ghế thường', 1, 0),
(18, 50000, 'B8', 'Ghế thường', 1, 0),
(19, 50000, 'B9', 'Ghế thường', 1, 0),
(20, 50000, 'B10', 'Ghế thường', 1, 0),
(21, 55000, 'C1', 'Ghế vip', 1, 0),
(22, 55000, 'C2', 'Ghế vip', 1, 0),
(23, 55000, 'C3', 'Ghế vip', 1, 0),
(24, 55000, 'C4', 'Ghế vip', 1, 0),
(25, 55000, 'C5', 'Ghế vip', 1, 0),
(26, 55000, 'C6', 'Ghế vip', 1, 0),
(27, 55000, 'C7', 'Ghế vip', 1, 0),
(28, 55000, 'C8', 'Ghế vip', 1, 0),
(29, 55000, 'C9', 'Ghế vip', 1, 0),
(30, 55000, 'C10', 'Ghế vip', 1, 0),
(31, 55000, 'D1', 'Ghế vip', 1, 0),
(32, 55000, 'D2', 'Ghế vip', 1, 0),
(33, 55000, 'D3', 'Ghế vip', 1, 0),
(34, 55000, 'D4', 'Ghế vip', 1, 0),
(35, 55000, 'D5', 'Ghế vip', 1, 0),
(36, 55000, 'D6', 'Ghế vip', 1, 0),
(37, 55000, 'D7', 'Ghế vip', 1, 0),
(38, 55000, 'D8', 'Ghế vip', 1, 0),
(39, 55000, 'D9', 'Ghế vip', 1, 0),
(40, 55000, 'D10', 'Ghế vip', 1, 0),
(41, 55000, 'E1', 'Ghế vip', 1, 0),
(42, 55000, 'E2', 'Ghế vip', 1, 0),
(43, 55000, 'E3', 'Ghế vip', 1, 0),
(44, 55000, 'E4', 'Ghế vip', 1, 0),
(45, 55000, 'E5', 'Ghế vip', 1, 0),
(46, 55000, 'E6', 'Ghế vip', 1, 0),
(47, 55000, 'E7', 'Ghế vip', 1, 0),
(48, 55000, 'E8', 'Ghế vip', 1, 0),
(49, 55000, 'E9', 'Ghế vip', 1, 0),
(50, 55000, 'E10', 'Ghế vip', 1, 0),
(51, 55000, 'F1', 'Ghế vip', 1, 0),
(52, 55000, 'F2', 'Ghế vip', 1, 0),
(53, 55000, 'F3', 'Ghế vip', 1, 0),
(54, 55000, 'F4', 'Ghế vip', 1, 0),
(55, 55000, 'F5', 'Ghế vip', 1, 0),
(56, 55000, 'F6', 'Ghế vip', 1, 0),
(57, 55000, 'F7', 'Ghế vip', 1, 0),
(58, 55000, 'F8', 'Ghế vip', 1, 0),
(59, 55000, 'F9', 'Ghế vip', 1, 0),
(60, 55000, 'F10', 'Ghế vip', 1, 0),
(61, 55000, 'G1', 'Ghế vip', 1, 0),
(62, 55000, 'G2', 'Ghế vip', 1, 0),
(63, 55000, 'G3', 'Ghế vip', 1, 0),
(64, 55000, 'G4', 'Ghế vip', 1, 0),
(65, 55000, 'G5', 'Ghế vip', 1, 0),
(66, 55000, 'G6', 'Ghế vip', 1, 0),
(67, 55000, 'G7', 'Ghế vip', 1, 0),
(68, 55000, 'G8', 'Ghế vip', 1, 0),
(69, 55000, 'G9', 'Ghế vip', 1, 0),
(70, 55000, 'G10', 'Ghế vip', 1, 0),
(71, 55000, 'H1', 'Ghế vip', 1, 0),
(72, 55000, 'H2', 'Ghế vip', 1, 0),
(73, 55000, 'H3', 'Ghế vip', 1, 0),
(74, 55000, 'H4', 'Ghế vip', 1, 0),
(75, 55000, 'H5', 'Ghế vip', 1, 0),
(76, 55000, 'H6', 'Ghế vip', 1, 0),
(77, 55000, 'H7', 'Ghế vip', 1, 0),
(78, 55000, 'H8', 'Ghế vip', 1, 0),
(79, 55000, 'H9', 'Ghế vip', 1, 0),
(80, 55000, 'H10', 'Ghế vip', 1, 0),
(81, 55000, 'I1', 'Ghế vip', 1, 0),
(82, 55000, 'I2', 'Ghế vip', 1, 0),
(83, 55000, 'I3', 'Ghế vip', 1, 0),
(84, 55000, 'I4', 'Ghế vip', 1, 0),
(85, 55000, 'I5', 'Ghế vip', 1, 0),
(86, 55000, 'I6', 'Ghế vip', 1, 0),
(87, 55000, 'I7', 'Ghế vip', 1, 0),
(88, 55000, 'I8', 'Ghế vip', 1, 0),
(89, 55000, 'I9', 'Ghế vip', 1, 0),
(90, 55000, 'I10', 'Ghế vip', 1, 0),
(91, 110000, 'K1', 'Ghế đôi', 1, 0),
(92, 110000, 'K2', 'Ghế đôi', 1, 0),
(93, 110000, 'K3', 'Ghế đôi', 1, 0),
(94, 110000, 'K4', 'Ghế đôi', 1, 0),
(95, 110000, 'K5', 'Ghế đôi', 1, 0),
(96, 50000, 'A1', 'Ghế thường', 2, 0),
(97, 50000, 'A2', 'Ghế thường', 2, 0),
(98, 50000, 'A3', 'Ghế thường', 2, 0),
(99, 50000, 'A4', 'Ghế thường', 2, 0),
(100, 50000, 'A5', 'Ghế thường', 2, 0),
(101, 50000, 'A6', 'Ghế thường', 2, 0),
(102, 50000, 'A7', 'Ghế thường', 2, 0),
(103, 50000, 'A8', 'Ghế thường', 2, 0),
(104, 50000, 'A9', 'Ghế thường', 2, 0),
(105, 50000, 'A10', 'Ghế thường', 2, 0),
(106, 50000, 'B1', 'Ghế thường', 2, 0),
(107, 50000, 'B2', 'Ghế thường', 2, 0),
(108, 50000, 'B3', 'Ghế thường', 2, 0),
(109, 50000, 'B4', 'Ghế thường', 2, 0),
(110, 50000, 'B5', 'Ghế thường', 2, 0),
(111, 50000, 'B6', 'Ghế thường', 2, 0),
(112, 50000, 'B7', 'Ghế thường', 2, 0),
(113, 50000, 'B8', 'Ghế thường', 2, 0),
(114, 50000, 'B9', 'Ghế thường', 2, 0),
(115, 50000, 'B10', 'Ghế thường', 2, 0),
(116, 55000, 'C1', 'Ghế vip', 2, 0),
(117, 55000, 'C2', 'Ghế vip', 2, 0),
(118, 55000, 'C3', 'Ghế vip', 2, 0),
(119, 55000, 'C4', 'Ghế vip', 2, 0),
(120, 55000, 'C5', 'Ghế vip', 2, 0),
(121, 55000, 'C6', 'Ghế vip', 2, 0),
(122, 55000, 'C7', 'Ghế vip', 2, 0),
(123, 55000, 'C8', 'Ghế vip', 2, 0),
(124, 55000, 'C9', 'Ghế vip', 2, 0),
(125, 55000, 'C10', 'Ghế vip', 2, 0),
(126, 55000, 'D1', 'Ghế vip', 2, 0),
(127, 55000, 'D2', 'Ghế vip', 2, 0),
(128, 55000, 'D3', 'Ghế vip', 2, 0),
(129, 55000, 'D4', 'Ghế vip', 2, 0),
(130, 55000, 'D5', 'Ghế vip', 2, 0),
(131, 55000, 'D6', 'Ghế vip', 2, 0),
(132, 55000, 'D7', 'Ghế vip', 2, 0),
(133, 55000, 'D8', 'Ghế vip', 2, 0),
(134, 55000, 'D9', 'Ghế vip', 2, 0),
(135, 55000, 'D10', 'Ghế vip', 2, 0),
(136, 55000, 'E1', 'Ghế vip', 2, 0),
(137, 55000, 'E2', 'Ghế vip', 2, 0),
(138, 55000, 'E3', 'Ghế vip', 2, 0),
(139, 55000, 'E4', 'Ghế vip', 2, 0),
(140, 55000, 'E5', 'Ghế vip', 2, 0),
(141, 55000, 'E6', 'Ghế vip', 2, 0),
(142, 55000, 'E7', 'Ghế vip', 2, 0),
(143, 55000, 'E8', 'Ghế vip', 2, 0),
(144, 55000, 'E9', 'Ghế vip', 2, 0),
(145, 55000, 'E10', 'Ghế vip', 2, 0),
(146, 55000, 'F1', 'Ghế vip', 2, 0),
(147, 55000, 'F2', 'Ghế vip', 2, 0),
(148, 55000, 'F3', 'Ghế vip', 2, 0),
(149, 55000, 'F4', 'Ghế vip', 2, 0),
(150, 55000, 'F5', 'Ghế vip', 2, 0),
(151, 55000, 'F6', 'Ghế vip', 2, 0),
(152, 55000, 'F7', 'Ghế vip', 2, 0),
(153, 55000, 'F8', 'Ghế vip', 2, 0),
(154, 55000, 'F9', 'Ghế vip', 2, 0),
(155, 55000, 'F10', 'Ghế vip', 2, 0),
(156, 55000, 'G1', 'Ghế vip', 2, 0),
(157, 55000, 'G2', 'Ghế vip', 2, 0),
(158, 55000, 'G3', 'Ghế vip', 2, 0),
(159, 55000, 'G4', 'Ghế vip', 2, 0),
(160, 55000, 'G5', 'Ghế vip', 2, 0),
(161, 55000, 'G6', 'Ghế vip', 2, 0),
(162, 55000, 'G7', 'Ghế vip', 2, 0),
(163, 55000, 'G8', 'Ghế vip', 2, 0),
(164, 55000, 'G9', 'Ghế vip', 2, 0),
(165, 55000, 'G10', 'Ghế vip', 2, 0),
(166, 55000, 'H1', 'Ghế vip', 2, 0),
(167, 55000, 'H2', 'Ghế vip', 2, 0),
(168, 55000, 'H3', 'Ghế vip', 2, 0),
(169, 55000, 'H4', 'Ghế vip', 2, 0),
(170, 55000, 'H5', 'Ghế vip', 2, 0),
(171, 55000, 'H6', 'Ghế vip', 2, 0),
(172, 55000, 'H7', 'Ghế vip', 2, 0),
(173, 55000, 'H8', 'Ghế vip', 2, 0),
(174, 55000, 'H9', 'Ghế vip', 2, 0),
(175, 55000, 'H10', 'Ghế vip', 2, 0),
(176, 55000, 'I1', 'Ghế vip', 2, 0),
(177, 55000, 'I2', 'Ghế vip', 2, 0),
(178, 55000, 'I3', 'Ghế vip', 2, 0),
(179, 55000, 'I4', 'Ghế vip', 2, 0),
(180, 55000, 'I5', 'Ghế vip', 2, 0),
(181, 55000, 'I6', 'Ghế vip', 2, 0),
(182, 55000, 'I7', 'Ghế vip', 2, 0),
(183, 55000, 'I8', 'Ghế vip', 2, 0),
(184, 55000, 'I9', 'Ghế vip', 2, 0),
(185, 55000, 'I10', 'Ghế vip', 2, 0),
(186, 110000, 'K1', 'Ghế đôi', 2, 0),
(187, 110000, 'K2', 'Ghế đôi', 2, 0),
(188, 110000, 'K3', 'Ghế đôi', 2, 0),
(189, 110000, 'K4', 'Ghế đôi', 2, 0),
(190, 110000, 'K5', 'Ghế đôi', 2, 0),
(191, 50000, 'A1', 'Ghế thường', 3, 0),
(192, 50000, 'A2', 'Ghế thường', 3, 0),
(193, 50000, 'A3', 'Ghế thường', 3, 0),
(194, 50000, 'A4', 'Ghế thường', 3, 0),
(195, 50000, 'A5', 'Ghế thường', 3, 0),
(196, 50000, 'A6', 'Ghế thường', 3, 0),
(197, 50000, 'A7', 'Ghế thường', 3, 0),
(198, 50000, 'A8', 'Ghế thường', 3, 0),
(199, 50000, 'A9', 'Ghế thường', 3, 0),
(200, 50000, 'A10', 'Ghế thường', 3, 0),
(201, 50000, 'B1', 'Ghế thường', 3, 0),
(202, 50000, 'B2', 'Ghế thường', 3, 0),
(203, 50000, 'B3', 'Ghế thường', 3, 0),
(204, 50000, 'B4', 'Ghế thường', 3, 0),
(205, 50000, 'B5', 'Ghế thường', 3, 0),
(206, 50000, 'B6', 'Ghế thường', 3, 0),
(207, 50000, 'B7', 'Ghế thường', 3, 0),
(208, 50000, 'B8', 'Ghế thường', 3, 0),
(209, 50000, 'B9', 'Ghế thường', 3, 0),
(210, 50000, 'B10', 'Ghế thường', 3, 0),
(211, 55000, 'C1', 'Ghế vip', 3, 0),
(212, 55000, 'C2', 'Ghế vip', 3, 0),
(213, 55000, 'C3', 'Ghế vip', 3, 0),
(214, 55000, 'C4', 'Ghế vip', 3, 0),
(215, 55000, 'C5', 'Ghế vip', 3, 0),
(216, 55000, 'C6', 'Ghế vip', 3, 0),
(217, 55000, 'C7', 'Ghế vip', 3, 0),
(218, 55000, 'C8', 'Ghế vip', 3, 0),
(219, 55000, 'C9', 'Ghế vip', 3, 0),
(220, 55000, 'C10', 'Ghế vip', 3, 0),
(221, 55000, 'D1', 'Ghế vip', 3, 0),
(222, 55000, 'D2', 'Ghế vip', 3, 0),
(223, 55000, 'D3', 'Ghế vip', 3, 0),
(224, 55000, 'D4', 'Ghế vip', 3, 0),
(225, 55000, 'D5', 'Ghế vip', 3, 0),
(226, 55000, 'D6', 'Ghế vip', 3, 0),
(227, 55000, 'D7', 'Ghế vip', 3, 0),
(228, 55000, 'D8', 'Ghế vip', 3, 0),
(229, 55000, 'D9', 'Ghế vip', 3, 0),
(230, 55000, 'D10', 'Ghế vip', 3, 0),
(231, 55000, 'E1', 'Ghế vip', 3, 0),
(232, 55000, 'E2', 'Ghế vip', 3, 0),
(233, 55000, 'E3', 'Ghế vip', 3, 0),
(234, 55000, 'E4', 'Ghế vip', 3, 0),
(235, 55000, 'E5', 'Ghế vip', 3, 0),
(236, 55000, 'E6', 'Ghế vip', 3, 0),
(237, 55000, 'E7', 'Ghế vip', 3, 0),
(238, 55000, 'E8', 'Ghế vip', 3, 0),
(239, 55000, 'E9', 'Ghế vip', 3, 0),
(240, 55000, 'E10', 'Ghế vip', 3, 0),
(241, 55000, 'F1', 'Ghế vip', 3, 0),
(242, 55000, 'F2', 'Ghế vip', 3, 0),
(243, 55000, 'F3', 'Ghế vip', 3, 0),
(244, 55000, 'F4', 'Ghế vip', 3, 0),
(245, 55000, 'F5', 'Ghế vip', 3, 0),
(246, 55000, 'F6', 'Ghế vip', 3, 0),
(247, 55000, 'F7', 'Ghế vip', 3, 0),
(248, 55000, 'F8', 'Ghế vip', 3, 0),
(249, 55000, 'F9', 'Ghế vip', 3, 0),
(250, 55000, 'F10', 'Ghế vip', 3, 0),
(251, 55000, 'G1', 'Ghế vip', 3, 0),
(252, 55000, 'G2', 'Ghế vip', 3, 0),
(253, 55000, 'G3', 'Ghế vip', 3, 0),
(254, 55000, 'G4', 'Ghế vip', 3, 0),
(255, 55000, 'G5', 'Ghế vip', 3, 0),
(256, 55000, 'G6', 'Ghế vip', 3, 0),
(257, 55000, 'G7', 'Ghế vip', 3, 0),
(258, 55000, 'G8', 'Ghế vip', 3, 0),
(259, 55000, 'G9', 'Ghế vip', 3, 0),
(260, 55000, 'G10', 'Ghế vip', 3, 0),
(261, 55000, 'H1', 'Ghế vip', 3, 0),
(262, 55000, 'H2', 'Ghế vip', 3, 0),
(263, 55000, 'H3', 'Ghế vip', 3, 0),
(264, 55000, 'H4', 'Ghế vip', 3, 0),
(265, 55000, 'H5', 'Ghế vip', 3, 0),
(266, 55000, 'H6', 'Ghế vip', 3, 0),
(267, 55000, 'H7', 'Ghế vip', 3, 0),
(268, 55000, 'H8', 'Ghế vip', 3, 0),
(269, 55000, 'H9', 'Ghế vip', 3, 0),
(270, 55000, 'H10', 'Ghế vip', 3, 0),
(271, 55000, 'I1', 'Ghế vip', 3, 0),
(272, 55000, 'I2', 'Ghế vip', 3, 0),
(273, 55000, 'I3', 'Ghế vip', 3, 0),
(274, 55000, 'I4', 'Ghế vip', 3, 0),
(275, 55000, 'I5', 'Ghế vip', 3, 0),
(276, 55000, 'I6', 'Ghế vip', 3, 0),
(277, 55000, 'I7', 'Ghế vip', 3, 0),
(278, 55000, 'I8', 'Ghế vip', 3, 0),
(279, 55000, 'I9', 'Ghế vip', 3, 0),
(280, 55000, 'I10', 'Ghế vip', 3, 0),
(281, 110000, 'K1', 'Ghế đôi', 3, 0),
(282, 110000, 'K2', 'Ghế đôi', 3, 0),
(283, 110000, 'K3', 'Ghế đôi', 3, 0),
(284, 110000, 'K4', 'Ghế đôi', 3, 0),
(285, 110000, 'K5', 'Ghế đôi', 3, 0),
(286, 50000, 'A1', 'Ghế thường', 4, 0),
(287, 50000, 'A2', 'Ghế thường', 4, 0),
(288, 50000, 'A3', 'Ghế thường', 4, 0),
(289, 50000, 'A4', 'Ghế thường', 4, 0),
(290, 50000, 'A5', 'Ghế thường', 4, 0),
(291, 50000, 'A6', 'Ghế thường', 4, 0),
(292, 50000, 'A7', 'Ghế thường', 4, 0),
(293, 50000, 'A8', 'Ghế thường', 4, 0),
(294, 50000, 'A9', 'Ghế thường', 4, 0),
(295, 50000, 'A10', 'Ghế thường', 4, 0),
(296, 50000, 'B1', 'Ghế thường', 4, 0),
(297, 50000, 'B2', 'Ghế thường', 4, 0),
(298, 50000, 'B3', 'Ghế thường', 4, 0),
(299, 50000, 'B4', 'Ghế thường', 4, 0),
(300, 50000, 'B5', 'Ghế thường', 4, 0),
(301, 50000, 'B6', 'Ghế thường', 4, 0),
(302, 50000, 'B7', 'Ghế thường', 4, 0),
(303, 50000, 'B8', 'Ghế thường', 4, 0),
(304, 50000, 'B9', 'Ghế thường', 4, 0),
(305, 50000, 'B10', 'Ghế thường', 4, 0),
(306, 55000, 'C1', 'Ghế vip', 4, 0),
(307, 55000, 'C2', 'Ghế vip', 4, 0),
(308, 55000, 'C3', 'Ghế vip', 4, 0),
(309, 55000, 'C4', 'Ghế vip', 4, 0),
(310, 55000, 'C5', 'Ghế vip', 4, 0),
(311, 55000, 'C6', 'Ghế vip', 4, 0),
(312, 55000, 'C7', 'Ghế vip', 4, 0),
(313, 55000, 'C8', 'Ghế vip', 4, 0),
(314, 55000, 'C9', 'Ghế vip', 4, 0),
(315, 55000, 'C10', 'Ghế vip', 4, 0),
(316, 55000, 'D1', 'Ghế vip', 4, 0),
(317, 55000, 'D2', 'Ghế vip', 4, 0),
(318, 55000, 'D3', 'Ghế vip', 4, 0),
(319, 55000, 'D4', 'Ghế vip', 4, 0),
(320, 55000, 'D5', 'Ghế vip', 4, 0),
(321, 55000, 'D6', 'Ghế vip', 4, 0),
(322, 55000, 'D7', 'Ghế vip', 4, 0),
(323, 55000, 'D8', 'Ghế vip', 4, 0),
(324, 55000, 'D9', 'Ghế vip', 4, 0),
(325, 55000, 'D10', 'Ghế vip', 4, 0),
(326, 55000, 'E1', 'Ghế vip', 4, 0),
(327, 55000, 'E2', 'Ghế vip', 4, 0),
(328, 55000, 'E3', 'Ghế vip', 4, 0),
(329, 55000, 'E4', 'Ghế vip', 4, 0),
(330, 55000, 'E5', 'Ghế vip', 4, 0),
(331, 55000, 'E6', 'Ghế vip', 4, 0),
(332, 55000, 'E7', 'Ghế vip', 4, 0),
(333, 55000, 'E8', 'Ghế vip', 4, 0),
(334, 55000, 'E9', 'Ghế vip', 4, 0),
(335, 55000, 'E10', 'Ghế vip', 4, 0),
(336, 55000, 'F1', 'Ghế vip', 4, 0),
(337, 55000, 'F2', 'Ghế vip', 4, 0),
(338, 55000, 'F3', 'Ghế vip', 4, 0),
(339, 55000, 'F4', 'Ghế vip', 4, 0),
(340, 55000, 'F5', 'Ghế vip', 4, 0),
(341, 55000, 'F6', 'Ghế vip', 4, 0),
(342, 55000, 'F7', 'Ghế vip', 4, 0),
(343, 55000, 'F8', 'Ghế vip', 4, 0),
(344, 55000, 'F9', 'Ghế vip', 4, 0),
(345, 55000, 'F10', 'Ghế vip', 4, 0),
(346, 55000, 'G1', 'Ghế vip', 4, 0),
(347, 55000, 'G2', 'Ghế vip', 4, 0),
(348, 55000, 'G3', 'Ghế vip', 4, 0),
(349, 55000, 'G4', 'Ghế vip', 4, 0),
(350, 55000, 'G5', 'Ghế vip', 4, 0),
(351, 55000, 'G6', 'Ghế vip', 4, 0),
(352, 55000, 'G7', 'Ghế vip', 4, 0),
(353, 55000, 'G8', 'Ghế vip', 4, 0),
(354, 55000, 'G9', 'Ghế vip', 4, 0),
(355, 55000, 'G10', 'Ghế vip', 4, 0),
(356, 55000, 'H1', 'Ghế vip', 4, 0),
(357, 55000, 'H2', 'Ghế vip', 4, 0),
(358, 55000, 'H3', 'Ghế vip', 4, 0),
(359, 55000, 'H4', 'Ghế vip', 4, 0),
(360, 55000, 'H5', 'Ghế vip', 4, 0),
(361, 55000, 'H6', 'Ghế vip', 4, 0),
(362, 55000, 'H7', 'Ghế vip', 4, 0),
(363, 55000, 'H8', 'Ghế vip', 4, 0),
(364, 55000, 'H9', 'Ghế vip', 4, 0),
(365, 55000, 'H10', 'Ghế vip', 4, 0),
(366, 55000, 'I1', 'Ghế vip', 4, 0),
(367, 55000, 'I2', 'Ghế vip', 4, 0),
(368, 55000, 'I3', 'Ghế vip', 4, 0),
(369, 55000, 'I4', 'Ghế vip', 4, 0),
(370, 55000, 'I5', 'Ghế vip', 4, 0),
(371, 55000, 'I6', 'Ghế vip', 4, 0),
(372, 55000, 'I7', 'Ghế vip', 4, 0),
(373, 55000, 'I8', 'Ghế vip', 4, 0),
(374, 55000, 'I9', 'Ghế vip', 4, 0),
(375, 55000, 'I10', 'Ghế vip', 4, 0),
(376, 110000, 'K1', 'Ghế đôi', 4, 0),
(377, 110000, 'K2', 'Ghế đôi', 4, 0),
(378, 110000, 'K3', 'Ghế đôi', 4, 0),
(379, 110000, 'K4', 'Ghế đôi', 4, 0),
(380, 110000, 'K5', 'Ghế đôi', 4, 0),
(381, 50000, 'A1', 'Ghế thường', 5, 0),
(382, 50000, 'A2', 'Ghế thường', 5, 0),
(383, 50000, 'A3', 'Ghế thường', 5, 0),
(384, 50000, 'A4', 'Ghế thường', 5, 0),
(385, 50000, 'A5', 'Ghế thường', 5, 0),
(386, 50000, 'A6', 'Ghế thường', 5, 0),
(387, 50000, 'A7', 'Ghế thường', 5, 0),
(388, 50000, 'A8', 'Ghế thường', 5, 0),
(389, 50000, 'A9', 'Ghế thường', 5, 0),
(390, 50000, 'A10', 'Ghế thường', 5, 0),
(391, 50000, 'B1', 'Ghế thường', 5, 0),
(392, 50000, 'B2', 'Ghế thường', 5, 0),
(393, 50000, 'B3', 'Ghế thường', 5, 0),
(394, 50000, 'B4', 'Ghế thường', 5, 0),
(395, 50000, 'B5', 'Ghế thường', 5, 0),
(396, 50000, 'B6', 'Ghế thường', 5, 0),
(397, 50000, 'B7', 'Ghế thường', 5, 0),
(398, 50000, 'B8', 'Ghế thường', 5, 0),
(399, 50000, 'B9', 'Ghế thường', 5, 0),
(400, 50000, 'B10', 'Ghế thường', 5, 0),
(401, 55000, 'C1', 'Ghế vip', 5, 0),
(402, 55000, 'C2', 'Ghế vip', 5, 0),
(403, 55000, 'C3', 'Ghế vip', 5, 0),
(404, 55000, 'C4', 'Ghế vip', 5, 0),
(405, 55000, 'C5', 'Ghế vip', 5, 0),
(406, 55000, 'C6', 'Ghế vip', 5, 0),
(407, 55000, 'C7', 'Ghế vip', 5, 0),
(408, 55000, 'C8', 'Ghế vip', 5, 0),
(409, 55000, 'C9', 'Ghế vip', 5, 0),
(410, 55000, 'C10', 'Ghế vip', 5, 0),
(411, 55000, 'D1', 'Ghế vip', 5, 0),
(412, 55000, 'D2', 'Ghế vip', 5, 0),
(413, 55000, 'D3', 'Ghế vip', 5, 0),
(414, 55000, 'D4', 'Ghế vip', 5, 0),
(415, 55000, 'D5', 'Ghế vip', 5, 0),
(416, 55000, 'D6', 'Ghế vip', 5, 0),
(417, 55000, 'D7', 'Ghế vip', 5, 0),
(418, 55000, 'D8', 'Ghế vip', 5, 0),
(419, 55000, 'D9', 'Ghế vip', 5, 0),
(420, 55000, 'D10', 'Ghế vip', 5, 0),
(421, 55000, 'E1', 'Ghế vip', 5, 0),
(422, 55000, 'E2', 'Ghế vip', 5, 0),
(423, 55000, 'E3', 'Ghế vip', 5, 0),
(424, 55000, 'E4', 'Ghế vip', 5, 0),
(425, 55000, 'E5', 'Ghế vip', 5, 0),
(426, 55000, 'E6', 'Ghế vip', 5, 0),
(427, 55000, 'E7', 'Ghế vip', 5, 0),
(428, 55000, 'E8', 'Ghế vip', 5, 0),
(429, 55000, 'E9', 'Ghế vip', 5, 0),
(430, 55000, 'E10', 'Ghế vip', 5, 0),
(431, 55000, 'F1', 'Ghế vip', 5, 0),
(432, 55000, 'F2', 'Ghế vip', 5, 0),
(433, 55000, 'F3', 'Ghế vip', 5, 0),
(434, 55000, 'F4', 'Ghế vip', 5, 0),
(435, 55000, 'F5', 'Ghế vip', 5, 0),
(436, 55000, 'F6', 'Ghế vip', 5, 0),
(437, 55000, 'F7', 'Ghế vip', 5, 0),
(438, 55000, 'F8', 'Ghế vip', 5, 0),
(439, 55000, 'F9', 'Ghế vip', 5, 0),
(440, 55000, 'F10', 'Ghế vip', 5, 0),
(441, 55000, 'G1', 'Ghế vip', 5, 0),
(442, 55000, 'G2', 'Ghế vip', 5, 0),
(443, 55000, 'G3', 'Ghế vip', 5, 0),
(444, 55000, 'G4', 'Ghế vip', 5, 0),
(445, 55000, 'G5', 'Ghế vip', 5, 0),
(446, 55000, 'G6', 'Ghế vip', 5, 0),
(447, 55000, 'G7', 'Ghế vip', 5, 0),
(448, 55000, 'G8', 'Ghế vip', 5, 0),
(449, 55000, 'G9', 'Ghế vip', 5, 0),
(450, 55000, 'G10', 'Ghế vip', 5, 0),
(451, 55000, 'H1', 'Ghế vip', 5, 0),
(452, 55000, 'H2', 'Ghế vip', 5, 0),
(453, 55000, 'H3', 'Ghế vip', 5, 0),
(454, 55000, 'H4', 'Ghế vip', 5, 0),
(455, 55000, 'H5', 'Ghế vip', 5, 0),
(456, 55000, 'H6', 'Ghế vip', 5, 0),
(457, 55000, 'H7', 'Ghế vip', 5, 0),
(458, 55000, 'H8', 'Ghế vip', 5, 0),
(459, 55000, 'H9', 'Ghế vip', 5, 0),
(460, 55000, 'H10', 'Ghế vip', 5, 0),
(461, 55000, 'I1', 'Ghế vip', 5, 0),
(462, 55000, 'I2', 'Ghế vip', 5, 0),
(463, 55000, 'I3', 'Ghế vip', 5, 0),
(464, 55000, 'I4', 'Ghế vip', 5, 0),
(465, 55000, 'I5', 'Ghế vip', 5, 0),
(466, 55000, 'I6', 'Ghế vip', 5, 0),
(467, 55000, 'I7', 'Ghế vip', 5, 0),
(468, 55000, 'I8', 'Ghế vip', 5, 0),
(469, 55000, 'I9', 'Ghế vip', 5, 0),
(470, 55000, 'I10', 'Ghế vip', 5, 0),
(471, 110000, 'K1', 'Ghế đôi', 5, 0),
(472, 110000, 'K2', 'Ghế đôi', 5, 0),
(473, 110000, 'K3', 'Ghế đôi', 5, 0),
(474, 110000, 'K4', 'Ghế đôi', 5, 0),
(475, 110000, 'K5', 'Ghế đôi', 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_dons`
--

CREATE TABLE `hoa_dons` (
  `Ma_hoa_don` int(11) NOT NULL,
  `Thoi_gian_dat` datetime NOT NULL,
  `Ma_khach_dat` int(11) NOT NULL,
  `Gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_chieus`
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
-- Đang đổ dữ liệu cho bảng `lich_chieus`
--

INSERT INTO `lich_chieus` (`Ma_lich_chieu`, `Ma_phim`, `Ma_phong`, `Ngay_chieu`, `Gio_chieu`, `updated_at`, `created_at`, `Trang_thai`) VALUES
(8, 10, 2, '2023-09-28', '10:00:00', '2023-09-30 08:02:49', '2023-09-27 12:56:54', b'0'),
(9, 10, 1, '2023-09-27', '22:00:00', '2023-09-30 08:02:49', '2023-09-27 12:57:23', b'0'),
(10, 12, 5, '2023-10-04', '23:00:00', '2023-09-30 08:58:49', '2023-09-30 08:58:49', b'1'),
(11, 12, 3, '2023-10-08', '15:00:00', '2023-10-02 06:10:02', '2023-10-02 06:10:02', b'1'),
(12, 12, 3, '2023-10-08', '08:00:00', '2023-10-02 06:35:32', '2023-10-02 06:35:32', b'1'),
(13, 12, 1, '2023-10-06', '18:00:00', '2023-10-02 07:12:36', '2023-10-02 07:12:36', b'1'),
(14, 12, 2, '2023-10-06', '20:00:00', '2023-10-02 07:12:59', '2023-10-02 07:12:59', b'1'),
(15, 12, 1, '2023-10-06', '22:10:00', '2023-10-02 07:13:25', '2023-10-02 07:13:25', b'1'),
(16, 12, 4, '2023-10-12', '18:20:00', '2023-10-03 08:44:55', '2023-10-03 08:44:55', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_24_051027_create_sliders_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `phongs`
--

CREATE TABLE `phongs` (
  `Ma_phong` int(11) NOT NULL,
  `Ten_phong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phongs`
--

INSERT INTO `phongs` (`Ma_phong`, `Ten_phong`) VALUES
(1, 'Phòng 1'),
(2, 'Phòng 2'),
(3, 'Phòng 3'),
(4, 'Phòng 4'),
(5, 'Phòng 5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `Image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `Image`, `created_at`, `updated_at`) VALUES
(1, 'https://files.betacorp.vn/files/ecm/2023/04/21/mer-resize-1702-x-621-140337-210423-86.png', '2023-09-23 22:39:53', '2023-09-23 22:39:53'),
(2, 'https://files.betacorp.vn/files/ecm/2023/09/22/untitled-2-095758-220923-79.jpg', '2023-09-23 22:54:14', '2023-09-23 22:54:14'),
(3, 'https://files.betacorp.vn/files/ecm/2023/09/19/patrol-sneak-show-shrink-150607-190923-86.jpg', '2023-09-23 22:54:28', '2023-09-23 22:54:28'),
(4, 'https://files.betacorp.vn/files/ecm/2023/09/20/379433503-1316837865601775-5354625697645944422-n-142228-200923-86.jpg', '2023-09-23 22:54:44', '2023-09-23 22:54:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `Ngay_sinh`, `Gioi_tinh`, `So_dien_thoai`) VALUES
(1, 'Pham Quan', 'quanpham2112004@gmail.com', NULL, '$2y$10$L3sJwI3PwusapX6XhDKe..CNUNecLMxKuFQwgS1owhnklP/yQEBYe', NULL, '2023-10-02 02:11:50', '2023-10-02 02:11:50', '2004-11-02', b'1', '0368407458'),
(2, 'Quan', 'Phamquan2112004@gmail.com', NULL, '$2y$10$rAJHoRYolNaunrfi2umxBuAWYnmE.4juVmikWoLfBfdtL4fdpoKXC', NULL, '2023-10-02 02:13:36', '2023-10-02 02:13:36', '2004-11-02', b'1', '0368407458'),
(3, 'Khanh', 'khanhga@gmail.com', NULL, '$2y$10$NAYcXL9d4qYPz3mqpVfFWulrE1UcQFjgvUuB0Taq./hBIq8xsM83W', NULL, '2023-10-02 02:14:36', '2023-10-02 02:14:36', '2004-11-26', b'1', '0368407458'),
(4, 'khanh', 'Khanhgaa@gmail.com', NULL, '$2y$10$2UFhcmuGBXI7MC9tqopWfOnGMDIlHmHLBNPZ3AUFve.zFrOjzPXwe', NULL, '2023-10-02 02:15:43', '2023-10-02 02:15:43', '2023-10-17', b'0', '0368407458');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ves`
--

CREATE TABLE `ves` (
  `Ma_ghe` int(11) NOT NULL,
  `Ma_phong` int(11) NOT NULL,
  `Ma_lich_chieu` int(11) NOT NULL,
  `Ma_hoa_don` int(11) NOT NULL,
  `Gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_phims`
--
ALTER TABLE `chi_tiet_phims`
  ADD PRIMARY KEY (`Ma_phim`) USING BTREE;

--
-- Chỉ mục cho bảng `danh_sach_phims`
--
ALTER TABLE `danh_sach_phims`
  ADD PRIMARY KEY (`Ma_phim`) USING BTREE;

--
-- Chỉ mục cho bảng `ghes`
--
ALTER TABLE `ghes`
  ADD PRIMARY KEY (`Ma_ghe`) USING BTREE,
  ADD KEY `FK_ghe_phong` (`Ma_phong`);

--
-- Chỉ mục cho bảng `hoa_dons`
--
ALTER TABLE `hoa_dons`
  ADD PRIMARY KEY (`Ma_hoa_don`) USING BTREE,
  ADD KEY `FK_hoa_dons_khach_hangs` (`Ma_khach_dat`) USING BTREE;

--
-- Chỉ mục cho bảng `lich_chieus`
--
ALTER TABLE `lich_chieus`
  ADD PRIMARY KEY (`Ma_lich_chieu`) USING BTREE,
  ADD KEY `FK_lich_chieus_danh_sach_phims` (`Ma_phim`) USING BTREE,
  ADD KEY `FK_lich_chieus_phong` (`Ma_phong`) USING BTREE;

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phongs`
--
ALTER TABLE `phongs`
  ADD PRIMARY KEY (`Ma_phong`) USING BTREE;

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `ves`
--
ALTER TABLE `ves`
  ADD PRIMARY KEY (`Ma_ghe`,`Ma_phong`,`Ma_lich_chieu`),
  ADD KEY `FK_ves_phongs` (`Ma_phong`),
  ADD KEY `FK_ves_lich_chieus` (`Ma_lich_chieu`),
  ADD KEY `FK_ves_hoa_dons` (`Ma_hoa_don`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_phims`
--
ALTER TABLE `chi_tiet_phims`
  MODIFY `Ma_phim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `danh_sach_phims`
--
ALTER TABLE `danh_sach_phims`
  MODIFY `Ma_phim` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `ghes`
--
ALTER TABLE `ghes`
  MODIFY `Ma_ghe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT cho bảng `hoa_dons`
--
ALTER TABLE `hoa_dons`
  MODIFY `Ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lich_chieus`
--
ALTER TABLE `lich_chieus`
  MODIFY `Ma_lich_chieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phongs`
--
ALTER TABLE `phongs`
  MODIFY `Ma_phong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_phims`
--
ALTER TABLE `chi_tiet_phims`
  ADD CONSTRAINT `FK_chi_tiet_phims_danh_sach_phims` FOREIGN KEY (`Ma_phim`) REFERENCES `danh_sach_phims` (`Ma_phim`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ghes`
--
ALTER TABLE `ghes`
  ADD CONSTRAINT `FK_ghe_phong` FOREIGN KEY (`Ma_phong`) REFERENCES `phongs` (`Ma_phong`);

--
-- Các ràng buộc cho bảng `hoa_dons`
--
ALTER TABLE `hoa_dons`
  ADD CONSTRAINT `FK_hoa_dons_users` FOREIGN KEY (`Ma_khach_dat`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `lich_chieus`
--
ALTER TABLE `lich_chieus`
  ADD CONSTRAINT `FK_lich_chieus_danh_sach_phims` FOREIGN KEY (`Ma_phim`) REFERENCES `danh_sach_phims` (`Ma_phim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lich_chieus_phongs` FOREIGN KEY (`Ma_phong`) REFERENCES `phongs` (`Ma_phong`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `ves`
--
ALTER TABLE `ves`
  ADD CONSTRAINT `FK_ves_ghes` FOREIGN KEY (`Ma_ghe`) REFERENCES `ghes` (`Ma_ghe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ves_hoa_dons` FOREIGN KEY (`Ma_hoa_don`) REFERENCES `hoa_dons` (`Ma_hoa_don`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ves_lich_chieus` FOREIGN KEY (`Ma_lich_chieu`) REFERENCES `lich_chieus` (`Ma_lich_chieu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ves_phongs` FOREIGN KEY (`Ma_phong`) REFERENCES `phongs` (`Ma_phong`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;