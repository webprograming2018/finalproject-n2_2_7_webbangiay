/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 30/12/2018 21:52:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `total` double NULL DEFAULT NULL,
  `numberCard` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  `fullName` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bill_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (1545760947234, 1, 300, NULL, 'Viet Nam', '2018-12-26 01:02:27', NULL, 'Thai Binh');
INSERT INTO `bill` VALUES (1545761004424, 1, 300, NULL, 'Viet Nam', '2018-12-26 01:03:24', NULL, 'Thai Binh');
INSERT INTO `bill` VALUES (1545817597827, 1, 335, NULL, 'Viet Nam', '2018-12-26 16:46:38', NULL, 'Thai Binh');
INSERT INTO `bill` VALUES (1545849335512, 1, 290, NULL, 'Viet Nam', '2018-12-27 01:35:36', NULL, 'Thai Binh');
INSERT INTO `bill` VALUES (1545893747008, 1, 765, NULL, 'Viet Nam', '2018-12-27 13:55:47', NULL, 'Thai Binh');
INSERT INTO `bill` VALUES (1545893887060, 1, 765, NULL, 'Viet Nam', '2018-12-27 13:58:07', NULL, 'Thai Binh');
INSERT INTO `bill` VALUES (1545894011058, 1, 765, NULL, 'Viet Nam', '2018-12-27 14:00:11', NULL, 'Thai Binh');
INSERT INTO `bill` VALUES (1545894051284, 1, 765, NULL, 'Viet Nam', '2018-12-27 14:00:51', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1545894155067, 1, 765, NULL, 'Viet Nam', '2018-12-27 14:02:35', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1545894159370, 1, 765, NULL, 'Viet Nam', '2018-12-27 14:02:39', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1545894174340, 1, 765, NULL, 'Viet Nam', '2018-12-27 14:02:54', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1545894277770, 1, 765, '1111-2222-3333-4444', 'Viet Nam', '2018-12-27 14:04:38', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1545969663689, 1, 935, '1111-2222-3333-5555', 'Viet Nam', '2018-12-28 11:01:04', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1545969761097, 1, 935, '1111-2222-3333-5555', 'Viet Nam', '2018-12-28 11:02:41', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1545969773198, 1, 935, '1111-2222-3333-5555', 'Viet Nam', '2018-12-28 11:02:53', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546027462729, 1, 300, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 03:04:23', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546027564934, 1, 300, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 03:06:05', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546071380116, 1, 335, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 15:16:20', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546074895324, 1, 600, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 16:14:55', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546075462846, 1, 300, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 16:24:23', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546077555834, 1, 300, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 16:59:16', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546077711737, 1, 300, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 17:01:52', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546077838095, 1, 465, '1111-2222-3333-5555', 'Viet Nam', '2018-12-29 17:03:58', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546078133152, 1, 785, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 17:08:53', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546079169093, 3, 300, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 17:26:09', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546079368245, 3, 765, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 17:29:28', 'Vu Hong Anh', 'Thai Binh');
INSERT INTO `bill` VALUES (1546094725604, 3, 635, '', '', '2018-12-29 21:45:26', '', '');
INSERT INTO `bill` VALUES (1546095050389, 3, 935, '1111-2222-3333-4444', 'Viet Nam', '2018-12-29 21:50:50', 'Vu Hong Anh', 'Thai Binh');

