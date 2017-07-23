/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2017-07-21 17:17:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for booktypes
-- ----------------------------
DROP TABLE IF EXISTS `booktypes`;
CREATE TABLE `booktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `typeName` varchar(100) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booktypes
-- ----------------------------
INSERT INTO `booktypes` VALUES ('1', '计算机软件开发');
INSERT INTO `booktypes` VALUES ('2', '计算机网络工程');
INSERT INTO `booktypes` VALUES ('3', '神话小说');
INSERT INTO `booktypes` VALUES ('4', '科幻小说');
INSERT INTO `booktypes` VALUES ('5', '外语');
INSERT INTO `booktypes` VALUES ('6', '测试类型');
INSERT INTO `booktypes` VALUES ('7', '91');
INSERT INTO `booktypes` VALUES ('8', '92');
INSERT INTO `booktypes` VALUES ('9', '93');
INSERT INTO `booktypes` VALUES ('91', '建筑设计');
INSERT INTO `booktypes` VALUES ('92', '工业设计');
INSERT INTO `booktypes` VALUES ('93', '船舶制造');

-- ----------------------------
-- Table structure for user_t
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES ('1', 'daniel', '111', '11');
INSERT INTO `user_t` VALUES ('2', 'root', '2323', '222');
