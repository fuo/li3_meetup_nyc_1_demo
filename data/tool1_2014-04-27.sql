/*
Navicat MySQL Data Transfer

Source Server         : tool1
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : tool1

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-04-27 22:50:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bundles`
-- ----------------------------
DROP TABLE IF EXISTS `bundles`;
CREATE TABLE `bundles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(127) NOT NULL,
  `shipment_date` date NOT NULL,
  `email_id` int(11) DEFAULT NULL,
  `repeat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bundles
-- ----------------------------
INSERT INTO bundles VALUES ('4', '8', 'BEAUTY - MAY 2014 -TLHP', '2014-05-06', '94', null);
INSERT INTO bundles VALUES ('5', '9', 'BABY - MAY 2014 -THD', '2014-04-29', null, null);
INSERT INTO bundles VALUES ('6', '10', 'BABY - MAY 2014  - LTT', '2014-04-06', null, null);
INSERT INTO bundles VALUES ('7', '11', 'BEAUTY - MAY 2014 - TTMT', '2014-04-29', null, null);
INSERT INTO bundles VALUES ('8', '12', 'MOTHER TO BE  - MAY 2014 - TTT', '2014-05-02', '92', null);
INSERT INTO bundles VALUES ('11', '16', 'MEN - MAY 2014 - NQT', '2014-04-30', '32', null);
INSERT INTO bundles VALUES ('13', '23', 'LAMDEP4', '2014-04-05', null, null);
INSERT INTO bundles VALUES ('14', '22', 'GIADINH3', '2014-04-07', '34', null);
INSERT INTO bundles VALUES ('15', '26', 'MEBAU2', '2014-05-09', null, null);
INSERT INTO bundles VALUES ('16', '30', 'LAMDEP5', '2014-04-06', null, null);
INSERT INTO bundles VALUES ('18', '27', 'LAMDEP7', '2014-05-09', null, null);
INSERT INTO bundles VALUES ('20', '36', 'EMBE4', '2014-05-09', null, null);
INSERT INTO bundles VALUES ('21', '50', 'GIADINH4', '2014-04-05', null, null);
INSERT INTO bundles VALUES ('22', '34', 'EMBE5', '2014-04-29', null, null);
INSERT INTO bundles VALUES ('23', '24', 'LAMDEP7', '2014-05-10', null, null);
INSERT INTO bundles VALUES ('24', '53', 'GIADINH5', '2014-05-07', null, null);
INSERT INTO bundles VALUES ('25', '52', 'GIADINH6', '2014-05-08', null, null);
INSERT INTO bundles VALUES ('26', '51', 'GIADINH7', '2014-05-05', null, null);
INSERT INTO bundles VALUES ('27', '49', 'LAMDEP8', '2014-05-07', null, null);
INSERT INTO bundles VALUES ('29', '54', 'GIADINH8', '2014-05-14', null, null);
INSERT INTO bundles VALUES ('30', '35', 'GIADINH9', '2014-05-08', null, null);
INSERT INTO bundles VALUES ('31', '55', 'GIADINH10', '2014-04-11', null, null);
INSERT INTO bundles VALUES ('32', '56', 'THIS IS TEST BOX (DON\'T TOUCH)', '2014-04-24', '91', null);
INSERT INTO bundles VALUES ('33', '57', 'GIADINH11', '2014-04-08', null, null);
INSERT INTO bundles VALUES ('34', '58', 'LAMDEP10', '2014-04-14', null, null);
INSERT INTO bundles VALUES ('35', '59', 'EMBE6', '2014-04-15', null, null);
INSERT INTO bundles VALUES ('37', '60', 'LAMDEP12', '2014-04-16', null, null);
INSERT INTO bundles VALUES ('38', '61', 'GIADINH12', '2014-05-17', null, null);
INSERT INTO bundles VALUES ('40', '62', 'GIADINH14', '2014-05-17', null, null);
INSERT INTO bundles VALUES ('41', '63', 'LAMDEP13', '2014-05-16', null, null);

-- ----------------------------
-- Table structure for `bundle_details`
-- ----------------------------
DROP TABLE IF EXISTS `bundle_details`;
CREATE TABLE `bundle_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bundle_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `product_unit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bundle_details
-- ----------------------------
INSERT INTO bundle_details VALUES ('5', '4', '10', '1', '19');
INSERT INTO bundle_details VALUES ('6', '4', '11', '1', '20');
INSERT INTO bundle_details VALUES ('7', '4', '9', '1', '18');
INSERT INTO bundle_details VALUES ('8', '4', '12', '1', '21');
INSERT INTO bundle_details VALUES ('9', '5', '14', '1', '23');
INSERT INTO bundle_details VALUES ('10', '5', '13', '2', '22');
INSERT INTO bundle_details VALUES ('11', '6', '15', '3', '24');
INSERT INTO bundle_details VALUES ('12', '6', '16', '2', '25');
INSERT INTO bundle_details VALUES ('13', '7', '18', '1', '27');
INSERT INTO bundle_details VALUES ('14', '7', '17', '1', '26');
INSERT INTO bundle_details VALUES ('15', '7', '19', '2', '28');
INSERT INTO bundle_details VALUES ('16', '7', '20', '2', '29');
INSERT INTO bundle_details VALUES ('17', '8', '21', '2', '30');
INSERT INTO bundle_details VALUES ('25', '11', '28', '1', '37');
INSERT INTO bundle_details VALUES ('26', '11', '26', '1', '35');
INSERT INTO bundle_details VALUES ('27', '11', '22', '1', '31');
INSERT INTO bundle_details VALUES ('28', '11', '23', '1', '32');
INSERT INTO bundle_details VALUES ('29', '11', '24', '2', '33');
INSERT INTO bundle_details VALUES ('30', '11', '25', '1', '34');
INSERT INTO bundle_details VALUES ('31', '11', '27', '1', '36');
INSERT INTO bundle_details VALUES ('32', '11', '29', '1', '38');
INSERT INTO bundle_details VALUES ('33', '11', '30', '1', '39');
INSERT INTO bundle_details VALUES ('34', '13', '9', '1', '18');
INSERT INTO bundle_details VALUES ('35', '13', '32', '3', '41');
INSERT INTO bundle_details VALUES ('36', '14', '33', '1', '42');
INSERT INTO bundle_details VALUES ('37', '14', '19', '4', '28');
INSERT INTO bundle_details VALUES ('38', '14', '20', '2', '29');
INSERT INTO bundle_details VALUES ('40', '14', '36', '4', '45');
INSERT INTO bundle_details VALUES ('42', '14', '37', '1', '46');
INSERT INTO bundle_details VALUES ('43', '15', '39', '1', '48');
INSERT INTO bundle_details VALUES ('44', '15', '40', '1', '49');
INSERT INTO bundle_details VALUES ('45', '4', '41', '1', '50');
INSERT INTO bundle_details VALUES ('47', '4', '45', '1', '54');
INSERT INTO bundle_details VALUES ('48', '15', '46', '2', '55');
INSERT INTO bundle_details VALUES ('49', '16', '47', '1', '56');
INSERT INTO bundle_details VALUES ('50', '16', '41', '2', '50');
INSERT INTO bundle_details VALUES ('51', '16', '46', '1', '55');
INSERT INTO bundle_details VALUES ('52', '16', '45', '1', '54');
INSERT INTO bundle_details VALUES ('53', '18', '48', '1', '57');
INSERT INTO bundle_details VALUES ('54', '18', '45', '2', '54');
INSERT INTO bundle_details VALUES ('55', '18', '50', '1', '59');
INSERT INTO bundle_details VALUES ('56', '20', '51', '2', '60');
INSERT INTO bundle_details VALUES ('57', '20', '52', '1', '61');
INSERT INTO bundle_details VALUES ('58', '21', '48', '1', '57');
INSERT INTO bundle_details VALUES ('59', '21', '41', '1', '50');
INSERT INTO bundle_details VALUES ('60', '21', '45', '2', '54');
INSERT INTO bundle_details VALUES ('61', '21', '53', '1', '62');
INSERT INTO bundle_details VALUES ('62', '22', '52', '1', '61');
INSERT INTO bundle_details VALUES ('63', '22', '48', '1', '57');
INSERT INTO bundle_details VALUES ('64', '22', '41', '1', '50');
INSERT INTO bundle_details VALUES ('65', '22', '45', '1', '54');
INSERT INTO bundle_details VALUES ('66', '22', '46', '1', '55');
INSERT INTO bundle_details VALUES ('67', '24', '55', '2', '64');
INSERT INTO bundle_details VALUES ('68', '24', '54', '2', '63');
INSERT INTO bundle_details VALUES ('69', '24', '56', '1', '65');
INSERT INTO bundle_details VALUES ('70', '24', '48', '1', '57');
INSERT INTO bundle_details VALUES ('71', '24', '57', '1', '66');
INSERT INTO bundle_details VALUES ('72', '24', '58', '1', '67');
INSERT INTO bundle_details VALUES ('73', '21', '59', '1', '68');
INSERT INTO bundle_details VALUES ('76', '25', '60', '2', '69');
INSERT INTO bundle_details VALUES ('78', '25', '57', '1', '66');
INSERT INTO bundle_details VALUES ('79', '25', '16', '2', '25');
INSERT INTO bundle_details VALUES ('80', '25', '14', '1', '23');
INSERT INTO bundle_details VALUES ('81', '26', '33', '1', '42');
INSERT INTO bundle_details VALUES ('82', '26', '61', '2', '70');
INSERT INTO bundle_details VALUES ('83', '26', '55', '2', '64');
INSERT INTO bundle_details VALUES ('84', '26', '62', '1', '71');
INSERT INTO bundle_details VALUES ('85', '23', '33', '1', '42');
INSERT INTO bundle_details VALUES ('86', '23', '19', '3', '28');
INSERT INTO bundle_details VALUES ('87', '23', '45', '2', '54');
INSERT INTO bundle_details VALUES ('88', '23', '63', '1', '72');
INSERT INTO bundle_details VALUES ('89', '23', '64', '1', '73');
INSERT INTO bundle_details VALUES ('90', '23', '10', '1', '19');
INSERT INTO bundle_details VALUES ('92', '27', '19', '2', '28');
INSERT INTO bundle_details VALUES ('94', '27', '45', '1', '54');
INSERT INTO bundle_details VALUES ('95', '27', '65', '1', '74');
INSERT INTO bundle_details VALUES ('97', '29', '19', '2', '28');
INSERT INTO bundle_details VALUES ('98', '29', '20', '2', '29');
INSERT INTO bundle_details VALUES ('99', '29', '66', '1', '75');
INSERT INTO bundle_details VALUES ('100', '30', '19', '2', '28');
INSERT INTO bundle_details VALUES ('101', '30', '20', '2', '29');
INSERT INTO bundle_details VALUES ('102', '30', '33', '1', '42');
INSERT INTO bundle_details VALUES ('103', '30', '67', '1', '76');
INSERT INTO bundle_details VALUES ('104', '27', '33', '1', '42');
INSERT INTO bundle_details VALUES ('105', '31', '33', '1', '42');
INSERT INTO bundle_details VALUES ('106', '31', '19', '2', '28');
INSERT INTO bundle_details VALUES ('107', '31', '45', '2', '54');
INSERT INTO bundle_details VALUES ('108', '31', '41', '1', '50');
INSERT INTO bundle_details VALUES ('114', '32', '25', '1', '34');
INSERT INTO bundle_details VALUES ('115', '32', '41', '1', '50');
INSERT INTO bundle_details VALUES ('116', '32', '54', '1', '63');
INSERT INTO bundle_details VALUES ('117', '32', '13', '1', '22');
INSERT INTO bundle_details VALUES ('118', '32', '37', '1', '46');
INSERT INTO bundle_details VALUES ('119', '32', '29', '1', '38');
INSERT INTO bundle_details VALUES ('121', '33', '33', '1', '42');
INSERT INTO bundle_details VALUES ('122', '33', '61', '1', '70');
INSERT INTO bundle_details VALUES ('123', '33', '54', '1', '63');
INSERT INTO bundle_details VALUES ('124', '33', '24', '1', '33');
INSERT INTO bundle_details VALUES ('125', '33', '45', '1', '54');
INSERT INTO bundle_details VALUES ('126', '33', '19', '2', '28');
INSERT INTO bundle_details VALUES ('127', '33', '25', '2', '34');
INSERT INTO bundle_details VALUES ('128', '34', '67', '1', '76');
INSERT INTO bundle_details VALUES ('129', '34', '59', '1', '68');
INSERT INTO bundle_details VALUES ('130', '34', '33', '1', '42');
INSERT INTO bundle_details VALUES ('131', '34', '45', '1', '54');
INSERT INTO bundle_details VALUES ('132', '34', '19', '2', '28');
INSERT INTO bundle_details VALUES ('133', '34', '61', '1', '70');
INSERT INTO bundle_details VALUES ('134', '34', '63', '1', '72');
INSERT INTO bundle_details VALUES ('135', '34', '25', '1', '34');
INSERT INTO bundle_details VALUES ('136', '35', '13', '1', '22');
INSERT INTO bundle_details VALUES ('137', '35', '48', '1', '57');
INSERT INTO bundle_details VALUES ('138', '35', '19', '2', '28');
INSERT INTO bundle_details VALUES ('139', '35', '20', '1', '29');
INSERT INTO bundle_details VALUES ('140', '35', '54', '1', '63');
INSERT INTO bundle_details VALUES ('141', '35', '57', '1', '66');
INSERT INTO bundle_details VALUES ('142', '37', '48', '1', '57');
INSERT INTO bundle_details VALUES ('143', '37', '19', '2', '28');
INSERT INTO bundle_details VALUES ('144', '37', '20', '1', '29');
INSERT INTO bundle_details VALUES ('145', '37', '68', '1', '77');
INSERT INTO bundle_details VALUES ('146', '37', '63', '1', '72');
INSERT INTO bundle_details VALUES ('147', '37', '25', '1', '34');
INSERT INTO bundle_details VALUES ('148', '37', '65', '1', '74');
INSERT INTO bundle_details VALUES ('149', '38', '24', '1', '33');
INSERT INTO bundle_details VALUES ('150', '38', '54', '1', '63');
INSERT INTO bundle_details VALUES ('151', '38', '25', '1', '34');
INSERT INTO bundle_details VALUES ('152', '38', '61', '1', '70');
INSERT INTO bundle_details VALUES ('153', '38', '73', '1', '82');
INSERT INTO bundle_details VALUES ('154', '40', '61', '1', '70');
INSERT INTO bundle_details VALUES ('155', '40', '54', '1', '63');
INSERT INTO bundle_details VALUES ('156', '40', '24', '1', '33');
INSERT INTO bundle_details VALUES ('157', '40', '25', '1', '34');
INSERT INTO bundle_details VALUES ('158', '40', '56', '1', '65');
INSERT INTO bundle_details VALUES ('159', '40', '74', '1', '83');
INSERT INTO bundle_details VALUES ('160', '41', '59', '1', '68');
INSERT INTO bundle_details VALUES ('161', '41', '19', '2', '28');
INSERT INTO bundle_details VALUES ('162', '41', '20', '1', '29');
INSERT INTO bundle_details VALUES ('163', '41', '53', '1', '62');
INSERT INTO bundle_details VALUES ('164', '41', '54', '1', '63');
INSERT INTO bundle_details VALUES ('165', '41', '25', '1', '34');
INSERT INTO bundle_details VALUES ('166', '41', '61', '1', '70');

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `default_unit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO categories VALUES ('1', 'BABY', null, null);
INSERT INTO categories VALUES ('2', 'BEAUTY', null, null);
INSERT INTO categories VALUES ('3', 'MOTHER TO BE', null, null);
INSERT INTO categories VALUES ('8', 'FAMILY', null, null);
INSERT INTO categories VALUES ('14', 'Dinh Dưỡng Bà Bầu', '3', null);
INSERT INTO categories VALUES ('15', 'Chăm Sóc Cơ Thể', '3', null);
INSERT INTO categories VALUES ('16', 'Thai Giáo', '3', null);
INSERT INTO categories VALUES ('17', 'Sữa Bầu', '14', null);
INSERT INTO categories VALUES ('18', 'Đồ Ăn Bổ Sung', '14', null);
INSERT INTO categories VALUES ('19', 'Vitamins', '14', null);
INSERT INTO categories VALUES ('20', 'Vệ Sinh ba bau', '15', null);
INSERT INTO categories VALUES ('21', 'Dưỡng Da me bau', '15', null);
INSERT INTO categories VALUES ('22', 'Massage', '15', null);
INSERT INTO categories VALUES ('23', 'Sách', '16', null);
INSERT INTO categories VALUES ('24', 'Khoá Học', '16', null);
INSERT INTO categories VALUES ('25', 'Tã Em Bé', '1', null);
INSERT INTO categories VALUES ('26', 'Vệ Sinh em be', '1', null);
INSERT INTO categories VALUES ('27', 'Đồ Chơi', '1', null);
INSERT INTO categories VALUES ('28', 'Blog Posts', null, null);
INSERT INTO categories VALUES ('29', 'Tâm Sự', '28', null);
INSERT INTO categories VALUES ('30', 'Vào Bếp', '28', null);
INSERT INTO categories VALUES ('31', 'Làm Đẹp', '28', null);
INSERT INTO categories VALUES ('32', 'Yêu Con', '28', null);
INSERT INTO categories VALUES ('33', 'Chăm Sóc Da', '2', null);
INSERT INTO categories VALUES ('34', 'Trang Điểm', '2', null);
INSERT INTO categories VALUES ('35', 'Thư Giãn', '2', null);
INSERT INTO categories VALUES ('36', 'Thực Phẩm', '8', null);
INSERT INTO categories VALUES ('37', 'Vệ Sinh hang ngay', '8', null);
INSERT INTO categories VALUES ('38', 'Vitamins', '8', null);
INSERT INTO categories VALUES ('39', 'Vệ Sinh Cá Nhân', '20', null);
INSERT INTO categories VALUES ('40', 'Vệ Sinh Nhà Cửa', '20', null);
INSERT INTO categories VALUES ('42', 'Dinh Dưỡng Em Bé', '1', null);
INSERT INTO categories VALUES ('43', 'Đồ Khô', '36', null);
INSERT INTO categories VALUES ('44', 'Sữa Em Bé', '42', null);
INSERT INTO categories VALUES ('45', 'Đồ Ăn Dặm', '42', null);
INSERT INTO categories VALUES ('46', 'Đồ Uống', '42', null);
INSERT INTO categories VALUES ('47', 'Vitamins', '42', null);
INSERT INTO categories VALUES ('48', 'Men Underwear', '51', '2');
INSERT INTO categories VALUES ('49', 'Shaving products', '51', '2');
INSERT INTO categories VALUES ('50', 'Vệ Sinh Cá Nhân Nam', '51', null);
INSERT INTO categories VALUES ('51', 'MEN', null, null);
INSERT INTO categories VALUES ('53', 'fragrance', '2', null);
INSERT INTO categories VALUES ('54', 'Hair products', '2', null);
INSERT INTO categories VALUES ('55', 'Body', '2', null);
INSERT INTO categories VALUES ('56', 'Nail', '2', null);
INSERT INTO categories VALUES ('57', 'Chống Lão Hóa', '33', null);
INSERT INTO categories VALUES ('58', 'BB Cream', '33', null);
INSERT INTO categories VALUES ('59', 'CC Cream', '33', null);
INSERT INTO categories VALUES ('60', 'Rửa mặt', '33', null);
INSERT INTO categories VALUES ('61', 'Tẩy Da Chết', '33', null);
INSERT INTO categories VALUES ('62', 'Dưỡng mắt', '33', null);
INSERT INTO categories VALUES ('63', 'Son dưỡng môi', '33', null);
INSERT INTO categories VALUES ('64', 'Kem giữ ẩm', '33', null);
INSERT INTO categories VALUES ('65', 'Trị liệu da', '33', null);
INSERT INTO categories VALUES ('66', 'Nước hoa hồng toner', '33', null);
INSERT INTO categories VALUES ('67', 'Serum', '33', null);
INSERT INTO categories VALUES ('68', 'Trị liệu Tóc', '54', null);
INSERT INTO categories VALUES ('69', 'Dầu gội ', '54', null);
INSERT INTO categories VALUES ('70', 'Dầu xả', '54', null);
INSERT INTO categories VALUES ('71', 'Dưỡng bóng', '54', null);
INSERT INTO categories VALUES ('72', 'Phấn mắt', '34', null);
INSERT INTO categories VALUES ('73', 'Kẻ Mắt', '34', null);
INSERT INTO categories VALUES ('74', 'Kem lót', '34', null);
INSERT INTO categories VALUES ('75', 'Kem nền', '34', null);
INSERT INTO categories VALUES ('76', 'Son bóng dưỡng môi', '34', null);
INSERT INTO categories VALUES ('77', 'Chì kẻ viền môi', '34', null);
INSERT INTO categories VALUES ('78', 'Son', '34', null);
INSERT INTO categories VALUES ('79', 'Kem tẩy trang', '34', null);
INSERT INTO categories VALUES ('80', 'Phấn má blusher', '34', null);
INSERT INTO categories VALUES ('81', 'Che khuyết điểm', '34', null);
INSERT INTO categories VALUES ('82', 'Phấn phủ', '34', null);
INSERT INTO categories VALUES ('83', 'Chì kẻ lông mày', '34', null);
INSERT INTO categories VALUES ('84', 'Sữa tắm', '55', null);
INSERT INTO categories VALUES ('85', 'Xà phòng', '55', null);
INSERT INTO categories VALUES ('86', 'Lăn nách', '55', null);
INSERT INTO categories VALUES ('87', 'Xịt khử mùi', '55', null);
INSERT INTO categories VALUES ('88', 'Kem dưỡng da tay', '55', null);
INSERT INTO categories VALUES ('89', 'Kem dưỡng chân', '55', null);
INSERT INTO categories VALUES ('90', 'Sữa dưỡng thể', '55', null);
INSERT INTO categories VALUES ('91', 'Kem dưỡng thể', '55', null);
INSERT INTO categories VALUES ('92', 'Kem làm tan mỡ ', '55', null);
INSERT INTO categories VALUES ('93', 'Sơn móng', '56', null);
INSERT INTO categories VALUES ('94', 'Sơn bóng', '56', null);
INSERT INTO categories VALUES ('95', 'Nước hoa', '53', null);

-- ----------------------------
-- Table structure for `components`
-- ----------------------------
DROP TABLE IF EXISTS `components`;
CREATE TABLE `components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('Feature') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Feature',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of components
-- ----------------------------
INSERT INTO components VALUES ('1', 'Nước', 'Feature');
INSERT INTO components VALUES ('2', 'Nước Cân Bằng Ngừa Mụn Và Kiểm Soát Dầu', 'Feature');
INSERT INTO components VALUES ('3', 'The Face Shop', 'Feature');
INSERT INTO components VALUES ('4', 'dành cho trẻ từ 1 đến 3 tuổi', 'Feature');
INSERT INTO components VALUES ('5', 'Quần lót FREEMAN', 'Feature');
INSERT INTO components VALUES ('6', 'Khăn Mollis', 'Feature');
INSERT INTO components VALUES ('7', 'Bàn chải', 'Feature');
INSERT INTO components VALUES ('8', 'Khăn Tắm Mollis', 'Feature');
INSERT INTO components VALUES ('9', 'Xà phòng Coast', 'Feature');
INSERT INTO components VALUES ('10', 'Tác động kép ', 'Feature');
INSERT INTO components VALUES ('11', 'Dầu gội trị gàu cho nam', 'Feature');
INSERT INTO components VALUES ('12', 'Kem đánh răng', 'Feature');
INSERT INTO components VALUES ('13', 'Chỉ nha khoa Oral-B', 'Feature');
INSERT INTO components VALUES ('14', 'xà phòng', 'Feature');
INSERT INTO components VALUES ('15', 'Quần lót nam', 'Feature');
INSERT INTO components VALUES ('16', 'Hộp Bột Nặn Nhỏ Hương Trái Cây', 'Feature');
INSERT INTO components VALUES ('17', 'Hoa lan chuông', 'Feature');
INSERT INTO components VALUES ('18', 'Cafe Việt Đen Hoà Tan', 'Feature');
INSERT INTO components VALUES ('19', 'Bột Đặc Trị Mụn', 'Feature');
INSERT INTO components VALUES ('20', 'AC Clinic', 'Feature');
INSERT INTO components VALUES ('21', 'Intense Pink Powder Spot', 'Feature');
INSERT INTO components VALUES ('22', 'Bột Đặc Trị Mụn AC Clinic Intense Pink Powder Spot', 'Feature');
INSERT INTO components VALUES ('23', 'Bột nặn hương trái cây', 'Feature');
INSERT INTO components VALUES ('24', 'Nước Hoa Hồng ', 'Feature');
INSERT INTO components VALUES ('25', 'Kem Dưỡng Da Mặt', 'Feature');
INSERT INTO components VALUES ('26', 'Băng vệ sinh ', 'Feature');
INSERT INTO components VALUES ('27', 'Băng Vệ Sinh Ban Đêm Super Long Tencel ', 'Feature');
INSERT INTO components VALUES ('28', 'Băng Vệ Sinh Hàng Ngày', 'Feature');
INSERT INTO components VALUES ('29', 'Gel Dưỡng Làm Giảm Bọng Mắt Rasberry Roots Depuffing Eye Gel', 'Feature');
INSERT INTO components VALUES ('30', 'Gel Làm Giảm Bọng Mắt - Rasberry Roots De-puffing eye', 'Feature');
INSERT INTO components VALUES ('31', 'Tinh Chất Trị Mụn Clean Face Clear', 'Feature');
INSERT INTO components VALUES ('32', 'Tinh Chất Trị Mụn Clean Face Clear Spot', 'Feature');
INSERT INTO components VALUES ('33', 'Gel Làm Giảm Bọng Mắt - Rasberry Roots Depuffing Eye Gel', 'Feature');
INSERT INTO components VALUES ('34', 'Gel', 'Feature');
INSERT INTO components VALUES ('35', 'Dung Dịch Vệ Sinh Phụ Nữ', 'Feature');
INSERT INTO components VALUES ('36', 'Tinh Chất Dưỡng Trắng Da Đặc Biệt Total Effects 7 in 1', 'Feature');
INSERT INTO components VALUES ('37', 'Sữa Bột Friso Gold dành cho trẻ từ 1 đến 3 tuổi', 'Feature');
INSERT INTO components VALUES ('38', 'Sữa Tắm Gội Hương Tre', 'Feature');
INSERT INTO components VALUES ('39', 'Combo Dầu Gội và Dầu Xả Dành Cho Tóc Hư Tổn Hương Hoa Hồng', 'Feature');
INSERT INTO components VALUES ('40', 'Kem đánh răng Bamboo Salt', 'Feature');
INSERT INTO components VALUES ('41', 'Xà bông tắm', 'Feature');
INSERT INTO components VALUES ('42', 'Xà bông tắm dưỡng da', 'Feature');
INSERT INTO components VALUES ('43', 'Lăn khử mùi nivea for men 48h', 'Feature');
INSERT INTO components VALUES ('44', 'Nước rửa tay', 'Feature');
INSERT INTO components VALUES ('45', 'Kẹo Hồng Sâm Ông Già Bà Lão', 'Feature');
INSERT INTO components VALUES ('46', 'Dưỡng Thể Hương Hoa Hồng ', 'Feature');
INSERT INTO components VALUES ('47', 'Sữa Tăng Cân Dành Cho Người Gầy Hương Chocolate', 'Feature');
INSERT INTO components VALUES ('48', 'Nước Súc Miệng Hương Bạc Hà ', 'Feature');
INSERT INTO components VALUES ('49', 'Spring A Ling Dành Cho Bé Trên 6 Tháng Tuổi', 'Feature');
INSERT INTO components VALUES ('50', 'Kem đánh răng Close Up Pha Lê Tuyết ', 'Feature');
INSERT INTO components VALUES ('51', 'Kem Che Khuyết Điểm Lovely Meex Stick', 'Feature');
INSERT INTO components VALUES ('52', 'Son Sáp Quyến Rũ Magic Neon Lipstick 115 Hồng tươi', 'Feature');
INSERT INTO components VALUES ('53', 'Neo', 'Feature');
INSERT INTO components VALUES ('54', 'Neo Classic Homme Black', 'Feature');
INSERT INTO components VALUES ('55', 'Sữa Rửa Mặt Tẩy Trang Hàng Ngày', 'Feature');
INSERT INTO components VALUES ('56', 'Tẩy trang hàng ngày', 'Feature');
INSERT INTO components VALUES ('57', 'Kem chống nắng', 'Feature');
INSERT INTO components VALUES ('58', 'Kem chống nắng SPF50', 'Feature');
INSERT INTO components VALUES ('59', 'Dầu gội chiết xuất trái lựu & hoa hướng dương Nature\'s Gate Pomegranate Sunflower 532ml ', 'Feature');
INSERT INTO components VALUES ('60', 'bưởi hồng Pinkgrape', 'Feature');
INSERT INTO components VALUES ('61', 'Ngừa Mụn Và Kiểm Soát Dầu ', 'Feature');
INSERT INTO components VALUES ('62', 'Dành Cho Nam', 'Feature');

-- ----------------------------
-- Table structure for `configs`
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO configs VALUES ('15', 'LAMDEP_ID', '14');
INSERT INTO configs VALUES ('16', 'EMBE_ID', '7');
INSERT INTO configs VALUES ('17', 'MEBAU_ID', '3');
INSERT INTO configs VALUES ('18', 'GIADINH_ID', '15');
INSERT INTO configs VALUES ('19', 'MAIL_SMTP_ENCRYPTION', 'ssl');
INSERT INTO configs VALUES ('20', 'MAIL_SMTP_SERVER', 'smtp.gmail.com');
INSERT INTO configs VALUES ('21', 'MAIL_SMTP_PORT', '465');
INSERT INTO configs VALUES ('22', 'MAIL_SMTP_USER', 'info@nhacon.com');
INSERT INTO configs VALUES ('23', 'MAIL_SMTP_PASSWD', 'nuoc1lit5dongchai');
INSERT INTO configs VALUES ('24', '_ID', '1');

-- ----------------------------
-- Table structure for `customers`
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL,
  `email` varchar(127) DEFAULT NULL,
  `phone` varchar(63) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notes` text,
  `birthday` date DEFAULT NULL,
  `is_married` tinyint(1) DEFAULT '1',
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `job_company` varchar(255) DEFAULT NULL,
  `job_company_address` varchar(255) DEFAULT NULL,
  `gender` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_HASH` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO customers VALUES ('8', 'Trương Lý Hoàng Phi', 'phi.truong@bssc.vn', '0919234583', 'Số 2-4 alexandre de rohdes, phường bến nghé, quận 1, TPHCM', '2ad78c4e78e56962cf9e39df71c9520d', '<p>Giao hàng giờ hành chính. Gọi điện trước khi giao</p>\r\n', null, '0', '', '', 'Giám đốc', 'Trung Tâm Hỗ Trợ Thanh Niên Khởi Nghiệp', 'Số 2-4 alexandre de rohdes, phường bến nghé, quận 1, TPHCM', '0');
INSERT INTO customers VALUES ('9', 'Trương Huệ Dung', 'dung.truong@kmc.vn', '0985587558', 'Số 17/10 đường Thành Thái, phường 7, quận 10, TPHCM', '38e34bacaff603232b31c7d559864295', '', null, '1', '', '', 'Project Manager', 'KMCSoft', '275/8B Nguyễn Văn Lượng, P. 17, Q. Gò Vấp, TP. HCM', '0');
INSERT INTO customers VALUES ('10', 'Lê Thanh Tú', 'tu.le@joliesiam.com', '0937000105', 'Lầu 8 Toà nhà CMARD 2, số 45 Đinh Tiên Hoàng, phường Bến Nghé, quận 1, TPHCM', '4942d9099815061803d7b3cd2b5b4d90', '', null, '1', '', '', 'Giám Đốc', 'Công Ty Dịch Vụ Lễ Tân Jolie Siam', 'Lầu 8 Toà nhà CMARD 2, số 45 Đinh Tiên Hoàng, phường Bến Nghé, quận 1, TPHCM', '0');
INSERT INTO customers VALUES ('11', 'Trần Thị Mai Thảo ', 'rubytran2012@gmail.com', '0966577409', 'Số 309-311 đường Hoàng Diệu, phường 6, quận 4, TPHCM', 'a2b9f2e49b19b6dd7382f5f8883e3bc0', '', null, '1', '', '', 'Chuyên viên kinh doanh', 'Công ty Cổ Phần Anphabe', 'Số 309-311 đường Hoàng Diệu, phường 6, quận 4, TPHCM', '0');
INSERT INTO customers VALUES ('12', 'Trần Tố Thi', 'trantothi@gmail.com', '0962520799', '15/16 đường số 4, phường 11, quận gò vấp, TPHCM', '67e43d7c416e8b3f3ffd7fabab9cbba7', '', null, '1', '', '', 'Cửa hàng trưởng ', 'Viettel Telecom', '58 nguyễn văn đậu, phường 6, quận bình thạnh, TPHCM', '0');
INSERT INTO customers VALUES ('16', 'Nguyễn Quách Nhi ', 'nguyenquachnhi@gmail.com', '0939242323', '345 cộng hoà, phường 13, quận tân bình, TPHCM', 'bdba5a91425895593789bcf9ef4b9f0e', '', null, '0', '', '', 'Quản lý ', 'Mathnasium việt nam', '345 cộng hoà, phường 13, quận tân bình, TPHCM', '1');
INSERT INTO customers VALUES ('19', 'Đặng Trần Cẩm Vân', 'van.dang@vevco.com', '0903379944', '413/21 lê văn sỹ, phường 12, quận phú nhuận, TPHCM', '73cf689ca6013197f46609e2bc1c2188', '', null, '1', '', '', 'Hr Manager', 'Công ty TNHH SX TM DV V.E.V', '413/21 lê văn sỹ, phường 12, quận phú nhuận, TPHCM', '0');
INSERT INTO customers VALUES ('22', 'Đăng Vũ', 'Dangvu.nguyen313@gmail.com', '0988974704', '178/8 nguyễn kim, quận 10, TPHCM', '4fc7df4b9dccf7ddcd8dd5431c4d6472', '', null, '0', '', '', '', 'Unilever', '', '0');
INSERT INTO customers VALUES ('23', 'Nguyễn Thùy Liên', 'me@nguyenthuylien.com', '0989723323', 'Lau 6 & 7 Mê Linh Point Tower, Số 2, Ngô Đức Kế, Q1, TP.HCM', '1a3750439e7a830e2e055ad4b4f6a9d8', '', null, '1', '', '', 'Giám Đốc', 'Prosales', 'Lầu 6 & 7 Mê Linh Point Tower, Số 2, Ngô Đức Kế, Q1, TP.HCM', '0');
INSERT INTO customers VALUES ('24', 'Lê Thảo Nhi', 'Nhilt92@gmail.com', '0915131537', '74/7/9b phan đăng lưu, phường 5, quận phú nhuận, TPHCM', '8df25d6fcee766a07349347b9b0188cd', '', null, '0', '', '', 'Nhà phân phối', 'Vision', '', '0');
INSERT INTO customers VALUES ('26', 'Phương Loan', 'Loan@dolisa.org', '0944790579', '27/23 Lê Trực, P7, Bình Thạnh', 'e2a75ee7902f35fae933a1153c6b6f05', '', null, '1', '', '', 'Nhân viên hành chính ', 'Sở LĐ - TB - XH TPHCM', '', '0');
INSERT INTO customers VALUES ('27', 'Quách Thị Lan', 'lan.quach@chonvn.com', '0907124545', '339/19 Lê Văn Sỹ, phường 13, quận 3, TPHCM', 'fe291d945f811368486ce636cdf21b08', '', null, '1', '', '', 'Kế toán trưởng', 'Công ty CP Thương Mại Chọn', '339/19 Lê Văn Sỹ, phường 13, quận 3, TPHCM', '0');
INSERT INTO customers VALUES ('30', 'Lê Phạm', 'Le.pham@kizciti.vn', '0904587868', ' Khu công viên Khánh Hội, đường Hoàng Diệu, Phường 5, Quận 4, TP.HCM', 'e43080aa356a0dfcdfe9bdf0e7478e9e', '', null, '0', '', '', 'Hr Manager', 'Kiz Citi', ' Khu công viên Khánh Hội, đường Hoàng Diệu, Phường 5, Quận 4, TP.HCM', '0');
INSERT INTO customers VALUES ('34', 'Vũ Thị Chung ', '', '0979730680', 'Số 125 đường Cống Quỳnh, phường Nguyễn Cư Trinh, quận 1, TPHCM', 'f85a1e6d8b618920938abf16ba651b78', '', null, '1', '', '', 'Nhân viên văn phòng ', 'Cao đẳng sân khấu điện ảnh TPHCM', 'Số 125 đường Cống Quỳnh, phường Nguyễn Cư Trinh, quận 1, TPHCM', '0');
INSERT INTO customers VALUES ('35', 'Đàm Khánh Dung', 'Dung.dam@kizciti.vn', '0976422465', ' Khu công viên Khánh Hội, đường Hoàng Diệu, Phường 5, Quận 4, TP.HCM', '512e85b7e193e1d2ea0c20dd74356b04', '', null, '1', '', '', 'Chuyên viên nhân sự', 'Kiz Citi', ' Khu công viên Khánh Hội, đường Hoàng Diệu, Phường 5, Quận 4, TP.HCM', '0');
INSERT INTO customers VALUES ('36', 'Đỗ Bích Liên', 'Dobichlien89@gmail.com', '0906640700', '475A Điện Biên Phủ, Phường 25, Bình Thạnh, Hồ Chí Minh', '4708a25dc86948ad872073462c00eb57', '', null, '1', '', '', 'Nhân viên văn phòng ', 'Đại Học Công Nghệ Kỹ Thuật TPHCM', '475A Điện Biên Phủ, Phường 25, Bình Thạnh, Hồ Chí Minh', '0');
INSERT INTO customers VALUES ('42', 'Trịnh Thị Tịnh Tâm', 'tinhtam87@gmail.com', '0903905587', ' 207 An Dương Vương, 8, 5, Hồ Chí Minh', 'b7fd5b8f76c9b31f147440e48bc41c10', '', null, '1', '', '', '', '', '', '0');
INSERT INTO customers VALUES ('47', 'Liên Nguyễn', 'lienhanoi83@gmail.com', '0907658143', '165 Đào Duy Anh, phường 9, quận phú nhuận, TPHCM', 'e1ce03a5814fc0589f3796cb52d13556', '', null, '1', '', '', 'Giám Đốc', 'Công ty TNHH MTV SX TM DV Sài Gòn Trăng', '165 Đào Duy Anh, phường 9, quận phú nhuận, TPHCM', '0');
INSERT INTO customers VALUES ('48', 'Nguyễn Thu Hiền', 'nguyenthithuhien119@gmail.com', '0909195165', '13/27/6 nguyễn văn vạn, quận tân bình, TPHCM', '8af21f6bcfeb879b016cfc81820ad958', '', null, '0', '', '', '', '', '', '0');
INSERT INTO customers VALUES ('49', 'Đỗ Thị Hà', 'doha828@gmail.com', '0906985699', '185 Cách Mạng Tháng 8, Quận 3, TPHCM', 'be2bb160a75501fe61c3ec755f2b667b', '', null, '0', '', '', 'Chuyên viên hành chính ', 'Đảng uỷ khối các trường ĐHCĐ quận 3', '185 Cách Mạng Tháng 8, Quận 3, TPHCM', '0');
INSERT INTO customers VALUES ('50', 'Bùi Thị Mỹ Hạnh', 'myhanh@keyframe.vn', '0976312533', '339/19 Lê Văn Sỹ, phường 13, quận 3, TPHCM', 'dc66099a4b23564ad245e66fba1391cc', '', null, '1', '', '', 'Keyframe Training ', '', '', '0');
INSERT INTO customers VALUES ('51', 'Phan Thị Tưởng ', '', '0965152924', '57/10 đông hưng thuận 6, phường tân hưng thuận, quận 12, TPHCM', 'fa6ea2c0aaf271246ac4dda0b821a37d', '', null, '1', '', '', 'Nội Trợ', '', '', '0');
INSERT INTO customers VALUES ('52', 'Phan Thị Trường Thi', 'thiphanm@gmail.com', '0918264723', 'Phòng 12a18, lầu 13, chung cư thái an 4 đường nguyễn văn quá, phường tân hưng thuânh, quận 12', 'f4b970e45664baf17519175a418d7cf2', '', null, '1', '', '', 'OM', 'Nhacon.vn', '', '0');
INSERT INTO customers VALUES ('53', 'Bùi Thị Hộ', 'phamvandan@gmail.com', '0839401380', '213/23 đường Xóm Chiếu, phường 15, quận 4, TPHCM', '9c909d63f56a38ac49829a073060063f', '', null, '1', '', '', 'Giám đốc ', 'Công ty Đông Hải Phương ', '', '0');
INSERT INTO customers VALUES ('54', 'Mai Duy', 'tranmaiduy@gmail.com', '0934448558', 'Chung cư Hoàng Anh Gia Lai, quận 7, TPHCM', '9ce83dfa422a097000bd1c1cebf4e910', '', null, '1', '', '', 'Nội Trợ', '', '', '0');
INSERT INTO customers VALUES ('55', 'Meo Tran', 'Skullbear@yahoo.com', '0962520799', '15/16 đường số 4, phường 11, quận gò vấp, TPHCM', 'ea060052469267187f98c23fa6618d98', '', null, '0', '', '', 'Sinh viên', 'Đại Học Y Dược TPHCM', '', '0');
INSERT INTO customers VALUES ('56', 'Phan Thanh Khánh', 'phuong@nhacon.com', '0979558434', '', '088d6e7d6c3e1c6d079d098731a59ed5', '', null, '1', '', '', '', '', '', '0');
INSERT INTO customers VALUES ('57', 'Lạc Anh Thư', 'anhthul@gmail.com', '0909798269', 'số 44/10 Lê Văn Sỹ, Quận 3, TPHCM', '1f5b824eed302f991dc8e839e5da3813', '', null, '1', '', '', 'Nội Trợ', '', '', '0');
INSERT INTO customers VALUES ('58', 'Tú Thoại', 'huongtu.piani@gmail.com', '0947232226', 'lô số 23, Sài Gòn Square, quận 1, TPHCM', 'f776e10ed4920d3537a66dd106e1659a', '', null, '0', '', '', 'Bán hàng thời trang ', '', '', '0');
INSERT INTO customers VALUES ('59', 'Lê Thuỳ Vinh', 'hoaquynh93-qt@yahoo.com', '0933947565', '', '68f013cd3f49edba800230f0d1814c1e', '', null, '1', '', '', 'chuyên viên tư vấn', 'herbalife việt nam', '', '0');
INSERT INTO customers VALUES ('60', 'Phan Thị Diệu Linh', 'linh.phan.vs@gmail.com', '0993142527', 'số 12/43 đường nuyễn trọng tuyển, quận tân bình, TPHCM', 'ebc6265caed2b5064113373f1f2b0fea', '', null, '0', '', '', 'Trưởng nhòm đào tạo', 'Prosales', '', '0');
INSERT INTO customers VALUES ('61', 'Nguyễn Minh Tiến ', 'tiennm@codiendaidung.vn', '0934441944', 'B23/474C Trần Đại Nghĩa, Ấp 2, Xã Tân Nhựt, Huyện Bình Chánh, Tp.HCM. ', '2a3a196c36e0a297507b846645dac3bb', '', '2014-05-17', '1', '', '', 'Trưởng Phòng Nhân Sự', 'Công Ty Cổ Phần Cơ Điện Đại Dũng', '', '1');
INSERT INTO customers VALUES ('62', 'Hồ Đăng Chinh', 'hodangchinh@gmail.com', '', '', '1867213684ddab8acebb126b774c673f', '', null, '1', '', '', '', '', '', '1');
INSERT INTO customers VALUES ('63', 'Nguyễn Thị Như Quỳnh', 'mikcnc.2011@gmail.com', '0983428842', '', '68079b4bd7142b57e566d684f6d377ea', '', null, '0', '', '', 'Chuyên viên đào tạo', 'Fpt Arena', '79B Lý Thường Kiệt, quận Tân Bình, TPHCM', '0');
INSERT INTO customers VALUES ('64', 'Đặng Thị Thuỷ', 'thuyli@yahoo.com', '0977977058', 'KS11A- Học Viện Hành Chính Quốc Gia, Quận 10, TPHCM', '4edf4412ff8ba49956798de56f277169', '', null, '0', '', '', 'Sinh Viên', 'Học Viện Hành Chính Quốc Gia', '', '0');
INSERT INTO customers VALUES ('65', 'Bella Trần', '', '0924586813', '', '7b73114eaaa17aa0fa9a641f0c182e09', '', null, '0', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `customer_behaviors`
-- ----------------------------
DROP TABLE IF EXISTS `customer_behaviors`;
CREATE TABLE `customer_behaviors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `action` enum('view','add','delete','changeQuantity','changeUnit','confirmBundle') NOT NULL DEFAULT 'view',
  `bundle_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `implementation_date` datetime NOT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_behaviors
-- ----------------------------
INSERT INTO customer_behaviors VALUES ('1', '1', 'view', '1', '0', '0000-00-00 00:00:00', null, null);
INSERT INTO customer_behaviors VALUES ('2', '2', 'changeQuantity', '1', '7', '0000-00-00 00:00:00', '17', '1');
INSERT INTO customer_behaviors VALUES ('3', '2', 'changeQuantity', '1', '7', '2014-04-17 00:48:31', '1', '11');
INSERT INTO customer_behaviors VALUES ('4', '2', 'changeUnit', '1', '7', '2014-04-17 00:54:29', '12', '17');
INSERT INTO customer_behaviors VALUES ('5', '2', 'changeUnit', '1', '1', '2014-04-17 00:54:33', '5', '7');
INSERT INTO customer_behaviors VALUES ('6', '2', 'changeQuantity', '1', '7', '2014-04-17 01:40:30', '11', '1');
INSERT INTO customer_behaviors VALUES ('7', '2', 'changeQuantity', '1', '7', '2014-04-17 01:40:43', '1', '5');
INSERT INTO customer_behaviors VALUES ('8', '2', 'changeUnit', '1', '1', '2014-04-17 01:41:18', '7', '5');
INSERT INTO customer_behaviors VALUES ('9', '13', 'view', '9', null, '2014-04-23 07:29:27', null, null);
INSERT INTO customer_behaviors VALUES ('10', '14', 'confirmBundle', '10', null, '2014-04-23 10:58:30', null, null);
INSERT INTO customer_behaviors VALUES ('11', '14', 'view', '10', null, '2014-04-23 11:20:26', null, null);
INSERT INTO customer_behaviors VALUES ('12', '56', 'view', '32', null, '2014-04-26 20:48:49', null, null);
INSERT INTO customer_behaviors VALUES ('13', '56', 'add', '32', '13', '2014-04-27 04:51:41', null, null);
INSERT INTO customer_behaviors VALUES ('14', '56', 'add', '32', '37', '2014-04-27 04:51:41', null, null);
INSERT INTO customer_behaviors VALUES ('15', '56', 'add', '32', '29', '2014-04-27 04:51:41', null, null);
INSERT INTO customer_behaviors VALUES ('16', '56', 'add', '32', '21', '2014-04-27 04:51:41', null, null);
INSERT INTO customer_behaviors VALUES ('17', '56', 'delete', '32', '19', '2014-04-27 04:53:04', null, null);
INSERT INTO customer_behaviors VALUES ('18', '56', 'delete', '32', '9', '2014-04-27 04:53:15', null, null);
INSERT INTO customer_behaviors VALUES ('19', '56', 'delete', '32', '21', '2014-04-27 04:53:28', null, null);

-- ----------------------------
-- Table structure for `customer_family`
-- ----------------------------
DROP TABLE IF EXISTS `customer_family`;
CREATE TABLE `customer_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_family
-- ----------------------------
INSERT INTO customer_family VALUES ('3', '9', 'Trịnh Phước Thái', null, 'Chồng', 'Project Manager');
INSERT INTO customer_family VALUES ('4', '9', 'Phước Anh', null, 'Con trai', '');
INSERT INTO customer_family VALUES ('5', '9', 'Phước Ngọc', '2012-12-08', 'Con gái', '');
INSERT INTO customer_family VALUES ('6', '10', 'Trịnh Quốc Trị', null, 'Chồng', 'Chuyên gia tư vấn đào tạo');
INSERT INTO customer_family VALUES ('7', '10', 'Trinh Thanh Vân', null, 'Con gái', '');
INSERT INTO customer_family VALUES ('8', '10', 'Trịnh Thanh Thanh', null, 'Con gái', '');
INSERT INTO customer_family VALUES ('9', '47', 'Bé Heo', null, 'Con gái', '');
INSERT INTO customer_family VALUES ('10', '47', 'Cu Nam', null, 'Con trai', '');
INSERT INTO customer_family VALUES ('11', '23', 'Cà Na', null, 'Con gái', '');
INSERT INTO customer_family VALUES ('12', '52', 'Hồng Phước', '2012-12-14', 'Con gái', '');
INSERT INTO customer_family VALUES ('13', '59', '', null, '', '');

-- ----------------------------
-- Table structure for `emails`
-- ----------------------------
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '1',
  `sender_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sender_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `recipient_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `recipient_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bcc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subject` tinytext CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `is_sent` tinyint(1) DEFAULT '0',
  `sent_time` int(10) DEFAULT NULL,
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of emails
-- ----------------------------
INSERT INTO emails VALUES ('26', '1', 'thi.phan@nhacon.com', 'Nhà Con', 'mphuongdx@gmail.com', 'Phuong Pham', null, null, 'Xác nhận đơn hàng từ Nhà Con', '<table cellpadding=\"5\" cellspace=\"5\" cellspacing=\"1\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:18px;color:#333;border:1px solid #000;margin-right:auto;margin-left:auto\" width=\"600\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background:#EFEBE6 repeat-x\"><img id=\"logo\" src=\"http://nhacon.com/images/logo_tr_99.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"margin-top: 20px; margin-right: 0px; margin-bottom: 20px;\">Dear Phuong Pham,<br />\r\n			<br />\r\n			Nhà Con cảm thấy hạnh phúc khi có bạn là một trong những khách hàng đầu tiên. Chúng tôi đã nhận được đơn hàng của bạn, sẽ giao hàng vào ngày 30/04/2014.<br />\r\n			Dưới đây là những sản phẩn trong đơn hàng của bạn :</p>\r\n\r\n			<p style=\"margin-top: 20px; margin-right: 0px; margin-bottom: 20px;\">\n\n<table border=\"1\" cellpading=\"0\" cellspacing=\"0\" style=\" border-collapse: collapse;\">\n    <tr>\n        <th colspan=\"2\">Sản phẩm</th>\n        <th>Số lượng</th>\n        <th>Đơn vị</th>\n        <th>Giá</th>\n        <th>Tổng</th>\n    </tr>\n            <tr data-id=\"13\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/13/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Sữa bột bổ sung vi chất dinh dưỡng Gain Plus Eye Q  dành cho trẻ từ 1 đến 3 tuổi ABBOTT 900 gr</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Hộp            </td>\n            <td>\n                488.000 đồng            </td>\n            <td>\n                488.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"12\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/12/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Tinh dầu tẩy trang chống lão hóa Oil Specialist Deep Firming Cleansing Oil  THE FACE SHOP 200 ml</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Chai            </td>\n            <td>\n                609.000 đồng            </td>\n            <td>\n                609.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"15\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/15/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Sữa Bột Bổ Sung Vi Chất Dinh Dưỡng Dielac Alpha 123  Vinamilk 900 Gr</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Hộp            </td>\n            <td>\n                212.000 đồng            </td>\n            <td>\n                212.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"10\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/10/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Khăn giấy tẩy trang mềm mại Lingettes Expess  BOURJOIS 25 Tờ</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Túi            </td>\n            <td>\n                188.000 đồng            </td>\n            <td>\n                188.000 đồng            </td>\n        </tr>\n\n            <tr><td colspan=\"5\" align=\"right\"><h3>Tổng cộng: 1.497.000 đồng</h3></td></tr>\n</table>\n\n</p>\r\n\r\n			<p>Bạn vui lòng <a href=\"http://dev.oaiha.com/43fd5c1dfd2d7e29a4951ad610b38e86/9\">xác nhận</a> hoặc <a href=\"http://dev.oaiha.com/43fd5c1dfd2d7e29a4951ad610b38e86/9\">cập nhật</a> đơn hàng.</p>\r\n			Trân trọng,<br />\r\n			Nhà Con team</td>\r\n		</tr>\r\n		<tr>\r\n			<td cellspace=\"5\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:12px;line-height:18px;color:#fff;background-color:#000000\">\r\n			<p><strong>Nhà Con</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1', '1398215500', '1398215477');
INSERT INTO emails VALUES ('28', '1', 'thi.phan@nhacon.com', 'Nhà Con', 'tranmaisao@yahoo.com', 'Sao Tran', null, null, 'Xác nhận đơn hàng từ Nhà Con', '<table cellpadding=\"5\" cellspace=\"5\" cellspacing=\"1\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:18px;color:#333;border:1px solid #000;margin-right:auto;margin-left:auto\" width=\"600\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background:#EFEBE6 repeat-x\"><img id=\"logo\" src=\"http://nhacon.com/images/logo_tr_99.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"margin-top: 20px; margin-right: 0px; margin-bottom: 20px;\">Dear Sao Tran,<br />\r\n			<br />\r\n			Nhà Con cảm thấy hạnh phúc khi có bạn là một trong những khách hàng đầu tiên. Chúng tôi đã nhận được đơn hàng của bạn, sẽ giao hàng vào ngày 30/04/2014.<br />\r\n			Dưới đây là những sản phẩn trong đơn hàng của bạn :</p>\r\n\r\n			<p style=\"margin-top: 20px; margin-right: 0px; margin-bottom: 20px;\">\n\n<table border=\"1\" cellpading=\"0\" cellspacing=\"0\" style=\" border-collapse: collapse;\">\n    <tr>\n        <th colspan=\"2\">Sản phẩm</th>\n        <th>Số lượng</th>\n        <th>Đơn vị</th>\n        <th>Giá</th>\n        <th>Tổng</th>\n    </tr>\n            <tr data-id=\"9\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/9/thefaceshop-5411-01019-1-zoom.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Nước Cân Bằng Ngừa Mụn Và Kiểm Soát Dầu  200 Ml</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Chai            </td>\n            <td>\n                529.000 đồng            </td>\n            <td>\n                529.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"10\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/10/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Khăn giấy tẩy trang mềm mại Lingettes Expess  BOURJOIS 25 Tờ</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Túi            </td>\n            <td>\n                188.000 đồng            </td>\n            <td>\n                188.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"11\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/11/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Gel Dưỡng Làm Giảm Bọng Mắt Rasberry Roots Depuffing Eye Gel  THE FACE SHOP 25 Ml</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Chai            </td>\n            <td>\n                439.000 đồng            </td>\n            <td>\n                439.000 đồng            </td>\n        </tr>\n\n            <tr><td colspan=\"5\" align=\"right\"><h3>Tổng cộng: 1.156.000 đồng</h3></td></tr>\n</table>\n\n</p>\r\n\r\n			<p>Bạn vui lòng <a href=\"http://dev.oaiha.com/26954cde15104ec479296292f269f10c/10\">xác nhận</a> hoặc <a href=\"http://dev.oaiha.com/26954cde15104ec479296292f269f10c/10\">cập nhật</a> đơn hàng.</p>\r\n			Trân trọng,<br />\r\n			Nhà Con team</td>\r\n		</tr>\r\n		<tr>\r\n			<td cellspace=\"5\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:12px;line-height:18px;color:#fff;background-color:#000000\">\r\n			<p><strong>Nhà Con</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1', '1398225464', '1398225455');
INSERT INTO emails VALUES ('32', '1', 'thi.phan@nhacon.com', 'Nhà Con', 'nguyenquachnhi@gmail.com', 'Nguyễn Quách Nhi ', null, null, 'Xác nhận đơn hàng từ Nhà Con', '<table cellpadding=\"5\" cellspace=\"5\" cellspacing=\"1\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:18px;color:#333;border:1px solid #000;margin-right:auto;margin-left:auto\" width=\"600\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background:#EFEBE6 repeat-x\"><img id=\"logo\" src=\"http://nhacon.com/images/logo_tr_99.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"margin-top: 20px; margin-right: 0px; margin-bottom: 20px;\">Dear Nguyễn Quách Nhi ,<br />\r\n			<br />\r\n			Nhà Con cảm thấy hạnh phúc khi có bạn là một trong những khách hàng đầu tiên. Chúng tôi đã nhận được đơn hàng của bạn, sẽ giao hàng vào ngày 30/04/2014.<br />\r\n			Dưới đây là những sản phẩn trong đơn hàng của bạn :</p>\r\n\r\n			<p style=\"margin-top: 20px; margin-right: 0px; margin-bottom: 20px;\">\n\n<table border=\"1\" cellpading=\"0\" cellspacing=\"0\" style=\" border-collapse: collapse;\">\n    <tr>\n        <th colspan=\"2\">Sản phẩm</th>\n        <th>Số lượng</th>\n        <th>Đơn vị</th>\n        <th>Giá</th>\n        <th>Tổng</th>\n    </tr>\n            <tr data-id=\"28\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/28/00099500-0_1_6.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Dầu gội trị gàu cho nam CLEAR 650 gram</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Chai            </td>\n            <td>\n                127.000 đồng            </td>\n            <td>\n                127.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"26\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/26/coast.png\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Xà phòng Coast Coast</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Cái            </td>\n            <td>\n                18.000 đồng            </td>\n            <td>\n                18.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"22\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/22/freeman-5417-408001-1-zoom.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Quần lót FREEMAN Freeman</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Cái            </td>\n            <td>\n                88.000 đồng            </td>\n            <td>\n                88.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"23\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/23/Disposable Razor.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Gillette Vector</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Cái            </td>\n            <td>\n                50.000 đồng            </td>\n            <td>\n                50.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"24\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/24/Bath-Towels.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Khăn Tắm Mollis</p>\n            </td>\n            <td>\n                2            </td>\n            <td>\n                Cái            </td>\n            <td>\n                142.000 đồng            </td>\n            <td>\n                284.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"25\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/25/5900273150141.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Bàn chải Colgate</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Cái            </td>\n            <td>\n                32.000 đồng            </td>\n            <td>\n                32.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"27\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/27/Sua_rua_mat_Biore__TAC_DONG_KEP__-_MBBB_50g_-C050.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Sữa rửa mặt Tác động kép  Biore 50 gram</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Cái            </td>\n            <td>\n                33.000 đồng            </td>\n            <td>\n                33.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"29\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/29/ColgateCDC.png\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Kem đánh răng Colgate 220 gram</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Hộp            </td>\n            <td>\n                25.000 đồng            </td>\n            <td>\n                25.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"30\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/30/oral_b_glide_pro_health.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Chỉ nha khoa Oral-B Glide 40 m</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Hộp            </td>\n            <td>\n                92.000 đồng            </td>\n            <td>\n                92.000 đồng            </td>\n        </tr>\n\n            <tr><td colspan=\"5\" align=\"right\"><h3>Tổng cộng: 749.000 đồng</h3></td></tr>\n</table>\n\n</p>\r\n\r\n			<p>Bạn vui lòng <a href=\"http://dev.oaiha.com/bdba5a91425895593789bcf9ef4b9f0e/11\">xác nhận</a> hoặc <a href=\"http://dev.oaiha.com/bdba5a91425895593789bcf9ef4b9f0e/11\">cập nhật</a> đơn hàng.</p>\r\n			Trân trọng,<br />\r\n			Nhà Con team</td>\r\n		</tr>\r\n		<tr>\r\n			<td cellspace=\"5\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:12px;line-height:18px;color:#fff;background-color:#000000\">\r\n			<p><strong>Nhà Con</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '0', null, '1398247732');
INSERT INTO emails VALUES ('34', '1', 'thi.phan@nhacon.com', 'Nhà Con', 'Dangvu.nguyen313@gmail.com', 'Đăng Vũ', null, null, 'Cảm ơn Đăng Vũ đã đặt hàng Nhà Con tháng 04/2014', '<table cellpadding=\"5\" cellspace=\"5\" cellspacing=\"1\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:18px;color:#333;border:1px solid #000;margin-right:auto;margin-left:auto\" width=\"600\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background:#EFEBE6 repeat-x\"><img id=\"logo\" src=\"http://nhacon.com/images/logo_tr_99.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style=\"margin-top: 20px; margin-right: 0px; margin-bottom: 20px;\"><span style=\"font-family:georgia,serif;\"><strong>Dear </strong>Đăng Vũ,<br />\r\n			<br />\r\n			<span style=\"font-size:14px;\"><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">Tuyệt vời! B</span><strong>ạn</strong> <span style=\"color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">&nbsp;</span><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">đã</span><span style=\"color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">&nbsp;</span><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">được chọn&nbsp;</span><strong>là một trong những khách hàng đầu tiên c</strong><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">ủa Nhà Con</span>. <strong>Chúng tôi đã nhận được đơn hàng của bạn, sẽ giao G</strong><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">ói Hàng&nbsp;Thông Minh</span>&nbsp;<strong>vào ngày </strong>07/04/2014.<br />\r\n			<span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">Hãy xem d</span><strong>ưới đây xem đơn hàng của bạn</strong>&nbsp;<span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">có</span><span style=\"color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">&nbsp;</span><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">đủ&nbsp;chưa&nbsp;nhé</span></span></span></p>\r\n\r\n			<p style=\"margin-top: 20px; margin-right: 0px; margin-bottom: 20px;\"><span style=\"font-family:georgia,serif;\">\n\n<table border=\"1\" cellpading=\"0\" cellspacing=\"0\" style=\" border-collapse: collapse;\">\n    <tr>\n        <th colspan=\"2\">Sản phẩm</th>\n        <th>Số lượng</th>\n        <th>Đơn vị</th>\n        <th>Giá</th>\n        <th>Tổng</th>\n    </tr>\n            <tr data-id=\"33\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/33/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Dung dịch vệ sinh phụ nữ  Hoa lan chuông Intima Ziaja 200 ml</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Chai            </td>\n            <td>\n                119.000 đồng            </td>\n            <td>\n                119.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"19\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/19/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Băng Vệ Sinh Siêu Mỏng Cánh   Kotex 8 miếng</p>\n            </td>\n            <td>\n                4            </td>\n            <td>\n                Bịch            </td>\n            <td>\n                14.500 đồng            </td>\n            <td>\n                58.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"20\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/20/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Băng Vệ Sinh Ban Đêm 32 cm  Kotex 3 miếng</p>\n            </td>\n            <td>\n                2            </td>\n            <td>\n                Bịch            </td>\n            <td>\n                16.000 đồng            </td>\n            <td>\n                32.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"36\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/36/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Cafe Việt Đen Hoà Tan Nestle 15 gói</p>\n            </td>\n            <td>\n                4            </td>\n            <td>\n                Hộp            </td>\n            <td>\n                47.000 đồng            </td>\n            <td>\n                188.000 đồng            </td>\n        </tr>\n\n                <tr data-id=\"37\">\n            <td width=\"100px\">\n                <img src=\"http://dev.oaiha.com/images/uploads/thumbs/37/image.jpg\" width=\"100px\" height=\"100px\">\n            </td>\n            <td width=\"35%\">\n                <p>Bột Đặc Trị Mụn AC Clinic Intense Pink Powder Spot Etude House</p>\n            </td>\n            <td>\n                1            </td>\n            <td>\n                Lọ            </td>\n            <td>\n                525.000 đồng            </td>\n            <td>\n                525.000 đồng            </td>\n        </tr>\n\n            <tr><td colspan=\"5\" align=\"right\"><h3>Tổng cộng: 922.000 đồng</h3></td></tr>\n</table>\n\n</span></p>\r\n\r\n			<p><span style=\"font-family:georgia,serif;\">Bạn thấy đủ chưa?</span></p>\r\n\r\n			<p><span style=\"font-family:georgia,serif;\"><a href=\"http://dev.oaiha.com/4fc7df4b9dccf7ddcd8dd5431c4d6472/14\">xác nhận</a> &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"http://dev.oaiha.com/4fc7df4b9dccf7ddcd8dd5431c4d6472/14\">cập nhật</a>&nbsp;</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td cellspace=\"5\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:12px;line-height:18px;color:#fff;background-color:#000000\">\r\n			<p style=\"text-align: center;\"><span style=\"font-family:tahoma,geneva,sans-serif;\"><b>From Nha Con with love</b></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '0', null, '1398271283');
INSERT INTO emails VALUES ('91', '1', 'thi@nhacon.com', 'Nhà Con', 'khanh@nhacon.com', 'Phan Thanh Khánh', null, null, 'Cảm ơn Khánh đã đặt hàng Nhà Con tháng 04/2014', '<style>\r\n    table { border-spacing: 0; border-collapse: collapse; margin: 0 auto; }\r\n    .width800 { width: 100%;}\r\n    @media screen and (max-width: 100%)\r\n    {\r\n        .width800 { width: 540px}\r\n        .button { font-size: 16px !important; }\r\n        .confirm { padding-left: 35px !important; padding-right: 35px !important; }\r\n    }\r\n</style>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"font-size: 20px; line-height: 1; font-family: Tahoma, Arial, Helvetica, sans-serif; margin: 0 auto;\">\r\n    <tr>\r\n        <td>\r\n            <table class=\"width800\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 100%\">\r\n                <!--header-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%\">\r\n                            <tr>\r\n                                <td style=\"width: 240px; padding: 20px 0 20px 20px\">\r\n                                    <a href=\"#\" style=\"display: block; float: left\">\r\n                                        <img src=\"http://dev.oaiha.com/images/full-logo.png\" alt=\"Nhà con\" style=\"display: block; border: none\"/>\r\n                                    </a>\r\n                                </td>\r\n                                <td valign=\"top\" style=\"font-size: 22px; font-weight: bold; width: 520px; padding: 28px 20px 20px 0; text-align: right\">\r\n                                    SMARTBOX<p style=\"margin: 0; font-size: 20px; font-weight: normal\">tháng 04/2014</p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr><!--end header-->\r\n                <!--Body-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"background: #f1f1f1; width: 100%\">\r\n                            <tr>\r\n                                <td style=\"padding: 30px 20px 20px 20px\">\r\n                                    <h4 style=\"margin: 0; font-size: 20px\">Chào Khánh,</h4>\r\n                                    <p style=\"line-height: 24px;\">\r\n                                        Cảm ơn bạn đã đặt Gói Hàng Thông Minh đầu tiên của Nhà Con. Bạn là một trong những khách hàng đặc biệt đầu tiên của Nhà Con. Bạn sẽ nhận được gói hàng này vào ngày 24/04/2014.</p>\r\n                                    <p>Xin vui lòng kiểm tra dưới đây là những sản phẩm trong đơn hàng của bạn:</p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"background: #72c8b2\"><h3 style=\"margin: 17px 0 13px 0; text-align: center; color: #ffffff; font-size: 24px;\">SMARTBOX CỦA TÔI</h3></td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/25/5900273150141.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Bàn chải Colgate                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">32.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">32.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/41/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Băng vệ sinh  Yejimin 24 miếng                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">80.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">80.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/54/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Kem đánh răng Bamboo Salt  75 gr                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">39.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">39.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/13/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Sữa bột bổ sung vi chất dinh dưỡng Gain Plus Eye Q  dành cho trẻ từ 1 đến 3 tuổi ABBOTT 900 gr                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">488.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">488.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/37/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Bột Đặc Trị Mụn AC Clinic Intense Pink Powder Spot Etude House                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">525.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">525.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/29/ColgateCDC.png\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Kem đánh răng Colgate 250 gram                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">25.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">25.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"background: #72c8b2\"><h3 style=\"margin: 30px 0; width: 100%; text-align: center; color: #ffffff; font-size: 24px;\">Tổng cộng:  1.189.000đ</h3></td>\n            </tr>\n        </table>\n    </td>\n</tr>\r\n\r\n                <!--Xác nhận đơn hàng-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1; font-size: 18px\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"color: #3e3e3e; font-weight: bold; text-align: center; padding: 25px 20px 35px 20px\">ĐƠN HÀNG CỦA BẠN ĐÃ CHÍNH XÁC HAY CHƯA?</td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1; font-size: 18px\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"width: 50%; padding: 0 20px 40px\">\r\n                                    <a class=\"button confirm\" href=\"http://dev.oaiha.com/088d6e7d6c3e1c6d079d098731a59ed5/32\" style=\"float: right; background-color: #e64d46; border-bottom: 5px solid #a81b2b; border-radius: 5px; display: inline-block; font-weight: bold; color: #ffffff; text-decoration: none; padding: 18px 25px;\">\r\n                                        <img src=\"http://dev.oaiha.com/images/check.png\" alt=\"Chính xác\" style=\"display: block; float: left;\">\r\n                                        <span style=\"display: block; float: left; margin: 8px 0 0 14px;\">CHÍNH XÁC</span>\r\n                                    </a>\r\n                                </td>\r\n                                <td style=\"width: 50%; padding: 0 20px 40px\">\r\n                                    <a class=\"button confirm\" href=\"http://dev.oaiha.com/088d6e7d6c3e1c6d079d098731a59ed5/32\" style=\"float: left; background-color: #e64d46; border-bottom: 5px solid #a81b2b; border-radius: 5px; display: inline-block; font-weight: bold; color: #ffffff; text-decoration: none; padding: 18px 25px;\">\r\n                                        <img src=\"http://dev.oaiha.com/images/edit.png\" alt=\"Chính xác\" style=\"display: block; float: left;\">\r\n                                        <span style=\"display: block; float: left; margin: 8px 0 0 14px;\">CHỈNH SỬA</span>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <!--Sản phẩm gợi ý-->\r\n                <tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 25px 20px; text-align: center; font-weight: bold; width: 100%\">\n                    <p style=\"width: 100%; margin: 0\">SẢN PHẨM GỢI Ý</p>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n                <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 20px 20px; text-align: center;\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/21/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 0 20px 20px 20px; text-align: center;\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/29/ColgateCDC.png\" alt=\"\">\n                </td>\n            </tr>\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; font-size: 18px; text-align: center;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">485.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; font-size: 18px; text-align: center;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">25.000đ</strong>\n                </td>\n            </tr>\n            <tr>\n                <td style=\"padding: 20px 20px 33px 20px; text-align: center;\">\n                    <a class=\"button\" href=\"http://dev.oaiha.com/088d6e7d6c3e1c6d079d098731a59ed5/32\" style=\"display: block; font-weight: bold; background: #636363; text-decoration: none; border-radius: 5px; color: #ffffff; border-bottom: 4px solid #363636; padding: 11px 24px;\">XEM THÊM</a>\n                </td>\n                <td style=\"padding: 20px 20px 33px 20px; text-align: center;\">\n                    <a class=\"button\" href=\"http://dev.oaiha.com/088d6e7d6c3e1c6d079d098731a59ed5/32\" style=\"display: block; font-weight: bold; background: #636363; text-decoration: none; border-radius: 5px; color: #ffffff; border-bottom: 4px solid #363636; padding: 11px 24px;\">XEM THÊM</a>\n                </td>\n            </tr>\n        </table>\n                <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 20px 20px; text-align: center;\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/37/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 0 20px 20px 20px; text-align: center;\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/13/image.jpg\" alt=\"\">\n                </td>\n            </tr>\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; font-size: 18px; text-align: center;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">525.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; font-size: 18px; text-align: center;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">488.000đ</strong>\n                </td>\n            </tr>\n            <tr>\n                <td style=\"padding: 20px 20px 33px 20px; text-align: center;\">\n                    <a class=\"button\" href=\"http://dev.oaiha.com/088d6e7d6c3e1c6d079d098731a59ed5/32\" style=\"display: block; font-weight: bold; background: #636363; text-decoration: none; border-radius: 5px; color: #ffffff; border-bottom: 4px solid #363636; padding: 11px 24px;\">XEM THÊM</a>\n                </td>\n                <td style=\"padding: 20px 20px 33px 20px; text-align: center;\">\n                    <a class=\"button\" href=\"http://dev.oaiha.com/088d6e7d6c3e1c6d079d098731a59ed5/32\" style=\"display: block; font-weight: bold; background: #636363; text-decoration: none; border-radius: 5px; color: #ffffff; border-bottom: 4px solid #363636; padding: 11px 24px;\">XEM THÊM</a>\n                </td>\n            </tr>\n        </table>\n            </td>\n</tr>\n\r\n                <!--Footer-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1;\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"width: 100%; padding: 30px 0 20px 20px;\">\r\n                                    <a href=\"#\" style=\"display: block; text-align: center; width: 100%\" >\r\n                                        <img src=\"http://dev.oaiha.com/images/footer-logo.png\" alt=\"Nhà con\"/>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"width: 100%; text-align: center; color: #3e3e3e; padding-bottom: 32px\">Sent with love from <a href=\"#\" style=\"color: #3e3e3e; text-decoration: none\">Nhacon team</a></td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>', '1', '1398591463', '1398591444');
INSERT INTO emails VALUES ('92', '1', 'thi@nhacon.com', 'Nhà Con', 'trantothi@gmail.com', 'Trần Tố Thi', null, null, 'Cảm ơn Thi đã đặt hàng Nhà Con tháng 05/2014', '<style>\r\n    table { border-spacing: 0; border-collapse: collapse; margin: 0 auto; }\r\n    .width800 { width: 100%;}\r\n    @media screen and (max-width: 100%)\r\n    {\r\n        .width800 { width: 540px}\r\n        .button { font-size: 16px !important; }\r\n        .confirm { padding-left: 35px !important; padding-right: 35px !important; }\r\n    }\r\n</style>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"font-size: 20px; line-height: 1; font-family: Tahoma, Arial, Helvetica, sans-serif; margin: 0 auto;\">\r\n    <tr>\r\n        <td>\r\n            <table class=\"width800\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 100%\">\r\n                <!--header-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%\">\r\n                            <tr>\r\n                                <td style=\"width: 240px; padding: 20px 0 20px 20px\">\r\n                                    <a href=\"#\" style=\"display: block; float: left\">\r\n                                        <img src=\"http://dev.oaiha.com/images/full-logo.png\" alt=\"Nhà con\" style=\"display: block; border: none\"/>\r\n                                    </a>\r\n                                </td>\r\n                                <td valign=\"top\" style=\"font-size: 22px; font-weight: bold; width: 520px; padding: 28px 20px 20px 0; text-align: right\">\r\n                                    SMARTBOX<p style=\"margin: 0; font-size: 20px; font-weight: normal\">tháng 05/2014</p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr><!--end header-->\r\n                <!--Body-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"background: #f1f1f1; width: 100%\">\r\n                            <tr>\r\n                                <td style=\"padding: 30px 20px 20px 20px\">\r\n                                    <h4 style=\"margin: 0; font-size: 20px\">Chào Thi,</h4>\r\n                                    <p style=\"line-height: 24px;\">\r\n                                        Cảm ơn bạn đã đặt Gói Hàng Thông Minh đầu tiên của Nhà Con. Bạn là một trong những khách hàng đặc biệt đầu tiên của Nhà Con. Bạn sẽ nhận được gói hàng này vào ngày 02/05/2014.</p>\r\n                                    <p>Xin vui lòng kiểm tra dưới đây là những sản phẩm trong đơn hàng của bạn:</p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"background: #72c8b2\"><h3 style=\"margin: 17px 0 13px 0; text-align: center; color: #ffffff; font-size: 24px;\">SMARTBOX CỦA TÔI</h3></td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/21/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Sữa Bột Cho Mẹ Bầu  I am mother 800 gr                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">485.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>2</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">970.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"background: #72c8b2\"><h3 style=\"margin: 30px 0; width: 100%; text-align: center; color: #ffffff; font-size: 24px;\">Tổng cộng:  970.000đ</h3></td>\n            </tr>\n        </table>\n    </td>\n</tr>\r\n\r\n                <!--Xác nhận đơn hàng-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1; font-size: 18px\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"color: #3e3e3e; font-weight: bold; text-align: center; padding: 25px 20px 35px 20px\">ĐƠN HÀNG CỦA BẠN ĐÃ CHÍNH XÁC HAY CHƯA?</td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1; font-size: 18px\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"width: 50%; padding: 0 20px 40px\">\r\n                                    <a class=\"button confirm\" href=\"http://dev.oaiha.com/67e43d7c416e8b3f3ffd7fabab9cbba7/8\" style=\"float: right; background-color: #e64d46; border-bottom: 5px solid #a81b2b; border-radius: 5px; display: inline-block; font-weight: bold; color: #ffffff; text-decoration: none; padding: 18px 25px;\">\r\n                                        <img src=\"http://dev.oaiha.com/images/check.png\" alt=\"Chính xác\" style=\"display: block; float: left;\">\r\n                                        <span style=\"display: block; float: left; margin: 8px 0 0 14px;\">CHÍNH XÁC</span>\r\n                                    </a>\r\n                                </td>\r\n                                <td style=\"width: 50%; padding: 0 20px 40px\">\r\n                                    <a class=\"button confirm\" href=\"http://dev.oaiha.com/67e43d7c416e8b3f3ffd7fabab9cbba7/8\" style=\"float: left; background-color: #e64d46; border-bottom: 5px solid #a81b2b; border-radius: 5px; display: inline-block; font-weight: bold; color: #ffffff; text-decoration: none; padding: 18px 25px;\">\r\n                                        <img src=\"http://dev.oaiha.com/images/edit.png\" alt=\"Chính xác\" style=\"display: block; float: left;\">\r\n                                        <span style=\"display: block; float: left; margin: 8px 0 0 14px;\">CHỈNH SỬA</span>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <!--Sản phẩm gợi ý-->\r\n                <tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 25px 20px; text-align: center; font-weight: bold; width: 100%\">\n                    <p style=\"width: 100%; margin: 0\">SẢN PHẨM GỢI Ý</p>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n                <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 20px 20px; text-align: center;\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/70/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 0 20px 20px 20px; text-align: center;\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/71/Dau_Xa_Biotin_(Vitamin_H)_0_7834702257_3.jpg\" alt=\"\">\n                </td>\n            </tr>\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; font-size: 18px; text-align: center;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">200.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; font-size: 18px; text-align: center;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">200.000đ</strong>\n                </td>\n            </tr>\n            <tr>\n                <td style=\"padding: 20px 20px 33px 20px; text-align: center;\">\n                    <a class=\"button\" href=\"http://dev.oaiha.com/67e43d7c416e8b3f3ffd7fabab9cbba7/8\" style=\"display: block; font-weight: bold; background: #636363; text-decoration: none; border-radius: 5px; color: #ffffff; border-bottom: 4px solid #363636; padding: 11px 24px;\">XEM THÊM</a>\n                </td>\n                <td style=\"padding: 20px 20px 33px 20px; text-align: center;\">\n                    <a class=\"button\" href=\"http://dev.oaiha.com/67e43d7c416e8b3f3ffd7fabab9cbba7/8\" style=\"display: block; font-weight: bold; background: #636363; text-decoration: none; border-radius: 5px; color: #ffffff; border-bottom: 4px solid #363636; padding: 11px 24px;\">XEM THÊM</a>\n                </td>\n            </tr>\n        </table>\n            </td>\n</tr>\n\r\n                <!--Footer-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1;\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"width: 100%; padding: 30px 0 20px 20px;\">\r\n                                    <a href=\"#\" style=\"display: block; text-align: center; width: 100%\" >\r\n                                        <img src=\"http://dev.oaiha.com/images/footer-logo.png\" alt=\"Nhà con\"/>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"width: 100%; text-align: center; color: #3e3e3e; padding-bottom: 32px\">Sent with love from <a href=\"#\" style=\"color: #3e3e3e; text-decoration: none\">Nhacon team</a></td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>', '0', null, '1398613903');
INSERT INTO emails VALUES ('94', '1', 'thi@nhacon.com', 'Nhà Con', 'phi.truong@bssc.vn', 'Trương Lý Hoàng Phi', null, null, 'Cảm ơn Phi đã đặt hàng Nhà Con tháng 05/2014', '<style>\r\n    table { border-spacing: 0; border-collapse: collapse; margin: 0 auto; }\r\n    .width800 { width: 100%;}\r\n    @media screen and (max-width: 100%)\r\n    {\r\n        .width800 { width: 540px}\r\n        .button { font-size: 16px !important; }\r\n        .confirm { padding-left: 35px !important; padding-right: 35px !important; }\r\n    }\r\n</style>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"font-size: 20px; line-height: 1; font-family: Tahoma, Arial, Helvetica, sans-serif; margin: 0 auto;\">\r\n    <tr>\r\n        <td>\r\n            <table class=\"width800\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 100%\">\r\n                <!--header-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%\">\r\n                            <tr>\r\n                                <td style=\"width: 240px; padding: 20px 0 20px 20px\">\r\n                                    <a href=\"#\" style=\"display: block; float: left\">\r\n                                        <img src=\"http://dev.oaiha.com/images/full-logo.png\" alt=\"Nhà con\" style=\"display: block; border: none\"/>\r\n                                    </a>\r\n                                </td>\r\n                                <td valign=\"top\" style=\"font-size: 22px; font-weight: bold; width: 520px; padding: 28px 20px 20px 0; text-align: right\">\r\n                                    SMARTBOX<p style=\"margin: 0; font-size: 20px; font-weight: normal\">tháng 05/2014</p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr><!--end header-->\r\n                <!--Body-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"background: #f1f1f1; width: 100%\">\r\n                            <tr>\r\n                                <td style=\"padding: 30px 20px 20px 20px\">\r\n                                    <h4 style=\"margin: 0; font-size: 20px\">Chào Phi,</h4>\r\n                                    <p style=\"line-height: 24px;\">\r\n                                        Cảm ơn bạn đã đặt Gói Hàng Thông Minh đầu tiên của Nhà Con. Bạn là một trong những khách hàng đặc biệt đầu tiên của Nhà Con. Bạn sẽ nhận được gói hàng này vào ngày 06/05/2014.</p>\r\n                                    <p>Xin vui lòng kiểm tra dưới đây là những sản phẩm trong đơn hàng của bạn:</p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"background: #72c8b2\"><h3 style=\"margin: 17px 0 13px 0; text-align: center; color: #ffffff; font-size: 24px;\">SMARTBOX CỦA TÔI</h3></td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/10/bourjois-9313-61927-1-zoom.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Khăn giấy tẩy trang mềm mại Lingettes Expess  BOURJOIS 25 Tờ                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">188.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">188.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/11/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Dưỡng mắt Gel Làm Giảm Bọng Mắt - Rasberry Roots Depuffing Eye Gel THE FACE SHOP 25 ml                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">439.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">439.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/9/thefaceshop-5411-01019-1-zoom.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Nước hoa hồng toner Ngừa Mụn Và Kiểm Soát Dầu  The Face Shop 200 ml                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">529.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">529.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/12/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Tinh dầu tẩy trang chống lão hóa Oil Specialist Deep Firming Cleansing Oil  THE FACE SHOP 200 ml                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">609.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">609.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/41/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Băng vệ sinh  Yejimin 24 miếng                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">80.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">80.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"background: #ffffff; width: 100%\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; width: 240px; text-align: center\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/45/image.jpg\" alt=\"\">\n                </td>\n                <td style=\"padding: 20px 20px 20px 0; color: #3f3e40; line-height: 26px\">\n                    Băng Vệ Sinh Ban Đêm Super Long Tencel  Yejimin 4 miếng                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; width: 190px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">45.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; width: 110px; font-size: 18px;\">\n                    <span style=\"color: #777777;\">x</span>\n                    <strong>1</strong>\n                </td>\n                <td style=\"padding: 0 30px 15px 0; width: 450px; text-align: right\">\n                    <span style=\"color: #777777;\">Tổng: </span>\n                    <strong style=\"color: #636363\">45.000đ</strong>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr><td><hr style=\"border: none; border-bottom: 1px solid #d7d7d7; margin: 0;\"></td></tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"background: #72c8b2\"><h3 style=\"margin: 30px 0; width: 100%; text-align: center; color: #ffffff; font-size: 24px;\">Tổng cộng:  1.890.000đ</h3></td>\n            </tr>\n        </table>\n    </td>\n</tr>\r\n\r\n                <!--Xác nhận đơn hàng-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1; font-size: 18px\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"color: #3e3e3e; font-weight: bold; text-align: center; padding: 25px 20px 35px 20px\">ĐƠN HÀNG CỦA BẠN ĐÃ CHÍNH XÁC HAY CHƯA?</td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1; font-size: 18px\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"width: 50%; padding: 0 20px 40px\">\r\n                                    <a class=\"button confirm\" href=\"http://dev.oaiha.com/2ad78c4e78e56962cf9e39df71c9520d/4\" style=\"float: right; background-color: #e64d46; border-bottom: 5px solid #a81b2b; border-radius: 5px; display: inline-block; font-weight: bold; color: #ffffff; text-decoration: none; padding: 18px 25px;\">\r\n                                        <img src=\"http://dev.oaiha.com/images/check.png\" alt=\"Chính xác\" style=\"display: block; float: left;\">\r\n                                        <span style=\"display: block; float: left; margin: 8px 0 0 14px;\">CHÍNH XÁC</span>\r\n                                    </a>\r\n                                </td>\r\n                                <td style=\"width: 50%; padding: 0 20px 40px\">\r\n                                    <a class=\"button confirm\" href=\"http://dev.oaiha.com/2ad78c4e78e56962cf9e39df71c9520d/4\" style=\"float: left; background-color: #e64d46; border-bottom: 5px solid #a81b2b; border-radius: 5px; display: inline-block; font-weight: bold; color: #ffffff; text-decoration: none; padding: 18px 25px;\">\r\n                                        <img src=\"http://dev.oaiha.com/images/edit.png\" alt=\"Chính xác\" style=\"display: block; float: left;\">\r\n                                        <span style=\"display: block; float: left; margin: 8px 0 0 14px;\">CHỈNH SỬA</span>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <!--Sản phẩm gợi ý-->\r\n                <tr>\n    <td>\n        <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 25px 20px; text-align: center; font-weight: bold; width: 100%\">\n                    <p style=\"width: 100%; margin: 0\">SẢN PHẨM GỢI Ý</p>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n                <table class=\"width800\" style=\"width: 100%; background: #ffffff;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 0 20px 20px 20px; text-align: center;\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/29/ColgateCDC.png\" alt=\"\">\n                </td>\n                <td style=\"padding: 0 20px 20px 20px; text-align: center;\">\n                    <img src=\"http://dev.oaiha.com/images/uploads/thumbs/200x200/69/image.jpg\" alt=\"\">\n                </td>\n            </tr>\n            <tr>\n                <td style=\"padding: 0 20px 15px 20px; font-size: 18px; text-align: center;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">25.000đ</strong>\n                </td>\n                <td style=\"padding: 0 20px 15px 20px; font-size: 18px; text-align: center;\">\n                    <span style=\"color: #777777;\">Giá: </span>\n                    <strong style=\"color: #3f3e40\">185.000đ</strong>\n                </td>\n            </tr>\n            <tr>\n                <td style=\"padding: 20px 20px 33px 20px; text-align: center;\">\n                    <a class=\"button\" href=\"http://dev.oaiha.com/2ad78c4e78e56962cf9e39df71c9520d/4\" style=\"display: block; font-weight: bold; background: #636363; text-decoration: none; border-radius: 5px; color: #ffffff; border-bottom: 4px solid #363636; padding: 11px 24px;\">XEM THÊM</a>\n                </td>\n                <td style=\"padding: 20px 20px 33px 20px; text-align: center;\">\n                    <a class=\"button\" href=\"http://dev.oaiha.com/2ad78c4e78e56962cf9e39df71c9520d/4\" style=\"display: block; font-weight: bold; background: #636363; text-decoration: none; border-radius: 5px; color: #ffffff; border-bottom: 4px solid #363636; padding: 11px 24px;\">XEM THÊM</a>\n                </td>\n            </tr>\n        </table>\n            </td>\n</tr>\n\r\n                <!--Footer-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1;\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"width: 100%; padding: 30px 0 20px 20px;\">\r\n                                    <a href=\"#\" style=\"display: block; text-align: center; width: 100%\" >\r\n                                        <img src=\"http://dev.oaiha.com/images/footer-logo.png\" alt=\"Nhà con\"/>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"width: 100%; text-align: center; color: #3e3e3e; padding-bottom: 32px\">Sent with love from <a href=\"#\" style=\"color: #3e3e3e; text-decoration: none\">Nhacon team</a></td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>', '0', null, '1398614738');

-- ----------------------------
-- Table structure for `email_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `email_attachment`;
CREATE TABLE `email_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of email_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `email_templates`
-- ----------------------------
DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` tinytext,
  `sender_name` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_email` varchar(255) NOT NULL,
  `subject` tinytext NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of email_templates
-- ----------------------------
INSERT INTO email_templates VALUES ('17', 'CONFIRM_ORDER', 'Gửi mail cho khách hàng xác nhận đơn hàng', '[SENDER_NAME]', '[SENDER_EMAIL]', '[RECEIVER_NAME]', '[RECEIVER_EMAIL]', 'Cảm ơn [CUSTOMER_NAME] đã đặt hàng Nhà Con tháng [MONTH]', '<style>\r\n    table { border-spacing: 0; border-collapse: collapse; margin: 0 auto; }\r\n    .width800 { width: 100%;}\r\n    @media screen and (max-width: 100%)\r\n    {\r\n        .width800 { width: 540px}\r\n        .button { font-size: 16px !important; }\r\n        .confirm { padding-left: 35px !important; padding-right: 35px !important; }\r\n    }\r\n</style>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"font-size: 20px; line-height: 1; font-family: Tahoma, Arial, Helvetica, sans-serif; margin: 0 auto;\">\r\n    <tr>\r\n        <td>\r\n            <table class=\"width800\" cellspacing=\"0\" cellpadding=\"0\" style=\"width: 100%\">\r\n                <!--header-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%\">\r\n                            <tr>\r\n                                <td style=\"width: 240px; padding: 20px 0 20px 20px\">\r\n                                    <a href=\"#\" style=\"display: block; float: left\">\r\n                                        <img src=\"[BASE_URL]/images/full-logo.png\" alt=\"Nhà con\" style=\"display: block; border: none\"/>\r\n                                    </a>\r\n                                </td>\r\n                                <td valign=\"top\" style=\"font-size: 22px; font-weight: bold; width: 520px; padding: 28px 20px 20px 0; text-align: right\">\r\n                                    SMARTBOX<p style=\"margin: 0; font-size: 20px; font-weight: normal\">tháng [MONTH]</p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr><!--end header-->\r\n                <!--Body-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"background: #f1f1f1; width: 100%\">\r\n                            <tr>\r\n                                <td style=\"padding: 30px 20px 20px 20px\">\r\n                                    <h4 style=\"margin: 0; font-size: 20px\">Chào [CUSTOMER_NAME],</h4>\r\n                                    <p style=\"line-height: 24px;\">\r\n                                        Cảm ơn bạn đã đặt Gói Hàng Thông Minh đầu tiên của Nhà Con. Bạn là một trong những khách hàng đặc biệt đầu tiên của Nhà Con. Bạn sẽ nhận được gói hàng này vào ngày [DELIVERY_DATE].</p>\r\n                                    <p>Xin vui lòng kiểm tra dưới đây là những sản phẩm trong đơn hàng của bạn:</p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"background: #72c8b2\"><h3 style=\"margin: 17px 0 13px 0; text-align: center; color: #ffffff; font-size: 24px;\">SMARTBOX CỦA TÔI</h3></td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                [ORDER_HTML]\r\n\r\n                <!--Xác nhận đơn hàng-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1; font-size: 18px\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"color: #3e3e3e; font-weight: bold; text-align: center; padding: 25px 20px 35px 20px\">ĐƠN HÀNG CỦA BẠN ĐÃ CHÍNH XÁC HAY CHƯA?</td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1; font-size: 18px\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"width: 50%; padding: 0 20px 40px\">\r\n                                    <a class=\"button confirm\" href=\"[CUSTOMER_LINK]\" style=\"float: right; background-color: #e64d46; border-bottom: 5px solid #a81b2b; border-radius: 5px; display: inline-block; font-weight: bold; color: #ffffff; text-decoration: none; padding: 18px 25px;\">\r\n                                        <img src=\"[BASE_URL]/images/check.png\" alt=\"Chính xác\" style=\"display: block; float: left;\">\r\n                                        <span style=\"display: block; float: left; margin: 8px 0 0 14px;\">CHÍNH XÁC</span>\r\n                                    </a>\r\n                                </td>\r\n                                <td style=\"width: 50%; padding: 0 20px 40px\">\r\n                                    <a class=\"button confirm\" href=\"[CUSTOMER_LINK]\" style=\"float: left; background-color: #e64d46; border-bottom: 5px solid #a81b2b; border-radius: 5px; display: inline-block; font-weight: bold; color: #ffffff; text-decoration: none; padding: 18px 25px;\">\r\n                                        <img src=\"[BASE_URL]/images/edit.png\" alt=\"Chính xác\" style=\"display: block; float: left;\">\r\n                                        <span style=\"display: block; float: left; margin: 8px 0 0 14px;\">CHỈNH SỬA</span>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <!--Sản phẩm gợi ý-->\r\n                [RECOMMENDATION_HTML]\r\n                <!--Footer-->\r\n                <tr>\r\n                    <td>\r\n                        <table class=\"width800\" style=\"width: 100%; background: #f1f1f1;\" cellspacing=\"0\" cellpadding=\"0\">\r\n                            <tr>\r\n                                <td style=\"width: 100%; padding: 30px 0 20px 20px;\">\r\n                                    <a href=\"#\" style=\"display: block; text-align: center; width: 100%\" >\r\n                                        <img src=\"[BASE_URL]/images/footer-logo.png\" alt=\"Nhà con\"/>\r\n                                    </a>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"width: 100%; text-align: center; color: #3e3e3e; padding-bottom: 32px\">Sent with love from <a href=\"#\" style=\"color: #3e3e3e; text-decoration: none\">Nhacon team</a></td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </td>\r\n    </tr>\r\n</table>');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `provider_id` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `production_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name_category` varchar(127) DEFAULT NULL,
  `name_provider` varchar(127) DEFAULT NULL,
  `unit_value` varchar(10) DEFAULT NULL,
  `unit_text` varchar(63) DEFAULT NULL,
  `usage` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO products VALUES ('9', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">- Với chiết xuất từ cây liễu đen và phức hợp thảo mộc giúp chăm sóc làn da mụn, kiểm soát dầu và làm giảm bít tắt lỗ chân lông</span></span></p>\r\n', '5', '0000-00-00', '0000-00-00', '66', 'Nước hoa hồng toner', 'The Face Shop', '200', 'ml', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Dùng sau bước sữa rửa mặt, cho 1 lượng vừa đủ ra bông cotton và thoa đều nhẹ nhàng khắp mặt</span></span></p>\r\n');
INSERT INTO products VALUES ('10', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">Khăn giấy tẩy trang mềm mại Lingettes Expess của thương hiệu Bourjois, giúp bạn nhẹ nhàng tẩy đi lớp trang điểm</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">- Thành phần: 25% hoạt chất dưỡng da cộng thêm, khăn ướt Bourjois tăng cường sức mạnh tẩy trang mà không gây tổn thương cho làn da&nbsp;<br />\r\n- Tẩy trang nhanh chóng và thật hiệu quả chỉ trong 1 bước cùng khăn giấy tẩy trang của Bourjois</span></span></span></p>\r\n', '6', '0000-00-00', '0000-00-00', '33', 'Khăn giấy tẩy trang mềm mại Lingettes Expess', 'BOURJOIS', '25', 'Tờ', '');
INSERT INTO products VALUES ('11', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">- Công dụng giúp thư giãn, xóa tan bọng mỡ, làm mờ vết nhăn cho vùng mắt</span></span></span></p>\r\n', '5', null, null, '62', 'Dưỡng mắt', 'THE FACE SHOP', '25', 'ml', '');
INSERT INTO products VALUES ('12', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">- Chiết xuất từ trà xanh và Acaiberry</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">- Công dụng: giúp nhẹ nhàng làm sạch lớp trang điểm và giúp làm săn da, duy trì sự tươi trẻ cho làn da</span></span></span></p>\r\n', '5', null, null, '33', 'Tinh dầu tẩy trang chống lão hóa Oil Specialist Deep Firming Cleansing Oil', 'THE FACE SHOP', '200', 'ml', '');
INSERT INTO products VALUES ('13', '<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"text-align: justify; background-color: rgba(255, 255, 255, 0);\">- Hỗ trợ phát triển trí tuệ, thị giác trong suốt giai đoạn phát triển vượt bậc của não bộ:hệ dưỡng chất IQ chứa đầy đủ các dưỡng chất thiết yếu cho việc xây dựng, phát triển não bộ, thị giác, ngôn ngữ và thể chất gồm: DHA, AA, Omega 3, Omega 6, Taurin, Cholin, và Sắt. Ngoài ra còn được bổ sung thêm:</span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">+ Phospholipid với hàm lượng cao hơn, là thành phần cấu trúc và chức năng quan trọng của tế bào não.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">+ Lutein giúp bảo vệ võng mạc và tăng cường sức khỏe mắt.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">- Giúp tăng cường sức đề kháng:&nbsp;70% hệ miễn dịch của cơ thể nằm trên đường tiêu hóa. Gain Plus chứa hệ dưỡng chất đặc biệt Immunify hỗ trợ tăng cường sức đề kháng theo 3 cơ chế:</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">+ Prebiotic thúc đẩy sự phát triển của các vi khuẩn có lợi trên đường tiêu hóa, hỗ trợ khả năng miễn dịch tự nhiên của cơ thể.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">+ Probiotic giúp nuôi dưỡng đường tiêu hóa luôn khỏe mạnh.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">+ Nucleotid giúp tăng cường sức đề kháng.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">- Giúp tăng trưởng tốt:&nbsp;giàu canxi cùng hỗn hợp chất béo đặc biệt từ dầu thực vật cao cấp, không chứa dầu cọ, giúp canxi và các dưỡng chất được hấp thu tốt hơn, cho xương và răng chắc khỏe.</span></span></span></span></div>\r\n', '7', null, null, '42', 'Sữa bột bổ sung vi chất dinh dưỡng Gain Plus Eye Q ', 'ABBOTT', '900', 'gr', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Cách pha<br />\r\n- Khi pha cần vệ sinh sạch sẽ, pha và bảo quản đúng cách.&nbsp;<br />\r\n- Đun sôi nước trong 5 phút và để nguội (37 độ C) để pha chế theo hướng dẫn.<br />\r\n- Chỉ dùng muỗng có sẵn trong hộp để lường sữa.&nbsp;<br />\r\n- Lượng pha dư hơn một lần uống phải bảo quản trong tủ lạnh ở 2 - 4 độ C không quá 24 giờ.&nbsp;<br />\r\n- Khi đã cho bé bú chỉ dùng tối đa trong vòng 1 giờ, sau đó phải đổ bỏ.</span></span></p>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"text-align: justify; background-color: rgba(255, 255, 255, 0);\">- Không dùng lò vi sóng để pha hay hâm nóng vì có thể gây bỏng nặng.</span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"text-align: justify; background-color: rgba(255, 255, 255, 0);\">- Pha sữa với nước nóng hơn 37&ordm;C có thể làm giảm lợi ích của probiotic.</span></span></span></div>\r\n\r\n<div style=\"text-align: start;\">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n');
INSERT INTO products VALUES ('14', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">Sản phẩm chiết xuất hoàn toàn từ thiên nhiên, mềm mại và an toàn với làn da nhạy cảm của bé. Công thức độc đáo với công thức dưỡng ẩm và làm sạch nhẹ nhàng, cân bằng độ pH, đã được kiểm nghiệm và chứng nhận không gây kích ứng da và mắt.</span></span></span></p>\r\n', '9', null, null, '0', 'Dầu Tắm Gội Toàn Thân Màu Hồng', 'D-Nee', '380', 'Ml', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Hòa dung dịch trong nước tắm cho bé hoặc lấy một lượng vừa đủ dung dịch thoa lên tóc và cơ thể bé đã được làm ướt. Massage nhẹ nhàng và tắm lại bằng nước sạch.&nbsp;</span></span></p>\r\n');
INSERT INTO products VALUES ('15', '<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"text-align: justify; background-color: rgba(255, 255, 255, 0);\">Sữa bột Dielac Alpha 123 được nghiên cứu bởi Trung tâm nghiên cứu dinh dưỡng và Phát triển sản phẩm Vinamilk theo khuyến nghị của Ủy ban dinh dưỡng quốc tế Codex Alimentarius về dinh dưỡng đối với trẻ sơ sinh và trẻ nhỏ. Sản phẩm được chứng nhận quốc tế về an toàn vệ sinh thực phẩm HACCP.</span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"text-align: justify; background-color: rgba(255, 255, 255, 0);\">Công thức độc quyền Alpha bổ sung Sữa non Colostrum, DHA, Choline, Omega 3, Omega 6 và các dưỡng cần thiết khác nhằm cung cấp cho trẻ sơ sinh đến 6 tháng tuổi một năng lượng sống mạnh mẽ và bảo vệ bé khỏi tác nhân gây bệnh trong giai đoạn khởi đầu.</span></span></span></div>\r\n\r\n<div style=\"text-align: start;\">\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"text-align: justify; background-color: rgba(255, 255, 255, 0);\">- Sữa non Colostrum &ndash; Tăng sức đề kháng: Colostrum là một loại sữa non có tính chất đặc biệt quan trọng đối với bé ngay từ khi chào đời. Sữa non Colostrum cung cấp một lượng lớn các kháng thể, đặc biệt là IgA có tác dụng tăng cường hệ miễn nhiễm và bảo vệ hệ tiêu hoá non nớt của bé. Có sức khoẻ và hệ tiêu hoá tốt sẽ là tiền đề vững chắc cho bé hấp thu tối ưu các dưỡng chất cần thiết khác để phát triển hoàn hảo.</span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">- DHA được chiết xuất từ cá hồi và acid béo Omega 3, Omega 6 là những dưỡng chất rất cần thiết cho sự hình thành cấu trúc và phát triển chức năng của não bộ, tế bào võng mạc mắt làm nền tảng cho sự phát triển trí tuệ của bé.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">- Choline là thành phần quan trọng trong cấu trúc màng tế bào thần kinh hỗ trợ cho sự phát triển nhận thức của bé.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">- Canxi và Khoáng chất: Thúc đẩy phát triển chiều cao và thể chất: Hàm lượng Canxi cao và các khoáng chất cần thiết cho bé có hệ xương vững chắc ngay từ đầu làm tiền đề phát triển chiều cao tối ưu sau này.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">- Vitamin và nhiều dưỡng chất khác phù hợp cho sự phát triển hoàn hảo cho bé từ sơ sinh đến 6 tháng tuổi theo khuyến nghị của Ủy ban dinh dưỡng quốc tế Codex Alimentarius.</span></span></span></span></div>\r\n</div>\r\n', '10', null, null, '42', 'Sữa Bột Bổ Sung Vi Chất Dinh Dưỡng Dielac Alpha 123', 'Vinamilk', '900', 'Gr', '');
INSERT INTO products VALUES ('16', '<p style=\"margin-top: 0px; margin-bottom: 20px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">- Dành cho trẻ 9- 13kg<br />\r\n- Thiết kế dạng quần với hình ảnh ngộ nghĩnh, vui nhộn, sản phẩm tã quần sẽ làm cho bé thích thú, không còn khó chịu mỗi khi phải thay tã<br />\r\n- Chất liệu khử mùi, chống hăm da, thấm hút an toàn, chống tràn hiệu quả<br />\r\n- Đai hông co giãn mềm mại, vừa vặn một cách hoàn hảo sẽ mang lại sự thoải mái tối đa cho bé<br />\r\n- Mặt đáy thoát hơi ẩm dạng vải đẩy hơi nóng ra ngoài, giúp da bé hô hấp không khí một cách tự nhiên<br />\r\n- Thiết kế mỏng, nhẹ với lõi bông siêu thấm sẽ thấm hút chất lỏng cực nhanh, cho bé luôn khô thoáng và thỏa mái vận động<br />\r\n- Dễ sử dụng, giúp bé thoải mái vui chơi, đùa nghịch, không bị gián đoạn mỗi khi thay tã</span></span></span></p>\r\n', '11', null, null, '25', 'Tã Quần size L', 'Bobby Fresh', '20', 'miếng', '');
INSERT INTO products VALUES ('17', '<div class=\"box mtm fss clearfix\" id=\"productDesc\" itemprop=\"description\" style=\"zoom: 1; position: relative; box-sizing: border-box; height: auto; overflow: hidden; word-wrap: break-word; padding-bottom: 6px; margin-top: 10px !important;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">- Che khuyết điểm, bảo vệ, làm mềm, làm sáng và dưỡng ẩm ngay cả với vùng da nhạy cảm nhất</span><br />\r\n<span style=\"background-color: rgba(255, 255, 255, 0);\">- Cung cấp độ ẩm suốt 24 giờ<br />\r\n- Chống nắng với SPF 15</span></span></span></div>\r\n\r\n<div class=\"product-options clearfix\" id=\"productOptionsWrapper\" style=\"zoom: 1;\">\r\n<div class=\"mtm usr-selection\" style=\"margin-top: 10px !important; height: 14px;\">&nbsp;</div>\r\n</div>\r\n', '6', null, null, '34', 'Kem Che Khuyết Điểm 123 Perfect CC Eye Cream Beige Clair #22', 'Bourjois', '2', 'ml', '');
INSERT INTO products VALUES ('18', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Sữa tẩy trang chiết xuất từ sữa non, loại bỏ lớp trang điểm và tế bào chết cho da.&nbsp;</span></span></p>\r\n', '12', null, null, '33', 'Sữa Tẩy Trang Sữa Non Milky You Cleansing Milk', 'Etude House', '200', 'ml', '');
INSERT INTO products VALUES ('19', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">Loại băng siêu mỏng đặc biệt thiết kế để đảm bảo cho bạn sự tự tin tối đa.<br style=\"margin: 0px; padding: 0px;\" />\r\n- Bề mặt lưới 3D tăng cường độ khô ráo và thông thoáng.<br style=\"margin: 0px; padding: 0px;\" />\r\n- Hương Lavender thuần khiết giúp người dùng luôn thấy dễ chịu.<br style=\"margin: 0px; padding: 0px;\" />\r\n- Thiết kế mới với màng đáy in hoa trang nhã và phong cách.<br style=\"margin: 0px; padding: 0px;\" />\r\n- Vùng thấm hút trung tâm cải thiện tốc độ thấm hút và phân phối dịch lỏng xuống lớp đáy, ngăn thấm ngược lên bề mặt.</span></span></span></p>\r\n', '13', null, null, '33', 'Băng Vệ Sinh Siêu Mỏng Cánh ', 'Kotex', '8', 'miếng ', '');
INSERT INTO products VALUES ('20', '<p style=\"margin: 0px 0px 10px; padding: 0px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\">Kotex Pro Đêm siêu dài, siêu mỏng, siêu an toàn. Vì bạn xứng đáng có một giấc ngủ ngon.<br style=\"margin: 0px; padding: 0px;\" />\r\nCông nghệ chống tràn độc quyền ProActive Guards:<br style=\"margin: 0px; padding: 0px;\" />\r\nHai rãnh chống tràn ở hai bên miếng băng chủ động nâng lên và nhẹ nhàng ôm sát cơ thể khi tiếp xúc với dịch lỏng, hình thành hàng rào ngăn chất lỏng tràn ra bên ngoài, giúp bảo vệ giấc ngủ suốt đêm.<br style=\"margin: 0px; padding: 0px;\" />\r\nMiếng băng dài 32 cm với thiết kế siêu mỏng trải rộng ra phía sau cho bạn cảm giác thoải mái mà vẫn an toàn trong mọi tư thế ngủ.<br style=\"margin: 0px; padding: 0px;\" />\r\nMặt lưới 3D với vùng thấm hút trung tâm đẩy nhanh tốc độ thấm hút dịch lỏng, khóa chặt chất lỏng xuống lớp đáy, ngăn thấm ngược trở lại, tăng cường độ khô ráo và thông thoáng.</span></span></span></p>\r\n', '13', null, null, '37', 'Băng Vệ Sinh Ban Đêm 32 cm', 'Kotex', '3', 'miếng ', '');
INSERT INTO products VALUES ('21', '<p><span style=\"font-family: georgia, serif; text-align: justify; outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\">- Sắt: Với hàm lượng 35miligram kết hợp với lactoferrin (thành phần này ngăn không cho vi khuẩn gây bệnh không hấp thu sắt tồn tại). Nhờ đó sắt được hấp thu hoàn toàn giúp&nbsp;</span><span style=\"font-family: georgia, serif; text-align: justify; outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\">tăng cường miễn dịch, phòng chống nhiễm khuẩn cho mẹ và bé. Ngăn tình trạng&nbsp;</span><span style=\"font-family: georgia, serif; text-align: justify; outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\">mệt mỏi ở mẹ, sảy thai, đẻ non, đẻ con nhỏ, yếu, dễ bị băng huyết sau sinh.</span></p>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify;\">-&nbsp;<span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\">Axit folic: Với hàm lượng chuẩn 820 microgram &ndash; I am Mother Mom không những giúp giảm thiểu nguy cơ sảy thai và ngộ độc thai, mà còn</span><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\">phòng thiếu máu cho mẹ, hạn chế dị tật ống thần kinh ở thai nhi.</span></span></span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify;\">-&nbsp;<span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\">Canxi được bổ sung lên tới 1200 miligram, không những thế canxi trong I am mother Mom là nanocalcium (phân tử rất nhỏ, kích thước tính bằng đơn vị nano) kết hợp với CPP (thành phần giúp tăng cường hấp thu canxi) có tác dụng phòng chống loãng xương cho mẹ, xây dựng và phát triển hệ xương, răng cho bé.</span></span></span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify;\">- Vị ngọt mát, dễ uống do không dùng đường mà chỉ sử dụng gốc đường cao phân tử FOS giúp thai phụ tránh được hiện tượng táo bón.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify;\">- Quản lý hạn sử dụng sản phẩm nghiêm ngặt bằng cách dập nổi hạn sử dụng dưới dáy lon.</span></span></span></span></div>\r\n', '14', null, null, '14', 'Sữa Bột Cho Mẹ Bầu', 'I am mother', '800', 'gr', '<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"background-color: rgba(255, 255, 255, 0);\"><span style=\"text-align: justify;\">-&nbsp;</span><span id=\"ctl00_cntContent_ctlNewsContent\" style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify;\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\">Sau khi mở hộp hãy sử dụng trong vòng 20 ngày nếu có thể.</span></span></span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span id=\"ctl00_cntContent_ctlNewsContent\" style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify; background-color: rgba(255, 255, 255, 0);\"><span style=\"font-style: inherit;\">- Không bảo quản trong tủ lạnh hay ở nơi có ánh sáng trực tiếp chiếu vào.</span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span id=\"ctl00_cntContent_ctlNewsContent\" style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify; background-color: rgba(255, 255, 255, 0);\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\"><span style=\"font-style: inherit;\">- Sau khi mở hộp dùng chú ý đậy nắp cẩn thận không cho ẩm, côn trùng, vật lạ lọt vào và bảo quản ở nơi khô mát.</span></span></span></span></span></div>\r\n\r\n<div style=\"text-align: start;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span id=\"ctl00_cntContent_ctlNewsContent\" style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; text-align: justify; background-color: rgba(255, 255, 255, 0);\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\"><span style=\"outline: 0px; margin: 0px; padding: 0px; border: 0px; font-style: inherit; vertical-align: baseline;\"><span style=\"font-style: inherit;\">- Nhất thiết phải sử dụng thìa có trong sản phẩm và chú ý bảo quản riêng thật sạch sẽ.</span></span></span></span></span></span></div>\r\n');
INSERT INTO products VALUES ('22', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"line-height: 20px; color: rgb(51, 51, 51); text-align: justify;\">Hàng việt nam chất lượng cao&nbsp;mang lại sự yên tâm cho Bạn khi sử dụng sản phẩm. Chất liệu vải tốt có khả năng thấm hút mồ hôi&nbsp; và co giãn cao giúp bạn luôn cảm thấy thoải mái và thoáng mát suốt cả ngày tôn vinh lên vẻ nam tính của đàn ông.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><font style=\"font-family: georgia, serif; line-height: 20px; color: rgb(51, 51, 51); text-align: justify;\">Chất liệu:</font><font style=\"font-family: georgia, serif; line-height: 20px; color: rgb(51, 51, 51); text-align: justify;\">&nbsp;90%Polyamide&nbsp;10%Spandex.</font></span></span></p>\r\n', '15', null, null, '48', 'Quần lót nam', 'Freeman', '', '', '');
INSERT INTO products VALUES ('23', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"color: rgb(0, 0, 0); line-height: 20.280000686645508px;\">Đầu lưỡi tự động điều chỉnh theo đường cong khuôn mặt bạn giúp việc cạo râu trở nên an toàn.</span><br style=\"font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: small; line-height: 20.280000686645508px;\" />\r\n<span style=\"color: rgb(0, 0, 0); line-height: 20.280000686645508px;\">Hệ thống lưỡi kép thiết kế đặc biệt giúp bạn cạo sát và giảm khả năng gây trầu sướt và cạo sạch hơn. Lưỡi đầu tiên cạo sát, lưỡi thứ hai cạo sạch hơn.</span></span></span><br style=\"font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: small; line-height: 20.280000686645508px;\" />\r\n<br style=\"font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-size: small; line-height: 20.280000686645508px;\" />\r\n&nbsp;</p>\r\n', '16', null, null, '49', 'dao cạo râu', 'Gillette Vector', '', '', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"color: rgb(0, 0, 0); line-height: 20.280000686645508px;\">Cho tối đa 3 lần cạo mỗi tuần, thay hang thang</span></span></span></p>\r\n');
INSERT INTO products VALUES ('24', '<p class=\"prTitle hidden-xs\" cluster=\"10bfc3233d314d408d829af2fb0f7fae\" id=\"cluster_id\" style=\"box-sizing: border-box; margin: 0px; font-size: 23px; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: rgb(51, 51, 51); padding: 0px; display: table-cell; vertical-align: middle;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">khăn tắm màu trắng</span></span></span></p>\r\n\r\n<p class=\"prTitle hidden-xs\" cluster=\"10bfc3233d314d408d829af2fb0f7fae\" style=\"box-sizing: border-box; margin: 0px; font-size: 23px; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: rgb(51, 51, 51); padding: 0px; display: table-cell; vertical-align: middle;\">&nbsp;</p>\r\n\r\n<p class=\"prTitle hidden-xs\" cluster=\"10bfc3233d314d408d829af2fb0f7fae\" style=\"box-sizing: border-box; margin: 0px; font-size: 23px; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: rgb(51, 51, 51); padding: 0px; display: table-cell; vertical-align: middle;\">&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Kich thuoc 70x 40cm</span></span></p>\r\n', '17', null, null, '37', '', '', '', '', '');
INSERT INTO products VALUES ('25', '<h1 class=\"prTitle hidden-xs\" cluster=\"f533ec5a421005a416adad2363c717d0\" id=\"cluster_id\" style=\"box-sizing: border-box; margin: 0px; font-size: 23px; font-family: \'Open Sans\', sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); padding: 0px; display: table-cell; vertical-align: middle;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Bàn chải 360 Deep Clean</span></span></h1>\r\n', '18', null, null, '50', '', 'Colgate', '', '', '');
INSERT INTO products VALUES ('26', '', '19', null, null, '50', '', 'Coast', '', '', '');
INSERT INTO products VALUES ('27', '<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Làm sạch sâu với các hạt đen và hạt trắng</strong><br />\r\nHạt đen sẽ giúp hút sạch bã nhờn và loại bỏ mụn đầu đen một cách triệt để. Hạt trắng có tác dụng làm sạch sâu tận các rãnh nhỏ trên da và lấy đi tế bào chết gây sạm da.</span></span></p>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Thu nhỏ lỗ chân lông</strong><br />\r\nCông thức đột phá không chỉ giúp làm sạch sâu mạnh mẽ mà còn có tác dụng thu nhỏ lỗ chân lông, mang đến cho bạn làn da sáng khỏe và sạch mụn.</span></span></p>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Hương Aquatic Cool mát lạnh</strong><br />\r\nVới hương thơm sảng khoái và đầy nam tính, sản phẩm sẽ tạo cảm giác dễ chịu và thoải mái khi sử dụng.</span></span></p>\r\n', '20', null, null, '50', 'Sữa rửa mặt', 'Biore', '50', 'gram', '');
INSERT INTO products VALUES ('28', '<p style=\"margin: 0px 0px 1em; padding: 0px; color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13px; line-height: 20px; text-align: justify;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Thành phần với tinh dầu bạc hà mát lạnh, giúp trị sạch gàu, làm mát da đầu.<br style=\"margin: 0px; padding: 0px;\" />\r\nHương thơm sảng khoái, quyến rũ.</span></span></p>\r\n\r\n<p style=\"margin: 0px 0px 1em; padding: 0px; color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13px; line-height: 20px; text-align: justify;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Loại tóc phù hợp</span><br style=\"margin: 0px; padding: 0px;\" />\r\nDành cho mọi loại tóc.</span></span></p>\r\n', '21', null, null, '50', '', 'CLEAR', '650', 'gram', '');
INSERT INTO products VALUES ('29', '<h1 class=\"prTitle hidden-xs\" cluster=\"ba9795751a428044ac69e060e4174020\" id=\"cluster_id\" style=\"box-sizing: border-box; margin: 0px; font-size: 23px; font-family: \'Open Sans\', sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); padding: 0px; display: table-cell; vertical-align: middle;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">Kem đánh răng</span></strong></span></span></h1>\r\n\r\n<h1 class=\"prTitle hidden-xs\" cluster=\"ba9795751a428044ac69e060e4174020\" style=\"box-sizing: border-box; margin: 0px; font-size: 23px; font-family: \'Open Sans\', sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); padding: 0px; display: table-cell; vertical-align: middle;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">&nbsp;ngừa sâu răng tối đa,&nbsp;Hương bạc hà</span><span style=\"color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">&nbsp;the&nbsp;</span><span style=\"font-weight: bold; color: rgb(84, 84, 84); line-height: 18.200000762939453px;\">mát</span></strong></span></span></h1>\r\n', '18', null, null, '50', '', 'Colgate', '250', 'gram', '');
INSERT INTO products VALUES ('30', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">- Có tác dụng làm sạch giữa các khe răng của bạn cho sức khỏe răng miệng tối ưu!Với chiều dài 40m được quấn gọn trong hộp nhỏ, giúp bạn dễ dàng đem theo bên mình, tiện lợi mọi lúc mọi nơi.</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">- Giúp làm mới và loại bỏ mảng bám khi sử dụng thường xuyên.</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">- Có hương vị Bạc Hà the mát mang lại cảm giác dễ chịu cho người sử dụng.</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">- Có chứa fluoride chống mảng bám gây sâu răng , viêm nướu .</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">- Đem lại cho bạn cảm giác thoải mái và hơi thở thơm tho.</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">&nbsp;Cách dùng tăm để loại bỏ thức ăn trong kẽ răng như hiện nay rất dễ làm tổn thương lợi, dẫn đến viêm nhiễm, tạo ra lỗ hổng ngày càng lớn giữa các răng. Do đó các nha sĩ khuyên bạn nên thay thế bằng chỉ tơ nha khoa. Đây là sản phẩm đã được chứng minh lâm sàng để loại bỏ mảng bám giữa các răng, giúp ngăn ngừa bệnh nướu răng.</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Khi dùng chỉ tơ nha khoa, mảng bám sẽ được lấy khỏi bề mặt răng (kẽ răng) trước khi chúng có cơ hội hình thành vôi răng. Mảng bám và vôi răng là nguyên nhân gây ra sâu răng cũng như các bệnh lý về nướu. Các bệnh lý nướu răng nếu không điều trị sẽ dẫn đến bệnh viêm nha chu, gây mất xương và cấu trúc nâng đỡ răng, làm răng lung lay. Viêm nha chu đòi hỏi rất nhiều phí tổn và thời gian điều trị.</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Hương bạc hà rất dễ sử dụng, không gây chấn thương cho nướu răng, là vật dụng cần thiết trong túi xách hoặc ngăn tủ văn phòng của bạn để sử dụng ngay khi cần.</span></span></p>\r\n', '22', null, null, '50', '', 'Glide', '40', 'm', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Lấy một đoạn chỉ dài khoảng 30-45cm. Cuộn hai đầu chỉ vào hai ngón giữa, căng đoạn chỉ này bằng hai ngón cái và ngón trỏ sao cho ở giữa còn một đoạn khoảng 3-5cm.</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Kéo nhẹ nhàng để sợi chỉ chui lọt vào kẽ răng, sau đó uốn sợi chỉ ôm quanh răng. Kéo chỉ lên xuống để làm sạch răng. Nên đưa sợi chỉ nhẹ nhàng dưới nướu một ít. Như vậy ở mỗi kẽ răng, ta lặp lại động tác trên ít nhất hai lần, một lần cho phía bên phải của kẽ răng, một lần cho phía bên trái.</span></span></p>\r\n');
INSERT INTO products VALUES ('31', '<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; line-height: 18px; color: rgb(102, 102, 102); font-family: Verdana, Arial, sans-serif; background-position: 0px 0px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Don&#39;t wipe out - wipe off! Elemis FreshSkin Make-Up Away Cleansing Wipes are the ultimate weapon of choice to remove all the dirt and grime that gets stuck on your skin every day. It works a treat too!</span></span></p>\r\n\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; line-height: 18px; color: rgb(102, 102, 102); font-family: Verdana, Arial, sans-serif; background-position: 0px 0px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Elemis FreshSkin Make-Up Away Cleansing Wipes are enriched with elderflower extract and chamomile to gently sweep away impurities whilst softening and conditioning the skin. This formulation acts as a purifying cleanser and is suitable for all skin types, including sensitive skin.</span></span></p>\r\n', '23', null, null, '33', 'Khăn giấy tẩy trang ', 'Elemis', '25', 'to', '');
INSERT INTO products VALUES ('32', '<p><span style=\"font-family:georgia,serif;\"><span style=\"font-size:12px;\"><strong style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; background-color: rgb(253, 252, 231);\">Tutti Fruitti&nbsp;</strong><span style=\"line-height: 18px; text-align: justify;\">là thương hiệu&nbsp;</span><a href=\"http://funnyland.vn/san-pham-p363172/75909\" style=\"color: rgb(51, 51, 51); outline: none; text-decoration: none; display: inline-block; font-family: Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; background-color: rgb(253, 252, 231);\" title=\"Đồ chơi\">Đồ chơi</a><span style=\"line-height: 18px; text-align: justify;\">&nbsp;bột nặn hương thơm cao cấp, được sản xuất tại Canada, đã qua kiểm định chất lượng Châu Âu nên đạt độ an toàn tuyệt đối, màu sắc sinh động, tươi sáng và hương thơm như thật. Bé sẽ thích mê ly khi được tha hồ nhào nặn tạo nên các món ăn thật hấp dẫn.</span></span></span></p>\r\n\r\n<p><span style=\"font-family:georgia,serif;\"><span style=\"font-size:12px;\"><span style=\"line-height: 18px; text-align: justify;\">Kích thước: 7.94 x 7.62 x 22.86 cm</span></span></span></p>\r\n', '24', null, null, '27', '', 'Tutti Fruitti ', '', '', '');
INSERT INTO products VALUES ('33', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\">- Vệ sinh hàng ngày:</strong><span style=\"color: rgb(0, 0, 0); line-height: 14.300000190734863px; text-align: justify;\">&nbsp;dành cho mọi đối tượng, không phân biệt lứa tuổi và giới tính. Thích hợp vệ sinh thân thể (tắm, rửa) đối với trường hợp bị bệnh ngoài Da, đang điều trị và sau khi điều trị các bệnh ngoài Da, Da dễ bị kích ứng, Da dị ứng với xà phòng. Sản phẩm có tác dụng dưỡng ẩm sâu cho Da, làm sạch Da, đem lại cảm giác tươi mới và giữ lại mùi hương tinh khiết trên Da.</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\" />\r\n<br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\" />\r\n<span style=\"color: rgb(0, 0, 0); line-height: 14.300000190734863px; text-align: justify;\">Đặc biệt sản phẩm rất tốt dùng chăm sóc cơ thể Phụ nữ, Phụ nữ sau sinh, chăm sóc Da non ở Trẻ em và các bệnh nhân có bệnh ngoài Da do tác động làm sạch rất nhẹ nhàng của các thành phần có trong công thức sản phẩm.</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\" />\r\n<br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\" />\r\n<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\">- Vệ sinh phụ khoa:</strong><span style=\"color: rgb(0, 0, 0); line-height: 14.300000190734863px; text-align: justify;\">&nbsp;rửa sạch nhẹ nhàng phần phụ, khử hoàn toàn hết mùi hôi khó chịu, đem lại cảm giác tươi mát, giữ vững độ cân bằng pH sinh lý tự nhiên, ổn định hệ kháng khuẩn và gia tăng khả năng đề kháng của màng nhầy.</span><br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\" />\r\n<br style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\" />\r\n<span style=\"color: rgb(0, 0, 0); line-height: 14.300000190734863px; text-align: justify;\">Làm lành nhanh các tổn thương, chống viêm, chống nhiễm khuẩn trong phụ khoa.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\"><em style=\"margin: 0px; padding: 0px;\">Thành phần:</em></strong><span style=\"color: rgb(51, 51, 51); line-height: 14.300000190734863px; text-align: justify;\">&nbsp;</span><strong style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\">chiết xuất Hoa Lan Chuông, Lactic Acid,</strong><span style=\"color: rgb(51, 51, 51); line-height: 14.300000190734863px; text-align: justify;\">&nbsp;Aqua (Water), Sodium Laureth Sulfate, Cocamidopropyl Betaine,&nbsp; Panthenol, Cocamide DEA, PEG-120 Methyl Glucose Dioleate, Sodium Benzoate, Parfum (Fragrance), Butylphenyl Methylpropional, Linalool, CI 42090 (FD&amp;C Blue No.1).Lactic Acid, Aqua (Water), Sodium Laureth Sulfate, Cocamidopropyl Betaine,&nbsp; Panthenol, Cocamide DEA, PEG-120 Methyl Glucose Dioleate, Sodium Benzoate, Parfum (Fragrance), Butylphenyl Methylpropional, Linalool, CI 42090 (FD&amp;C Blue No.1)</span></span></span></p>\r\n', '25', null, null, '55', 'Dung dịch vệ sinh', 'Intima Ziaja', '200', 'ml', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"color: rgb(68, 68, 68); line-height: 14.300000190734863px; text-align: justify;\">Lấy một lượng vừa đủ ra tay hoặc bông tắm, xoa đều nhẹ nhàng, sau đó rửa lại bằng nước.</span><br style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\" />\r\n<br style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: 11px; line-height: 14.300000190734863px; text-align: justify;\" />\r\n<span style=\"color: rgb(68, 68, 68); line-height: 14.300000190734863px; text-align: justify;\">Có thể sử dụng vài lần trong ngày tùy theo nhu cầu.</span></span></span></p>\r\n');
INSERT INTO products VALUES ('36', '', '27', null, null, '36', '', 'Nestle', '15', 'gói', '');
INSERT INTO products VALUES ('37', '<p style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: Arial, Helvetica, sans-serif; line-height: 22px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px;\">Trị mụn tận gốc là phải làm thoát sạch các chất bã nhờn khỏi nang lông tuyến bã và tiêu diệt vi khuẩn gây mụn. Các phương pháp trị mụn đợn giản với bộ&nbsp;</span><span style=\"margin: 0px; padding: 0px;\">AC Clinic</span><span style=\"margin: 0px; padding: 0px;\">&nbsp;100% nguyên liệu thiên nhiên kết hợp với công nghệ trị mụn hiện đại hàng đầu thế giới sẽ mang lại hiệu quả đa năng:</span></span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; color: rgb(50, 50, 50); font-family: Arial, Helvetica, sans-serif; line-height: 22px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px;\">&bull; Tiêu diệt mụn tận gốc và ngăn ngừa mụn quay trở lại.<br style=\"margin: 0px; padding: 0px;\" />\r\n&bull; Xóa vết thâm và chống để lại sẹo nhờ tinh chất nghệ và hoa hướng dương trong tinh dầu trị mụn<br style=\"margin: 0px; padding: 0px;\" />\r\n&bull; Làm trắng da nhờ bước trị liệu trắng hồng ở cuối liệu trình.</span></span></span></p>\r\n', '12', null, null, '65', '', 'Etude House', '', '', '');
INSERT INTO products VALUES ('38', '<p><span style=\"font-family:georgia,serif;\"><span style=\"font-size:12px;\"><strong style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; background-color: rgb(253, 252, 231);\"><a href=\"http://funnyland.vn/san-pham-p363172/75909\" style=\"color: rgb(51, 51, 51); outline: none; font-weight: normal; text-decoration: none; display: inline-block;\" title=\"Đồ chơi\">Đồ chơi</a>&nbsp;bột nặn Tutti Fruitti hương trái cây(1 bộ có 3 mùi khác nhau)</strong><span style=\"line-height: 18px; text-align: justify;\">&nbsp;là bột nặn hương thơm cao cấp, được sản xuất tại Canada, đã qua kiểm định chất lượng Châu Âu nên đạt độ an toàn tuyệt đối, màu sắc sinh động, tươi sáng và hương thơm như thật. Bé sẽ thích mê ly khi được tha hồ nhào nặn tạo nên các món ăn thật hấp dẫn.</span></span></span></p>\r\n\r\n<p><span style=\"font-family:georgia,serif;\"><span style=\"font-size:12px;\"><span style=\"line-height: 18px; text-align: justify;\">Kích thước: 7.94 x 7.62 x 22.86 cm</span></span></span></p>\r\n', '24', null, null, '27', 'Đồ Chơi', 'Tutti Fruitti ', '3', 'hop', '');
INSERT INTO products VALUES ('39', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Nếu trong thời kì mang thai, người phụ nữ bị căng thẳng cao độ do tất cả các thay đổi về hoocmon, tình trạng ốm nghén, mệt mỏi thì sau khi sinh, cơ&nbsp;thể chị em lần nữa lại trải qua rất nhiều biến đổi: tăng cân, vòng eo to hơn so với hông, các cơbụng bị kéo dãn ra&hellip; gây ra nhiều thay đổi to lớn thể trạng lẫn cảm xúc. Phục hồi cả vóc dáng và nhan sắc sau sinh là ước mơ&nbsp;của tất cả phụ nữ, thế nhưng hãy nhớ tuân thủ các nguyên tắc về tập luyện &amp; sử dụng mỹ phẩm để đảm bảo sức khỏe cho bé, đồng thời không quá vội vàng lao vào tập luyện làm tổn thương cơ&nbsp;thể. Các mẹ nên tìm hiểu kỹ về các liệu pháp và chọn cho mình cách an toàn, phù hợp với cơ&nbsp;thể để có được hiệu quả tốt nhất.</span></span></p>\r\n\r\n<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">Được giới thiệu lần đầu tại Malaysia vào năm 2006, đến nay nhãn hiệu Tanamera đã được sử dụng trên 100 trung tâm spa tại Malaysia. Tanamera là một trong những đại diện tiêu biểu cho mỹ phẩm thiên nhiên miền nhiệt đới. Theo tiếng Malaysia, Tanamera có nghĩa là Đất Đỏ, là nguồn gốc sản sinh ra các &nbsp;nguyên vật liệu &nbsp;phong phú từ vùng đất của rừng mư</span><span style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">a nhi</span><span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">ệt đới. Các mỹ phẩm của Tanamera được sản xuất theo nguyên tắc không hóa chất độc hại, không màu và mùi hươ</span><span style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">ng t</span><span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">ổng hợp. Quy trình sản xuất được theo tiêu chuẩn quốc tế GMP và ISO, sản phẩm được đóng gói bằng giấy chư</span><span style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">a qua t</span><span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">ẩy trắng, thân thiện với môi trường , có thể tái sử dụng được. Năm 2004, lần đầu tiên sản phẩm Tanamera có mặt tại Đức và đến nay đã có thị trường ở Nga, Đan Mạch, CH Sec, Tiệp Khắc, Bỉ, Hà Lan, Mĩ, Nhật, Việt Nam, Ả Rập Saudi, Arập Thống Nhất.</span></span></span></p>\r\n\r\n<div><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: small; line-height: 18.001800537109375px;\">Tác dụng:</strong><br style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: small; line-height: 18.001800537109375px;\" />\r\n<span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">- Hạn chế sự hình thành sắc tố và các đốm lão hóa.</span><br style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: small; line-height: 18.001800537109375px;\" />\r\n<span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">- Có tác dụng làm sáng da.</span><br style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: small; line-height: 18.001800537109375px;\" />\r\n<span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">- Cung cấp thêm ẩm sâu dưới da, như</span><span style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">ng không có c</span><span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">ảm giác bị nhờn.</span><br style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: small; line-height: 18.001800537109375px;\" />\r\n<span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">Chỉ định:&nbsp;dành cho mọi loại da, kể cả làn da mỏng manh và nhạy cảm.</span><br style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: small; line-height: 18.001800537109375px;\" />\r\n<span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">Lư</span><span style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">u ý</span><span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">: Kem dưỡng có thành phần thảo mộc, nên sẽ chỉ thấm từ từ. Thoa kem dưỡng bằng cách vỗ nhẹ nhàng, không tỳ miết da.</span></span></span></div>\r\n', '28', null, null, '66', 'Nước hoa hồng toner', 'Tanamera', '', '', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">- Dùng sau mỗi khi rửa mặt</span><br style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: small; line-height: 18.001800537109375px;\" />\r\n<span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">- Tonner được chư</span><span style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">ng c</span><span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">ất từ những cánh hoa hồng organic, được coi là bước cuối cùng trong quy trình làm sạch đúng cách. Sử dụng nước cân bằng thường xuyên có tác dụng giữ cho độ pH của da ở trạng thái cân bằng, ổn định da, thu nhỏ lỗ chân lông, làm sạch phần còn lại mà sữa rửa mặt không làm sạch được và bổ sung nước cho da suốt cả ngày.</span><br style=\"padding: 0px; margin: 0px; color: rgb(68, 68, 68); font-family: Arial; font-size: small; line-height: 18.001800537109375px;\" />\r\n<span style=\"color: rgb(68, 68, 68); line-height: 18.001800537109375px;\">- Sử dụng cho mọi loại da.</span></span></span></p>\r\n');
INSERT INTO products VALUES ('40', '<p style=\"margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; text-align: justify; color: rgb(125, 112, 93); font-family: Cambria; line-height: 23.799999237060547px;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Đây là bước chăm sóc da cơ bản giúp hỗ trợ bảo vệ lớp màng Hydro Lipid Film của da, cung cấp dưỡng chất, bảo vệ da chống mất nước bên ngoài. Bên cạch đó, dưỡng ẩm giúp bạn duy trì độ đàn hồi của tế bào, khiến làn da trở nên căng mịn và khỏe mạnh hơn.</span></span></span></span></p>\r\n\r\n<p style=\"margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; text-align: justify; color: rgb(125, 112, 93); font-family: Cambria; line-height: 23.799999237060547px;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Với chiết xuất 100% thiên nhiên bao gồm: tinh dầu hoa hướng dương, dầu Jojoba, bột khoai tây, lá trà xanh&hellip;giúp cung cấp dưỡng chất , bảo vệ da chống mất nước bên ngoài. Bên cạnh đó, dưỡng ẩm giúp duy trì độ đàn hồi của tế bào, khiến da trở nên mịn màng và khỏe mạnh.</span></span></span></span></p>\r\n\r\n<p style=\"margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; text-align: justify; color: rgb(125, 112, 93); font-family: Cambria; line-height: 23.799999237060547px;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><em style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Tác dụng:</span></strong></em></span></span></span></p>\r\n\r\n<ul style=\"margin: 0px 0px 20px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; list-style-position: initial; list-style-image: initial; color: rgb(125, 112, 93); font-family: Cambria; line-height: 23.799999237060547px; text-align: justify;\">\r\n	<li style=\"margin: 0px 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Hạn chế sự hình thành sắc tố và các đốm lão hóa.</span></span></span></span></li>\r\n	<li style=\"margin: 0px 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Có tác dụng làm sáng da.</span></span></span></span></li>\r\n	<li style=\"margin: 0px 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Cung cấp thêm ẩm sâu dưới da, nhưng không có cảm giác bị nhờn.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; text-align: justify; color: rgb(125, 112, 93); font-family: Cambria; line-height: 23.799999237060547px;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-color: transparent; background-position: initial initial; background-repeat: initial initial;\"><em style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Chỉ định:&nbsp;</em></strong>dành cho mọi loại da, kể cả làn da mỏng manh và nhạy cảm.</span></span></span></span></p>\r\n\r\n<p style=\"margin: 0px 0px 5px; padding: 5px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; text-align: justify; color: rgb(125, 112, 93); font-family: Cambria; line-height: 23.799999237060547px;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Thành phần : Chiết xuất hoa dâm bụt, tinh dầu cam, tinh dầu Cajeput Ambon, tinh dầu May Chang.</span></strong></span></span></span></p>\r\n', '28', null, null, '15', '', 'Tanamera', '70', 'gram', '<ol style=\"margin: 0px 0px 20px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-color: transparent; list-style-position: initial; list-style-image: initial; color: rgb(125, 112, 93); font-family: Cambria; line-height: 23.799999237060547px; text-align: justify;\">\r\n	<li style=\"margin: 0px 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><span style=\"color:#000000;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Thoa đều nhẹ nhàng trong vài phút.&nbsp;</span><em style=\"color: rgb(125, 112, 93); font-family: Cambria; font-size: 14px; line-height: 23.799999237060547px; text-align: justify; background-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Lưu ý: kem dưỡng có thành phần thảo mộc, nên sẽ chỉ thấm từ từ. Thoa kem dưỡng bằng cách vỗ nhẹ nhàng, không tỳ miết da.</span></strong></em></span></span></span></li>\r\n</ol>\r\n');
INSERT INTO products VALUES ('41', '', '29', null, null, '37', '', 'Yejimin', '24', 'miếng', '');
INSERT INTO products VALUES ('42', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 20px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Dung dịch vệ sinh phụ nữ với chiết xuất hoa râm bụt hồng. Hương thơm dịu nhẹ và Hoa râm bụt hồng giúp tăng cảm giác sạch mát kết hợp với axit lactic tự nhiên chăm sóc vùng da nhạy cảm. Hương thơm không gây dị ứng mang giúp bạn nâng niu vẻ nữ tính của mình. Độ PH thấp cùng mùi hương không gây dị ứng giúp duy trì độ ẩm cân bằng tự nhiên vùng da nhạy cảm của bạn và axit lactic mang lại hiệu quả bảo vệ.</span></span></span></p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 20px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Nhãn hiệu: Oriflame</span></span></span></p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 20px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent;\">Xuất xứ: Thụy Điển</span></span></span></p>\r\n', '30', null, null, '55', 'Dung dịch vệ sinh', 'Oriflame', '', '', '');
INSERT INTO products VALUES ('45', '', '29', null, null, '37', '', 'Yejimin', '4', 'miếng', '');
INSERT INTO products VALUES ('46', '', '29', null, null, '37', '', 'Yejimin', '20', 'miếng', '');
INSERT INTO products VALUES ('47', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"color: rgb(51, 51, 51); line-height: 20px;\">Điều trị mụn với&nbsp; tinh chất cây trà nhanh chóng làm dịu nốt mụn, giải độc tố, kiềm dầu và loại bỏ tế bào chết vùng mụn.</span></span></span></p>\r\n', '5', null, null, '33', '', 'The Face Shop', '18', 'ml', '');
INSERT INTO products VALUES ('48', '', '29', null, null, '37', '', 'Yejimin', '150', 'ml', '');
INSERT INTO products VALUES ('49', '<div class=\"product-main-info\" style=\"border: 0px; margin: 0px 0px 15px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif;\">\r\n<div class=\"wysiwyg-content\" id=\"content_description\" style=\"border: 0px; margin: 0px; padding: 10px; line-height: 24px;\">\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Sữa rửa mặt Tanamera</strong></span></span></p>\r\n\r\n<ul style=\"border: 0px; margin: 0px; padding-right: 0px; padding-left: 0px; list-style-type: none;\">\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Chiết xuất hoa dâm bụt, tinh dầu cam, cây Tràm, Màng Tang.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Sản phẩm giúp loại bỏ bụi bẩn, làm sạch sâu ,cho làn da sạch và mềm mại mà không bị khô.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Diệt khuẩn, giải phóng lượng dầu thừa, làm thông thoáng lỗ chân lông, tăng cường hệ miễn dịch cho da.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Nước hoa hồng Tanamera</strong></span></span></p>\r\n\r\n<ul style=\"border: 0px; margin: 0px; padding-right: 0px; padding-left: 0px; list-style-type: none;\">\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Chưng cất từ hoa, được coi là bước cuối cùng trong quy trình làm sạch đúng cách. Sản phẩm phù hợp với mọi loại da.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Làm sạch những bụi bẩn còn lại trong lỗ chân lông mà sữa rửa mặt không làm sạch được.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Bổ sung nước cho da suốt cả ngày, đồng thời giúp kem dưỡng thẩm thấu nhanh hơn.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Sử dụng nước hoa hồng thường xuyên có tác dụng giữ cho độ pH của da ở trạng thái cân bằng, giúp ổn định da và thu nhỏ lỗ chân lông.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Kem dưỡng mặt Tanamera</strong></span></span></p>\r\n\r\n<ul style=\"border: 0px; margin: 0px; padding-right: 0px; padding-left: 0px; list-style-type: none;\">\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Chiết xuất 100% từ thiên nhiên, bao gồm: tinh dầu hoa hướng dương, dầu jojoba, dầu bơ đậu mỡ, hạt dưa leo, hoa dâm bụt, vỏ cây dâu tằm, rễ cam thảo, hoa cúc, bột khoai tây, lá trà xanh, rau má, rễ hoàng cầm, rễ lá râm.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Cung cấp các dưỡng chất giúp bảo vệ da và chống mất nước bên ngoài.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Duy trì độ đàn hồi của tế bào, khiến da trở nên mịn màng và khỏe mạnh hơn, hạn chế sự hình thành sắc tố và các đốm lão hóa.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Làm sạch các bụi bẩn và giữ ẩm cho da nhưng không có cảm giác bị nhờn.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Sản phẩm phù hợp với mọi loại da, kể cả làn da mỏng manh và nhạy cảm.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px;\">&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"wysiwyg-content\" id=\"content_combo\" style=\"border: 0px; margin: 0px; padding: 0px;\">&nbsp;</div>\r\n</div>\r\n', '28', null, null, '64', 'Bộ chăm sóc da mặt', 'Tanamera', '', '', '<p style=\"color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px; border: 0px; margin: 0px; padding: 6px 0px;\">&nbsp;</p>\r\n\r\n<ul style=\"padding-right: 0px; padding-left: 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px; border: 0px; margin: 0px; list-style-type: none;\">\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Làm ướt cổ và mặt, thoa sữa rửa mặt Tanamera, massage nhẹ nhàng và rửa lại bằng nước sạch.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Dùng bông thấm nước hoa hồng Tanamera thoa đều lên mặt và cổ để làm sạch sâu lỗ chân lông và cung cấp độ ẩm cho da.</span></span></li>\r\n	<li style=\"border: 0px; margin: 0px; padding: 0px; background-image: none; list-style-type: disc; list-style-position: inside;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Thoa kem dưỡng mặt Tanamera để cung cấp dưỡng chất, hạn chế hình thành sắc tố để da luôn trẻ khỏe.</span></span></li>\r\n</ul>\r\n');
INSERT INTO products VALUES ('50', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"color: rgb(49, 49, 49); line-height: 16px;\">Tinh chất trắng da Đặc biệt Total Effects 7-in-1 của thương hiệu Olay</span><br style=\"color: rgb(49, 49, 49); font-family: Arial, Helvetica, sans-serif; font-size: 11px; line-height: 16px;\" />\r\n<br style=\"color: rgb(49, 49, 49); font-family: Arial, Helvetica, sans-serif; font-size: 11px; line-height: 16px;\" />\r\n<span style=\"color: rgb(49, 49, 49); line-height: 16px;\">- Công thức cải tiến bổ sung tinh chất làm trắng giúp cải thiện sắc tố da nhanh chóng ở những vùng da không đều màu</span><br style=\"color: rgb(49, 49, 49); font-family: Arial, Helvetica, sans-serif; font-size: 11px; line-height: 16px;\" />\r\n<span style=\"color: rgb(49, 49, 49); line-height: 16px;\">- Dưỡng chất dưỡng ẩm giúp da căng mịn và tràn đầy sức sống</span><br style=\"color: rgb(49, 49, 49); font-family: Arial, Helvetica, sans-serif; font-size: 11px; line-height: 16px;\" />\r\n<span style=\"color: rgb(49, 49, 49); line-height: 16px;\">- Dung tích 50 ml</span><br style=\"color: rgb(49, 49, 49); font-family: Arial, Helvetica, sans-serif; font-size: 11px; line-height: 16px;\" />\r\n<span style=\"color: rgb(49, 49, 49); line-height: 16px;\">- Hạn sử dụng 3 năm kể từ ngày sản xuất</span></span></span></p>\r\n', '31', null, null, '64', '', 'Olay', '50', 'ml', '');
INSERT INTO products VALUES ('51', '<p style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><strong style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr;\">Sữa Friso gold 3</strong>&nbsp;mới là sản phẩm dành cho trẻ từ 1-3 tuổi. Với công thức cải tiến mới bao gồm sự kết hợp tối ưu giữa Synbiotics và các dưỡng chất cần thiết khác như Sắt, kẽm, Maje, Nucleotit&hellip;&nbsp;<strong style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px; margin: 0px; padding: 0px; z-index: 0; direction: ltr;\">Sữa Friso gold 3&nbsp;</strong>giúp tăng cường hệ miễn dịch và bảo vệ trẻ từ bên trong. Ngoài ra&nbsp;<strong style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr;\">sữa friso gold 3</strong>&nbsp;còn cung cấp AA, DHA, Taurine &amp; SA là các chất quan trọng hỗ trợ phát triển võng mạc và não bộ</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">+ Kết hợp tối ưu giữa Sybiotid, kẽm, selen, giúp tăng cường bảo vệ bé ngay từ bên trong cơ thể trong đó Selen hỗ trợ miễn dịch, kẽm tăng khả năng oxy hóa và Sybitid có ích cho đường ruột trẻ nhỏ</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">+ DHA: Một hợp chất quan trọng phát triển trí não trẻ em, đồng thời hỗ trợ thị lực</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">+ Choline là dưỡng chất quan trọng hỗ trợ phát triển não, giúp tổng hợp acetylcholine và chất dẫn truyển thần kinh quan trọng liên quan đến trí nhớ và khả năng học hỏi sau này.</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">+ AA và DHA giúp phát triển cấu trúc của não bộ và võng mạc</span></span></p>\r\n\r\n<p style=\"margin: 0px; padding: 0px; z-index: 0; direction: ltr; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">+ SA hỗ trợ tăng trưởng tế bào thần kinh.</span></span></p>\r\n', '32', null, null, '42', '', '', '900', 'gr', '');
INSERT INTO products VALUES ('52', '', '33', null, null, '26', '', 'Bubchen', '230', 'ml', '');
INSERT INTO products VALUES ('53', '', '34', null, null, '37', '', 'Provence', '250', 'ml', '');
INSERT INTO products VALUES ('54', '', '35', null, null, '37', '', '', '75', 'gr', '');
INSERT INTO products VALUES ('55', '', '36', null, null, '37', '', 'Cleopatra Paris', '125', 'gr', '');
INSERT INTO products VALUES ('56', '', '37', null, null, '37', '', '', '50', 'ml', '');
INSERT INTO products VALUES ('57', '', '38', null, null, '37', '', 'Lifebouy', '250', 'ml', '');
INSERT INTO products VALUES ('58', '', '39', null, null, '36', '', '', '200', 'gr', '');
INSERT INTO products VALUES ('59', '', '40', null, null, '33', '', 'Provence', '250', 'ml', '');
INSERT INTO products VALUES ('60', '', '41', null, null, '36', '', 'Appeton Weight Gain', '900', 'gr', '');
INSERT INTO products VALUES ('61', '', '42', null, null, '37', '', 'Listerine ', '500', 'ml', '');
INSERT INTO products VALUES ('62', '', '43', null, null, '27', 'Đồ Chơi ', 'Funny land', '', '', '');
INSERT INTO products VALUES ('63', '', '44', null, null, '37', '', '', '210', 'gr', '');
INSERT INTO products VALUES ('64', '', '5', null, null, '34', '', 'The Face Shop', '1,7', 'gr', '');
INSERT INTO products VALUES ('65', '', '45', null, null, '34', '', 'Essance', '3,8', 'gr', '');
INSERT INTO products VALUES ('66', '', '5', null, null, '37', 'Sữa Rửa Mặt Toàn Diện ', 'The Face Shop', '150', 'ml', '');
INSERT INTO products VALUES ('67', '<p><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"color: rgb(68, 68, 68); line-height: 16.799999237060547px; text-align: justify;\">Sữa rửa mặt và tẩy trang dùng cho mọi loại da làm sạch bụi bẩn và mỹ phẩm trang điểm trên da. Tổng hợp giàu chất AHA (8%) và triết xuất từ mỡ cây bơ Karité, giúp ngăn ngừa sự phát triển của các sắc tố dưới da và tăng cường cung cấp nuôi dưỡng làn da. Bên cạnh đó, nó còn có tác dụng chăm sóc làn da, giúp da không bị mất nước, da sẽ tươi mát và mềm mại hơn, mang lại cho da cảm giác tươi mát, thoải mái dễ chịu. Làn da sẽ sạch bóng đạt được hiệu quả tươi mịn tuyệt vời.&nbsp;</span></span></span></p>\r\n', '46', null, null, '60', 'Rửa mặt', 'Évoluderm', '250', 'ml', '<div class=\"product_image\" style=\"color: rgb(68, 68, 68); font-family: Arial; line-height: 16.799999237060547px;\">\r\n<div style=\"text-align: justify;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Sử dụng sản phẩm sữa làm sạch da hàng ngày, dùng với gạc bông mềm để rửa mặt tẩy trang. Sau đó rửa mặt sạch bằng nước.&nbsp;</span></span></div>\r\n<br />\r\n<span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">Made in France (Pháp)</span></span></div>\r\n\r\n<div class=\"product_describe\" style=\"color: rgb(68, 68, 68); font-family: Arial; line-height: 16.799999237060547px;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\">250ml</span></span></div>\r\n');
INSERT INTO products VALUES ('68', '<p style=\"margin: 0px 0px 15px; padding: 0px; line-height: 1.3; color: rgb(38, 46, 39); font-family: Arial, Helvetica, sans-serif;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\">Kem lót trang điểm 3D:&nbsp;</strong>Kem lót trang điểm mềm và mượt với sự kết hợp độc đáo của thành phần Super Collagen nuôi dưỡng làn da giúp da căng mịn, đàn hồi. Constract Powder đem lại hiệu quả trang điểm với cảm giác 3 chiều cho đường nét khuôn mặt thon gọn và thanh thoát ở mọi góc nhìn.</span></span></span></p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; line-height: 1.3; color: rgb(38, 46, 39); font-family: Arial, Helvetica, sans-serif;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px;\">+ #70 &ndash; sáng mịn tự nhiên</span></span></span></p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; line-height: 1.3; color: rgb(38, 46, 39); font-family: Arial, Helvetica, sans-serif;\"><span style=\"font-size:12px;\"><span style=\"font-family:georgia,serif;\"><span style=\"margin: 0px; padding: 0px;\">+ #50 &ndash; Ánh nhũ ngọc trai</span></span></span></p>\r\n', '47', null, null, '64', 'Kem lót trang điểm 3D có chống nằng SPF 20', 'E\'zup', '', '', '');
INSERT INTO products VALUES ('69', '', '48', null, null, '33', '', 'Biore', '150', 'ml', '');
INSERT INTO products VALUES ('70', '', '49', null, null, '33', '', '', '', '', '');
INSERT INTO products VALUES ('71', '<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Công thức bổ sung vitamin H</strong><br />\r\nVới sự kết hợp của Biotin vitamin H và axit amin, dầu xả giúp mái tóc khỏe đẹp hơn, đồng thời giảm thiểu sự tiết bã nhờn ở chân tóc.</p>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Thích hợp cho tóc yếu</strong><br />\r\nDầu xả giúp phục hồi những sợi tóc yếu, dễ gãy rụng. Dùng sản phẩm cho mỗi lần gội sẽ giúp mái tóc trở nên khỏe mạnh và chắc chắn hơn, nếu kết hợp với kẽm và clobetasol propionate sẽ tăng thêm tác dụng tích cực cho việc chống rụng tóc.</p>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Hương thơm dễ chịu</strong><br />\r\nDầu xả có tác dụng làm mềm, tăng thêm sức sống cho tóc. Mùi hương dịu nhẹ, trong lành mang lại cảm giác thoải mái, dễ chịu khi sử dụng. Sản phẩm được khuyên dùng kết hợp với dầu gội Nature&#39;s Gate vitamin H.</p>\r\n', '49', null, null, '70', 'Dầu xả', 'Nature\'s gate', '532', 'ml', '');
INSERT INTO products VALUES ('72', '<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Công thức bổ sung vitamin H</strong><br />\r\nVới sự kết hợp của Biotin vitamin H và axit amin, dầu xả giúp mái tóc khỏe đẹp hơn, đồng thời giảm thiểu sự tiết bã nhờn ở chân tóc.</p>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Thích hợp cho tóc yếu</strong><br />\r\nDầu xả giúp phục hồi những sợi tóc yếu, dễ gãy rụng. Dùng sản phẩm cho mỗi lần gội sẽ giúp mái tóc trở nên khỏe mạnh và chắc chắn hơn, nếu kết hợp với kẽm và clobetasol propionate sẽ tăng thêm tác dụng tích cực cho việc chống rụng tóc.</p>\r\n\r\n<p style=\"border: 0px; margin: 0px; padding: 6px 0px; color: rgb(51, 51, 51); font-family: Arial, Tahoma, Helvetica, sans-serif; line-height: 24px;\"><strong style=\"border: 0px; margin: 0px; padding: 0px;\">Hương thơm dễ chịu</strong><br />\r\nDầu xả có tác dụng làm mềm, tăng thêm sức sống cho tóc. Mùi hương dịu nhẹ, trong lành mang lại cảm giác thoải mái, dễ chịu khi sử dụng. Sản phẩm được khuyên dùng kết hợp với dầu gội Nature&#39;s Gate vitamin H.</p>\r\n', '50', null, null, '84', 'Sữa tắm', 'The Body Shop', '400', 'ml', '');
INSERT INTO products VALUES ('73', '', '5', null, null, '33', 'Sữa Rửa Mặt Kiểm Soát Nhờn', 'The Face Shop', '150', 'ml', '');
INSERT INTO products VALUES ('74', '', '51', null, null, '37', 'Dầu gội đầu chiết xuất bạch quả ', 'L\'amant', '200', 'ml', '');

-- ----------------------------
-- Table structure for `product_components`
-- ----------------------------
DROP TABLE IF EXISTS `product_components`;
CREATE TABLE `product_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_components
-- ----------------------------
INSERT INTO product_components VALUES ('4', '13', '4');
INSERT INTO product_components VALUES ('7', '25', '7');
INSERT INTO product_components VALUES ('8', '24', '8');
INSERT INTO product_components VALUES ('11', '28', '11');
INSERT INTO product_components VALUES ('12', '29', '12');
INSERT INTO product_components VALUES ('13', '30', '13');
INSERT INTO product_components VALUES ('14', '26', '14');
INSERT INTO product_components VALUES ('15', '32', '16');
INSERT INTO product_components VALUES ('16', '33', '17');
INSERT INTO product_components VALUES ('20', '35', '18');
INSERT INTO product_components VALUES ('21', '36', '18');
INSERT INTO product_components VALUES ('25', '37', '22');
INSERT INTO product_components VALUES ('26', '38', '23');
INSERT INTO product_components VALUES ('28', '40', '25');
INSERT INTO product_components VALUES ('29', '41', '26');
INSERT INTO product_components VALUES ('30', '44', '27');
INSERT INTO product_components VALUES ('31', '45', '27');
INSERT INTO product_components VALUES ('37', '47', '32');
INSERT INTO product_components VALUES ('44', '48', '35');
INSERT INTO product_components VALUES ('45', '50', '36');
INSERT INTO product_components VALUES ('47', '11', '33');
INSERT INTO product_components VALUES ('48', '51', '37');
INSERT INTO product_components VALUES ('49', '52', '38');
INSERT INTO product_components VALUES ('50', '27', '10');
INSERT INTO product_components VALUES ('51', '53', '39');
INSERT INTO product_components VALUES ('52', '54', '40');
INSERT INTO product_components VALUES ('53', '55', '41');
INSERT INTO product_components VALUES ('54', '55', '42');
INSERT INTO product_components VALUES ('55', '56', '43');
INSERT INTO product_components VALUES ('56', '57', '44');
INSERT INTO product_components VALUES ('57', '58', '45');
INSERT INTO product_components VALUES ('58', '59', '46');
INSERT INTO product_components VALUES ('59', '60', '47');
INSERT INTO product_components VALUES ('60', '61', '48');
INSERT INTO product_components VALUES ('61', '62', '49');
INSERT INTO product_components VALUES ('62', '63', '50');
INSERT INTO product_components VALUES ('63', '64', '51');
INSERT INTO product_components VALUES ('64', '65', '52');
INSERT INTO product_components VALUES ('65', '66', '53');
INSERT INTO product_components VALUES ('66', '66', '54');
INSERT INTO product_components VALUES ('68', '67', '56');
INSERT INTO product_components VALUES ('69', '69', '57');
INSERT INTO product_components VALUES ('70', '69', '58');
INSERT INTO product_components VALUES ('71', '70', '59');
INSERT INTO product_components VALUES ('72', '72', '60');
INSERT INTO product_components VALUES ('73', '9', '61');
INSERT INTO product_components VALUES ('74', '73', '62');

-- ----------------------------
-- Table structure for `product_images`
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_main` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_images
-- ----------------------------
INSERT INTO product_images VALUES ('11', '9', 'thefaceshop-5411-01019-1-zoom.jpg', null);
INSERT INTO product_images VALUES ('12', '11', 'image.jpg', null);
INSERT INTO product_images VALUES ('14', '12', 'image.jpg', null);
INSERT INTO product_images VALUES ('15', '13', 'image.jpg', null);
INSERT INTO product_images VALUES ('16', '14', 'image.jpg', null);
INSERT INTO product_images VALUES ('17', '15', 'image.jpg', null);
INSERT INTO product_images VALUES ('18', '16', 'image.jpg', null);
INSERT INTO product_images VALUES ('19', '17', 'image.jpg', null);
INSERT INTO product_images VALUES ('20', '18', 'image.jpg', null);
INSERT INTO product_images VALUES ('21', '19', 'image.jpg', null);
INSERT INTO product_images VALUES ('22', '20', 'image.jpg', null);
INSERT INTO product_images VALUES ('23', '21', 'image.jpg', null);
INSERT INTO product_images VALUES ('24', '22', 'freeman-5417-408001-1-zoom.jpg', null);
INSERT INTO product_images VALUES ('26', '23', 'Disposable Razor.jpg', null);
INSERT INTO product_images VALUES ('27', '24', 'Bath-Towels.jpg', null);
INSERT INTO product_images VALUES ('28', '25', '5900273150141.jpg', null);
INSERT INTO product_images VALUES ('29', '26', 'coast.png', null);
INSERT INTO product_images VALUES ('30', '27', 'Sua_rua_mat_Biore__TAC_DONG_KEP__-_MBBB_50g_-C050.jpg', null);
INSERT INTO product_images VALUES ('31', '28', '00099500-0_1_6.jpg', null);
INSERT INTO product_images VALUES ('33', '30', 'oral_b_glide_pro_health.jpg', null);
INSERT INTO product_images VALUES ('34', '10', 'bourjois-9313-61927-1-zoom.jpg', null);
INSERT INTO product_images VALUES ('35', '31', '10554385-1330526521-111170.jpg', null);
INSERT INTO product_images VALUES ('37', '29', 'ColgateCDC.png', null);
INSERT INTO product_images VALUES ('38', '32', 'image.jpg', null);
INSERT INTO product_images VALUES ('39', '33', 'image.jpg', null);
INSERT INTO product_images VALUES ('42', '36', 'image.jpg', null);
INSERT INTO product_images VALUES ('43', '37', 'image.jpg', null);
INSERT INTO product_images VALUES ('44', '38', 'bot-nan-huong-trai-cay-1-bo-co-3-mui-khac-nhau-992.jpg', null);
INSERT INTO product_images VALUES ('46', '40', 'image.jpg', null);
INSERT INTO product_images VALUES ('47', '41', 'image.jpg', null);
INSERT INTO product_images VALUES ('50', '45', 'image.jpg', null);
INSERT INTO product_images VALUES ('51', '39', 'rosewater1.png', null);
INSERT INTO product_images VALUES ('52', '46', 'image.jpg', null);
INSERT INTO product_images VALUES ('53', '42', '11101_1_2hdac0a0ekcds.jpg', null);
INSERT INTO product_images VALUES ('54', '47', 'image.jpg', null);
INSERT INTO product_images VALUES ('55', '48', 'image.jpg', null);
INSERT INTO product_images VALUES ('56', '49', 'Bo_cham_soc_da_mat_Tanamera_sua_rua_mat,_toner_hoa_hong,_kem_duong_mat_TN-CSM3.png', null);
INSERT INTO product_images VALUES ('57', '50', 'image.jpg', null);
INSERT INTO product_images VALUES ('58', '51', 'image.jpg', null);
INSERT INTO product_images VALUES ('59', '53', 'image.jpg', null);
INSERT INTO product_images VALUES ('60', '54', 'image.jpg', null);
INSERT INTO product_images VALUES ('61', '55', 'image.jpg', null);
INSERT INTO product_images VALUES ('62', '56', 'image.jpg', null);
INSERT INTO product_images VALUES ('63', '57', 'image.jpg', null);
INSERT INTO product_images VALUES ('64', '58', 'image.jpg', null);
INSERT INTO product_images VALUES ('65', '59', 'image.jpg', null);
INSERT INTO product_images VALUES ('66', '60', 'image.jpg', null);
INSERT INTO product_images VALUES ('67', '61', 'image.jpg', null);
INSERT INTO product_images VALUES ('68', '62', 'image.jpg', null);
INSERT INTO product_images VALUES ('69', '63', 'image.jpg', null);
INSERT INTO product_images VALUES ('70', '65', 'image.jpg', null);
INSERT INTO product_images VALUES ('71', '66', 'image.jpg', null);
INSERT INTO product_images VALUES ('72', '67', 'image.jpg', null);
INSERT INTO product_images VALUES ('73', '52', 'image.jpg', null);
INSERT INTO product_images VALUES ('74', '68', '1343896291-khuon-mat-thanh-thoat-o-moi-goc-nhin--2-__89665_std.jpg', null);
INSERT INTO product_images VALUES ('75', '69', 'image.jpg', null);
INSERT INTO product_images VALUES ('76', '70', 'image.jpg', null);
INSERT INTO product_images VALUES ('77', '71', 'Dau_Xa_Biotin_(Vitamin_H)_0_7834702257_3.jpg', null);
INSERT INTO product_images VALUES ('78', '72', 'pid160.jpg', null);
INSERT INTO product_images VALUES ('79', '73', 'image.jpg', null);
INSERT INTO product_images VALUES ('80', '74', 'image.jpg', null);

-- ----------------------------
-- Table structure for `product_units`
-- ----------------------------
DROP TABLE IF EXISTS `product_units`;
CREATE TABLE `product_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_units
-- ----------------------------
INSERT INTO product_units VALUES ('18', '9', '7', '529000');
INSERT INTO product_units VALUES ('19', '10', '8', '188000');
INSERT INTO product_units VALUES ('20', '11', '7', '439000');
INSERT INTO product_units VALUES ('21', '12', '7', '609000');
INSERT INTO product_units VALUES ('22', '13', '1', '488000');
INSERT INTO product_units VALUES ('23', '14', '7', '98000');
INSERT INTO product_units VALUES ('24', '15', '1', '212000');
INSERT INTO product_units VALUES ('25', '16', '9', '98000');
INSERT INTO product_units VALUES ('26', '17', '4', '305000');
INSERT INTO product_units VALUES ('27', '18', '7', '478000');
INSERT INTO product_units VALUES ('28', '19', '9', '14500');
INSERT INTO product_units VALUES ('29', '20', '9', '16000');
INSERT INTO product_units VALUES ('30', '21', '1', '485000');
INSERT INTO product_units VALUES ('31', '22', '2', '88000');
INSERT INTO product_units VALUES ('32', '23', '2', '50000');
INSERT INTO product_units VALUES ('33', '24', '2', '142000');
INSERT INTO product_units VALUES ('34', '25', '2', '32000');
INSERT INTO product_units VALUES ('35', '26', '2', '18000');
INSERT INTO product_units VALUES ('36', '27', '2', '33000');
INSERT INTO product_units VALUES ('37', '28', '7', '127000');
INSERT INTO product_units VALUES ('38', '29', '1', '25000');
INSERT INTO product_units VALUES ('39', '30', '1', '92000');
INSERT INTO product_units VALUES ('40', '31', '8', '215000');
INSERT INTO product_units VALUES ('41', '32', '1', '59000');
INSERT INTO product_units VALUES ('42', '33', '7', '119000');
INSERT INTO product_units VALUES ('45', '36', '1', '47000');
INSERT INTO product_units VALUES ('46', '37', '10', '525000');
INSERT INTO product_units VALUES ('47', '38', '1', '239000');
INSERT INTO product_units VALUES ('48', '39', '7', '300000');
INSERT INTO product_units VALUES ('49', '40', '7', '400000');
INSERT INTO product_units VALUES ('50', '41', '9', '80000');
INSERT INTO product_units VALUES ('51', '42', '7', '108000');
INSERT INTO product_units VALUES ('54', '45', '9', '45000');
INSERT INTO product_units VALUES ('55', '46', '9', '40000');
INSERT INTO product_units VALUES ('56', '47', '7', '409000');
INSERT INTO product_units VALUES ('57', '48', '7', '219000');
INSERT INTO product_units VALUES ('58', '49', '7', '950000');
INSERT INTO product_units VALUES ('59', '50', '7', '305000');
INSERT INTO product_units VALUES ('60', '51', '1', '464000');
INSERT INTO product_units VALUES ('61', '52', '7', '98000');
INSERT INTO product_units VALUES ('62', '53', '7', '156000');
INSERT INTO product_units VALUES ('63', '54', '11', '39000');
INSERT INTO product_units VALUES ('64', '55', '12', '38000');
INSERT INTO product_units VALUES ('65', '56', '7', '55000');
INSERT INTO product_units VALUES ('66', '57', '7', '24000');
INSERT INTO product_units VALUES ('67', '58', '9', '85000');
INSERT INTO product_units VALUES ('68', '59', '7', '89000');
INSERT INTO product_units VALUES ('69', '60', '1', '660000');
INSERT INTO product_units VALUES ('70', '61', '7', '95000');
INSERT INTO product_units VALUES ('71', '62', '1', '250000');
INSERT INTO product_units VALUES ('72', '63', '11', '28000');
INSERT INTO product_units VALUES ('73', '64', '4', '219000');
INSERT INTO product_units VALUES ('74', '65', '4', '126000');
INSERT INTO product_units VALUES ('75', '66', '11', '569000');
INSERT INTO product_units VALUES ('76', '67', '11', '139000');
INSERT INTO product_units VALUES ('77', '68', '7', '370000');
INSERT INTO product_units VALUES ('78', '69', '11', '185000');
INSERT INTO product_units VALUES ('79', '70', '7', '200000');
INSERT INTO product_units VALUES ('80', '71', '7', '200000');
INSERT INTO product_units VALUES ('81', '72', '7', '509000');
INSERT INTO product_units VALUES ('82', '73', '11', '319000');
INSERT INTO product_units VALUES ('83', '74', '7', '97000');

-- ----------------------------
-- Table structure for `providers`
-- ----------------------------
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_code` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of providers
-- ----------------------------
INSERT INTO providers VALUES ('5', 'The Face Shop', 'Địa chỉ: Lầu 10, Tòa nhà HD Bank, 25 bis Nguyễn Thị Minh Khai, P. Bến Nghé, Q.1, TP. HCM', 'Công ty TNHH Hoa Sen Việt', '');
INSERT INTO providers VALUES ('6', 'Bourjois', '214/19/26 Nguyễn Văn Nguyễn – Phường Tân Định – Quận 1 – Tp.HCM', 'Công ty Cổ phần Châu Âu Việt Nam', '');
INSERT INTO providers VALUES ('7', 'Abbott', 'Số 02 Ngô Đức Kế, quận 1, TPHCM', 'Abbott Nutrition Việt Nam', '');
INSERT INTO providers VALUES ('8', 'Johnson&Johnson ', 'Phòng 1103B, Tầng 11, Tháp Harbour View 35 Nguyễn Huệ, P. Bến Nghé, Q. 1, TPHCM', 'Johnson&Johnson Việt Nam', '');
INSERT INTO providers VALUES ('9', 'D-Nee', '332 Tô Hiến Thành, P.14, Q.10, TP.HCM ', 'CÔNG TY TNHH DỊCH VỤ THƯƠNG MẠI & XUẤT NHẬP KHẨU ĐẠI THỊNH', '');
INSERT INTO providers VALUES ('10', 'Vinamilk', '', 'Công Ty Cổ Phần Sữa Việt Nam', '');
INSERT INTO providers VALUES ('11', 'Bobby Fresh', '', 'Công Ty Cổ Phần Diana', '');
INSERT INTO providers VALUES ('12', 'Etude House', 'Số 44 Đinh Tiên Hoàng, phường 1, quận tân bình, TPHCM', 'Etude House Cosmetic Company', '');
INSERT INTO providers VALUES ('13', 'Kotex', '', 'Kimberly Clark Việt Nam', '');
INSERT INTO providers VALUES ('14', 'I am mother', 'R4-93 Hưng Gia 2, P. Tân Phong, Quận 7, TPHCM', 'Công Ty Cổ Phần Đầu Tư Nam Dương', '');
INSERT INTO providers VALUES ('15', 'Freeman', '', 'Freeman Underwear', '');
INSERT INTO providers VALUES ('16', 'Gillette', '', '', '');
INSERT INTO providers VALUES ('17', 'Mollis', '', '', '');
INSERT INTO providers VALUES ('18', 'Colgate', '', '', '');
INSERT INTO providers VALUES ('19', 'Coast', '', '', '');
INSERT INTO providers VALUES ('20', 'Bioré', '', '', '');
INSERT INTO providers VALUES ('21', 'CLEAR', '', '', '');
INSERT INTO providers VALUES ('22', 'Glide', '', 'Oral B', '');
INSERT INTO providers VALUES ('23', 'Elemis', '', '', '');
INSERT INTO providers VALUES ('24', 'Tutti Fruitti ', '', 'Công Ty TNHH Những Trẻ Em Vàng ', '');
INSERT INTO providers VALUES ('25', 'Intima Ziaja', '', '', '');
INSERT INTO providers VALUES ('26', 'Cafe Trung Nguyên', '', 'Trung Nguyên', '');
INSERT INTO providers VALUES ('27', 'Nestle', '', 'Nestle Việt Nam', '');
INSERT INTO providers VALUES ('28', 'Tanamera', '', 'Tanamera Việt Nam', '');
INSERT INTO providers VALUES ('29', 'Yejimin', '', 'Yejimin vietnam', '');
INSERT INTO providers VALUES ('30', 'Oriflame', '', '', '');
INSERT INTO providers VALUES ('31', 'Olay', '', 'Olay Việt Nam', '');
INSERT INTO providers VALUES ('32', 'Friso', '', 'Friso Việt Nam', '');
INSERT INTO providers VALUES ('33', 'Bubchen', '', 'Bubchen Việt Nam', '');
INSERT INTO providers VALUES ('34', 'Provence', '', 'Provence Việt Nam', '');
INSERT INTO providers VALUES ('35', 'Bamboo', '', 'Công Ty Mỹ Phẩm LG Vina', '');
INSERT INTO providers VALUES ('36', 'Cleopatra Paris', '', 'Công ty ', '');
INSERT INTO providers VALUES ('37', 'Nivea', '', 'Công Ty Beiersdorf Việt Nam', '');
INSERT INTO providers VALUES ('38', 'Lifebouy', '', 'Lifebouy Việt Nam', '');
INSERT INTO providers VALUES ('39', 'Kẹo Hồng Sâm', '', 'Công Ty TNHH XNK Thiên Mỹ', '');
INSERT INTO providers VALUES ('40', 'Provence', '', 'Công Ty Cổ Phần Hàng Tiêu Dùng Provence', '');
INSERT INTO providers VALUES ('41', 'Appeton Weight Gain', '', 'Appeton Việt Nam', '');
INSERT INTO providers VALUES ('42', 'Listerine ', '', 'Công Ty Johnson & Johnson Việt Nam', '');
INSERT INTO providers VALUES ('43', 'Funny land', '', 'Công Tu TNHH Thế Hệ Vàng', '');
INSERT INTO providers VALUES ('44', 'Close Up', '', 'Công Ty TNHH Quốc Tế Unilever', '');
INSERT INTO providers VALUES ('45', 'Essance', '', 'Essance Việt Nam', '');
INSERT INTO providers VALUES ('46', 'Évoluderm', '', 'Évoluderm', '');
INSERT INTO providers VALUES ('47', 'E\'zup', '', '', '');
INSERT INTO providers VALUES ('48', 'Biore', '', 'Kao Viet Nam', '');
INSERT INTO providers VALUES ('49', 'Nature\'s gate', '', 'Nature\'s gate', '');
INSERT INTO providers VALUES ('50', 'The Body Shop', '', '', '');
INSERT INTO providers VALUES ('51', 'L\'amant', ' 14 Hoa Huệ, P 7, Q. Phú Nhuận, Tp.HCM', 'Công ty CP Mỹ phẩm và Thời trang M.M', '');

-- ----------------------------
-- Table structure for `recommendations`
-- ----------------------------
DROP TABLE IF EXISTS `recommendations`;
CREATE TABLE `recommendations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bundle_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recommendations
-- ----------------------------
INSERT INTO recommendations VALUES ('2', '4', '29');
INSERT INTO recommendations VALUES ('3', '4', '69');
INSERT INTO recommendations VALUES ('4', '4', '70');
INSERT INTO recommendations VALUES ('5', '5', '24');
INSERT INTO recommendations VALUES ('6', '5', '16');
INSERT INTO recommendations VALUES ('7', '5', '27');
INSERT INTO recommendations VALUES ('8', '6', '14');
INSERT INTO recommendations VALUES ('9', '6', '52');
INSERT INTO recommendations VALUES ('11', '31', '70');
INSERT INTO recommendations VALUES ('12', '6', '69');
INSERT INTO recommendations VALUES ('13', '31', '71');
INSERT INTO recommendations VALUES ('14', '7', '33');
INSERT INTO recommendations VALUES ('15', '7', '70');
INSERT INTO recommendations VALUES ('16', '7', '69');
INSERT INTO recommendations VALUES ('17', '11', '58');
INSERT INTO recommendations VALUES ('18', '11', '69');
INSERT INTO recommendations VALUES ('19', '11', '70');
INSERT INTO recommendations VALUES ('20', '13', '24');
INSERT INTO recommendations VALUES ('21', '13', '68');
INSERT INTO recommendations VALUES ('22', '31', '72');
INSERT INTO recommendations VALUES ('23', '30', '72');
INSERT INTO recommendations VALUES ('24', '13', '16');
INSERT INTO recommendations VALUES ('25', '30', '71');
INSERT INTO recommendations VALUES ('26', '30', '70');
INSERT INTO recommendations VALUES ('27', '14', '70');
INSERT INTO recommendations VALUES ('28', '14', '71');
INSERT INTO recommendations VALUES ('29', '14', '65');
INSERT INTO recommendations VALUES ('30', '15', '33');
INSERT INTO recommendations VALUES ('31', '29', '72');
INSERT INTO recommendations VALUES ('32', '29', '71');
INSERT INTO recommendations VALUES ('33', '29', '70');
INSERT INTO recommendations VALUES ('34', '27', '72');
INSERT INTO recommendations VALUES ('35', '27', '70');
INSERT INTO recommendations VALUES ('36', '27', '71');
INSERT INTO recommendations VALUES ('37', '26', '72');
INSERT INTO recommendations VALUES ('38', '26', '70');
INSERT INTO recommendations VALUES ('39', '26', '71');
INSERT INTO recommendations VALUES ('40', '25', '70');
INSERT INTO recommendations VALUES ('41', '25', '71');
INSERT INTO recommendations VALUES ('42', '25', '72');
INSERT INTO recommendations VALUES ('43', '24', '72');
INSERT INTO recommendations VALUES ('44', '24', '70');
INSERT INTO recommendations VALUES ('45', '24', '71');
INSERT INTO recommendations VALUES ('46', '23', '72');
INSERT INTO recommendations VALUES ('47', '23', '70');
INSERT INTO recommendations VALUES ('48', '23', '71');
INSERT INTO recommendations VALUES ('49', '22', '70');
INSERT INTO recommendations VALUES ('50', '22', '71');
INSERT INTO recommendations VALUES ('51', '22', '72');
INSERT INTO recommendations VALUES ('52', '21', '70');
INSERT INTO recommendations VALUES ('53', '21', '71');
INSERT INTO recommendations VALUES ('54', '21', '72');
INSERT INTO recommendations VALUES ('55', '18', '70');
INSERT INTO recommendations VALUES ('56', '18', '71');
INSERT INTO recommendations VALUES ('57', '18', '72');
INSERT INTO recommendations VALUES ('58', '15', '70');
INSERT INTO recommendations VALUES ('59', '15', '71');
INSERT INTO recommendations VALUES ('60', '8', '70');
INSERT INTO recommendations VALUES ('61', '8', '71');
INSERT INTO recommendations VALUES ('62', '8', '72');
INSERT INTO recommendations VALUES ('63', '16', '33');
INSERT INTO recommendations VALUES ('64', '16', '70');
INSERT INTO recommendations VALUES ('65', '16', '71');
INSERT INTO recommendations VALUES ('66', '20', '16');
INSERT INTO recommendations VALUES ('67', '20', '24');
INSERT INTO recommendations VALUES ('68', '20', '33');
INSERT INTO recommendations VALUES ('69', '32', '21');
INSERT INTO recommendations VALUES ('70', '32', '29');
INSERT INTO recommendations VALUES ('73', '32', '37');
INSERT INTO recommendations VALUES ('74', '32', '13');
INSERT INTO recommendations VALUES ('76', '33', '68');
INSERT INTO recommendations VALUES ('77', '33', '56');
INSERT INTO recommendations VALUES ('78', '33', '74');
INSERT INTO recommendations VALUES ('79', '34', '24');
INSERT INTO recommendations VALUES ('80', '34', '69');
INSERT INTO recommendations VALUES ('81', '34', '65');
INSERT INTO recommendations VALUES ('82', '35', '61');
INSERT INTO recommendations VALUES ('83', '35', '24');
INSERT INTO recommendations VALUES ('84', '35', '53');
INSERT INTO recommendations VALUES ('85', '37', '24');
INSERT INTO recommendations VALUES ('86', '37', '61');
INSERT INTO recommendations VALUES ('87', '37', '57');
INSERT INTO recommendations VALUES ('88', '38', '56');
INSERT INTO recommendations VALUES ('89', '38', '74');
INSERT INTO recommendations VALUES ('90', '38', '22');
INSERT INTO recommendations VALUES ('91', '40', '22');
INSERT INTO recommendations VALUES ('92', '40', '73');
INSERT INTO recommendations VALUES ('93', '40', '36');
INSERT INTO recommendations VALUES ('94', '41', '68');
INSERT INTO recommendations VALUES ('95', '41', '65');
INSERT INTO recommendations VALUES ('96', '41', '17');

-- ----------------------------
-- Table structure for `tbl_migration`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_migration`;
CREATE TABLE `tbl_migration` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_migration
-- ----------------------------
INSERT INTO tbl_migration VALUES ('m000000_000000_base', '1397806242');
INSERT INTO tbl_migration VALUES ('m140417_093645_change_cusomer_table', '1397806242');
INSERT INTO tbl_migration VALUES ('m140418_071058_change_table_user', '1397806246');
INSERT INTO tbl_migration VALUES ('m140418_093757_add_gender_column_to_cusomer', '1397814076');
INSERT INTO tbl_migration VALUES ('m140418_102857_new_table_customer_family', '1397842314');
INSERT INTO tbl_migration VALUES ('m140419_095232_change_product_table', '1398015869');
INSERT INTO tbl_migration VALUES ('m140420_082659_change_table_product', '1398015869');
INSERT INTO tbl_migration VALUES ('m140422_025037_add_tax_code_provider', '1398160469');
INSERT INTO tbl_migration VALUES ('m140422_033734_change_product_attributes', '1398164197');
INSERT INTO tbl_migration VALUES ('m140422_073337_create_table_configs', '1398183586');
INSERT INTO tbl_migration VALUES ('m140422_084944_email_template_creation', '1398183586');
INSERT INTO tbl_migration VALUES ('m140422_150349_add_email_id_to_bundle', '1398211578');
INSERT INTO tbl_migration VALUES ('m140422_171428_email_template_order_confirm', '1398212278');
INSERT INTO tbl_migration VALUES ('m140422_190332_create_bundle_repeate_field', '1398222350');
INSERT INTO tbl_migration VALUES ('m140424_050031_create_table_recommendations', '1398341035');

-- ----------------------------
-- Table structure for `units`
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of units
-- ----------------------------
INSERT INTO units VALUES ('1', 'Hộp');
INSERT INTO units VALUES ('2', 'Cái');
INSERT INTO units VALUES ('3', 'Thùng');
INSERT INTO units VALUES ('4', 'Thỏi');
INSERT INTO units VALUES ('5', 'Chai 100ml');
INSERT INTO units VALUES ('6', 'Chai 1000ml');
INSERT INTO units VALUES ('7', 'Chai');
INSERT INTO units VALUES ('8', 'Túi');
INSERT INTO units VALUES ('9', 'Bịch');
INSERT INTO units VALUES ('10', 'Lọ');
INSERT INTO units VALUES ('11', 'Tuýp');
INSERT INTO units VALUES ('12', 'Cục');
