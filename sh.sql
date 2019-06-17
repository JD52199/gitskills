/*
 Navicat Premium Data Transfer

 Source Server         : db2
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : sh

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 06/06/2019 20:13:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `bUserId` bigint(30) NOT NULL AUTO_INCREMENT,
  `vUserName` varchar(100) DEFAULT NULL,
  `cPassword` char(32) DEFAULT NULL,
  `cPasswordSalt` char(32) DEFAULT NULL,
  `gender` int(4) DEFAULT NULL,
  `country` char(10) DEFAULT NULL,
  `bcity` char(10) DEFAULT NULL,
  `telep` char(30) DEFAULT NULL,
  `email` char(20) DEFAULT NULL,
  `birthday` char(30) DEFAULT NULL,
  `flag_id` int(8) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'dada', '05be14bd7947b8ee42f2f5aed24fada1', '35fcf26ebc6db17471d33ae21dab1f16', 1, '丹麦', 'wew', '15002344940', 'lkjlkjlkj@qq.com', '1989-2', 0, -1, 'person2.jpg');
INSERT INTO `auth_user` VALUES (6, 'lai', '0e04ce8cf9e1dfa071940aac54fb7d87', '4eb75ed8d81b48a0e6e612694ee91582', 1, '中国', '成都', '15002344940', '295227940@qq.com', '1993-10-06', 1, 1, 'person2.jpg');
INSERT INTO `auth_user` VALUES (13, 'mingming', 'e1ad6a808a8bddbd858c98befc16b763', '90ccceaeff871d1c764f51574961b244', 1, '中国', '成都', '15002344940', '295227940@qq.com', '1993-10-06', 0, 1, 'person3.jpg');
INSERT INTO `auth_user` VALUES (14, 'admin', '1637fcf8b38df9216beeab1ee78cabb8', '84012b1f7ab582eb1a0eb46ed08fb5a9', 1, '中国', '重庆', '187259', 'fgdfdg', '1997-09-08', 1, 1, 'person2.jpg');
INSERT INTO `auth_user` VALUES (15, 'dd', '1953669bf37ba5a97d501a9e6a6d29c1', '5c9541f87701d9c2e581814e9a2fd167', 1, '中国', '重庆', '18725908515', '3333333@qq.com', '1997-09-08', 1, 0, 'person2.jpg');
INSERT INTO `auth_user` VALUES (28, 'eee', '15c5ca80747e5f2c00f7e5a7379034cc', '39a236a219e51bca32e0f583eb5c3b43', 1, '中国', '深圳', '18725908515', '2711973328@qq.com', '1993-08-29', 1, 1, 'person2.jpg');
INSERT INTO `auth_user` VALUES (38, 'JD', '0b2c538ea8647b539f5d81262b7ba031', '8f49614e7a0063ecf1d3fc45b3c08bf2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 'person2.jpg');
INSERT INTO `auth_user` VALUES (39, 'jj', '38437acccbc8e1e1da44ec40465c662e', '5d5bf3090a808f6f2b7fc8fdd0cd190d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `auth_user` VALUES (40, 'bb', '1a65c82438e580fa86c833faade5d45f', '240858f50a73bf6b2848467693732079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '');
INSERT INTO `auth_user` VALUES (42, 'rrrr', 'c5a08c55959db7b6c3ccaf3d6ced770f', '9122c4ca0f333716be2cd8666f429ae6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `auth_user` VALUES (43, 'yyyy', '0a42f899e8c5f85c543c1c50e8289bd9', '28878aedd8d451033d1cbe7e52607f5d', 1, ' 中国', NULL, '18725908515', '3333333@qq.com', NULL, 1, 1, '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `auth_user` VALUES (44, 'kk', '9cda4fc0c8797906654ace100c019146', '332091fb13799bde73d16dcda35c046b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `auth_user` VALUES (45, 'nn', '839e81c545befb0de13121cf85983870', '14a27fd3b172f2ca69b2322c4cc10730', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `auth_user` VALUES (46, 'uu', '62bb6e6bb14607058e4a037bc80f94cb', 'f7cd1d2525cd81277a201ab4c707e096', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `auth_user` VALUES (47, 'sisu', '83b7020ac80be08ab69dbf773f09c896', '458e265e984f656dd8b96e4d87a0577a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '');
INSERT INTO `auth_user` VALUES (48, 'hello', '2e639f737b1e437f0b5c1ba76bab2607', '4378500ee2a1f8a540dc6dcfa5a7e434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `auth_user` VALUES (49, 'bb', 'f3419dd59467c9928f3433244d6cff38', 'bee276b5fcb78ccf2c996a0ec11a6520', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `auth_user` VALUES (50, 'nini', '1b2a55b9142496eb60bc5cc8b4219f3f', '6afc90e0efb1b604ac0d7ae5f087eeaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `auth_user` VALUES (51, 'aaaa', '2985bcdae92a56025be38c0fda1f0ff4', 'a30a6458c9f5e2ba00c4cf6fb666db1f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (52, 'zz', '7f75156f02b0f51e2bdfd6db5d732266', 'f837527a969bd1c77a7963b78f22a1aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (53, 'dddd', 'd6969dd4a8641c70e117cfe9678af90c', '9fa521fe449b50e975228353d4a56c84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (54, 'aaa', '37badda43ab64504e14027079fe851ec', '0ce51c5d1a986c8027691686d1d2de44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (57, '蒋丹', 'jiangdan520', NULL, NULL, NULL, NULL, '18725908515', '3333333@qq.com', NULL, 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tb_account
-- ----------------------------
DROP TABLE IF EXISTS `tb_account`;
CREATE TABLE `tb_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `account_name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `account_type` int(11) DEFAULT NULL COMMENT '用户类型',
  `account_tel` varchar(11) DEFAULT NULL COMMENT '用户电话',
  `account_email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `account_pwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `account_audit` int(11) DEFAULT NULL COMMENT '用户审核状态',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_baseinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_baseinfo`;
CREATE TABLE `tb_baseinfo` (
  `baseinfo_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `baseinfo_name` varchar(255) DEFAULT NULL COMMENT '名字',
  `baseinfo_sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `baseinfo_birth` datetime DEFAULT NULL COMMENT '生日',
  `baseinfo_nation` varchar(255) DEFAULT NULL COMMENT '国籍',
  `baseinfo_location` varchar(255) DEFAULT NULL COMMENT '所在城市',
  `baseinfo_tel` varchar(255) DEFAULT NULL COMMENT '用户电话',
  `baseinfo_email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`baseinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `comment_content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `comment_time` varchar(255) DEFAULT NULL COMMENT '评论时间',
  `comment_name` varchar(255) DEFAULT NULL COMMENT '评论者',
  `note_id` varchar(11) DEFAULT NULL COMMENT '帖子id',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
BEGIN;
INSERT INTO `tb_comment` VALUES (1, '啦啦啦啦啦啦啦', '2019-05-09', 'JD', '1');
INSERT INTO `tb_comment` VALUES (2, 'lailailao', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (3, 'jd', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (4, '蒋丹', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (5, '经济斤斤计较', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (6, 'daddy', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (7, '哒哒哒哒', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (8, 'fff', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (9, 'czxc', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (10, 'ffff', '2019-05-13', 'JD', '1');
INSERT INTO `tb_comment` VALUES (11, 'dididi', '2019-05-13 16:16:41', 'JD', '1');
INSERT INTO `tb_comment` VALUES (12, '我不赞同这种看法', '2019-05-19 18:52:27', 'JD', '1');
INSERT INTO `tb_comment` VALUES (13, '不好', '2019-05-26 21:04:26', 'mingming', '19');
INSERT INTO `tb_comment` VALUES (14, '德国法国', '2019-05-27 00:05:44', 'mingming', '19');
INSERT INTO `tb_comment` VALUES (15, 'kkkkk', '2019-05-27 00:35:43', 'mingming', '19');
INSERT INTO `tb_comment` VALUES (16, '啦啦啦啦', '2019-05-27 00:47:59', 'mingming', '19');
COMMIT;

-- ----------------------------
-- Table structure for tb_companyinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_companyinfo`;
CREATE TABLE `tb_companyinfo` (
  `company_id` int(30) NOT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  `company_type` varchar(30) DEFAULT NULL,
  `company_numbecompany_numbers` int(40) DEFAULT NULL,
  `company_loacation` varchar(40) DEFAULT NULL,
  `company_detaillocation` varchar(50) DEFAULT NULL,
  `company_capital` varchar(50) DEFAULT NULL,
  `company_registertime` date DEFAULT NULL,
  `company_culture` varchar(255) DEFAULT NULL,
  `bUserId` int(20) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_companyinfo
-- ----------------------------
BEGIN;
INSERT INTO `tb_companyinfo` VALUES (1, '重庆科技学院', '科技', 200, '重庆市', '重庆市虎溪校区', '非常傻', '2019-05-08', '冲你是卢卡斯的减肥啦就是', 6);
COMMIT;

-- ----------------------------
-- Table structure for tb_companyprofile
-- ----------------------------
DROP TABLE IF EXISTS `tb_companyprofile`;
CREATE TABLE `tb_companyprofile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司简介id',
  `company_name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `company_culture` varchar(255) DEFAULT NULL COMMENT '企业文化',
  `company_location` varchar(255) DEFAULT NULL COMMENT '企业大概位置',
  `company_numbers` varchar(255) DEFAULT NULL COMMENT '企业人数',
  `company_type` varchar(255) DEFAULT NULL COMMENT '企业类型',
  `company_detaillocation` varchar(255) DEFAULT NULL COMMENT '企业具体位置',
  `company_registertime` varchar(255) DEFAULT NULL COMMENT '企业注册时间',
  `company_capital` varchar(255) DEFAULT NULL COMMENT '企业注册资金',
  `post_id` int(255) DEFAULT NULL COMMENT '职位id',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `code` varchar(19) DEFAULT NULL COMMENT '企业代码',
  `img` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_companyprofile
-- ----------------------------
BEGIN;
INSERT INTO `tb_companyprofile` VALUES (1, 'lailai', '自我价值', '重庆', '20000', '互联网', '重庆渝北', '2019-04-09 00:00:00', '30000', 1, -1, '9997765555', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_companyprofile` VALUES (2, 'mingming', '啦啦啦啦', '重庆', '3000', '互联网', NULL, '2008', '9000', NULL, 1, '980867686', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tb_education
-- ----------------------------
DROP TABLE IF EXISTS `tb_education`;
CREATE TABLE `tb_education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教育背景id',
  `education_school` varchar(255) DEFAULT NULL COMMENT '学校名称',
  `education_time` varchar(255) DEFAULT NULL COMMENT '在校时间',
  `education_education` varchar(255) DEFAULT NULL COMMENT '学历',
  `education_major` varchar(255) DEFAULT NULL COMMENT '专业',
  `education_majortype` varchar(255) DEFAULT NULL COMMENT '专业类别',
  `education_list` varchar(255) DEFAULT NULL COMMENT '专业排名',
  `education_course` varchar(255) DEFAULT NULL COMMENT '主修课程',
  `education_honor` varchar(255) DEFAULT NULL COMMENT '荣誉奖励',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_education
-- ----------------------------
BEGIN;
INSERT INTO `tb_education` VALUES (3, '重庆科技学院', '2019', '本科', '计算机', '计算机科学与技术', '50', 'java', '无', 'yyyy', 1);
INSERT INTO `tb_education` VALUES (4, '科技学院', '2019', '本科', '计算机', '计算机科学与技术', '50/80', 'java', '无', 'admin', 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `tb_evaluation`;
CREATE TABLE `tb_evaluation` (
  `evaluation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人评价id',
  `evaluation_descript` longtext COMMENT '个人评价内容',
  PRIMARY KEY (`evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_except
-- ----------------------------
DROP TABLE IF EXISTS `tb_except`;
CREATE TABLE `tb_except` (
  `except_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '期望实习id',
  `mod` varchar(255) DEFAULT NULL COMMENT '期望职位',
  `job` varchar(255) DEFAULT NULL COMMENT '期望工作地点',
  `cty` varchar(255) DEFAULT NULL COMMENT '期望每周工作时间',
  `day` int(22) DEFAULT NULL COMMENT '实习时间',
  `begin_year` varchar(22) DEFAULT NULL COMMENT '到岗日期',
  `begin_month` varchar(30) DEFAULT NULL,
  `end_year` varchar(22) DEFAULT NULL,
  `end_month` varchar(22) DEFAULT NULL,
  `sly` int(22) DEFAULT NULL,
  `repy` varchar(22) DEFAULT NULL,
  `repm` varchar(22) DEFAULT NULL,
  `repd` varchar(22) DEFAULT NULL,
  `bUserId` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`except_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_except
-- ----------------------------
BEGIN;
INSERT INTO `tb_except` VALUES (1, 'expc', '硬件', '成都', 2, '2019', '02', '2019', '08', 111, '2019', '04', '21', 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_experience
-- ----------------------------
DROP TABLE IF EXISTS `tb_experience`;
CREATE TABLE `tb_experience` (
  `experience_id` int(11) NOT NULL AUTO_INCREMENT,
  `oldcompany_name` varchar(255) DEFAULT NULL,
  `experience_job` varchar(255) DEFAULT NULL,
  `experience_time` varchar(255) DEFAULT NULL,
  `experience_location` varchar(255) DEFAULT NULL,
  `experience_duty` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_experience
-- ----------------------------
BEGIN;
INSERT INTO `tb_experience` VALUES (2, '重庆品胜', 'java开发', '2年', '重庆渝北', '部门助理', 'yyyy');
INSERT INTO `tb_experience` VALUES (3, '', 'java开发', '2年', '重庆沙坪坝', 'java工程是', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for tb_hire
-- ----------------------------
DROP TABLE IF EXISTS `tb_hire`;
CREATE TABLE `tb_hire` (
  `hire_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '雇佣ID',
  `company_name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `userName` varchar(255) DEFAULT NULL COMMENT '求职者',
  `post_id` int(11) DEFAULT NULL COMMENT '职位ID',
  `status` int(11) DEFAULT NULL COMMENT '简历查看',
  PRIMARY KEY (`hire_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_hire
-- ----------------------------
BEGIN;
INSERT INTO `tb_hire` VALUES (1, 'mingming', 'yyyy', 7, 0);
INSERT INTO `tb_hire` VALUES (2, 'mingming', 'yyyy', 6, 1);
INSERT INTO `tb_hire` VALUES (3, 'mingming', 'yyyy', 5, 0);
INSERT INTO `tb_hire` VALUES (28, 'mingming', 'admin', 17, 1);
INSERT INTO `tb_hire` VALUES (29, 'mingming', 'admin', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for tb_img
-- ----------------------------
DROP TABLE IF EXISTS `tb_img`;
CREATE TABLE `tb_img` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `img_name` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_img
-- ----------------------------
BEGIN;
INSERT INTO `tb_img` VALUES (3, 'pp', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (4, 'ddd', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (5, 'd', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (6, 'dd', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (7, 'sisu', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (8, 'll', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (9, 'o', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (10, 'e', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (11, 'tt', '1cd0b3765034afb0c79197ac1698c0b4.gif');
INSERT INTO `tb_img` VALUES (12, 'ss', 'QQ20190421-0.jpg');
INSERT INTO `tb_img` VALUES (13, 'er', 'QQ20190421-0.jpg');
INSERT INTO `tb_img` VALUES (14, 'ww', 'QQ20190421-0.jpg');
INSERT INTO `tb_img` VALUES (15, 'po', '1cd0b3765034afb0c79197ac1698c0b4.gif');
COMMIT;

-- ----------------------------
-- Table structure for tb_myuser
-- ----------------------------
DROP TABLE IF EXISTS `tb_myuser`;
CREATE TABLE `tb_myuser` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `user_pwd` varchar(16) DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_note
-- ----------------------------
DROP TABLE IF EXISTS `tb_note`;
CREATE TABLE `tb_note` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子编号',
  `note_title` varchar(255) DEFAULT NULL COMMENT '帖子标题',
  `note_content` varchar(255) DEFAULT NULL COMMENT '帖子内容',
  `note_time` varchar(255) DEFAULT NULL COMMENT '发帖时间',
  `note_author` varchar(255) DEFAULT NULL COMMENT '作者',
  `status` int(11) DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_note
-- ----------------------------
BEGIN;
INSERT INTO `tb_note` VALUES (1, '时间', '时间过得真的好快呀', '2019-05-13 16:39:50', 'jj', 0);
INSERT INTO `tb_note` VALUES (2, '急，在线等', '我成绩不好，能找到工作吗？', '2019-05-13 16:49:42', 'jj', -1);
INSERT INTO `tb_note` VALUES (3, '我的帖子', '犹太人好', '2019-05-26 21:01:53', 'mingming', 1);
INSERT INTO `tb_note` VALUES (4, '知识我的帖子', '你猜我想说什么', '2019-05-27 03:22:19', 'yyyy', 1);
INSERT INTO `tb_note` VALUES (5, '做开发好找工作吗', '请问各位小伙伴们做开发好找工作吗', '2019-05-27 09:19:29', 'mingming', 1);
INSERT INTO `tb_note` VALUES (6, '今天会是好天气', '今天会是好天气', '2019-05-27 09:36:54', 'mingming', 1);
INSERT INTO `tb_note` VALUES (7, '今天也有很多事情要做', '加油，你是最胖的', '2019-05-27 09:51:34', 'mingming', 1);
INSERT INTO `tb_note` VALUES (8, '滴答滴答', '时间不停在转动', '2019-05-27 10:20:21', 'yyyy', 1);
INSERT INTO `tb_note` VALUES (9, '栀子花开', 'so beautiful', '2019-05-27 10:21:12', 'yyyy', 0);
INSERT INTO `tb_note` VALUES (26, '真的可以吗？', '请问这样真的可以吗', '2019-05-28 09:13:27', 'admin', 1);
INSERT INTO `tb_note` VALUES (27, '你好', '你好啊', '2019-05-28 10:32:11', 'admin', 1);
INSERT INTO `tb_note` VALUES (28, '今天也有很多事情要做', '今天也要好好加油喔！', '2019-05-28 19:16:06', 'admin', 1);
INSERT INTO `tb_note` VALUES (29, '这么晚了', '应该睡了', '2019-05-29 02:49:10', 'admin', 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_post
-- ----------------------------
DROP TABLE IF EXISTS `tb_post`;
CREATE TABLE `tb_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '职位id',
  `post_name` varchar(255) DEFAULT NULL COMMENT '职位名称',
  `post_type` varchar(255) DEFAULT NULL COMMENT '职位类型',
  `post_location` varchar(255) DEFAULT NULL COMMENT '工作地点',
  `post_salary` varchar(255) DEFAULT NULL COMMENT '月薪',
  `post_education` varchar(255) DEFAULT NULL COMMENT '学历要求',
  `post_publish` varchar(200) DEFAULT NULL COMMENT '发布时间',
  `post_correctiontime` varchar(255) DEFAULT NULL COMMENT '转正时间',
  `post_benefit` longtext COMMENT '职位诱惑',
  `post_worktime` varchar(20) DEFAULT NULL COMMENT '每周工作时间',
  `post_duty` longtext COMMENT '工作职责',
  `post_require` longtext COMMENT '工作要求',
  `company_name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `practice_time` varchar(255) DEFAULT NULL COMMENT '实习时间（月份）',
  `comm` varchar(200) DEFAULT NULL COMMENT '每天的工资',
  `status` int(22) DEFAULT NULL,
  `post_indenty` varchar(10) DEFAULT NULL COMMENT '身份',
  `recruit_type` varchar(10) DEFAULT NULL COMMENT '招聘类型',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_post
-- ----------------------------
BEGIN;
INSERT INTO `tb_post` VALUES (1, 'java工程师', '软件', '海外', '6000', '本科', '2019-04-25 11:22:31', '3个月', '免费三餐、水果供应、节日福利、五险一金、交通便利', '4天天', '<span style=\"font-size:14px;\">1.负责项目Bug的管理，测试，重现和验证；</span><br>\r\n                        <span style=\"font-size:14px;\">2.与开发团队紧密合作和沟通，完善游戏和相关产品的功能；</span><br>\r\n                        <span style=\"font-size:14px;\">3.负责游戏和相关产品的测试用例的编写、更新及执行；部署，管理和搭建测试环境；</span><br>\r\n                        <span style=\"font-size:14px;\">4.对测试过程中进行详细记录，编写详细的测试报告1111。</span><br><br><br>', '<span style=\"font-size:14px;\">1.大专及以上学历，计算机类专业优先；</span><br>\r\n                        <span style=\"font-size:14px;\">2.热爱并熟悉各种大型网络游戏，对游戏有独到的见解和敏锐的观察能力；</span><br>\r\n                        <span style=\"font-size:14px;\">3.具备执行具体测试任务并确认测试结果、缺陷跟踪，完成测试报告以及测试结果分析能力； </span><br>\r\n                        <span style=\"font-size:14px;\">4. 热爱游戏，对手机游戏有激情、有追求；</span><br>\r\n                        <span style=\"font-size:14px;\">5. 工作认真负责，善于与同事进行沟通2222。</span></div>', 'mingming', '2个月', '100～200', 1, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (2, '出演工程师', '软件', '海外', '800', '本科', '2019-04-25 11:22:31', '1个月', '1', '1天', '<span style=\"font-size:14px;\">1.负责项目Bug的管理，测试，重现和验证；</span><br>\r\n                        <span style=\"font-size:14px;\">2.与开发团队紧密合作和沟通，完善游戏和相关产品的功能；</span><br>\r\n                        <span style=\"font-size:14px;\">3.负责游戏和相关产品的测试用例的编写、更新及执行；部署，管理和搭建测试环境；</span><br>\r\n                        <span style=\"font-size:14px;\">4.对测试过程中进行详细记录，编写详细的测试报告1111。</span><br><br><br>', '<span style=\"font-size:14px;\">1.大专及以上学历，计算机类专业优先；</span><br>\r\n                        <span style=\"font-size:14px;\">2.热爱并熟悉各种大型网络游戏，对游戏有独到的见解和敏锐的观察能力；</span><br>\r\n                        <span style=\"font-size:14px;\">3.具备执行具体测试任务并确认测试结果、缺陷跟踪，完成测试报告以及测试结果分析能力； </span><br>\r\n                        <span style=\"font-size:14px;\">4. 热爱游戏，对手机游戏有激情、有追求；</span><br>\r\n                        <span style=\"font-size:14px;\">5. 工作认真负责，善于与同事进行沟通2222。</span></div>', 'lailai', '1个月', '100～200', 0, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (3, 'c语言2', '软件', '海外', '600', '本科', '2019-04-25 11:22:31', '3个月', NULL, NULL, '<span style=\"font-size:14px;\">1.负责项目Bug的管理，测试，重现和验证；</span><br>\r\n                        <span style=\"font-size:14px;\">2.与开发团队紧密合作和沟通，完善游戏和相关产品的功能；</span><br>\r\n                        <span style=\"font-size:14px;\">3.负责游戏和相关产品的测试用例的编写、更新及执行；部署，管理和搭建测试环境；</span><br>\r\n                        <span style=\"font-size:14px;\">4.对测试过程中进行详细记录，编写详细的测试报告1111。</span><br><br><br>', '<span style=\"font-size:14px;\">1.大专及以上学历，计算机类专业优先；</span><br>\r\n                        <span style=\"font-size:14px;\">2.热爱并熟悉各种大型网络游戏，对游戏有独到的见解和敏锐的观察能力；</span><br>\r\n                        <span style=\"font-size:14px;\">3.具备执行具体测试任务并确认测试结果、缺陷跟踪，完成测试报告以及测试结果分析能力； </span><br>\r\n                        <span style=\"font-size:14px;\">4. 热爱游戏，对手机游戏有激情、有追求；</span><br>\r\n                        <span style=\"font-size:14px;\">5. 工作认真负责，善于与同事进行沟通2222。</span></div>', 'dd', '2个月', '100～200', 0, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (4, 'c语言3', '软件', '海外', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '<span style=\"font-size:14px;\">1.负责项目Bug的管理，测试，重现和验证；</span><br>\r\n                        <span style=\"font-size:14px;\">2.与开发团队紧密合作和沟通，完善游戏和相关产品的功能；</span><br>\r\n                        <span style=\"font-size:14px;\">3.负责游戏和相关产品的测试用例的编写、更新及执行；部署，管理和搭建测试环境；</span><br>\r\n                        <span style=\"font-size:14px;\">4.对测试过程中进行详细记录，编写详细的测试报告1111。</span><br><br><br>', '<span style=\"font-size:14px;\">1.大专及以上学历，计算机类专业优先；</span><br>\r\n                        <span style=\"font-size:14px;\">2.热爱并熟悉各种大型网络游戏，对游戏有独到的见解和敏锐的观察能力；</span><br>\r\n                        <span style=\"font-size:14px;\">3.具备执行具体测试任务并确认测试结果、缺陷跟踪，完成测试报告以及测试结果分析能力； </span><br>\r\n                        <span style=\"font-size:14px;\">4. 热爱游戏，对手机游戏有激情、有追求；</span><br>\r\n                        <span style=\"font-size:14px;\">5. 工作认真负责，善于与同事进行沟通2222。</span></div>', 'dd', '2个月', '100～200', 1, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (5, 'c语言4', '软件', '海外', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '<span style=\"font-size:14px;\">1.负责项目Bug的管理，测试，重现和验证；</span><br>\r\n                        <span style=\"font-size:14px;\">2.与开发团队紧密合作和沟通，完善游戏和相关产品的功能；</span><br>\r\n                        <span style=\"font-size:14px;\">3.负责游戏和相关产品的测试用例的编写、更新及执行；部署，管理和搭建测试环境；</span><br>\r\n                        <span style=\"font-size:14px;\">4.对测试过程中进行详细记录，编写详细的测试报告1111。</span><br><br><br>', '<span style=\"font-size:14px;\">1.大专及以上学历，计算机类专业优先；</span><br>\r\n                        <span style=\"font-size:14px;\">2.热爱并熟悉各种大型网络游戏，对游戏有独到的见解和敏锐的观察能力；</span><br>\r\n                        <span style=\"font-size:14px;\">3.具备执行具体测试任务并确认测试结果、缺陷跟踪，完成测试报告以及测试结果分析能力； </span><br>\r\n                        <span style=\"font-size:14px;\">4. 热爱游戏，对手机游戏有激情、有追求；</span><br>\r\n                        <span style=\"font-size:14px;\">5. 工作认真负责，善于与同事进行沟通2222。</span></div>', 'dd', '2个月', '100～200', 0, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (6, 'c语言5', '软件', '海外', '3000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5天天', '<span style=\"font-size:14px;\">1.负责项目Bug的管理，测试，重现和验证；</span><br>\r\n                        <span style=\"font-size:14px;\">2.与开发团队紧密合作和沟通，完善游戏和相关产品的功能；</span><br>\r\n                        <span style=\"font-size:14px;\">3.负责游戏和相关产品的测试用例的编写、更新及执行；部署，管理和搭建测试环境；</span><br>\r\n                        <span style=\"font-size:14px;\">4.对测试过程中进行详细记录，编写详细的测试报告1111。</span><br><br><br>', '<span style=\"font-size:14px;\">1.大专及以上学历，计算机类专业优先；</span><br>\r\n                        <span style=\"font-size:14px;\">2.热爱并熟悉各种大型网络游戏，对游戏有独到的见解和敏锐的观察能力；</span><br>\r\n                        <span style=\"font-size:14px;\">3.具备执行具体测试任务并确认测试结果、缺陷跟踪，完成测试报告以及测试结果分析能力； </span><br>\r\n                        <span style=\"font-size:14px;\">4. 热爱游戏，对手机游戏有激情、有追求；</span><br>\r\n                        <span style=\"font-size:14px;\">5. 工作认真负责，善于与同事进行沟通2222。</span></div>', 'mingming', '2个月', '100～200', 0, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (7, 'c语言6', '软件', '海外', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '<span style=\"font-size:14px;\">1.负责项目Bug的管理，测试，重现和验证；</span><br>\r\n                        <span style=\"font-size:14px;\">2.与开发团队紧密合作和沟通，完善游戏和相关产品的功能；</span><br>\r\n                        <span style=\"font-size:14px;\">3.负责游戏和相关产品的测试用例的编写、更新及执行；部署，管理和搭建测试环境；</span><br>\r\n                        <span style=\"font-size:14px;\">4.对测试过程中进行详细记录，编写详细的测试报告1111。</span><br><br><br>', '<span style=\"font-size:14px;\">1.大专及以上学历，计算机类专业优先；</span><br>\r\n                        <span style=\"font-size:14px;\">2.热爱并熟悉各种大型网络游戏，对游戏有独到的见解和敏锐的观察能力；</span><br>\r\n                        <span style=\"font-size:14px;\">3.具备执行具体测试任务并确认测试结果、缺陷跟踪，完成测试报告以及测试结果分析能力； </span><br>\r\n                        <span style=\"font-size:14px;\">4. 热爱游戏，对手机游戏有激情、有追求；</span><br>\r\n                        <span style=\"font-size:14px;\">5. 工作认真负责，善于与同事进行沟通2222。</span></div>', 'mingming', '2个月', '100～200', 0, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (8, 'c语言7', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '<span style=\"font-size:14px;\">1.负责项目Bug的管理，测试，重现和验证；</span><br>\r\n                        <span style=\"font-size:14px;\">2.与开发团队紧密合作和沟通，完善游戏和相关产品的功能；</span><br>\r\n                        <span style=\"font-size:14px;\">3.负责游戏和相关产品的测试用例的编写、更新及执行；部署，管理和搭建测试环境；</span><br>\r\n                        <span style=\"font-size:14px;\">4.对测试过程中进行详细记录，编写详细的测试报告1111。</span><br><br><br>', '<span style=\"font-size:14px;\">1.大专及以上学历，计算机类专业优先；</span><br>\r\n                        <span style=\"font-size:14px;\">2.热爱并熟悉各种大型网络游戏，对游戏有独到的见解和敏锐的观察能力；</span><br>\r\n                        <span style=\"font-size:14px;\">3.具备执行具体测试任务并确认测试结果、缺陷跟踪，完成测试报告以及测试结果分析能力； </span><br>\r\n                        <span style=\"font-size:14px;\">4. 热爱游戏，对手机游戏有激情、有追求；</span><br>\r\n                        <span style=\"font-size:14px;\">5. 工作认真负责，善于与同事进行沟通2222。</span></div>', 'mingming', '2个月', '100～200', 0, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (9, 'c语言8', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (10, 'c语言9', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (11, 'c语言10', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 0, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (12, 'c语言12', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (13, 'c语言13', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (14, 'c语言14', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (15, 'c语言15', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '企业招聘');
INSERT INTO `tb_post` VALUES (16, 'c语言16', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '校园招聘');
INSERT INTO `tb_post` VALUES (17, 'c语言17', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '校园招聘');
INSERT INTO `tb_post` VALUES (18, 'c语言18', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '校园招聘');
INSERT INTO `tb_post` VALUES (19, 'c语言19', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5天', '0', '', 'mingming', '2个月', '100～200', 1, NULL, '校园招聘');
INSERT INTO `tb_post` VALUES (20, 'c语言20', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '校园招聘');
INSERT INTO `tb_post` VALUES (21, 'c语言21', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '校园招聘');
INSERT INTO `tb_post` VALUES (22, 'c语言22', '软件', '北京', '6000', '本科', '2019-04-25 11:22:31', '3个月', '4', '5', '2', NULL, 'mingming', '2个月', '100～200', 1, NULL, '校园招聘');
INSERT INTO `tb_post` VALUES (23, '风格化', '测试', '18725908515', '4000', 'v 的时光', '2019-04-25 11:22:31', '得分', '说不定 v', '的 v 个', '宝宝的方式', '博格达峰', 'mingming', '奋斗史', NULL, 1, NULL, NULL);
INSERT INTO `tb_post` VALUES (24, '会让', '商务', '广东报告', '3000', '不放过', '2019-04-25 11:22:31', '刚好烦恼', '更换奶粉', '官方回复你', '风格化', '海南风光', 'mingming', '法国还能发光', NULL, 1, NULL, NULL);
INSERT INTO `tb_post` VALUES (25, '前端开发', '商务', '重庆渝北', '8000', '本科', '2019-04-25 11:22:31', '3个月', '公司提供早餐', '5天', '负责前端开发', '会html语言，css', 'mingming', '3个月', NULL, 1, NULL, NULL);
INSERT INTO `tb_post` VALUES (26, '测试', '测试', '重庆', '9000', '本科', '2019-04-25 11:22:31', '3个月', '提供早餐', '5天', '负责测试', '会测试', 'mingming', '3个月', '100', 1, NULL, NULL);
INSERT INTO `tb_post` VALUES (40, 'java开发', '软件', '重庆渝北', '500', '本科', '2019-08-09', '3个月', '早餐', '5天天', '开发', '会开发语言', 'mingming', '6个月', NULL, 1, NULL, NULL);
INSERT INTO `tb_post` VALUES (41, '招聘测试', '测试', '重庆渝北', '3000', '本科', '2019-08-09', '3个月', '提供早餐', '5天', '负责测试', '会写测试用例，有1-2年工作经验', 'mingming', '6个月', NULL, 1, NULL, NULL);
INSERT INTO `tb_post` VALUES (42, 'java开发', '软件', '重庆', '5000', '本科', '2019-09-08', '3个月', '提供早餐', '5天', '开发', '会开发语言', 'mingming', '6个月', NULL, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tb_school
-- ----------------------------
DROP TABLE IF EXISTS `tb_school`;
CREATE TABLE `tb_school` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '校园经历id',
  `activity_name` varchar(255) DEFAULT NULL COMMENT '活动名称',
  `activity_job` varchar(255) DEFAULT NULL COMMENT '担任职务',
  `activity_time` datetime DEFAULT NULL COMMENT '活动时间',
  `activity_location` varchar(255) DEFAULT NULL COMMENT '活动地点',
  `activity_descript` longtext COMMENT '活动描述',
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_science
-- ----------------------------
DROP TABLE IF EXISTS `tb_science`;
CREATE TABLE `tb_science` (
  `science_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学术经历id',
  `science_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `science_job` varchar(255) DEFAULT NULL COMMENT '担任职务',
  `science_time` datetime DEFAULT NULL COMMENT '项目时间',
  `science_loaction` varchar(255) DEFAULT NULL COMMENT '项目地点',
  `science_descript` longtext COMMENT '项目描述',
  PRIMARY KEY (`science_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_units
-- ----------------------------
DROP TABLE IF EXISTS `tb_units`;
CREATE TABLE `tb_units` (
  `units_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '相关附件id',
  `units_link` varchar(255) DEFAULT NULL COMMENT '附件链接',
  PRIMARY KEY (`units_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_userInfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_userInfo`;
CREATE TABLE `tb_userInfo` (
  `userinfo_id` int(10) NOT NULL,
  `bUserId` int(10) DEFAULT NULL COMMENT '外建',
  `gender` int(10) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `bcity` varchar(10) DEFAULT NULL,
  `telep` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_userInfo
-- ----------------------------
BEGIN;
INSERT INTO `tb_userInfo` VALUES (1, 0, 1, '中国', '重庆', '15002344940', '295227940@qq.com', '2019-2');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