-- ----------------------------
-- Table structure for bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE `bill_detail`  (
  `bill_detail_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) NULL DEFAULT NULL,
  `product_id` bigint(20) NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `createday` date NULL DEFAULT NULL,
  PRIMARY KEY (`bill_detail_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill_detail
-- ----------------------------
INSERT INTO `bill_detail` VALUES (1546094725604, 1546094725604, 19, 335, 1, '2018-12-29');
INSERT INTO `bill_detail` VALUES (1546095050389, 1546095050389, 19, 335, 1, '2018-12-29');

-- ----------------------------
-- Table structure for date
-- ----------------------------
DROP TABLE IF EXISTS `date`;
CREATE TABLE `date`  (
  `id` int(11) NOT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of date
-- ----------------------------
INSERT INTO `date` VALUES (1, '2018-12-29');

-- ----------------------------
-- Table structure for loaisanpham
-- ----------------------------
DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE `loaisanpham`  (
  `Maloai` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Tenloai` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `Manhacungcap` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `Mota` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Maloai`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loaisanpham
-- ----------------------------
INSERT INTO `loaisanpham` VALUES ('DC-2017', 'Đi chơi', 'NCC-ADIDAS-001', 'Dùng để đi chơi những nơi sang trọn');
INSERT INTO `loaisanpham` VALUES ('TT-2017', 'Thể thao', 'NCC-NIKE-001', 'Dùng để tập thể dục');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `price` float(10, 2) NULL DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `like` int(255) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Air Jordan 12 Retro \"Gym Red\"', 245.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-12-RETRO-GYM-RED-');
INSERT INTO `product` VALUES (2, 'AIR JORDAN 11 RETRO \"PLATINUM TINT\"', 235.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-11-RETRO-PLATINUM-TINT-');
INSERT INTO `product` VALUES (3, 'AIR JORDAN 3 RETRO OG \"BLACK CEMENT\"', 290.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-3-RETRO-OG-BLACK-CEMENT-');
INSERT INTO `product` VALUES (4, 'AIR JORDAN 13 RETRO \"BRED\"', 215.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-13-RETRO-BRED-');
INSERT INTO `product` VALUES (5, 'AIR JORDAN 11 RETRO \"WIN LIKE \'82\"', 310.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-11-RETRO-WIN-LIKE-82-');
INSERT INTO `product` VALUES (6, 'AIR JORDAN 11 RETRO \"WIN LIKE ’96\"', 375.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-11-RETRO-WIN-LIKE-96-');
INSERT INTO `product` VALUES (7, 'AIR FOAMPOSITE PRO', 245.00, 'NIKE', 0, 'images/AIR-FOAMPOSITE-PRO-');
INSERT INTO `product` VALUES (8, 'AIR VAPORMAX PLUS \"USA\"', 250.00, 'NIKE', 0, 'images/AIR-VAPORMAX-PLUS-USA-');
INSERT INTO `product` VALUES (9, 'AIR MAX 95', 149.00, 'NIKE', 0, 'images/AIR-MAX-95-');
INSERT INTO `product` VALUES (10, 'NIKE AIR MAX 97 OG QS \"2017 RELEASE\"', 250.00, 'NIKE', 0, 'images/NIKE-AIR-MAX-97-OG-QS-2017-RELEASE-');
INSERT INTO `product` VALUES (11, 'AIR FORCE 1 \'07 LV8 UTILITY', 215.00, 'NIKE', 0, 'images/AIR-FORCE-1-07-LV8-UTILITY-');
INSERT INTO `product` VALUES (12, 'AIR FORCE 1 \'07', 100.00, 'NIKE', 0, 'images/AIR-FORCE-1-07-');
INSERT INTO `product` VALUES (13, 'YEEZY BOOST 350 V2 \"SESAME\"', 265.00, 'ADIDAS', 0, 'images/YEEZY-BOOST-350-V2-SESAME-');
INSERT INTO `product` VALUES (14, 'YEEZY BOOST 350 V2 \"ZEBRA\"', 400.00, 'ADIDAS', 0, 'images/YEEZY-BOOST-350-V2-ZEBRA-');
INSERT INTO `product` VALUES (15, 'YEEZY BOOST 700 \"WAVE RUNNER\"', 300.00, 'ADIDAS', 0, 'images/YEEZY-BOOST-700-WAVE-RUNNER-');
INSERT INTO `product` VALUES (16, 'ADIDAS YEEZY BOOST 350 V2 \"FROZEN YELLOW\"', 300.00, 'ADIDAS', 0, 'images/ADIDAS-YEEZY-BOOST-350-V2-FROZEN-YELLOW-');
INSERT INTO `product` VALUES (17, 'YEEZY BOOST 350 V2 \"CREAM\"', 495.00, 'ADIDAS', 0, 'images/YEEZY-BOOST-350-V2-CREAM-');
INSERT INTO `product` VALUES (18, 'PW SOLAR HU NMD \"INSPIRATION PACK\"', 415.00, 'ADIDAS', 0, 'images/PW-SOLAR-HU-NMD-INSPIRATION-PACK-');
INSERT INTO `product` VALUES (19, 'AIR JORDAN 11 RETRO \"CONCORD 2018 RELEASE\"', 335.00, 'AIR JORDAN', 0, 'images/AIRJORDAN11RETROCONCORD2018RELEASE-');
INSERT INTO `product` VALUES (20, 'YEEZY BOOST 350 V2 \"SESAME\"', 300.00, 'ADIDAS', 0, 'images/YEEZYBOOST350V2SESAME-');
INSERT INTO `product` VALUES (21, 'YEEZY BOOST 350 V2 \"ZEBRA\"', 465.00, 'ADIDAS', 0, 'images/YEEZY-BOOST-350-V2-ZEBRA-');
INSERT INTO `product` VALUES (22, 'ADIDAS YEEZY BOOST 350 V2 \"FROZEN YELLOW\"', 320.00, 'ADIDAS', 0, 'images/ADIDAS-YEEZY-BOOST-350-V2-FROZEN-YELLOW-');
INSERT INTO `product` VALUES (23, 'AIR JORDAN 12 RETRO WNTR', 300.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-12-RETRO-WNTR-');
INSERT INTO `product` VALUES (24, 'AIR JORDAN 3 \"MOCHA\"', 250.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-3-MOCHA-');
INSERT INTO `product` VALUES (25, 'AIR JORDAN 12 RETRO WNTR \"TRIPLE BLACK\"', 275.00, 'AIR JORDAN', 0, 'images/AIR-JORDAN-12-RETRO-WNTR-TRIPLE-BLACK-');
INSERT INTO `product` VALUES (26, 'AIR JORDAN 1 MID', 245.00, 'NIKE', 0, 'images/AIR-JORDAN-1-MID-');

-- ----------------------------
-- Table structure for product_user
-- ----------------------------
DROP TABLE IF EXISTS `product_user`;
CREATE TABLE `product_user`  (
  `iduser` bigint(255) NULL DEFAULT NULL,
  `idproduct` int(255) NULL DEFAULT NULL,
  `quantity` int(255) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_user
-- ----------------------------
INSERT INTO `product_user` VALUES (19, 1, 1);
INSERT INTO `product_user` VALUES (19, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 1);
INSERT INTO `product_user` VALUES (19, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 2);
INSERT INTO `product_user` VALUES (19, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 3);
INSERT INTO `product_user` VALUES (3, 1, 1);
INSERT INTO `product_user` VALUES (19, 1, 1);
INSERT INTO `product_user` VALUES (24, 1, 1);
INSERT INTO `product_user` VALUES (21, 1, 1);
INSERT INTO `product_user` VALUES (24, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 1);
INSERT INTO `product_user` VALUES (21, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 1);
INSERT INTO `product_user` VALUES (21, 1, 1);
INSERT INTO `product_user` VALUES (19, 1, 1);
INSERT INTO `product_user` VALUES (19, 1, 1);
INSERT INTO `product_user` VALUES (21, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 1);
INSERT INTO `product_user` VALUES (20, 1, 1);
INSERT INTO `product_user` VALUES (19, 1, 1);
INSERT INTO `product_user` VALUES (21, 1, 1);
INSERT INTO `product_user` VALUES (1, 19, 1);
INSERT INTO `product_user` VALUES (1, 21, 1);
INSERT INTO `product_user` VALUES (1, 24, 1);
INSERT INTO `product_user` VALUES (1, 20, 1);

-- ----------------------------
-- Table structure for productcolor
-- ----------------------------
DROP TABLE IF EXISTS `productcolor`;
CREATE TABLE `productcolor`  (
  `idproduct` int(255) NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productcolor
-- ----------------------------
INSERT INTO `productcolor` VALUES (1, 'red');
INSERT INTO `productcolor` VALUES (2, 'platinum');
INSERT INTO `productcolor` VALUES (3, 'black');
INSERT INTO `productcolor` VALUES (4, 'red');
INSERT INTO `productcolor` VALUES (5, 'black');
INSERT INTO `productcolor` VALUES (5, 'white');
INSERT INTO `productcolor` VALUES (6, 'red');
INSERT INTO `productcolor` VALUES (7, 'black');
INSERT INTO `productcolor` VALUES (8, 'red');
INSERT INTO `productcolor` VALUES (9, 'black');
INSERT INTO `productcolor` VALUES (10, 'brown');
INSERT INTO `productcolor` VALUES (11, 'black');
INSERT INTO `productcolor` VALUES (12, 'white');
INSERT INTO `productcolor` VALUES (13, 'white');
INSERT INTO `productcolor` VALUES (14, 'white');
INSERT INTO `productcolor` VALUES (14, 'white');
INSERT INTO `productcolor` VALUES (15, 'brown');
INSERT INTO `productcolor` VALUES (16, 'yellow');
INSERT INTO `productcolor` VALUES (17, 'white');
INSERT INTO `productcolor` VALUES (18, 'black');
INSERT INTO `productcolor` VALUES (18, 'white');
INSERT INTO `productcolor` VALUES (19, 'white');
INSERT INTO `productcolor` VALUES (19, 'black');
INSERT INTO `productcolor` VALUES (20, 'platinum');
INSERT INTO `productcolor` VALUES (21, 'white');
INSERT INTO `productcolor` VALUES (22, 'yellow');
INSERT INTO `productcolor` VALUES (23, 'black');
INSERT INTO `productcolor` VALUES (24, 'black');
INSERT INTO `productcolor` VALUES (24, 'white');
INSERT INTO `productcolor` VALUES (25, 'black');
INSERT INTO `productcolor` VALUES (26, 'orange');

-- ----------------------------
-- Table structure for productimg
-- ----------------------------
DROP TABLE IF EXISTS `productimg`;
CREATE TABLE `productimg`  (
  `idproduct` int(255) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productimg
-- ----------------------------
INSERT INTO `productimg` VALUES (1, 'images/AIR-JORDAN-12-RETRO-GYM RED-1.jpg');
INSERT INTO `productimg` VALUES (1, 'images/AIR-JORDAN-12-RETRO-GYM RED-2.jpg');
INSERT INTO `productimg` VALUES (1, 'images/AIR-JORDAN-12-RETRO-GYM RED-3.jpg');
INSERT INTO `productimg` VALUES (1, 'images/AIR-JORDAN-12-RETRO-GYM RED-4.jpg');
INSERT INTO `productimg` VALUES (2, 'images/AIR-JORDAN-11-RETRO-PLATINUM TINT-1.jpg');
INSERT INTO `productimg` VALUES (2, 'images/AIR-JORDAN-11-RETRO-PLATINUM TINT-2.jpg');
INSERT INTO `productimg` VALUES (2, 'images/AIR-JORDAN-11-RETRO-PLATINUM TINT-3.jpg');
INSERT INTO `productimg` VALUES (2, 'images/AIR-JORDAN-11-RETRO-PLATINUM TINT-4.jpg');
INSERT INTO `productimg` VALUES (3, 'images/AIR-JORDAN-3-RETRO-OG-BLACK CEMENT-1.jpg');
INSERT INTO `productimg` VALUES (3, 'images/AIR-JORDAN-3-RETRO-OG-BLACK CEMENT-2.jpg');
INSERT INTO `productimg` VALUES (3, 'imagesAIR-JORDAN-3-RETRO-OG-BLACK CEMENT-3.jpg');
INSERT INTO `productimg` VALUES (3, 'images/AIR-JORDAN-3-RETRO-OG-BLACK CEMENT-4.jpg');
INSERT INTO `productimg` VALUES (4, 'images/AIR-JORDAN-13-RETRO-BRED-1.jpg');

-- ----------------------------
-- Table structure for productsize
-- ----------------------------
DROP TABLE IF EXISTS `productsize`;
CREATE TABLE `productsize`  (
  `idsize` int(11) NULL DEFAULT NULL,
  `size` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productsize
-- ----------------------------
INSERT INTO `productsize` VALUES (1, 6);
INSERT INTO `productsize` VALUES (1, 6.5);
INSERT INTO `productsize` VALUES (1, 7);
INSERT INTO `productsize` VALUES (1, 7.5);
INSERT INTO `productsize` VALUES (2, 10);
INSERT INTO `productsize` VALUES (2, 10.5);
INSERT INTO `productsize` VALUES (2, 11);
INSERT INTO `productsize` VALUES (2, 11.5);
INSERT INTO `productsize` VALUES (3, 12);
INSERT INTO `productsize` VALUES (3, 12.5);
INSERT INTO `productsize` VALUES (3, 13);
INSERT INTO `productsize` VALUES (3, 13.5);
INSERT INTO `productsize` VALUES (4, 14);
INSERT INTO `productsize` VALUES (4, 15);
INSERT INTO `productsize` VALUES (4, 16);
INSERT INTO `productsize` VALUES (4, 16.5);
INSERT INTO `productsize` VALUES (4, 17);
INSERT INTO `productsize` VALUES (5, 6);
INSERT INTO `productsize` VALUES (5, 6.5);
INSERT INTO `productsize` VALUES (5, 7);
INSERT INTO `productsize` VALUES (5, 7.5);
INSERT INTO `productsize` VALUES (6, 8);
INSERT INTO `productsize` VALUES (6, 8.5);
INSERT INTO `productsize` VALUES (6, 9.5);
INSERT INTO `productsize` VALUES (6, 10);
INSERT INTO `productsize` VALUES (7, 10.5);
INSERT INTO `productsize` VALUES (7, 11);
INSERT INTO `productsize` VALUES (7, 11.5);
INSERT INTO `productsize` VALUES (7, 12);
INSERT INTO `productsize` VALUES (8, 12.5);
INSERT INTO `productsize` VALUES (8, 13);
INSERT INTO `productsize` VALUES (8, 13.5);
INSERT INTO `productsize` VALUES (8, 14);
INSERT INTO `productsize` VALUES (9, 15);
INSERT INTO `productsize` VALUES (9, 16);
INSERT INTO `productsize` VALUES (9, 16.5);
INSERT INTO `productsize` VALUES (9, 17);
INSERT INTO `productsize` VALUES (10, 6);
INSERT INTO `productsize` VALUES (10, 6.5);
INSERT INTO `productsize` VALUES (10, 7.5);
INSERT INTO `productsize` VALUES (11, 11);
INSERT INTO `productsize` VALUES (11, 11.5);
INSERT INTO `productsize` VALUES (12, 12);
INSERT INTO `productsize` VALUES (12, 12.5);
INSERT INTO `productsize` VALUES (13, 13);
INSERT INTO `productsize` VALUES (13, 13.5);
INSERT INTO `productsize` VALUES (14, 14);
INSERT INTO `productsize` VALUES (14, 15);
INSERT INTO `productsize` VALUES (15, 16);
INSERT INTO `productsize` VALUES (15, 16.5);
INSERT INTO `productsize` VALUES (16, 6);
INSERT INTO `productsize` VALUES (16, 7);
INSERT INTO `productsize` VALUES (17, 11);
INSERT INTO `productsize` VALUES (17, 13);
INSERT INTO `productsize` VALUES (18, 14);
INSERT INTO `productsize` VALUES (18, 15);
INSERT INTO `productsize` VALUES (19, 8.5);
INSERT INTO `productsize` VALUES (20, 4.5);
INSERT INTO `productsize` VALUES (20, 6);
INSERT INTO `productsize` VALUES (21, 13);
INSERT INTO `productsize` VALUES (21, 16);
INSERT INTO `productsize` VALUES (22, 14);
INSERT INTO `productsize` VALUES (22, 13);
INSERT INTO `productsize` VALUES (23, 14);
INSERT INTO `productsize` VALUES (23, 15);
INSERT INTO `productsize` VALUES (24, 8);
INSERT INTO `productsize` VALUES (24, 11.5);
INSERT INTO `productsize` VALUES (25, 11.2);
INSERT INTO `productsize` VALUES (25, 10);
INSERT INTO `productsize` VALUES (26, 9.5);

-- ----------------------------
-- Table structure for thongtinsanpham
-- ----------------------------
DROP TABLE IF EXISTS `thongtinsanpham`;
CREATE TABLE `thongtinsanpham`  (
  `Masanpham` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Mota1` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `Mota2` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `Mota3` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `Mota4` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `Mota5` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `Hinhanhchitiet` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Masanpham`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thongtinsanpham
-- ----------------------------
INSERT INTO `thongtinsanpham` VALUES ('ADIDAS003', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `thongtinsanpham` VALUES ('AT009', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `thongtinsanpham` VALUES ('BA006', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `thongtinsanpham` VALUES ('CO002', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `thongtinsanpham` VALUES ('F007', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `thongtinsanpham` VALUES ('KS007', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `thongtinsanpham` VALUES ('LN002', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `thongtinsanpham` VALUES ('PUMA006', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `thongtinsanpham` VALUES ('RE009', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` bigint(20) NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `user_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `user_role` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'diepvusinhtu1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', b'1');
INSERT INTO `users` VALUES (2, 'blogkenhlaptrinh@gmail.com', '01cfcd4f6b8770febfb40cb906715822', b'1');
INSERT INTO `users` VALUES (3, 'honganhvu97@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', b'1');

SET FOREIGN_KEY_CHECKS = 1;
