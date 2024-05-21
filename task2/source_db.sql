/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : source_db

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 04/06/2023 23:25:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_source
-- ----------------------------
DROP TABLE IF EXISTS `tb_source`;
CREATE TABLE `tb_source`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uploadDate` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_source
-- ----------------------------
INSERT INTO `tb_source` VALUES (1, '二次元', '视频', '2023-04-25');
INSERT INTO `tb_source` VALUES (2, '国际新闻', '文件', '2023-04-24');
INSERT INTO `tb_source` VALUES (3, '军事热点', '视频', '2023-05-01');
INSERT INTO `tb_source` VALUES (4, '	国际新闻', '视频', '2023-04-11');
INSERT INTO `tb_source` VALUES (5, '精选小说', '文件', '2023-04-05');
INSERT INTO `tb_source` VALUES (6, '搞笑趣事', '视频', '2023-04-01');
INSERT INTO `tb_source` VALUES (7, '八卦闲谈', '文件', '2023-04-16');
INSERT INTO `tb_source` VALUES (8, '美女热舞', '视频', '2023-04-25');

SET FOREIGN_KEY_CHECKS = 1;
