/*
Navicat MySQL Data Transfer

Source Server         : 自己个儿
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : ahaooubabk

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-14 10:33:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `context` text NOT NULL,
  `show` varchar(255) NOT NULL,
  `ctime` varchar(255) NOT NULL,
  `cid` bigint(20) NOT NULL,
  `ckcount` bigint(20) NOT NULL,
  `jianjie` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('7', 'Go语言入门', '1', '66;67;79;85;86', 'go语言是一门很好的语言', '', '2017-10-09 15:54:33', '31', '0', 'go语言讲解');
INSERT INTO `article` VALUES ('8', 'PHP简介', '1', '70;71;72;80', 'PHP时世界上最好的编程语言!', '', '2017-10-09 15:55:44', '30', '0', 'php简单介绍');
INSERT INTO `article` VALUES ('9', '鹅鹅鹅', '1', '75;76;77', '床前明月光，\n疑是地上霜。\n举头望明月，\n低头思故乡。', '', '2017-10-10 14:47:19', '25', '0', '诗歌欣赏');
INSERT INTO `article` VALUES ('10', 'bsdfbseb', '1', '78;81', 'asdfasf', '', '2017-11-13 10:18:21', '31', '0', 'asdfs');
INSERT INTO `article` VALUES ('11', 'PHP的常用函数', '1', '82', '说一说PHP的常用函数有哪些？', '', '2017-11-13 14:44:49', '30', '0', 'PHP的常用函数介绍');
INSERT INTO `article` VALUES ('12', 'PHP开发中遇到的问题', '1', '83', '说一说平时开发中遇到哪些问题？', '', '2017-11-13 14:46:13', '30', '0', 'php常遇到的问题介绍');
INSERT INTO `article` VALUES ('13', 'PHP你最喜欢哪个框架', '1', '84', '说一说你用着最舒服的php框架！', '', '2017-11-13 14:47:05', '30', '0', 'PHP的框架介绍');

-- ----------------------------
-- Table structure for `cate_gory`
-- ----------------------------
DROP TABLE IF EXISTS `cate_gory`;
CREATE TABLE `cate_gory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pid` bigint(20) NOT NULL,
  `jb` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate_gory
-- ----------------------------
INSERT INTO `cate_gory` VALUES ('18', '前端开发', '-1', '1');
INSERT INTO `cate_gory` VALUES ('19', '后端开发', '-1', '1');
INSERT INTO `cate_gory` VALUES ('20', 'HTML/CSS', '18', '2');
INSERT INTO `cate_gory` VALUES ('21', 'JavaScript', '18', '2');
INSERT INTO `cate_gory` VALUES ('22', 'jQuery', '21', '3');
INSERT INTO `cate_gory` VALUES ('23', 'Vue.js', '21', '3');
INSERT INTO `cate_gory` VALUES ('24', 'Node.js', '21', '3');
INSERT INTO `cate_gory` VALUES ('25', 'Html5', '20', '3');
INSERT INTO `cate_gory` VALUES ('26', 'CSS3', '20', '3');
INSERT INTO `cate_gory` VALUES ('27', '移动开发', '-1', '1');
INSERT INTO `cate_gory` VALUES ('28', '数据库', '-1', '1');
INSERT INTO `cate_gory` VALUES ('29', '云计算&大数据', '-1', '1');
INSERT INTO `cate_gory` VALUES ('30', 'PHP', '19', '2');
INSERT INTO `cate_gory` VALUES ('31', 'Go', '19', '2');
INSERT INTO `cate_gory` VALUES ('32', 'Python', '19', '2');
INSERT INTO `cate_gory` VALUES ('33', 'Java', '19', '2');
INSERT INTO `cate_gory` VALUES ('34', 'C', '19', '2');
INSERT INTO `cate_gory` VALUES ('35', 'C++', '19', '2');
INSERT INTO `cate_gory` VALUES ('36', 'MySQL', '28', '2');
INSERT INTO `cate_gory` VALUES ('37', 'MongoDB', '28', '2');
INSERT INTO `cate_gory` VALUES ('38', 'Oracle', '28', '2');
INSERT INTO `cate_gory` VALUES ('39', 'SQL Server', '28', '2');
INSERT INTO `cate_gory` VALUES ('40', 'Android', '27', '2');
INSERT INTO `cate_gory` VALUES ('41', 'IOS', '27', '2');
INSERT INTO `cate_gory` VALUES ('42', '大数据', '29', '2');
INSERT INTO `cate_gory` VALUES ('43', '云计算', '29', '2');
INSERT INTO `cate_gory` VALUES ('44', 'TalkTalk', '-1', '1');
INSERT INTO `cate_gory` VALUES ('45', 'Html', '25', '4');

-- ----------------------------
-- Table structure for `file`
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `ctime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('6', 'livego.zip', 'static\\file\\livego.zip', '2017-11-14 16:08:06');
INSERT INTO `file` VALUES ('7', 'Git-2.7.2-32-bit_setup.1457942412.exe', 'static\\file\\Git-2.7.2-32-bit_setup.1457942412.exe', '2017-11-14 16:11:40');
INSERT INTO `file` VALUES ('8', '新建文本文档.txt', 'static\\file\\新建文本文档.txt', '2017-11-15 14:01:24');
INSERT INTO `file` VALUES ('9', '上传文件.zip', 'static\\file\\上传文件.zip', '2017-11-16 08:58:11');
INSERT INTO `file` VALUES ('10', 'beego文档.chm', 'static\\file\\beego文档.chm', '2017-11-17 09:26:27');
INSERT INTO `file` VALUES ('11', 'WebIM-master.zip', 'static\\file\\WebIM-master.zip', '2017-11-21 15:20:47');
INSERT INTO `file` VALUES ('12', 'i18n-master.zip', 'static\\file\\i18n-master.zip', '2017-11-21 15:32:45');
INSERT INTO `file` VALUES ('13', 'websocket-master.zip', 'static\\file\\websocket-master.zip', '2017-11-21 15:32:53');
INSERT INTO `file` VALUES ('14', 'goconfig-master.zip', 'static\\file\\goconfig-master.zip', '2017-11-21 15:44:41');
INSERT INTO `file` VALUES ('15', 'QQ.html', 'static\\file\\QQ.html', '2017-11-22 13:00:31');
INSERT INTO `file` VALUES ('16', '图片.zip', 'static\\file\\图片.zip', '2017-11-23 10:35:11');

-- ----------------------------
-- Table structure for `gift`
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picpath` varchar(255) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gift
-- ----------------------------
INSERT INTO `gift` VALUES ('1', 'asdfsdf', 'static\\gift\\f72e765136a8476b94a0d34545098ba8.jpg', '13');

-- ----------------------------
-- Table structure for `lbpic`
-- ----------------------------
DROP TABLE IF EXISTS `lbpic`;
CREATE TABLE `lbpic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `urlpath` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lbpic
-- ----------------------------
INSERT INTO `lbpic` VALUES ('7', '79', '.\\static\\artimg\\1510553774.jpg');
INSERT INTO `lbpic` VALUES ('9', '85', '.\\static\\artimg\\1510625468.jpg');
INSERT INTO `lbpic` VALUES ('10', '86', '.\\static\\artimg\\1510625482.jpg');

-- ----------------------------
-- Table structure for `live`
-- ----------------------------
DROP TABLE IF EXISTS `live`;
CREATE TABLE `live` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `pushflow` varchar(255) DEFAULT NULL,
  `pullflow` varchar(255) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `islive` varchar(255) DEFAULT NULL,
  `lastlinetime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of live
-- ----------------------------
INSERT INTO `live` VALUES ('1', '1', 'ed93f2c5542b42e1ad4fafa42ec28bb4', '', '', '2018-02-24 13:20:40', '新人上路', '点关注点关注', 'ahaoouba', 'true', '0000-00-00 00:00:00');
INSERT INTO `live` VALUES ('3', '6', '4d057cfa39e64af9a76a7557729c8b3b', '', '', '2018-02-24 13:38:37', 'ww', 'ww', 'ww', 'false', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `scene` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('1', '阿冷 - 春风吹.mp3', 'static\\music\\阿冷 - 春风吹.mp3', '');

-- ----------------------------
-- Table structure for `pic`
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `show` varchar(255) NOT NULL,
  `ctime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pic
-- ----------------------------
INSERT INTO `pic` VALUES ('66', '.\\static\\artimg\\1507611400.jpg', 'false', '2017-10-2 12:56:40');
INSERT INTO `pic` VALUES ('67', '.\\static\\artimg\\1507611406.jpg', 'false', '2017-10-8 12:56:46');
INSERT INTO `pic` VALUES ('70', '.\\static\\artimg\\1507611430.jpg', 'false', '2017-10-9 12:57:10');
INSERT INTO `pic` VALUES ('71', '.\\static\\artimg\\1507611435.jpg', 'false', '2017-10-9 12:57:15');
INSERT INTO `pic` VALUES ('72', '.\\static\\artimg\\1507611440.jpg', 'false', '2017-10-10 12:57:20');
INSERT INTO `pic` VALUES ('75', '.\\static\\artimg\\1507700915.jpg', 'true', '2017-10-11 13:48:35');
INSERT INTO `pic` VALUES ('76', '.\\static\\artimg\\1507700921.jpg', 'true', '2017-10-11 13:48:41');
INSERT INTO `pic` VALUES ('77', '.\\static\\artimg\\1508209639.jpg', 'true', '2017-10-17 11:07:19');
INSERT INTO `pic` VALUES ('78', '.\\static\\artimg\\1510539494.jpg', 'false', '2017-11-13 10:18:14');
INSERT INTO `pic` VALUES ('79', '.\\static\\artimg\\1510553774.jpg', 'true', '2017-11-13 14:16:14');
INSERT INTO `pic` VALUES ('80', '.\\static\\artimg\\1510553791.jpg', 'true', '2017-11-13 14:16:31');
INSERT INTO `pic` VALUES ('81', '.\\static\\artimg\\1510553804.jpg', 'true', '2017-11-13 14:16:44');
INSERT INTO `pic` VALUES ('82', '.\\static\\artimg\\1510555487.jpg', 'true', '2017-11-13 14:44:47');
INSERT INTO `pic` VALUES ('83', '.\\static\\artimg\\1510555570.jpg', 'true', '2017-11-13 14:46:10');
INSERT INTO `pic` VALUES ('84', '.\\static\\artimg\\1510555624.jpg', 'true', '2017-11-13 14:47:04');
INSERT INTO `pic` VALUES ('85', '.\\static\\artimg\\1510625468.jpg', 'true', '2017-11-14 10:11:08');
INSERT INTO `pic` VALUES ('86', '.\\static\\artimg\\1510625482.jpg', 'true', '2017-11-14 10:11:22');

-- ----------------------------
-- Table structure for `talk`
-- ----------------------------
DROP TABLE IF EXISTS `talk`;
CREATE TABLE `talk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) NOT NULL,
  `ctime` datetime NOT NULL,
  `fsuname` varchar(255) NOT NULL,
  `newmessage` varchar(255) NOT NULL,
  `jsuname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of talk
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth` varchar(255) NOT NULL,
  `linetime` varchar(255) NOT NULL,
  `islogin` varchar(255) NOT NULL,
  `sessionid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'ahaoouba', '13384610313', 'A52111', 'admin', '1520820353', 'true', 'f8ecf228fa27e5af4038c03ed1fe5353');
INSERT INTO `user` VALUES ('3', 'lurui', '15145996433', '123456', 'user', '', 'false', '');
INSERT INTO `user` VALUES ('6', 'wx', '15045808524', 'wx870613', 'admin', '', 'false', '');
INSERT INTO `user` VALUES ('8', 'wangxue', '15045808524', '123456', 'admin', '', 'false', '');
INSERT INTO `user` VALUES ('9', 'ahao', '13384610313', '123', 'admin', '', 'false', '');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `videoname` varchar(255) NOT NULL,
  `videopath` varchar(255) NOT NULL,
  `ctime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('2', '羞羞铁拳.mp4', 'static\\video\\羞羞铁拳.mp4', '2018-01-05 13:52:29');
