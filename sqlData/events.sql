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

 Date: 22/05/2022 10:40:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of events
-- ----------------------------
BEGIN;
INSERT INTO `events` (`id`, `name`) VALUES (1, '交通拥塞');
INSERT INTO `events` (`id`, `name`) VALUES (2, '轻微交通事故');
INSERT INTO `events` (`id`, `name`) VALUES (3, '严重交通事故');
INSERT INTO `events` (`id`, `name`) VALUES (4, '道路积水');
INSERT INTO `events` (`id`, `name`) VALUES (5, '道路积雪');
INSERT INTO `events` (`id`, `name`) VALUES (6, '道路高温');
INSERT INTO `events` (`id`, `name`) VALUES (7, '落石道路');
INSERT INTO `events` (`id`, `name`) VALUES (8, '大雾道路');
INSERT INTO `events` (`id`, `name`) VALUES (9, '道路桥梁');
INSERT INTO `events` (`id`, `name`) VALUES (10, '道路隧道');
INSERT INTO `events` (`id`, `name`) VALUES (11, '晴天');
INSERT INTO `events` (`id`, `name`) VALUES (12, '阴天');
INSERT INTO `events` (`id`, `name`) VALUES (13, '雨天');
INSERT INTO `events` (`id`, `name`) VALUES (14, '雷雨天');
INSERT INTO `events` (`id`, `name`) VALUES (15, '雪天');
INSERT INTO `events` (`id`, `name`) VALUES (16, '冰雹');
INSERT INTO `events` (`id`, `name`) VALUES (17, '台风');
INSERT INTO `events` (`id`, `name`) VALUES (18, '雾霾');
INSERT INTO `events` (`id`, `name`) VALUES (19, '沙尘暴');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
