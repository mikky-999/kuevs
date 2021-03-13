/*
 Navicat Premium Data Transfer

 Source Server         : my server
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : votesystem

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 16/07/2019 11:45:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `firstname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'alex', '$2y$10$qRVTEB2NJneIizoLFv02A.X6/aOSMwLwz8Pw0t0vbIKUlxzo1.ZxO', 'Alex', 'Okeyo', '1.jpg', '2018-04-02');

-- ----------------------------
-- Table structure for candidates
-- ----------------------------
DROP TABLE IF EXISTS `candidates`;
CREATE TABLE `candidates`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `platform` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of candidates
-- ----------------------------
INSERT INTO `candidates` VALUES (7, 20, 'BIT/0057/16', 'otieno', '1.jpg', 'I will restore kibabii');
INSERT INTO `candidates` VALUES (8, 21, 'BIT/000/1', 'Test', '1.jpg', '');

-- ----------------------------
-- Table structure for positions
-- ----------------------------
DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of positions
-- ----------------------------
INSERT INTO `positions` VALUES (20, 'male nominee', 1, 1);
INSERT INTO `positions` VALUES (21, 'female Nominee', 1, 2);

-- ----------------------------
-- Table structure for voters
-- ----------------------------
DROP TABLE IF EXISTS `voters`;
CREATE TABLE `voters`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voters_id` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `firstname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lastname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of voters
-- ----------------------------
INSERT INTO `voters` VALUES (43, 'vzH7qMpU9Isy4Sb', '$2y$10$ma4WG40guWCn75E2FxS9BOOEDppmzzJ3lsUgCJYRYXYdspznJsTJG', 'BIT/0057/16', 'otieno', '1.jpg');
INSERT INTO `voters` VALUES (44, 'CzelQydO495Br3o', '$2y$10$kFNcxMAa5hRpwJPk0NTYw.VXyTEHxPuKlg0bO7I2uba/OPEjS5Yzi', 'BIT/000/1', 'Test', '1.jpg');
INSERT INTO `voters` VALUES (45, 'AnEz1Bm38iLvsGT', '$2y$10$J6weC1ALdzARvwNYzv9otOqAOrsq9D19vm7uaUXjQz9y9nMOP8UJK', 'BIT/000/2', 'Test 2', '');
INSERT INTO `voters` VALUES (46, 'PXQr2a7zbhFlGwO', '$2y$10$qq.xjJE0Ad4E5l235KBxmOrqlaxKWNynBi6xTdgEYxGsY5DZ9ugqa', 'COM/0040/16', 'Thomas Bosire', '');

-- ----------------------------
-- Table structure for votes
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of votes
-- ----------------------------
INSERT INTO `votes` VALUES (148, 44, 7, 20);
INSERT INTO `votes` VALUES (149, 45, 7, 20);
INSERT INTO `votes` VALUES (150, 45, 8, 21);
INSERT INTO `votes` VALUES (151, 46, 7, 20);
INSERT INTO `votes` VALUES (152, 46, 8, 21);

SET FOREIGN_KEY_CHECKS = 1;
