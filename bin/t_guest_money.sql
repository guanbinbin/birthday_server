/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql服务
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : birthday_gift

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-27 23:23:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_guest_money`
-- ----------------------------
DROP TABLE IF EXISTS `t_guest_money`;
CREATE TABLE `t_guest_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `money` smallint(6) NOT NULL,
  `attend_count` tinyint(4) unsigned zerofill NOT NULL DEFAULT '0000',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guest_money
-- ----------------------------
INSERT INTO `t_guest_money` VALUES ('16', '李婷', '200', '0006', '2019-01-20 16:33:03');
INSERT INTO `t_guest_money` VALUES ('19', '李婷婷', '300', '0000', '2019-01-20 17:47:50');
INSERT INTO `t_guest_money` VALUES ('20', '王妙', '998', '0001', '2019-01-20 17:48:26');
INSERT INTO `t_guest_money` VALUES ('21', '王妙', '1600', '0001', '2019-01-20 17:50:28');
INSERT INTO `t_guest_money` VALUES ('23', '蒲文丽', '390', '0003', '2019-01-21 16:32:49');
INSERT INTO `t_guest_money` VALUES ('24', '王正新', '390', '0002', '2019-01-21 16:35:29');
INSERT INTO `t_guest_money` VALUES ('25', '李校微', '600', '0001', '2019-01-21 16:36:13');
INSERT INTO `t_guest_money` VALUES ('26', '钱闻', '800', '0004', '2019-01-22 11:19:22');
INSERT INTO `t_guest_money` VALUES ('28', '李红', '1000', '0002', '2019-01-22 20:44:31');
INSERT INTO `t_guest_money` VALUES ('38', 'test', '100', '0001', '2019-01-23 10:09:19');
INSERT INTO `t_guest_money` VALUES ('39', 'html', '1000', '0001', '2019-01-23 22:17:19');
INSERT INTO `t_guest_money` VALUES ('40', 'html', '1000', '0001', '2019-01-23 22:17:19');
INSERT INTO `t_guest_money` VALUES ('41', 'html', '16', '0012', '2019-01-24 11:38:19');
INSERT INTO `t_guest_money` VALUES ('42', 'hello', '100', '0003', '2019-01-24 11:41:19');
INSERT INTO `t_guest_money` VALUES ('43', 'c++', '1000', '0001', '2019-01-24 14:20:19');
INSERT INTO `t_guest_money` VALUES ('44', '测试', '500', '0000', '2019-01-24 16:00:19');
INSERT INTO `t_guest_money` VALUES ('45', 'debug', '200', '0001', '2019-01-24 18:19:19');
INSERT INTO `t_guest_money` VALUES ('46', 'debug', '100', '0000', '2019-01-24 18:20:19');
INSERT INTO `t_guest_money` VALUES ('47', 'test1', '100', '0001', '2019-01-25 21:59:44');
INSERT INTO `t_guest_money` VALUES ('48', 'test2', '200', '0001', '2019-01-25 21:59:45');
INSERT INTO `t_guest_money` VALUES ('49', 'test3', '300', '0001', '2019-01-25 21:59:45');
INSERT INTO `t_guest_money` VALUES ('50', 'test4', '400', '0001', '2019-01-25 21:59:45');
INSERT INTO `t_guest_money` VALUES ('51', 'test5', '500', '0001', '2019-01-25 21:59:45');
INSERT INTO `t_guest_money` VALUES ('52', 'test6', '600', '0001', '2019-01-25 21:59:45');
INSERT INTO `t_guest_money` VALUES ('53', 'test7', '700', '0001', '2019-01-25 21:59:45');
INSERT INTO `t_guest_money` VALUES ('54', 'test8', '800', '0001', '2019-01-25 21:59:45');
INSERT INTO `t_guest_money` VALUES ('55', 'test9', '900', '0001', '2019-01-25 21:59:45');
INSERT INTO `t_guest_money` VALUES ('56', 'debug1', '100', '0001', '2019-01-25 22:00:55');
INSERT INTO `t_guest_money` VALUES ('57', 'debug2', '200', '0001', '2019-01-25 22:00:55');
INSERT INTO `t_guest_money` VALUES ('58', 'debug3', '300', '0001', '2019-01-25 22:00:55');
INSERT INTO `t_guest_money` VALUES ('60', 'debug5', '500', '0001', '2019-01-25 22:00:55');
INSERT INTO `t_guest_money` VALUES ('61', 'debug6', '600', '0001', '2019-01-25 22:00:56');
INSERT INTO `t_guest_money` VALUES ('62', 'debug7', '700', '0001', '2019-01-25 22:00:56');
INSERT INTO `t_guest_money` VALUES ('63', 'debug8', '800', '0001', '2019-01-25 22:00:56');
INSERT INTO `t_guest_money` VALUES ('64', 'debug9', '900', '0001', '2019-01-25 22:00:56');
INSERT INTO `t_guest_money` VALUES ('65', 'put1', '100', '0000', '2019-01-25 22:27:17');
INSERT INTO `t_guest_money` VALUES ('66', 'put2', '200', '0000', '2019-01-25 22:27:17');
INSERT INTO `t_guest_money` VALUES ('67', 'put3', '300', '0000', '2019-01-25 22:27:17');
INSERT INTO `t_guest_money` VALUES ('68', 'put4', '400', '0000', '2019-01-25 22:27:17');
INSERT INTO `t_guest_money` VALUES ('69', 'my_put5', '500', '0001', '2019-01-25 22:27:17');
INSERT INTO `t_guest_money` VALUES ('70', 'put6', '600', '0000', '2019-01-25 22:27:18');
INSERT INTO `t_guest_money` VALUES ('71', 'put7', '700', '0000', '2019-01-25 22:27:18');
INSERT INTO `t_guest_money` VALUES ('72', 'put8', '800', '0000', '2019-01-25 22:27:18');
INSERT INTO `t_guest_money` VALUES ('73', 'put9', '900', '0000', '2019-01-25 22:27:18');
INSERT INTO `t_guest_money` VALUES ('74', 'get1', '100', '0000', '2019-01-26 08:28:59');
INSERT INTO `t_guest_money` VALUES ('75', 'get2', '200', '0000', '2019-01-26 08:29:00');
INSERT INTO `t_guest_money` VALUES ('76', 'get3', '300', '0000', '2019-01-26 08:29:00');
INSERT INTO `t_guest_money` VALUES ('77', 'get4', '400', '0000', '2019-01-26 08:29:00');
INSERT INTO `t_guest_money` VALUES ('78', 'get5', '500', '0000', '2019-01-26 08:29:00');
INSERT INTO `t_guest_money` VALUES ('79', 'get6', '600', '0000', '2019-01-26 08:29:00');
INSERT INTO `t_guest_money` VALUES ('80', 'get7', '700', '0000', '2019-01-26 08:29:00');
INSERT INTO `t_guest_money` VALUES ('81', 'get8', '800', '0000', '2019-01-26 08:29:00');
INSERT INTO `t_guest_money` VALUES ('83', 'head1', '100', '0001', '2019-01-26 08:29:51');
INSERT INTO `t_guest_money` VALUES ('85', 'head3', '300', '0001', '2019-01-26 08:29:51');
INSERT INTO `t_guest_money` VALUES ('86', 'head4', '400', '0001', '2019-01-26 08:29:51');
INSERT INTO `t_guest_money` VALUES ('87', 'head5', '500', '0001', '2019-01-26 08:29:51');
INSERT INTO `t_guest_money` VALUES ('88', 'head6', '600', '0001', '2019-01-26 08:29:51');
INSERT INTO `t_guest_money` VALUES ('89', 'head7', '700', '0001', '2019-01-26 08:29:51');
INSERT INTO `t_guest_money` VALUES ('90', 'head8', '800', '0001', '2019-01-26 08:29:51');
INSERT INTO `t_guest_money` VALUES ('92', 'post1', '100', '0001', '2019-01-26 08:34:32');
INSERT INTO `t_guest_money` VALUES ('93', 'post2', '200', '0001', '2019-01-26 08:34:32');
INSERT INTO `t_guest_money` VALUES ('94', 'post3', '300', '0001', '2019-01-26 08:34:32');
INSERT INTO `t_guest_money` VALUES ('95', 'post4', '400', '0001', '2019-01-26 08:34:32');
INSERT INTO `t_guest_money` VALUES ('97', 'post6', '600', '0001', '2019-01-26 08:34:32');
INSERT INTO `t_guest_money` VALUES ('98', 'post7', '700', '0001', '2019-01-26 08:34:32');
INSERT INTO `t_guest_money` VALUES ('99', 'post8', '800', '0001', '2019-01-26 08:34:32');
INSERT INTO `t_guest_money` VALUES ('100', 'post9', '900', '0001', '2019-01-26 08:34:33');
INSERT INTO `t_guest_money` VALUES ('102', 'trace2', '200', '0001', '2019-01-26 08:36:13');
INSERT INTO `t_guest_money` VALUES ('103', 'trace3', '300', '0001', '2019-01-26 08:36:13');
INSERT INTO `t_guest_money` VALUES ('104', 'trace4', '400', '0001', '2019-01-26 08:36:13');
INSERT INTO `t_guest_money` VALUES ('105', 'trace5', '500', '0001', '2019-01-26 08:36:13');
INSERT INTO `t_guest_money` VALUES ('106', 'trace6', '600', '0001', '2019-01-26 08:36:14');
INSERT INTO `t_guest_money` VALUES ('107', 'trace7', '700', '0001', '2019-01-26 08:36:14');
INSERT INTO `t_guest_money` VALUES ('109', 'trace9', '900', '0001', '2019-01-26 08:36:14');
INSERT INTO `t_guest_money` VALUES ('110', 'info1', '100', '0001', '2019-01-26 08:37:48');
INSERT INTO `t_guest_money` VALUES ('111', 'info2', '200', '0001', '2019-01-26 08:37:48');
INSERT INTO `t_guest_money` VALUES ('112', 'info3', '300', '0001', '2019-01-26 08:37:49');
INSERT INTO `t_guest_money` VALUES ('113', 'info4', '400', '0001', '2019-01-26 08:37:49');
INSERT INTO `t_guest_money` VALUES ('114', 'info5', '500', '0001', '2019-01-26 08:37:49');
INSERT INTO `t_guest_money` VALUES ('115', 'his_info', '600', '0001', '2019-01-26 08:37:49');
INSERT INTO `t_guest_money` VALUES ('116', 'info7', '700', '0001', '2019-01-26 08:37:49');
INSERT INTO `t_guest_money` VALUES ('117', 'info8', '800', '0001', '2019-01-26 08:37:49');
INSERT INTO `t_guest_money` VALUES ('118', 'info9', '900', '0001', '2019-01-26 08:37:49');
INSERT INTO `t_guest_money` VALUES ('119', '金佳凿', '666', '0002', '2019-01-27 09:31:19');
INSERT INTO `t_guest_money` VALUES ('120', '李好', '200', '0002', '2019-01-27 14:41:19');
INSERT INTO `t_guest_money` VALUES ('121', '张茜', '200', '0001', '2019-01-27 15:40:19');
