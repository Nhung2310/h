CREATE DATABASE  IF NOT EXISTS `nuoc_hoa-app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nuoc_hoa-app`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nuoc_hoa-app
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gio_hang`
--

DROP TABLE IF EXISTS `gio_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gio_hang` (
  `idgio_hang` int NOT NULL AUTO_INCREMENT,
  `idsan_pham` int DEFAULT NULL,
  `idkhachhang` int DEFAULT NULL,
  `tenNuocHoa` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tenThuongHieu` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gia` double DEFAULT NULL,
  `tong_tien` double DEFAULT NULL,
  PRIMARY KEY (`idgio_hang`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gio_hang`
--

LOCK TABLES `gio_hang` WRITE;
/*!40000 ALTER TABLE `gio_hang` DISABLE KEYS */;
INSERT INTO `gio_hang` VALUES (52,36,13,'Nước Hoa Miss Dior Eau De Parfum','Dior',980000,980000),(53,31,13,'Nước Hoa Chanel Chance Eau Vive EDT','Chanel',4000000,4000000),(54,41,15,'Chanel Allure Homme Sport EDT','Gucci',1450000,1450000),(56,41,17,'Chanel Allure Homme Sport EDT','Gucci',1450000,1450000);
/*!40000 ALTER TABLE `gio_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khach_hang` (
  `idkhach_hang` int NOT NULL AUTO_INCREMENT,
  `tendangnhap` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `matkhau` varchar(45) DEFAULT NULL,
  `hovaten` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gioitinh` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `diachi` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sodienthoai` varchar(45) DEFAULT NULL,
  `dangkynhanbangtin` tinyint DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `maxacthuc` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `thoigianhieuluccuamaxacthuc` time DEFAULT NULL,
  `trangthaixacthuc` tinyint DEFAULT NULL,
  `duongdananh` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idkhach_hang`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang`
--

LOCK TABLES `khach_hang` WRITE;
/*!40000 ALTER TABLE `khach_hang` DISABLE KEYS */;
INSERT INTO `khach_hang` VALUES (13,'trangnhung','nhung','Ngô Thị Trang Nhung','nu','Hoàng Mai, Nghệ An','2002-10-23','0983793713',0,'nhung@gmail.com',NULL,NULL,NULL,NULL),(14,'ngotrangnhung','trangnhung','Ngô Trang Nhung','nu','Hoàng Mai, Tỉnh Nghệ An','2023-05-28','0495823456',0,'trangnhung2311.mh@gmail.com',NULL,NULL,NULL,NULL),(15,'ngothitrangnhung','123456','Ngô Trang Nhung','nu','Hoàng Mai, Nghệ An','2002-10-23','0333869909',1,'ngothitrangnhung@gmail.com',NULL,NULL,NULL,NULL),(16,'test','thanhcong','test','nu','TP HCM','2002-06-06','0123456789',NULL,'nttnptithcm051@gmail.com',NULL,NULL,NULL,NULL),(17,'trangnhungngo','123456789','Ngô Nhung','nu','Hoàng Mai, Nghệ An','2002-10-23','0983793713',0,'nhungngo@gmail.com',NULL,NULL,NULL,NULL),(18,'test','trangnhung','Ngô Thị Trang Nhung','nam','TP HCM','2023-05-28','0123456789',0,'ngonhung@gmail.com',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `khach_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nuoc_hoa`
--

DROP TABLE IF EXISTS `nuoc_hoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nuoc_hoa` (
  `idnuoc_hoa` int NOT NULL AUTO_INCREMENT,
  `tennuochoa` varchar(1000) DEFAULT NULL,
  `tenthuonghieu` varchar(45) DEFAULT NULL,
  `namsanxuat` date DEFAULT NULL,
  `giagoc` double DEFAULT NULL,
  `giaban` double DEFAULT NULL,
  `dungtich` double DEFAULT NULL,
  `loai` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `trangthai` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `xuatxu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `soluong` double DEFAULT NULL,
  `mota` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`idnuoc_hoa`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nuoc_hoa`
--

LOCK TABLES `nuoc_hoa` WRITE;
/*!40000 ALTER TABLE `nuoc_hoa` DISABLE KEYS */;
INSERT INTO `nuoc_hoa` VALUES (25,'Nước Hoa Nữ Burberry Brit For Her EDP','Burberry','2023-05-28',1000000,1300000,50,'nuochoanu',' active','nuoc-hoa-nu-burberry-brit-for-women-edp-100ml.jpg',' Anh',3,'BURBERRY Brit Eau de Parfum liệu có phải một tuyệt tác đến từ Anh Quốc như lời đồn? Tôi cũng không chắc nữa, bởi nhà pha chế Nathalie Gracia-Cetto đã từng khẳng định rằng chai nước hoa này sẽ là một biểu tượng của sự tồn tại vượt thời gian. Thực hư như nào thì bây giờ mình phải bóc tách các lớp hương của em ấy thì mới rõ được.  BURBERRY Brit Eau de Parfum là chai nước hoa thuộc nhóm hương hoa cỏ trái cây. Nó mở đầu với cái thanh mát của Chanh hoà cùng hương Lê ngọt dịu, thứ mùi vị của tự nhiên ấy trộn lẫn thêm cái bùi bùi của Hạnh nhân, sự sạch sẽ của Sả chanh cũng không an phận mà nhảy vào hỗn hợp ấy, như vỗ về khứu giác của ta được dễ chịu hơn. Mùi hương cũng trở nên nhẹ nhàng, ấm áp hơn bởi Hoa mẫu đơn, Gỗ gụ, rải thêm chút ngọt ngào của Đường và Vanilla. Tất cả nốt hương như đóng vai trò đánh dấu cá tính khác biệt của từng người chủ sở hữu.  Với các tầng hương đặc biệt như vậy, tôi đã có câu trả lời của riêng mình cho câu hỏi ở đầu bài. Thứ hương mà BURBERRY Brit Eau de Parfum đem đến đẹp lắm, một vẻ đẹp cổ điển đượm hơi thở kiêu ngạo rất riêng của người Anh. Vậy còn câu trả lời của bạn là gì?','admin'),(26,'Nước Hoa Nam Burberry Brit For Him Eau De Toilette ','Burberry','2023-05-28',3200000,3500000,150,'nuochoanam',' active','nuoc-hoa-nam-burberry-brit-for-him-eau-de-toilette-100ml.jpg',' Anh',6,'Với chiến thắng tại hạng mục Nước hoa nam xuất sắc nhất của giải thưởng nước hoa danh giá FiFi Award 2005, hương thơm của Burberry Brit for Men đã chứng tỏ được độ nổi tiếng của mình giữa giới mộ điệu và giới chuyên môn.  Burberry Brit mở ra với vị cay nồng ấm của Gừng, pha kèm một chút Bạch đậu khấu và sự tươi mát của Quýt và cam Bergamot. Một khởi đầu tràn đầy năng lượng, cuốn hút và vẫn có những đường nét nam tính, mạnh mẽ. Sang tầng hương giữa, hương hoa Hồng trỗi dậy, mang theo hương cay tự nhiên, hòa quyện cùng với gỗ Tuyết tùng và tổ hợp Gừng- Bạch đậu khấu ban đầu. Mùi hương lúc này dường như kiến tạo nên hình ảnh một người đàn ông cổ điển nhưng vẫn có một gu thời trang hiện đại và cá tính giữa thành phố London.  Với một tính cách cổ điển và nam tính, Burberry Brit sẽ là một món phụ kiện mùi hương phù hợp cho các chàng trai với phong cách ăn mặc tối giản, có phần lịch thiệp, và đặc biệt là các anh chàng văn phòng công sở. Nước hoa không có giới hạn về tuổi tác nhưng có lẽ đây sẽ là mùi hương dành cho các bạn nam từ độ tuổi 25 trở lên.','admin'),(27,'Nước Hoa Nữ Burberry Body Tender EDT','Burberry','2023-05-30',350000,400000,30,'nuochoanu',' inactive','nuoc-hoa-nu-burberry-body-tender-edt.jpg',' Anh',5,'Hương đầu: Quả chanh, Quả táo, Quả đào, Hương ngải Hương giữa: Hoa hồng, Hoa nhài, Trà, Gỗ đàn hương Hương cuối: Xạ hương, Gỗ Cashmere, Hổ phách, Vanilla  Burberry Body Tender có thể nói là đại diện cho hình ảnh những cô nàng mành khảnh cùng với vóc dáng thon gọn. Từ trong chính thiết kế đã mang đến cho tôi một trải nghiệm mới lạ vì rất hiếm khi có thể bắt gặp những chai nước hoa mang hình hài như Burberry Body Tender.  Những rung động đầu tiên khi vừa chạm mũi đó là vẻ tươi trẻ, phảng phất hương trái cây, kết hợp cùng Hương ngải đã hoà quyện với nhau một cách nhẹ nhàng và tinh tế. Tiếp nối cho sự khởi đầu đẹp đẽ đó là nốt hương nồng nàn của Hoa hồng, trong trẻo của Hoa nhài và sạch sẽ từ Trà, tất cả tạo nên một sự bùng nổ mãnh liệt vì mùi hương quá đỗi tươi sáng và đặc biệt. Khép lại một cách lắng đọng nhưng thật sự trọng vẹn cùng với hương Gỗ Cashmere, Hổ phách ấm áp, ngọt ngào xuất phát từ Vanilla. Và Xạ hương lại là nhân tố chính, chịu trách nhiệm cân bằng lại tất cả mọi cảm xúc.  Burberry Body Tender có thể không quá được biết đến một cách rầm rộ như hiện nay, nhưng với thiết kế nổi bật và mùi hương nữ tính, tinh tế thì chúng ta không nên lãng phí một viên ngọc vốn dĩ đã rất sáng rồi đúng không!','admin'),(28,'Nước Hoa Nữ Chanel No 5 EDP Refillable Spray','Chanel','2023-05-28',950000,1000000,30,'nuochoanu',' active','nuoc-hoa-nu-chanel-no-5-edpa-refillable-spray.jpg','Pháp',5,'Nước hoa No 5 Eau de Parfum của hãng Chanel, hẳn bạn sẽ chẳng còn xa lạ gì với dòng nước kinh điển này. Được ra đời vào năm 1986, cho đến bây giờ Chanel No 5 Eau de Parfum chưa bao giờ hạ nhiệt với tín đồ nước hoa trên toàn thế giới. Đã có nhiều cô gái thốt lên rằng chưa có một mùi hương nào khiến họ cảm thấy thực sự hứng thú, vì có lẽ họ chưa thử một lần mặc lên người lớp hương của Chanel No 5 Eau de Parfum mà thôi. Đó là một mùi hương của quý tộc, đậm chất cổ điển, nhưng ở thời nay, nhiều người nhận xét nó là mùi hương của quyền lực, của sự giàu sang. Nổi bật với Hương thơm An-đê-hit và Hoa cam Neroli cùng mùi hương cuốn hút của Hoa ngọc lan tây, No 5 Eau de Parfum đưa bạn tới những bữa tiệc xa hoa ngoài trời, ánh đèn lung linh, tỏa ngát hương thơm quý phái của Hoa Nhài, Hoa diễn vĩ và Hoa hồng. Dưới ánh sáng mờ ảo đó, Hương thơm của Gỗ đàn hương cùng sự ngọt ngào của Vani như đang kể lại một chuyện tình đẹp của những con người đồng điệu trái tim cùng nhau. ','admin'),(29,'Nước Hoa Nữ Chanel Coco Mademoiselle Eau De Toilette','Chanel','2023-05-30',2700000,2800000,30,'nuochoanu',' inactive','nuoc-hoa-nu-chanel-coco-mademoiselle-eau-de-toilette.jpg','Pháp',4,'sản phẩm Mùi hương của người phụ nữ táo bạo và tự do. Nốt hương hổ phách thoáng mát, gợi cảm và nữ tính.  thành phần Hương hoa hổ phách tươi mát. Các nốt hương đầu của bưởi Sicily đem lại cảm giác tươi mát mạnh mẽ, trước khi đến với sự hoà quyện giữa hoa hồng và hoa nhài, được chấm phá với nốt hương trái cây của vải thiều. Những nốt hương nền mềm mại mang đến một mùi hương độc đáo, quyến rũ và táo bạo.  cảm hứng COCO MADEMOISELLE lấy cảm hứng từ tính cách táo bạo của Gabrielle Chanel. Hương nước hoa là bức chân dung của một người phụ nữ có tư tưởng độc lập, người đã phá vỡ những quy tắc để viết nên định mệnh của chính mình.  nghệ thuật nước hoa Eau de Toilette có thể xịt trực tiếp lên da hay quần áo. Sử dụng kết hợp với các sản phẩm trong chu trình chăm sóc toàn diện để tăng cường và lưu giữ hương thơm.','admin'),(30,'Nước Hoa Nam Chanel Bleu De Chanel EDP','Chanel','2023-04-30',3000000,3250000,50,'nuochoanam',' active','nuoc-hoa-nam-chanel-bleu-edp.jpg','Pháp',4,'Sự ra mắt của Bleu de Chanel năm 2010 giống như một người khởi xướng cho phong trào làm nước hoa “blue” tới từ các nhà hương, một phong cách mùi hương nịnh mũi, dễ gần và vô cùng đa dụng. Bleu de Chanel dường như đáp ứng đầy đủ các yêu cầu dành cho cánh mày râu khi cần tìm kiếm một mùi hương gây được dấu ấn của bản thân mình thời điểm đó. Với sự chu toàn của Chanel, việc cho ra một phiên bản nâng cấp để hoàn thiện tính hoàn hảo cho mùi hương là điều chắc chắn xảy ra, và chúng ta đã có Bleu de Chanel Eau de Parfum vào năm 2014.  Vốn được rất nhiều người trong cộng đồng nước hoa đánh giá là phiên bản hoàn hảo nhất của dòng Bleu de Chanel, Bleu de Chanel Eau de Parfum vẫn đem tới cho các quý ông một khởi đầu tươi sáng và thanh lịch. Bưởi và Gừng, thứ được cho là dấu ấn của dòng hương nổi tiếng của Chanel, được tô đậm và làm sáng lên rõ ràng trong Bleu de Chanel Eau de Parfum, đa sắc và dày dặn hơn. Đi vào tâm của mùi hương cũng vậy, khi phiên bản Bleu de Chanel Eau de Parfum sở hữu một mùi hương có chiều sâu rõ rệt với sự xuất hiện của Nhựa hổ phách, bên cạnh hương Gỗ và Nhang đã tạo nên nhận diện đặc trưng ở tầng hương cuối cho dòng hương Bleu de Chanel.  Vốn được sinh ra để thỏa mãn tất cả những người yêu thích phong cách hương thơm “kiểu Bleu de Chanel”, phiên bản Eau de Parfum này thực sự là một mảnh ghép hoàn hảo được Chanel đem tới để làm mãn nguyện những quý ông yêu thích dòng hương này.','admin'),(31,'Nước Hoa Chanel Chance Eau Vive EDT','Chanel','2023-05-30',3900000,4000000,150,'moi',' inactive','nuoc-hoa-chanel-chance-eau-vive-edt.jpg','Pháp',6,'Notes list: Hương đầu: Quả cam đỏ, Quả bưởi, Các notes citrus Hương giữa: Hoa nhài, Xạ hương trắng. Hương cuối: Cỏ hương bài, Gỗ tuyết tùng, Hoa diên vĩ.  Chanel ra mắt Chance Eau Vive vào năm 2015, dưới bàn tay của Olivier Polge, một chiếc mũi tài năng của nhà Chanel và là con trai của Jacques Polge, một nhà pha chế nước hoa quen thuộc với các fan hâm mộ của nhà Chanel. Chance Eau Vive là một flanker nằm trong bộ sưu tập Chanel Chance của hãng, với những cái tên quen thuộc nổi tiếng như Chanel Chance (2003), Chanel Chance Eau Fraiche (2007) và Chanel Chance Eau Tendre (2010), với mục tiêu là những mùi hương tươi tắn dịu dàng và dành cho các quý cô trẻ trung.  Olivier Polge đã kết hợp note hương bưởi lấp lánh với hương cam đỏ mọng nước, tạo ra một sự bùng nổ với các note hương citrus và kết hợp chúng với sự thanh lịch của hoa nhài và xạ hương trắng quyến rũ. Ở phần cuối của mùi hương, cỏ hương bài và gỗ tuyết tùng đem lại một cảm giác ấm cúng, nhẹ nhàng, chững chạc hơn cùng một chút phấn tươi từ đóa diên vĩ tím khiến mùi hương trở nên nữ tính, nhẹ nhàng, thanh lịch và rất tinh tế.  Chance Eau Vive là một mùi hương được xếp vào nhóm hương Hoa – Gỗ - Xạ hương (Floral – Woody – Musk) chuẩn mực dành cho một quý cô và được thổi vào một làn hơi tươi trẻ với những note hương cam chanh ở đầu, khiến nó rất phù hợp với các chị em trẻ trung, năng động, có thể mặc đi học, đi làm, đi chơi cùng bạn bè, thâm chí có thể là những buổi hẹn hò thông thường.','admin'),(32,'Nước Hoa Nữ Gucci Bloom Eau De Toilette','Gucci','2023-05-28',870000,900000,30,'nuochoanu',' active','nuoc-hoa-nu-gucci-bloom-eau-de-toilette.jpg','Ý',10,'Tiếp nối thành công của Gucci Bloom EDP, nhà hãng đã cho ra mắt phiên bản EDT với nhiều nét trẻ trung, thanh thoát và cưng nựng khứu giác ít nhiều. Nếu bạn từng thấy Gucci Bloom EDP có hơi chững chạc với mình, thì Gucci Bloom EDT sẽ lại mở ra cho bạn một trải nghiệm mùi hương mới đó.  Nàng thơ xuân nhà Gucci vẫn gữ nguyên DNA mùi hương chính là những bó hoa trắng muốt, rạng ngời mà không hào nhoáng với Hoa huệ và Hoa nhài. Thế nhưng lần này, lẫn đâu đó trong từng cánh hoa mỏng tang lại thoang thoảng chút sắc sảo, mọng nước đặc trưng của Cam chanh và đượm lại chút đắng ngót như trà non.  Chỉ cần để ý kỹ hơn, hít một hơi thật đẫy, bạn sẽ còn thấy được dư vị ngọt thanh như trái cây, hương thơm ấy đến từ Hoa sử quân tử đó. Và chính những nụ hoa đỏ tươi, chúm chím mà đáng yêu này đã hình thành nên một Gucci Bloom EDT trẻ trung, hiện đại và mới mẻ hơn rất nhiều','admin'),(34,'Nước Hoa Nữ Gucci Flora Gorgeous Jasmin Eau De','Gucci','2023-05-28',2600000,2650000,30,'nuochoanu',' active','nuoc-hoa-nu-gucci-flora-gorgeous-jasmin-eau-de-parfum.jpg','Ý',10,'Nhóm hương Hương hoa nhài, Hoa mộc lan, Quýt hồng Phong cách Sang trọng, Thanh lịch, Gợi cảm Hương đầu: Quýt Ý, Cam Bergamot, Tiêu đen. Hương giữa: Hoa nhài, Hoa nhài Sambac, Hoa mộc lan, Hoa hồng Damask. Hương cuối: Nhựa hương Benzoin, Gỗ đàn hương Úc, Hoắc hương.  Tiếp nối thành công của Flora Gorgeous Gardenia, Gucci tiếp tục cho ra mắt phiên bản tiếp theo của dòng Gucci Flora Gorgeous, với chủ điểm là một người chị em của Gardenia (Hoa dành dành), ấy là Jasmine (Hoa nhài). Nhài và Dành dành có những đặc điểm cơ bản khá giống nhau trong mùi hương, cùng nằm trong nhóm hoa trắng, và Nhài thực tế cũng đã xuất hiện trong phiên bản màu hồng được ra mắt năm 2021. Vậy Gucci Flora Gorgeous Jasmine mới được ra mắt năm 2022 sẽ có những gì thú vị dành cho chúng ta?  Đúng như tên gọi của mùi hương, Hoa nhài là chủ thể được tô vẽ xinh đẹp trong Flora Gorgeous Jasmine. Nhài tươi thắm, tinh khôi và gợi cảm, ngọt ngào như những gì ta có thể tưởng tượng về một tiểu thư chuẩn mực. Nhài của Flora Gorgeous Jasmine được tô vẽ đậm nét tới mức ta có thể tận hưởng hương thơm dễ chịu này từ đầu tới cuối của mùi hương, nhưng vẫn đủ giúp ta nhận biết được sắc thái đem tới từ các vệ tinh xung quanh bông hoa dễ thương này, bằng việc chuyển biến của mùi hương.  Nhài được chuyển qua từ trạng thái chua ngọt mọng nước của những nốt hương Cam chanh, cho tới cái tê ngọt ấm áp của Nhựa hương hòa trộn với những rung động nhẹ nhàng từ Đàn hương, khiến Hoa nhài vừa dễ thương, vừa sống động trong Flora Gorgeous Jasmine.','admin'),(35,'Nước Hoa Nam Gucci Pour Homme EDT','Gucci','2023-05-28',4321000,4500000,150,'nuochoanam',' inactive','nuoc-hoa-nam-gucci-pour-homme-edt.jpg','Ý',7,'Nhóm hương Thuốc lá, Cây bách, hoa tím Phong cách Nam tính, Hiện đại, Cuốn hút Hương đầu: Cam bergamot, Cây bách xù, Violet Hương giữa: Thuốc lá, Hoa nhài Hương cuối: Hoắc hương, Hổ phách, Da thuộc, Nhũ hương  Nhận được nhiều niềm yêu thích từ người dùng, Gucci By Gucci Pour Homme cho đến nay không còn là cái tên xa lạ đối với những con chiên nghiện mùi hương.  Để lại ấn tượng mạnh mẽ bởi hương gỗ làm chủ đạo, ta dễ dàng “chỉ mặt điểm tên” Thuốc lá cùng Cây bách xù xuất hiện điềm nhiên, tĩnh tại trong hầu hết các nốt hương. Hào hoa và phong trần hơn thế nữa với nốt hương sang trọng điển hình của Da thuộc, Gucci By Gucci Pour Homme vẫn là người đàn ông dịu dàng với người phụ nữ của mình qua hơi thở ngọt nhẹ của Violet và Hoa nhài, sóng sánh trọn vẹn với Hổ phách trang nhã.','admin'),(36,'Nước Hoa Miss Dior Eau De Parfum','Dior','2023-05-30',900000,980000,30,'yeuthicnhat',' inactive','nuoc-hoa-miss-dior-eau-de-parfum.jpg','Pháp',4,'Nhóm hương Hoa hồng, Hoắc hương, Gỗ hồng palisander, Hạt tiêu hồng Phong cách Thanh lịch, Gợi cảm, Sang trọng Hương chính : Hoa hồng Grasse, Hoắc hương, Gỗ hồng Hương đầu : Chanh, Quýt hồng, Tiêu hồng, Cam đỏ, Cam ngọt, Cam bergamot Hương giữa : Hoa hồng Grasse, Hoa hồng Damask, Lá hoa nhài Hương cuối : Gỗ hồng, Hoắc hương  Song hành cùng những khẩu hiệu mà Dior tâm đắc nhất như “Miss Dior For Love”, “Dior For Love”, “And what about you?” và “What would you do for love?”, Miss Dior giống một lời tuyên bố của tình yêu dành tặng riêng cho những người phụ nữ trẻ trung và tràn đầy sự nhiệt huyết.  Thể hiện rõ những cung bậc cảm xúc trong tình yêu trải qua từng giai đoạn, cha ruột – Francois Demachy khẳng định rằng ông đã dành hết công sức của mình trong nhiều năm để khiến hương thơm của Miss Dior trở nên khiêu gợi hơn bao giờ hết và bùng nổ sức lan tỏa khắp từ đầu cho đến gót chân của người phụ nữ.  Tôn vinh lên vẻ đẹp nữ tính của các quý cô thời hiện đại, loạt hương thơm được chiết xuất từ những loại quả thơm ngát quyện cùng một chút cay nhẹ từ Tiêu hồng làm bừng sáng lên tầng hương đầu, khơi gợi sự tươi trẻ, năng động của các nàng.  Một bông hồng Grasse có lẽ đã quá đủ để tôn vinh vẻ đẹp của các nàng, nhưng nhiêu đó chưa đủ để thỏa mãn hết niềm tham vọng mà Miss Dior mang lại khi Francois gói ghém những hương thơm gợi cảm từ Hoa hồng Damask cùng nét dịu dàng từ Lá hoa nhài khiến các chàng trai phải đắm say, mê mệt.  Đem đến món quà cuối cùng cho các nàng, hương thơm trầm ấm từ Gỗ hồng đưa từng nốt hương trở nên sống động trên nền Hoắc hương thơm ngọt, lưu lại sắc hồng tuyệt đẹp kèm theo câu hỏi khiến các chàng luôn phải vương vấn không quên “What would you do for love?” ','admin'),(37,'Nước Hoa Nam Christian Dior Sauvage EDP','Dior','2023-05-28',4000000,4100000,150,'nuochoanam',' inactive','nuoc-hoa-nam-christian-dior-sauvage-edp-dam-chat-hien-dai.jpg','Pháp',4,'Nhóm hương Hương ambroxan, Cam bergamot, Hạt tiêu tứ xuyên Phong cách Phóng khoáng, Nam tính, Cuốn hút Hương đầu: Bergamot Hương giữa: Tiêu, Hoa Oải Hương, Đại Hồi, Nhục Đậu Khấu Hương cuối: Ambroxan, Vani  Với tiếng tăm lẫy lừng có đàn anh đi trước, Dior Sauvage phiên bản Eau De Parfum cũng không hề kém cạnh về mùi hương lẫn độ ưa chuộng. Và sau đây là những lý do bạn nên có một chai nước hoa Dior Sauvage EDP trong bộ sưu tập của mình,  Ở phiên bản này, mùi hương sẽ không nhiều sự khác biệt lắm với bản Eau De Toilette, vẫn là sự kết hợp quen thuộc và kinh điển đến từ Cam Bergamot, Ambroxan, và hoa Oải Hương. Một mùi hương đã nâng tầm thương hiệu Dior lên một tầm cao mới và giúp cho Dior Sauvage trở thành một trong những chai nước hoa nam được ưa chuộng và bán chạy nhất mọi thời đại. Bản Eau De Parfum sẽ mang vị cay của Tiêu đậm hơn, có chiều sâu và trầm lắng hơn nhờ vào mùi hương của Vani. Vani thoảng qua nhưng không quá nổi trội, làm cho mùi hương vẫn giữ được nét tươi mát, và mạnh mẽ.  Dior Sauvage EDP giống với bản EDT từ mùi hương cho đến cả độ bám tỏa cực tốt, và cả độ đa dụng. Sauvage EDP là một mùi hương dành cho các chàng trai không muốn quá bận tâm phải xịt chai nước hoa nào mỗi ngày. Đây đích thực là một chai nước hoa có thể áp dụng cho tất cả các dịp, các thời tiết và đa dạng gu thời trang.','admin'),(38,'Gucci Memoire Dune Odeur EDP','Gucci','2023-05-31',1800000,1950000,100,'moi',' inactive','guci.png','Pháp',10,'Nhóm hương chính: Hương Hoa cỏ Phương đông - Oriental Floral  Phong cách : Tươi mới, trong sáng, nồng nàn, tinh tế   Hương đầu: Hạnh nhân đắng, Hoa cúc La Mã Hương giữa: Hoa nhài, Xạ hương, Hoa nhài Ấn Độ Hương cuối:   Đàn hương, Tuyết tùng, Vanilla Thật ra mùi hương tái hiện tất cả những ký ức mà chúng ta đã, đang và sẽ có. Nó đưa ta đến những nơi đã từng đi qua, đang ở hay sẽ đến. Tôi không muốn tạo ra Memoire D’une Odeur cho giới tính cố định nào, vì thật ra ai cũng cần phải có ký ức”, Alessandro Michele bộc bạch.  Với các cấu tạo tầng hương không thể đơn giản hơn, những nốt đầu tiên khẽ khàng lay động khứu giác bởi mùi hương nhẹ nhàng, ve vuốt ngọt ngào của Hoa cúc cùng Hạnh nhân. Bởi ký ức sẽ luôn đẹp đẽ nếu ta trân trọng chúng, Xạ hương cùng Hoa nhài giao thoa uyển chuyển trong tầng hương tiếp theo, tựa hồ tô vẽ nhưng gọi mời, quyến luyến trên làn da với hương thơm nồng nàn đặc trưng.  Vốn là mùi hương dành cho cả nam lẫn nữ, lớp hương cuối với sự bổ trợ của Đàn hương và Tuyết tùng đã phần nào đan xen, tạo nên vẻ vững vàng và phần nào mạnh mẽ, không quên gọt giũa cho mềm mại với Vanilla ngọt ấm quen thuộc','admin'),(39,'Gucci Guilty Pour Homme Parfum','Gucci','2023-05-28',800000,965000,30,'moi',' inactive','350874887_799754274854644_8300571558500954748_n.png','Đức',10,'Nhóm hương: Giấm balsamic, Hoa hồng, Hoa cam  Phong cách: Tinh tế, Nam tính, Thu hút  Hương đầu: Hoa hồng, Giấm Balsamic, Ớt anh đào, Hương muối. Hương giữa: Hoa oải hương, Hoa cam, Hoa cam Neroli. Hương cuối: Gỗ tuyết tùng, Hoắc hương. Dòng hương Gucci Guilty cho nam giới thường được cho là có những đường nét giống nhau, thế nhưng không phải chúng không có điểm riêng biệt để tạo nên phong cách cho bản thân. Gucci Guilty Pour Homme Eau de Parfum cũng vậy, ra mắt năm 2020, gần 10 năm so với phiên bản Gucci Guilty Pour Homme ban đầu, và bản thân chai nước hoa này cũng tạo ra những đường nét mới lạ hiện đại thú vị.  Gucci Guilty Pour Homme Eau de Parfum tạo được sự khác biệt cho mình ở chính tầng hương đầu tiên. Với Hoa hồng, tươi tắn, thoáng đãng, được phủ lên cái nồng nàn nam tính bởi những nốt hương gia vị. Giấm Balsamic, Ớt anh đào cùng một chút Muối, ủ đẫm vào Hoa hồng tạo nên một hương thơm tươi tắn, khỏe khoắn và tràn đầy năng lượng.  Hồng và Gia vị nhảy múa khá lâu trong khứu giác của chúng ta, quyến luyến và day dứt, để rồi được làm dịu dàng và trầm lắng trở lại bằng những mùi hương quen thuộc trong mỗi chai nước hoa nam, những Hoa cam, hay Oải hương. DNA của Gucci Guilty dần dần hiện trở lại rõ ràng, bằng hương Gỗ tuyết tùng, tạo nên một tấm nền vững chắc, mạnh mẽ và đầy lôi cuốn cho Gucci Guilty Pour Homme Eau de Parfum.','admin'),(40,'Dior Homme Intense Mini Size EDT','Dior','2023-05-29',1200000,1230000,30,'yeuthicnhat',' inactive','ytn.png','Pháp',6,'Phong cách: Lịch lãm , Quyến rũ, Thu hút   Hương Đầu: Hoa Oải Hương (Lavender) Hương giữa: Hoa diên vĩ, Cây vông vang, Quả lê Hương cuối: Cỏ hương bài, Gỗ tuyết tùng Virginia  Chắc hẳn bạn đã từng nghe rất nhiều về những mùi hương nước hoa được miêu tả bằng chữ \"đẹp\" dành cho phái nữ, nhưng từ đẹp rất khi khi được dùng cho nước hoa Nam, hẳn bởi phái mạnh không quen dùng từ ngữ đó. Nhưng với rất nhiều người khi tiếp xúc với Dior Homme Intense, khái niệm mùi hương \"đẹp\" sẽ được dành tặng cho gã đàn ông này một cách thuyết phục. Dior Homme Intense được ví như là một kẻ gây nghiện, gây nghiện với chính người dùng, và lây lan cái \"nghiện\" đó cho cả những người xung quanh. Một ngày mưa gió, lạnh lẽo, tỉnh giấc cùng bầu trời xám xịt đen sì ngoài kia, cách tốt nhất để làm hài lòng bản thân là xịt một shot Dior Homme Intense vào cơ thể và đi ngủ tiếp, như thể nó sẽ mang lại sự thư giãn tuyệt đối, bình yên vô điều kiện cho bất kỳ chàng trai nào. Ở khía cạnh gây ấn tượng với phái nữ, mang trong mình mùi hương Lavender đầy sự cám dỗ, tinh tế cùng Hoa diên vĩ và cây vông vang, Dior Homme Intense thúc dục và dễ dàng tháo gỡ mọi rào cản một cách diệu kỳ, biến những thứ tưởng lạ mà trở thành quen một cách thú vị. Chàng trai nhà Dior này được nhiều người đặt cho cái biệt danh bảnh trai nhưng khá lười biếng, cũng chính vì vậy mà mọi cô gái đều muốn được chăm sóc và ở bên cạnh để hỗ trợ hết mình cho gã đàn ông đào hoa bẩm sinh này. ','admin'),(41,'Chanel Allure Homme Sport EDT','Gucci','2023-05-28',1400000,1450000,30,'yeuthicnhat',' inactive','ytn2.png','Pháp',5,'Phong cách: Tinh tế, Nam tính, Tươi mát, Hiện đại  Hương Đầu: Hương An-đê-hít, Quả cam, Hương nước biển Hương giữa: Tiêu, Hoa cam Neroli, Gỗ tuyết tùng Hương cuối: Đậu Tonka, Hổ phách, Hương Vani, Xạ hương trắng Mùa hè, vào những ngày thời tiết nóng oi bức, khó chịu, càng chàng trai thường nghĩ gì? Được tắm trong dòng nước mát lạnh tại một bãi biển đầy gió, nằm dài và đọc một cuốn sách yêu thích hoặc lướt web bằng chiếc điện thoại của mình trên bãi biển với một dĩa trái cây tươi ướp đá. Kết thúc dưới cái nắng dịu nhẹ của hoàng hôn bằng một que kem vani ngọt ngào, nhiều năng lượng. Những cảm xúc đó được hãng Chanel định nghĩa bởi 1 cái tên, Chanel Allure Homme Sport. Sự mạnh mẽ, tươi mới, tràn đầy sức sống, cuốn hút mọi ánh nhìn bằng sự trẻ trung và nam tính, Chanel Allure Homme Sport sở hữu những note hương của một chàng trai hiện đại, tràn đầy nhiệt huyết và sự tự do của Hương An-đê-hít,  gió biển cùng trái cam tươi. Say đắm mọi ánh nhìn bằng sự \"đàn ông\" của hương Hổ phách xen lẫn Vani ngọt ngào, phóng khoáng. ','admin'),(42,'Gucci Bloom Profumo Di Fiori Mini Size','Gucci','2023-05-28',0,1000000,0,'pass',' inactive','cucci1.png','Pháp',0,' ','nhung@gmail.com'),(43,'Gucci A Chant For The Nymph Mini Size','Gucci','2023-03-04',0,1110000,0,'pass',' inactive','cucci3.png','Pháp',0,' ','nhung@gmail.com'),(45,'Gucci Guilty Pour Homme Eau de Parfum Mini Size','Gucci','2023-05-28',0,1,0,'pass',' inactive','demo_kh.png','Pháp',0,' ','ngothitrangnhung@gmail.com'),(47,'Nước Hoa Nữ Gucci Bloom Nettare Di Fiori EDP','Gucci','2023-05-28',111,123,100,'nuochoanu',' active','demo_sp_admin.png','Pháp',3,'Phong cách Gợi cảm, Nữ tính, Sang trọng Hương đầu: Gừng, Hoa hồng. Hương giữa: Hoa huệ, Hoa nhài, Hoa kim ngân, Hoa dạ lý hương. Hương cuối: Xạ hương, Hoa mộc tê, Hoắc hương.  Mỗi lần gặp một mùi hương mới đến từ dòng Gucci Bloom, chúng ta sẽ thường có thói quen so sánh với phiên bản gốc, để tìm hiểu thêm những nét nữ tính mới được khai thác trong dòng hương được yêu thích tới từ Gucci. Với Gucci Bloom Nettare Di Fiori cũng vậy, và đây sẽ là một mùi hương nhẹ nhàng, thanh thoát và dễ gần với những thiếu nữ trẻ trung.  Tại sao Gucci Bloom Nettare Di Fiori lại gần gũi hơn với một cô gái trẻ tuổi, nữ tính và e ấp? Dĩ nhiên là do những làn hương trong chai nước hoa này và cách chúng kết hợp với nhau. Vẫn với chủ điểm là Hoa huệ, nhưng thướt tha hơn bởi sự hòa quyện của nhài cùng hương Trái cây ngọt nhẹ thoang thoảng của Kim ngân, Mộc tê và Dạ lý hương. Nữ tính và mượt mà, Gucci Bloom Nettare Di Fiori uyển chuyển nhảy múa trong khứu giác của chúng ta, vẽ nên những nét nữ tính thanh thoát trên nền gợi cảm của Xạ hương.  Và đó, tất cả những nét hương ấy đã hòa quyện lại với nhau, tạo thành một mùi hương nữ tính cho các nàng tiểu thư trẻ tuổi, gọn gàng, e ấp.','admin'),(49,'test','Gucci','2023-05-28',2,3,30,'nuochoanu',' active','demo_sp_admin.png','Pháp',2,'test','admin');
/*!40000 ALTER TABLE `nuoc_hoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_order`
--

DROP TABLE IF EXISTS `sp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sp_order` (
  `idsp_order` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `diachi` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sdt` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sp_ten` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `thuong_hieu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gia` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phuong_thuc_thanh_toan` varchar(100) DEFAULT NULL,
  `ngay_dat_hang` date DEFAULT NULL,
  PRIMARY KEY (`idsp_order`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_order`
--

LOCK TABLES `sp_order` WRITE;
/*!40000 ALTER TABLE `sp_order` DISABLE KEYS */;
INSERT INTO `sp_order` VALUES (22,'SP_ORD_00418','Ngô Thị Trang Nhung','nhung@gmail.com','Nghệ AN,Hoàng Mai,Phường Mai Hùng,104/10C','0983793713','Nước Hoa Miss Dior Eau De Parfum','Dior','980000.0','online','2023-06-03'),(23,'SP_ORD_00669','Ngô Thị Trang Nhung','ngothitrangnhung@gmail.com','Nghệ An,Thị xã Hoàng Mai,Mai Hùng,146/7D','0333869909','Chanel Allure Homme Sport EDT','Gucci','1450000.0','nhanhang','2023-06-06'),(24,'SP_ORD_00685','Ngô Thị Trang Nhung','nhungngo@gmail.com','Nghệ AN,Thị xã Hoàng Mai,Phường Mai Hùng,146/7D','0983793713','Chanel Allure Homme Sport EDT','Gucci','1450000.0','nhanhang','2023-06-06');
/*!40000 ALTER TABLE `sp_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-09 14:19:31
