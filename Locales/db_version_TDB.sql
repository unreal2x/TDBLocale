/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2013-09-29 11:09:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `db_version_tdb`
-- ----------------------------
DROP TABLE IF EXISTS `db_version_tdb`;
CREATE TABLE `db_version_tdb` (
  `version` varchar(120) NOT NULL,
  `TDB 434.05` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Used YTDB version notes';

-- ----------------------------
-- Records of db_version_tdb
-- ----------------------------
INSERT INTO `db_version_tdb` VALUES ('2013_09_22_00_world_sai', 'fix_05');
