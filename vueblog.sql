-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: localhost    Database: vueblog
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog_idauto`
--

DROP TABLE IF EXISTS `blog_idauto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_idauto` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_idauto`
--

LOCK TABLES `blog_idauto` WRITE;
/*!40000 ALTER TABLE `blog_idauto` DISABLE KEYS */;
INSERT INTO `blog_idauto` VALUES (14);
/*!40000 ALTER TABLE `blog_idauto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_seq`
--

DROP TABLE IF EXISTS `id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_seq`
--

LOCK TABLES `id_seq` WRITE;
/*!40000 ALTER TABLE `id_seq` DISABLE KEYS */;
INSERT INTO `id_seq` VALUES (1);
/*!40000 ALTER TABLE `id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_idauto`
--

DROP TABLE IF EXISTS `photo_idauto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_idauto` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_idauto`
--

LOCK TABLES `photo_idauto` WRITE;
/*!40000 ALTER TABLE `photo_idauto` DISABLE KEYS */;
INSERT INTO `photo_idauto` VALUES (19);
/*!40000 ALTER TABLE `photo_idauto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_banner`
--

DROP TABLE IF EXISTS `tb_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_banner` (
  `bannerid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `src` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  PRIMARY KEY (`bannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_banner`
--

LOCK TABLES `tb_banner` WRITE;
/*!40000 ALTER TABLE `tb_banner` DISABLE KEYS */;
INSERT INTO `tb_banner` VALUES (1,10000,1,'/img','/'),(2,10001,2,'/img','/'),(3,10000,3,'/img','/');
/*!40000 ALTER TABLE `tb_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bbs`
--

DROP TABLE IF EXISTS `tb_bbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_bbs` (
  `bbsid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `bbsdate` datetime NOT NULL,
  `bbscontent` text NOT NULL,
  `touserid` int(11) NOT NULL,
  `replycontent` varchar(45) DEFAULT NULL,
  `replydate` datetime DEFAULT NULL,
  PRIMARY KEY (`bbsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bbs`
--

LOCK TABLES `tb_bbs` WRITE;
/*!40000 ALTER TABLE `tb_bbs` DISABLE KEYS */;
INSERT INTO `tb_bbs` VALUES (1,10001,'2019-03-01 00:00:00','真好',10000,'谢谢','0000-00-00 00:00:00'),(2,10002,'2019-03-19 00:00:00','真香',10000,NULL,NULL),(3,10003,'2019-03-20 00:00:00','真棒',10000,NULL,NULL),(4,10004,'2019-03-06 00:00:00','真牛',10000,NULL,NULL);
/*!40000 ALTER TABLE `tb_bbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_blog`
--

DROP TABLE IF EXISTS `tb_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_blog` (
  `blogid` int(11) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `thumbnail` varchar(45) NOT NULL,
  `pv` int(11) NOT NULL,
  `blogdate` datetime NOT NULL,
  PRIMARY KEY (`blogid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_blog`
--

LOCK TABLES `tb_blog` WRITE;
/*!40000 ALTER TABLE `tb_blog` DISABLE KEYS */;
INSERT INTO `tb_blog` VALUES (1,9,10000,'一.Ajax入门','AJAX 是一种用于创建快速动态网页的技术。通过在后台与服务器进行少量数据交换，AJAX 可以使网页实现异步更新。这意味着可以在不重新加载整个网页的情况下，对网页的某部分进行更新。','/img',123,'2019-02-02 00:00:00'),(3,10,10000,'三.Ajax应用','运用XHTML+CSS来表达资讯，运用JavaScript操作DOM（Document Object Model）来执行动态效果；运用XML和XSLT操作资料;运用XMLHttpRequest或新的Fetch API与网页服务器进行异步资料交换；注意：AJAX与Flash、Silverlight和Java Applet等RIA技术是有区分的。','/img',789,'2019-02-04 00:00:00'),(5,11,10000,'五.MySQL视图','视图（view）是一种虚拟存在的表，是一个逻辑表，本身并不包含数据。作为一个select语句保存在数据字典中的。','/img',456,'2019-02-06 00:00:00'),(7,13,10000,'七.java简介','Java 是由Sun Microsystems公司于1995年5月推出的高级程序设计语言。Java可运行于多个平台，如Windows, Mac OS，及其他多种UNIX版本的系统。','/img',123,'2019-02-08 00:00:00'),(9,14,10000,'九.Java web和Java区别','java 三大方向：java SE主要面向开发桌面程序java EE主要面向开发WEB应用java ME主要面向开发手机应用java SE是java的核心也是基础，java EE只是在SE基础上SUN公司研发的API，提供给WEB开发者使用的平台。','/img',789,'2019-02-10 00:00:00'),(11,9,10000,'二.Ajax基础','所有现代浏览器均支持 XMLHttpRequest 对象（IE5 和 IE6 使用 ActiveXObject）。XMLHttpRequest 用于在后台与服务器交换数据。这意味着可以在不重新加载整个网页的情况下，对网页的某部分进行更新。','/img',456,'2019-02-03 00:00:00'),(13,12,10000,'四.MySQL数据库多表连接','除了常用的两个表连接之外，SQL（MySQL） JOIN 语法还支持多表连接。多表连接基本语法如下：FROM table1 INNER|LEFT|RIGHT JOIN table2 ON condition INNER|LEFT|RIGHTJOIN table3 ON condition','/img',123,'2019-02-05 00:00:00'),(15,11,10000,'六.MySQL数据库建立','1、 CREATE DATABASE 数据库名;2、 GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER ON 数据库名.* TO 数据库名@localhost IDENTIFIED BY \'密码\';3、 SET PASSWORD FOR\'数据库名\'@\'localhost\' = OLD_PASSWORD(\'密码\');依次执行3个命令完成数据库创建。注意：中文 “密码”和“数据库”是户自己需要设置的。','/img',789,'2019-02-07 00:00:00'),(17,13,10000,'八.Java web创建','在创建之前，电脑需要有myeclipse或者eclipse，在这里我用了myeclipse。具体的下载和安装请自行百度。','/img',456,'2019-02-09 00:00:00'),(19,22,10000,'1','1','1',1,'2019-02-09 00:00:00');
/*!40000 ALTER TABLE `tb_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_class`
--

DROP TABLE IF EXISTS `tb_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_class` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(45) NOT NULL,
  `parentid` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `url` varchar(45) NOT NULL,
  `userid` int(11) NOT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_class`
--

LOCK TABLES `tb_class` WRITE;
/*!40000 ALTER TABLE `tb_class` DISABLE KEYS */;
INSERT INTO `tb_class` VALUES (1,'日志',0,1,0,'/',10000,NULL),(2,'相册',0,2,0,'/',10000,NULL),(3,'Ajax',1,3,1,'/',10000,NULL),(4,'MySQL',1,4,1,'/',10000,NULL),(5,'Java',1,5,1,'/',10000,NULL),(6,'山景',2,6,1,'/',10000,NULL),(7,'海景',2,7,1,'/',10000,NULL),(8,'遗迹',2,8,1,'/',10000,NULL),(9,'Ajax基础',3,9,2,'/blog/ajax_base',10000,NULL),(10,'Ajiax进阶',3,10,2,'/blog/ajax_progress',10000,NULL),(11,'MySQL基础',4,11,2,'/blog/mysql_base',10000,NULL),(12,'MySQL进阶',4,12,2,'/blog/mysql_progress',10000,NULL),(13,'Java基础',5,13,2,'/blog/java_base',10000,NULL),(14,'Java进阶',5,14,2,'/blog/java_progress',10000,NULL),(15,'华山',6,15,2,'/',10000,NULL),(16,'泰山',6,16,2,'/',10000,NULL),(17,'东海',7,17,2,'/',10000,NULL),(18,'南海',7,18,2,'/',10000,NULL),(19,'秦始皇',8,19,2,'/',10000,NULL),(20,'慈禧',8,20,2,'/',10000,NULL),(21,'测试删除',1,21,1,'/',10000,NULL),(22,'测试删除1',21,22,2,'/',10000,NULL);
/*!40000 ALTER TABLE `tb_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comment`
--

DROP TABLE IF EXISTS `tb_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `fromuser` int(11) NOT NULL,
  `touser` int(11) DEFAULT NULL,
  `commentdate` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment`
--

LOCK TABLES `tb_comment` WRITE;
/*!40000 ALTER TABLE `tb_comment` DISABLE KEYS */;
INSERT INTO `tb_comment` VALUES (1,1,'学到了学到了',10001,10000,'2019-03-03 00:00:00',10000),(2,1,'谢谢',10000,10003,'2019-03-05 00:00:00',10000),(3,1,'加油，你是最胖的',10003,10000,'2019-03-04 00:00:00',10000),(4,4,'楼主加油',10001,10000,'2019-03-04 00:00:00',10000),(5,5,'很有用的一篇文章',10002,10003,'2019-03-04 00:00:00',10000),(6,6,'有点东西',10003,10004,'2019-03-04 00:00:00',10000),(7,7,'学到了',10001,10005,'2019-03-04 00:00:00',10000),(8,8,'很有用的一篇文章',10002,10003,'2019-03-04 00:00:00',10000),(9,9,'很有用的一篇文章',10003,10000,'2019-03-04 00:00:00',10000),(10,1,'加油',10001,10000,'2019-03-04 00:00:00',10000);
/*!40000 ALTER TABLE `tb_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_guest`
--

DROP TABLE IF EXISTS `tb_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_guest` (
  `guestid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `guestdate` datetime NOT NULL,
  `gursid` int(11) NOT NULL,
  PRIMARY KEY (`guestid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_guest`
--

LOCK TABLES `tb_guest` WRITE;
/*!40000 ALTER TABLE `tb_guest` DISABLE KEYS */;
INSERT INTO `tb_guest` VALUES (1,10000,10001,'2019-03-03 00:00:00',0),(2,10000,10002,'2019-03-03 00:00:00',0),(3,10000,10003,'2019-03-03 00:00:00',0),(4,10001,10000,'2019-03-03 00:00:00',0);
/*!40000 ALTER TABLE `tb_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_nav`
--

DROP TABLE IF EXISTS `tb_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_nav` (
  `navid` int(11) NOT NULL AUTO_INCREMENT,
  `navname` varchar(45) NOT NULL,
  `order` int(11) NOT NULL,
  `url` varchar(45) NOT NULL,
  PRIMARY KEY (`navid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_nav`
--

LOCK TABLES `tb_nav` WRITE;
/*!40000 ALTER TABLE `tb_nav` DISABLE KEYS */;
INSERT INTO `tb_nav` VALUES (1,'主页',1,'/'),(2,'相册',2,'/'),(3,'日志',3,'/'),(4,'留言',4,'/'),(5,'访客',5,'/'),(6,'评论',6,'/');
/*!40000 ALTER TABLE `tb_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_photo`
--

DROP TABLE IF EXISTS `tb_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_photo` (
  `photoid` int(11) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `thumbnail` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `pv` int(11) NOT NULL,
  `photodate` datetime NOT NULL,
  PRIMARY KEY (`photoid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_photo`
--

LOCK TABLES `tb_photo` WRITE;
/*!40000 ALTER TABLE `tb_photo` DISABLE KEYS */;
INSERT INTO `tb_photo` VALUES (2,17,10000,'/img','温州海边','/img',456,'2019-03-03 00:00:00'),(4,19,10000,'/img','秦始皇遗址','/img',123,'2019-03-03 00:00:00'),(6,15,10000,'/img','华山','/img',123,'2019-03-03 00:00:00'),(8,16,10000,'/img','泰山','/img',789,'2019-03-03 00:00:00'),(10,18,10000,'/img','连云港海边','/img',156,'2019-03-03 00:00:00'),(12,20,10000,'/img','慈禧遗址','/img',456,'2019-03-03 00:00:00');
/*!40000 ALTER TABLE `tb_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `skin` int(11) DEFAULT NULL,
  `userimg` varchar(45) DEFAULT NULL,
  `nickname` varchar(45) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sign` varchar(45) DEFAULT NULL,
  `remark` text,
  `phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (10000,'admin','admin','admin@qq.com',1,'/img','admin','男',12,'qwer','一号',NULL),(10001,'user','user','user@qq.com',1,'/img','user','女',13,'asdf','二号',NULL),(10002,'blog','blog','blog@qq.com',2,'/img','blog','男',14,'zxcv','三号',NULL),(10003,'class','class','class@qq.com',3,'/img','class','女',15,'qwerty','四号',NULL),(10004,'photo','photo','photo@qq.com',1,'/img','photo','男',16,'gfdgdf','五号',NULL);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_idauto`
--

DROP TABLE IF EXISTS `user_idauto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_idauto` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_idauto`
--

LOCK TABLES `user_idauto` WRITE;
/*!40000 ALTER TABLE `user_idauto` DISABLE KEYS */;
INSERT INTO `user_idauto` VALUES (10013);
/*!40000 ALTER TABLE `user_idauto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-08 13:47:23
