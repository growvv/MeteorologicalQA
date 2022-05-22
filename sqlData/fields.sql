/*
 Navicat Premium Data Transfer

 Source Server         : mysql-connection
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : weather

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 22/05/2022 10:40:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fields
-- ----------------------------
DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of fields
-- ----------------------------
BEGIN;
INSERT INTO `fields` (`id`, `name`) VALUES (1, 'traffic');
INSERT INTO `fields` (`id`, `name`) VALUES (2, 'weather');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
