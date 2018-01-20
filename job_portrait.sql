/*
Navicat MySQL Data Transfer

Source Server         : TX
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : job_portrait

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-20 23:00:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for crawler
-- ----------------------------
DROP TABLE IF EXISTS `crawler`;
CREATE TABLE `crawler` (
  `crawler_id` int(255) NOT NULL AUTO_INCREMENT,
  `strat_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '爬虫开始时间',
  `
frequency` varchar(80) DEFAULT NULL COMMENT '爬取间隔',
  PRIMARY KEY (`crawler_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='爬虫配置表';

-- ----------------------------
-- Records of crawler
-- ----------------------------

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `position_id` int(20) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(80) NOT NULL COMMENT '职位名称',
  `position_treatment` varchar(255) DEFAULT NULL COMMENT '职位待遇 除工资外比如五险一金 生日福利等',
  `position_describe` varchar(255) DEFAULT NULL,
  `company

_name` varchar(80) NOT NULL,
  `company

_intro` varchar(255) DEFAULT NULL COMMENT '公司介绍',
  `company_nature` varchar(80) DEFAULT NULL COMMENT '公司性质',
  `company_scale` varchar(50) DEFAULT NULL COMMENT '公司规模 (多少人至多少人)',
  `working_place` varchar(80) DEFAULT NULL COMMENT '多个逗号或空格分隔',
  `salary` varchar(50) DEFAULT NULL COMMENT '薪资范围',
  `contact_way` varchar(80) DEFAULT NULL COMMENT '公司联系方式',
  `edu_require` varchar(60) DEFAULT NULL COMMENT '学历要求',
  `exp_require` varchar(60) DEFAULT NULL COMMENT '工作经验要求',
  `people_num` varchar(60) DEFAULT NULL COMMENT '招聘人数',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='爬取职位信息表';

-- ----------------------------
-- Records of position
-- ----------------------------

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分析结果表';

-- ----------------------------
-- Records of result
-- ----------------------------

-- ----------------------------
-- Table structure for site
-- ----------------------------
DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_url` varchar(255) NOT NULL,
  `site_status` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url表';

-- ----------------------------
-- Records of site
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
