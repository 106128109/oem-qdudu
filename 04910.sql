-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: localhost    Database: qdd_iun
-- ------------------------------------------------------
-- Server version	5.7.37-log

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
-- Table structure for table `pay_admin`
--

DROP TABLE IF EXISTS `pay_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(50) NOT NULL COMMENT '后台用户名',
  `password` varchar(32) NOT NULL COMMENT '后台用户密码',
  `groupid` tinyint(1) unsigned DEFAULT '0' COMMENT '用户组',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `google_secret_key` varchar(128) NOT NULL DEFAULT '' COMMENT '谷歌令牌密钥',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号码',
  `session_random` varchar(50) NOT NULL DEFAULT '' COMMENT 'session随机字符串',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_admin`
--

LOCK TABLES `pay_admin` WRITE;
/*!40000 ALTER TABLE `pay_admin` DISABLE KEYS */;
INSERT INTO `pay_admin` VALUES (1,'admin','7aa5e695be95cdd64a88410a64dfe2c1',1,0,'','','aDE39UCvPu8Atl7Qa3nEMwUmcgkZTZ52');
/*!40000 ALTER TABLE `pay_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_agreconciliation`
--

DROP TABLE IF EXISTS `pay_agreconciliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_agreconciliation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT '0' COMMENT '用户ID',
  `order_total_count` int(11) DEFAULT '0' COMMENT '总订单数',
  `order_success_count` int(11) DEFAULT '0' COMMENT '成功订单数',
  `order_fail_count` int(11) DEFAULT '0' COMMENT '未支付订单数',
  `order_total_amount` decimal(11,4) DEFAULT '0.0000' COMMENT '订单总额',
  `order_success_amount` decimal(11,4) DEFAULT '0.0000' COMMENT '订单实付总额',
  `date` date DEFAULT NULL COMMENT '日期',
  `ctime` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_agreconciliation`
--

LOCK TABLES `pay_agreconciliation` WRITE;
/*!40000 ALTER TABLE `pay_agreconciliation` DISABLE KEYS */;
INSERT INTO `pay_agreconciliation` VALUES (266,67,31,9,22,10185.8200,103.8974,'2019-04-04',1554355576),(267,67,13,10,3,54.2000,23.8804,'2019-04-03',1554355576),(268,68,16,1,15,23.1300,0.9970,'2019-04-06',1554480920),(269,68,0,0,0,NULL,NULL,'2019-04-05',1554480920),(270,68,0,0,0,NULL,NULL,'2019-04-04',1554480920),(271,68,0,0,0,NULL,NULL,'2019-04-03',1554480920),(272,68,1,0,1,1.0000,NULL,'2019-04-08',1554737821),(273,68,21,0,21,22.0000,NULL,'2019-04-07',1554737821),(274,4,0,0,0,NULL,NULL,'2019-04-10',1554900251),(275,4,0,0,0,NULL,NULL,'2019-04-09',1554900251),(276,4,0,0,0,NULL,NULL,'2019-04-08',1554900251),(277,4,0,0,0,NULL,NULL,'2019-04-07',1554900251),(278,4,0,0,0,NULL,NULL,'2019-04-06',1554900251),(279,4,0,0,0,NULL,NULL,'2019-04-05',1554900251),(280,4,0,0,0,NULL,NULL,'2019-04-04',1554900251),(281,4,0,0,0,NULL,NULL,'2019-04-03',1554900251),(282,4,0,0,0,NULL,NULL,'2019-04-02',1554900251),(283,4,0,0,0,NULL,NULL,'2019-04-01',1554900251),(284,82,1,0,1,0.0100,NULL,'2019-04-11',1554951846),(285,82,16,0,16,0.2400,NULL,'2019-04-10',1554951846),(286,82,5,0,5,2.1200,NULL,'2019-04-09',1554951846),(287,82,6,0,6,2.0400,NULL,'2019-04-15',1555307206),(288,82,5,0,5,9.0000,NULL,'2019-04-14',1555307206),(289,82,10,3,7,6.0400,1.0170,'2019-04-13',1555307206),(290,82,5,2,3,0.0500,0.0200,'2019-04-12',1555307206),(291,82,11,2,9,1.1000,0.0200,'2019-04-17',1555493545),(292,82,8,2,6,9.0600,0.0600,'2019-04-16',1555493545),(293,96,0,0,0,NULL,NULL,'2019-04-19',1555658237),(294,96,0,0,0,NULL,NULL,'2019-04-18',1555658237),(295,82,0,0,0,NULL,NULL,'2019-04-28',1556459967),(296,82,0,0,0,NULL,NULL,'2019-04-27',1556459967),(297,82,0,0,0,NULL,NULL,'2019-04-26',1556459967),(298,82,0,0,0,NULL,NULL,'2019-04-25',1556459967),(299,82,0,0,0,NULL,NULL,'2019-04-24',1556459967),(300,82,0,0,0,NULL,NULL,'2019-04-23',1556459967),(301,82,0,0,0,NULL,NULL,'2019-04-22',1556459967),(302,82,0,0,0,NULL,NULL,'2019-04-21',1556459967),(303,82,0,0,0,NULL,NULL,'2019-04-20',1556459967),(304,82,0,0,0,NULL,NULL,'2019-04-19',1556459967);
/*!40000 ALTER TABLE `pay_agreconciliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_apimoney`
--

DROP TABLE IF EXISTS `pay_apimoney`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_apimoney` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `payapiid` int(11) DEFAULT NULL,
  `money` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `freezemoney` decimal(15,3) NOT NULL DEFAULT '0.000' COMMENT '冻结金额',
  `status` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_apimoney`
--

LOCK TABLES `pay_apimoney` WRITE;
/*!40000 ALTER TABLE `pay_apimoney` DISABLE KEYS */;
INSERT INTO `pay_apimoney` VALUES (10,6,207,18000.0000,0.000,1);
/*!40000 ALTER TABLE `pay_apimoney` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_article`
--

DROP TABLE IF EXISTS `pay_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `groupid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分组  0：所有 1：商户 2：代理',
  `title` varchar(300) NOT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1显示 0 不显示',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_article`
--

LOCK TABLES `pay_article` WRITE;
/*!40000 ALTER TABLE `pay_article` DISABLE KEYS */;
INSERT INTO `pay_article` VALUES (16,3,0,'客户告知书','<p></p><p>尊敬的商户朋友：  </p><p>           <br /></p><p>    本公司是一家正规的网络公司，是各大游戏充值卡发卡商，电商平台等中小型企业长期的合作伙伴；</p><p><br /></p><p>      本公司郑重告知，请各客户加强业务自审勿与违法违规的业务发生关联，比如涉黄、涉赌、涉及网络诈骗等；我公司一经发现有涉及违法违规的业务，我公司将把相关信息上报公安机关派驻我公司的网安警务室处理。        </p><p><br /></p><p style=\"text-align:right;\">请合作的客户知晓并认真审查业务 特此告知！  </p><p><br /></p><p><br /></p><p><br /></p><p><br /></p><p></p><p style=\"text-align:right;\">                                                                                                                              <br />                                                                                                                2018/1/12 8:41:07</p>',1515717667,'',1,1537723684),(20,6,2,'支付宝转账免签通道配置说明','<p>监控软件下载地址：</p><p>百度盘：https://pan.baidu.com/s/1XU7N0nSuGC75z13cMQZYdg 提取码：vbke</p><p>后台添加账号教程：</p><p>添加子账号的地方 名称 填写支付宝账号（邮箱或者手机号）</p><p>APPID 填写 支付宝的PID</p><p><img src=\"./Uploads/Article/20190414/5cb215595bf20.png\" alt=\"undefined\" /><br /></p><p><br /></p><p>监控配置</p><p>商户id 填写您在本平台的商户id</p><p>加密key 固定填写 1531236</p><p><img src=\"./Uploads/Article/20190404/5ca587d602c97.png\" alt=\"undefined\" /><br /></p>',1554351369,'支付宝转账免签通道配置说明',1,1555174749),(21,6,2,'淘宝红包（旺信群）免签通道配置说明','<p>监控APP下载：</p><p>百度盘：https://pan.baidu.com/s/1kxEx2eqqsoqU4yyAynwrcQ 提取码：7huu</p><p>旺信红包使用教程：</p><p>---准备工作，俩个号拉个群（装监控的号不能当群主）</p><p><br /></p><p>先打开钱嘟嘟，点击启动，然后打开旺信，进入你拉的俩人群页面，再返回钱嘟嘟，可以看到旺信HOOK成功，再返回旺信群页面</p><p><br /></p><p>后台账号添加配置：</p><p><img src=\"./Uploads/Article/20190407/5ca96a4ead7b7.png\" alt=\"undefined\" /><br /></p><p><br /></p><p><br /></p>',1554605867,'',1,1554606675),(22,6,2,'支付宝转银行卡免签通道配置说明','<p>监控APP下载</p><p>百度盘：https://pan.baidu.com/s/1t7cTLIx59I8jUfNeNjYXOg  提取码：3z6j</p><p>安装说明：</p><p>直接安装到手机即可，不需要xp</p><p><br /></p><p>后台上号配置：</p><p><img src=\"./Uploads/Article/20190407/5ca975203e9da.png\" alt=\"undefined\" /><br /></p>',1554048000,'支付宝转银行卡免签通道配置说明',1,1554609445),(23,6,2,'钉钉群收款免签通道配置说明','<p>钉钉群收款</p><p>监控APP下载地址：</p><p>百度云：https://pan.baidu.com/s/1rIssD_Q8DASiLwOGpbov5A  提取码：gqc7</p><p>----准备工作。两个号拉个群（记得绑支付宝） 拉群可用面对面建群（俩人输入相同的4位数字即可建群） 注意 A B 两号 不能参加多群 只能有一个群 最好~</p><p>打开钉钉助手，点击启动，然后打开钉钉软件，进入一下钉钉创建的群聊界面，返回钉钉助手</p><p>可以看的您的钉钉账号ID 和群的ID 入下图，记录下备用。</p><p><img src=\"./Uploads/Article/20190408/5cab5e50c5c5d.png\" alt=\"undefined\" /><br /></p><p>打开程序配置：吧自己当前的钉钉UID 填写进去 点击保存返回</p><p><img src=\"./Uploads/Article/20190408/5cab5e8b43b0c.png\" alt=\"undefined\" /><br /></p><p><br /></p><p>重要： 重启xposed</p><p>重要： 重启xposed</p><p>重要： 重启xposed</p><p>然后 打开钉钉助手，点击启动，打开钉钉 进去群聊界面</p><p>返回钉钉助手，可以入上面第一张图一样</p><p>到此监控端配置完毕</p><p><br /></p><p>后台添加账号设置图</p><p><img src=\"./Uploads/Article/20190408/5cab5fea16a52.png\" alt=\"undefined\" /><br /></p><p><br /></p>',1554733824,'钉钉群红包免签通道配置说明',1,1554735133),(24,6,2,'新双跳转卡模式配置说明','<p>最新双跳支付宝转银行卡配置</p><p>监控APP下载</p><p>百度盘：https://pan.baidu.com/s/1Y2RKQOtVetBMrFE3BmtTtg  提取码：5hwt</p><p>安装说明：直接安装到手机即可，不需要xp</p><p>后台上号配置：</p><p><img src=\"./Uploads/Article/20190413/5cb189d7be9bd.png\" alt=\"undefined\" /><br /></p>',1555138581,'',1,1555150518),(25,6,2,'微信店员通免签通道配置说明','<p>监控下载：</p><p>百度盘：https://pan.baidu.com/s/1A1m5b4X7YrV7K45vgKTOkQ  提取码：i6aw</p><p>操作前提 负责监控的微信号当店员，可以监控最多30个店长的收款数据(可调整数量 5 10都行，号不多，可适当调小）</p><p>店长是用小程序 收款小账本 添加店员（装监控的微信号）,让用户付款给店长的收款二维码，店员即可收到通知并回调。</p><p>保存下来自己的收款二维码，用二维码解码工具转换成链接！</p><p>后台添加账号配置：</p><p><img src=\"./Uploads/Article/20190413/5cb1c5435b2a9.png\" alt=\"undefined\" /><br /></p><p>添加完账号之后，记录下该账号的ID</p><p>如下图中的ID</p><p><img src=\"./Uploads/Article/20190413/5cb1c5a4bf23e.png\" alt=\"undefined\" /><br /></p><p>然后你的收款账号的昵称需要修改为</p><p>这个ID-  的格式  例如   304-钱嘟嘟</p><p>改为自己的微信昵称</p>',1555153417,'',1,1555154421);
/*!40000 ALTER TABLE `pay_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_attachment`
--

DROP TABLE IF EXISTS `pay_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商户编号',
  `filename` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_attachment`
--

LOCK TABLES `pay_attachment` WRITE;
/*!40000 ALTER TABLE `pay_attachment` DISABLE KEYS */;
INSERT INTO `pay_attachment` VALUES (48,2,'242dd42a2834349b88359f1eccea15ce36d3be7e.jpg','Uploads/verifyinfo/59a2b65d0816c.jpg'),(46,2,'6-140F316125V44.jpg','Uploads/verifyinfo/59a2b65cd9877.jpg'),(47,2,'6-140F316132J02.jpg','Uploads/verifyinfo/59a2b65cea2ec.jpg'),(49,180768718,'20180628155233_54225.jpg','Uploads/verifyinfo/5b969d7b3b32d.jpg'),(50,180768718,'20180628155327_47820.png','Uploads/verifyinfo/5b969d8a76e7e.png'),(51,180768718,'20180628155147_55535.png','Uploads/verifyinfo/5b969d8ab6a07.png'),(52,180768718,'20180628155430_18014.png','Uploads/verifyinfo/5b969d8b08fd5.png'),(53,25,'595358e9d0ff3.jpg','Uploads/verifyinfo/5c00b6f61dd31.jpg'),(54,22,'ree.jpg','Uploads/verifyinfo/5c043d1d63394.jpg'),(55,22,'ree.jpg','Uploads/verifyinfo/5c043d252cdc1.jpg'),(56,22,'ree.png','Uploads/verifyinfo/5c043d3e5910a.png'),(57,22,'ree.png','Uploads/verifyinfo/5c043d4c801bb.png'),(58,22,'ree.png','Uploads/verifyinfo/5c043d8b12d8d.png'),(59,22,'ree.jpg','Uploads/verifyinfo/5c043db746145.jpg'),(60,22,'ree.jpg','Uploads/verifyinfo/5c043dd2683d9.jpg'),(61,22,'ree.png','Uploads/verifyinfo/5c043e0fd733d.png'),(62,25,'ree.jpg','Uploads/verifyinfo/5c05258a7ac30.jpg'),(63,25,'ree.jpg','Uploads/verifyinfo/5c0525925c074.jpg'),(64,76,'QQ图片20190328125728.jpg','Uploads/verifyinfo/5ca999735eeae.jpg'),(65,76,'QQ图片20190212224933.jpg','Uploads/verifyinfo/5ca999736ca34.jpg'),(66,86,'app.png','Uploads/verifyinfo/5cb084cca753d.png');
/*!40000 ALTER TABLE `pay_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_auth_error_log`
--

DROP TABLE IF EXISTS `pay_auth_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_auth_error_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `auth_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：商户登录 1：后台登录 2：商户短信验证 3：后台短信验证 4：谷歌令牌验证 5：支付密码验证 ',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_auth_error_log`
--

LOCK TABLES `pay_auth_error_log` WRITE;
/*!40000 ALTER TABLE `pay_auth_error_log` DISABLE KEYS */;
INSERT INTO `pay_auth_error_log` VALUES (123,0,15,1541187760),(124,0,15,1541187849),(129,0,9,1541489160),(133,0,16,1543083712),(134,0,16,1543083722),(135,0,16,1543083733),(136,0,16,1543083740),(137,0,16,1543083750),(138,2,4,1543647922),(143,6,43,1544551065),(144,6,43,1544551066),(147,2,39,1545577470),(148,6,52,1546385255),(149,0,62,1546843512),(150,0,62,1546843520),(153,0,61,1548599841),(154,0,56,1552465053),(155,0,56,1552465063),(160,0,68,1554278697),(163,0,67,1554283830),(164,0,67,1554283873),(165,0,67,1554283883),(166,0,71,1554342889),(167,0,75,1554619538),(168,0,75,1554619589),(169,0,75,1554619603),(170,0,75,1554619794),(171,0,75,1554619823),(172,0,74,1554705482),(173,0,74,1554706609),(178,0,85,1554879684),(179,0,85,1554879697),(180,0,85,1554879784),(181,0,84,1555602732),(182,0,72,1555602797),(183,0,96,1556377827),(184,0,96,1556377869);
/*!40000 ALTER TABLE `pay_auth_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_auth_group`
--

DROP TABLE IF EXISTS `pay_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_manager` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1需要验证权限 0 不需要验证权限',
  `rules` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_auth_group`
--

LOCK TABLES `pay_auth_group` WRITE;
/*!40000 ALTER TABLE `pay_auth_group` DISABLE KEYS */;
INSERT INTO `pay_auth_group` VALUES (1,'超级管理员',1,0,'1,133,2,3,51,4,57,5,55,56,58,59,6,44,52,53,48,70,54,126,7,8,60,61,62,9,63,64,65,66,10,67,68,69,11,12,79,80,81,82,83,84,85,86,87,88,89,90,91,93,94,95,96,97,98,99,100,101,120,13,14,15,92,16,73,76,77,78,17,46,121,137,18,19,71,75,20,72,74,22,21,23,114,115,24,25,26,125,127,130,27,28,108,129,29,102,30,103,106,107,119,104,105,109,110,111,128,31,32,33,34,35,36,37,38,39,113,40,112,41,42,45,47,116,122,117,123,118,124,134,136'),(2,'运营管理员',1,0,'1,133,3,51,4,57,5,55,56,59,6,44,52,70,54,7,60,61,62,63,65,66,67,68,69,12,79,80,81,82,83,84,85,86,87,93,94,98,99,13,14,15,92,73,76,77,78,46,18,19,71,22,23,24,33,34,35,36,37,38,39,40,41,42,45,47'),(3,'财务管理员',1,1,'1,133,5,6,70,65,66,67,68,69,13,73,76,77,71,75,72,74,23,24,25,26'),(4,'普通商户',1,1,'22,24'),(5,'普通代理商',1,1,'114,115');
/*!40000 ALTER TABLE `pay_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_auth_group_access`
--

DROP TABLE IF EXISTS `pay_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_auth_group_access`
--

LOCK TABLES `pay_auth_group_access` WRITE;
/*!40000 ALTER TABLE `pay_auth_group_access` DISABLE KEYS */;
INSERT INTO `pay_auth_group_access` VALUES (1,1),(3,1),(9,1);
/*!40000 ALTER TABLE `pay_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_auth_rule`
--

DROP TABLE IF EXISTS `pay_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) DEFAULT '' COMMENT '图标',
  `menu_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一标识Controller/action',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '菜单ID ',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '1:是主菜单 0否',
  `is_race_menu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1:是 0:不是',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_auth_rule`
--

LOCK TABLES `pay_auth_rule` WRITE;
/*!40000 ALTER TABLE `pay_auth_rule` DISABLE KEYS */;
INSERT INTO `pay_auth_rule` VALUES (1,'layui-icon-home','Index/index','管理首页',0,1,0,1,1,''),(2,'layui-icon-set','System/#','系统设置',0,1,0,1,1,''),(3,'fa fa-cogs','System/base','基本设置',2,1,0,1,1,''),(4,'fa fa-envelope-o','System/email','邮件设置',2,1,0,1,1,''),(5,'fa fa-send','System/smssz','短信设置',2,1,0,1,1,''),(6,'fa fa-pencil-square-o','System/planning','计划任务',2,1,0,1,1,''),(7,'layui-icon-headset','Admin/#','管理员管理',0,1,0,1,1,''),(8,'fa fa-vcard ','Admin/index','管理员信息',7,1,0,1,1,''),(9,'fa fa-life-ring','Auth/index','角色配置',7,1,0,1,1,''),(10,'fa fa-universal-access','Menu/index','权限配置',7,1,0,1,1,''),(11,'layui-icon-user','User/#','用户管理',0,1,0,1,1,''),(12,'fa fa-user','User/index?status=1&authorized=1','已认证用户',11,1,0,1,1,''),(13,'fa fa-user-o','User/index?status=1&authorized=2','待认证用户',11,1,0,1,1,''),(14,'fa fa-user-plus','User/index?status=1&authorized=0','未认证用户',11,1,0,1,1,''),(15,'fa fa-user-times','User/index?status=0','冻结用户',11,1,0,1,1,''),(16,'fa fa-gift','User/invitecode','邀请码',11,1,0,1,1,''),(17,'fa fa-address-book','User/loginrecord','登录记录',11,1,0,1,1,''),(18,'layui-icon-water','Agent/#','代理管理',0,1,0,1,1,''),(19,'fa fa-signing','User/agentList','代理列表',18,1,0,1,1,''),(20,'fa fa-signing','Order/changeRecord?bank=9','佣金记录',18,1,0,1,1,''),(21,'fa fa-sellsy','Order/dfApiOrderList','代付Api订单',22,1,0,1,1,''),(22,'layui-icon-form','User/#','订单管理',0,1,0,1,1,''),(23,'fa fa-indent','Order/changeRecord','流水记录',22,1,0,1,1,''),(24,'fa fa-thumbs-up','Order/index?status=1or2','成功订单',22,1,0,1,1,''),(25,'fa fa-thumbs-down','Order/index?status=0','未支付订单',22,1,0,1,1,''),(26,'fa fa-hand-o-right','Order/index?status=1','通知异常订单',22,1,0,1,1,''),(27,'layui-icon-rmb','Withdrawal','提款管理',0,1,0,1,1,''),(28,'fa fa-wrench','Withdrawal/setting','提款设置',27,1,0,1,1,''),(29,'fa fa-asl-interpreting','Withdrawal/index','手动结算',27,1,0,1,1,''),(30,'fa fa-window-restore','Withdrawal/payment','代付结算',27,1,0,1,1,''),(31,'layui-icon-diamond','Channel/#','通道管理',0,1,0,1,1,''),(32,'fa fa-product-hunt','Channel/index','入金渠道设置',31,1,0,1,1,''),(33,'fa fa-sitemap','Channel/product','支付产品设置',31,1,0,1,1,''),(34,'fa fa-sliders','PayForAnother/index','代付渠道设置',31,1,0,1,1,''),(35,'layui-icon-list','Content/#','文章管理',0,1,0,1,1,''),(36,'fa fa-tags','Content/category','栏目列表',35,1,0,1,1,''),(37,'fa fa-list-alt','Content/article','文章列表',35,1,0,1,1,''),(38,'layui-icon-chart','Statistics/#','财务分析',0,1,0,1,1,''),(39,'fa fa-bar-chart-o','Statistics/index','交易统计',38,1,0,1,1,''),(40,'fa fa-area-chart','Statistics/userFinance','商户交易统计',38,1,0,1,1,''),(41,'fa fa-industry','Statistics/userFinance?groupid=agent','代理商交易统计',38,1,0,1,1,''),(42,'fa fa-pie-chart','Statistics/channelFinance','接口交易统计',38,1,0,1,1,''),(43,'fa fa-cubes','Template/index','模板设置',2,1,0,1,0,''),(44,'fa fa-qq','System/mobile','手机设置',2,1,0,1,1,''),(45,'fa fa-signal','Statistics/chargeRank','充值排行榜',38,1,0,1,1,''),(46,'fa fa-first-order','Deposit/index','投诉保证金设置',11,1,0,1,1,''),(47,'fa fa-asterisk','Statistics/complaintsDeposit','投诉保证金统计',38,1,0,1,1,''),(48,'fa fa-magnet','System/clearData','数据清理',2,1,0,1,1,''),(51,'','System/SaveBase','保存设置',3,0,0,1,1,''),(52,'','System/BindMobileShow','绑定手机号码',44,0,0,1,1,''),(53,'','System/editMobileShow','手机修改',44,0,0,1,1,''),(54,'fa fa-wrench','System/editPassword','修改密码',2,1,0,1,1,''),(55,'','System/editSmstemplate','短信模板',5,0,0,1,1,''),(56,'','System/saveSmstemplate','保存短信模板',5,0,0,1,1,''),(57,'','System/saveEmail','邮件保存',4,0,0,1,1,''),(58,'','System/testMobile','测试短信',5,0,0,1,1,''),(59,'','System/deleteAdmin','删除短信模板',5,0,0,1,1,''),(60,'','Admin/addAdmin','管理员添加',8,0,0,1,1,''),(61,'','Admin/editAdmin','管理员修改',8,0,0,1,1,''),(62,'','Admin/deleteAdmin','管理员删除',8,0,0,1,1,''),(63,'','Auth/addGroup','添加角色',9,0,0,1,1,''),(64,'','Auth/editGroup','修改角色',9,0,0,1,1,''),(65,'','Auth/giveRole','选择角色',9,0,0,1,1,''),(66,'','Auth/ruleGroup','分配权限',9,0,0,1,1,''),(67,'','Menu/addMenu','添加菜单',10,0,0,1,1,''),(68,'','Menu/editMenu','修改菜单',10,0,0,1,1,''),(69,'','Menu/delMenu','删除菜单',10,0,0,1,1,''),(70,'','System/clearDataSend','数据清理提交',48,0,0,1,1,''),(71,'','User/addAgentCate','代理级别',19,0,0,1,1,''),(72,'','User/saveAgentCate','保存代理级别',18,0,0,1,1,''),(73,'','User/addInvitecode','添加激活码',16,0,0,1,1,''),(74,'','User/EditAgentCate','修改代理分类',18,0,0,1,1,''),(75,'','User/deleteAgentCate','删除代理分类',19,0,0,1,1,''),(76,'','User/setInvite','邀请码设置',16,0,0,1,1,''),(77,'','User/addInvite','创建邀请码',16,0,0,1,1,''),(78,'','User/delInvitecode','删除邀请码',16,0,0,1,1,''),(79,'','User/editUser','用户编辑',12,0,0,1,1,''),(80,'','User/changeuser','修改状态',12,0,0,1,1,''),(81,'','User/authorize','用户认证',12,0,0,1,1,''),(82,'','User/usermoney','用户资金管理',12,0,0,1,1,''),(83,'','User/userWithdrawal','用户提现设置',12,0,0,1,1,''),(84,'','User/userRateEdit','用户费率设置',12,0,0,1,1,''),(85,'','User/editPassword','用户密码修改',12,0,0,1,1,''),(86,'','User/editStatus','用户状态修改',12,0,0,1,1,''),(87,'','User/delUser','用户删除',12,0,0,1,1,''),(88,'','User/thawingFunds','T1解冻任务管理',12,0,0,1,1,''),(89,'','User/exportuser','导出用户',12,0,0,1,1,''),(90,'','User/editAuthoize','修改用户认证',12,0,0,1,1,''),(91,'','User/getRandstr','切换商户密钥',12,0,0,1,1,''),(92,'','User/suoding','用户锁定',15,0,0,1,1,''),(93,'','User/editbankcard','银行卡管理',12,0,0,1,1,''),(94,'','User/saveUser','添加用户',12,0,0,1,1,''),(95,'','User/saveUserProduct','保存用户产品',12,0,0,1,1,''),(96,'','User/saveUserRate','保存用户费率',12,0,0,1,1,''),(97,'','User/edittongdao','编辑通道',12,0,0,1,1,''),(98,'','User/frozenMoney','用户资金冻结',12,0,0,1,1,''),(99,'','User/unfrozenHandles','T1资金解冻',12,0,0,1,1,''),(100,'','User/frozenOrder','冻结订单列表',12,0,0,1,1,''),(101,'','User/frozenHandles','T1订单解冻展示',12,0,0,1,1,''),(102,'','Withdrawal/editStatus','操作状态',29,0,0,1,1,''),(103,'','Withdrawal/editwtStatus','操作订单状态',30,0,0,1,1,''),(104,'','Withdrawal/exportorder','导出数据',27,0,0,1,1,''),(105,'','Withdrawal/editwtAllStatus','批量修改提款状态',27,0,0,1,1,''),(106,'','Withdrawal/exportweituo','导出委托提现',30,0,0,1,1,''),(107,'','Payment/index','提交上游',30,0,0,1,1,''),(108,'','Withdrawal/saveWithdrawal','保存设置',28,0,0,1,1,''),(109,'','Withdrawal/AddHoliday','添加假日',27,0,0,1,1,''),(110,'','Withdrawal/settimeEdit','编辑提款时间',27,0,0,1,1,''),(111,'','Withdrawal/delHoliday','删除节假日',27,0,0,1,1,''),(112,'','Statistics/exportorder','订单数据导出',40,0,0,1,1,''),(113,'','Statistics/details','查看详情',39,0,0,1,1,''),(114,'','Order/exportorder','订单导出',23,0,0,1,1,''),(115,'','Order/exceldownload','记录导出',23,0,0,1,1,''),(116,'fa fa-area-chart','Statistics/platformReport','平台报表',38,1,0,1,1,''),(117,'fa fa-area-chart','Statistics/merchantReport','商户报表',38,1,0,1,1,''),(118,'fa fa-area-chart','Statistics/agentReport','代理报表',38,1,0,1,1,''),(119,'','Withdrawal/submitDf','代付提交',30,0,0,1,1,''),(120,'','User/editUserProduct','分配用户通道',12,0,0,1,1,''),(121,'fa fa-wrench','Transaction/index','风控设置',11,1,0,1,1,''),(122,'','Statistics/exportPlatform','导出平台报表',116,0,0,1,1,''),(123,'','Statistics/exportMerchant','导出商户报表',117,0,0,1,1,''),(124,'','Statistics/exportAgent','导出代理报表',118,0,0,1,1,''),(125,'','Order/show','查看订单',22,0,0,1,1,''),(126,'fa fa-cog','Withdrawal/checkNotice','提现申请声音提示',2,0,0,1,1,''),(127,'fa fa-smile-o','Order/index','全部订单',22,1,0,1,1,''),(128,'','Withdrawal/rejectAllDf','批量驳回代付',27,0,0,1,1,''),(129,'','User/saveWithdrawal','保存用户提款设置',28,0,0,1,1,''),(130,'fa fa-snowflake-o','Order/frozenOrder','冻结订单',22,1,0,1,1,''),(133,'fa fa-home','Index/main','管理首页',1,1,0,1,1,''),(134,'layui-icon-circle','Code/#','码商管理',0,1,0,1,1,''),(136,'','User/codeList','码商列表',134,1,0,1,1,''),(137,'','Deposit/codeindex','码商冻结资金设置',11,1,0,1,1,''),(140,'','User/incrYckMoney','增加减少预存款',12,0,0,1,1,''),(141,'','User/allChannelAccount','码商子账号',136,0,0,1,1,''),(142,'','User/downAllAccount','码商一键下号',136,0,0,1,1,''),(143,'','User/upAllAccount','码商一键上号',136,0,0,1,1,''),(144,'','User/userCodeDepositRule','码商冻结时间',136,0,0,1,1,''),(145,'','Transaction/userConfig','码商风控',136,0,0,1,1,''),(146,'','Order/setOrderPaid','补单',22,0,0,1,1,'');
/*!40000 ALTER TABLE `pay_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_auto_df_log`
--

DROP TABLE IF EXISTS `pay_auto_df_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_auto_df_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `df_id` int(11) NOT NULL DEFAULT '0' COMMENT '代付ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型：1提交 2查询',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '结果 0：提交失败 1：提交成功 2：代付成功 3：代付失败',
  `msg` varchar(255) DEFAULT '' COMMENT '描述',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_auto_df_log`
--

LOCK TABLES `pay_auto_df_log` WRITE;
/*!40000 ALTER TABLE `pay_auto_df_log` DISABLE KEYS */;
INSERT INTO `pay_auto_df_log` VALUES (1,19,2,0,'代付通道文件不存在',1537373341),(2,19,2,1,NULL,1537373522),(3,19,2,1,NULL,1537373701),(4,19,2,2,NULL,1537373881);
/*!40000 ALTER TABLE `pay_auto_df_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_auto_unfrozen_order`
--

DROP TABLE IF EXISTS `pay_auto_unfrozen_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_auto_unfrozen_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `freeze_money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '冻结金额',
  `unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '计划解冻时间',
  `real_unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '实际解冻时间',
  `is_pause` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否暂停解冻 0正常解冻 1暂停解冻',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '解冻状态 0未解冻 1已解冻',
  `create_at` int(11) NOT NULL COMMENT '记录创建时间',
  `update_at` int(11) NOT NULL COMMENT '记录更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_unfreezeing` (`status`,`is_pause`,`unfreeze_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='投诉保证金余额';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_auto_unfrozen_order`
--

LOCK TABLES `pay_auto_unfrozen_order` WRITE;
/*!40000 ALTER TABLE `pay_auto_unfrozen_order` DISABLE KEYS */;
INSERT INTO `pay_auto_unfrozen_order` VALUES (1,180751041,89.0000,0,0,0,0,1534428974,1534428974),(2,5,1000.0000,1547111100,0,0,0,1547110860,1547110860);
/*!40000 ALTER TABLE `pay_auto_unfrozen_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_bankcard`
--

DROP TABLE IF EXISTS `pay_bankcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_bankcard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商户编号',
  `bankname` varchar(100) NOT NULL COMMENT '银行名称',
  `subbranch` varchar(100) NOT NULL COMMENT '支行名称',
  `accountname` varchar(100) NOT NULL COMMENT '开户名',
  `cardnumber` varchar(100) NOT NULL COMMENT '银行卡号',
  `province` varchar(100) NOT NULL COMMENT '所属省',
  `city` varchar(100) NOT NULL COMMENT '所属市',
  `ip` varchar(100) DEFAULT NULL COMMENT '上次修改IP',
  `ipaddress` varchar(300) DEFAULT NULL COMMENT 'IP地址',
  `alias` varchar(255) DEFAULT '' COMMENT '备注',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认 1是 0 否',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `IND_UID` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_bankcard`
--

LOCK TABLES `pay_bankcard` WRITE;
/*!40000 ALTER TABLE `pay_bankcard` DISABLE KEYS */;
INSERT INTO `pay_bankcard` VALUES (1,5,'中国工商银行','工商银行北京北京南锣鼓巷支行','张三','1233456','北京','北京',NULL,NULL,'北京',1,0),(2,55,'北京银行','北京支行','张杰','6222120081828128','北京','北京',NULL,NULL,'123',0,0),(3,62,'北京银行','cfqc','1111','213213','12312','321312',NULL,NULL,'213123',0,0),(4,5,'北京银行','1','1','1','1','1',NULL,NULL,'1',0,0),(5,56,'北京银行','11222','','','','',NULL,NULL,'',0,0),(6,69,'中国民生银行','广东','测试','4544644454646546','广东省','广州市',NULL,NULL,'',1,0),(7,96,'北京银行','dddd','ddd','ddd','d','d',NULL,NULL,'',0,0);
/*!40000 ALTER TABLE `pay_bankcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_blockedlog`
--

DROP TABLE IF EXISTS `pay_blockedlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_blockedlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(100) NOT NULL COMMENT '订单号',
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商户编号',
  `amount` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '冻结金额',
  `thawtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '解冻时间',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '商户支付通道',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1 解冻 0 冻结',
  `ag_uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='资金冻结待解冻记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_blockedlog`
--

LOCK TABLES `pay_blockedlog` WRITE;
/*!40000 ALTER TABLE `pay_blockedlog` DISABLE KEYS */;
INSERT INTO `pay_blockedlog` VALUES (1,'20181205193204525254',31,0.9997,1544026681,902,1544009548,1,0),(2,'20181215143252524952',36,93.0000,1544894873,902,1544855588,0,0),(3,'20181215143611985151',36,93.0000,1544894671,902,1544855787,0,0),(4,'20181215143549534899',36,46.5000,1544891062,902,1544855795,0,0),(5,'20181215143921575610',39,28.0000,1544894261,902,1544855998,0,0),(6,'20181226153939981005',5,1.0000,1545843314,903,1545811168,0,0),(7,'20181226161033575410',5,1.0000,1545841045,903,1545811862,0,0),(8,'20181226161522979756',5,1.0000,1545841231,903,1545812139,0,0),(9,'20181226183612995598',5,1.0000,1545846948,903,1545820635,0,0),(10,'20190105205346975551',5,8000.0000,1546705950,903,1546692866,0,0),(11,'20190105195044521011',5,0.8000,1546790835,903,1546718751,0,0),(12,'20190422001356525153',101,100.0000,1555953857,921,1555863937,0,10084),(13,'20190422003603514897',101,100.0000,1555950493,921,1555864598,0,10084),(14,'20190422003603514897',101,100.0000,1555955017,921,1555864807,0,10084),(16,'20190423184137494849',101,11.0000,1556035655,903,1556016721,0,10101),(17,'20190426235615102571',101,8.0000,1556382926,921,1556294654,0,10005),(18,'20190427171829535350',101,1000.0000,1556381549,903,1556356746,0,10101),(19,'20190427172828994954',101,3000.0000,1556384777,903,1556357353,0,10101),(20,'20190427173518545651',101,3000.0000,1556386180,903,1556357736,0,10101),(21,'20190427174113579799',101,5000.0000,1556381175,903,1556358155,0,10101),(22,'20190430004216561019',101,5000.0000,1556641480,903,1556556987,0,10101),(23,'20190427122319555251',101,5.0000,1556642675,903,1556557934,0,10101),(24,'20190430012547989998',101,25.0000,1556641072,903,1556558790,0,10101),(25,'20190503012400489754',101,2.0000,1556900350,921,1556817898,0,10005),(26,'20190531011004995057',101,1000.0000,1559319879,921,1559314929,0,10083);
/*!40000 ALTER TABLE `pay_blockedlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_browserecord`
--

DROP TABLE IF EXISTS `pay_browserecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_browserecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_browserecord`
--

LOCK TABLES `pay_browserecord` WRITE;
/*!40000 ALTER TABLE `pay_browserecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_browserecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_category`
--

DROP TABLE IF EXISTS `pay_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1开启 0关闭',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文章栏目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_category`
--

LOCK TABLES `pay_category` WRITE;
/*!40000 ALTER TABLE `pay_category` DISABLE KEYS */;
INSERT INTO `pay_category` VALUES (1,'最新资讯',0,1),(2,'公司新闻',0,1),(3,'公告通知',1,1),(4,'站内公告',3,1),(5,'公司新闻',3,1),(6,'帮助说明',0,0);
/*!40000 ALTER TABLE `pay_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_channel`
--

DROP TABLE IF EXISTS `pay_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_channel` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '供应商通道ID',
  `code` varchar(200) DEFAULT NULL COMMENT '供应商通道英文编码',
  `title` varchar(200) DEFAULT NULL COMMENT '供应商通道名称',
  `mch_id` varchar(100) DEFAULT NULL COMMENT '商户号',
  `signkey` varchar(500) DEFAULT NULL COMMENT '签文密钥',
  `appid` varchar(100) DEFAULT NULL COMMENT '应用APPID',
  `appsecret` varchar(100) DEFAULT NULL COMMENT '安全密钥',
  `gateway` varchar(300) DEFAULT NULL COMMENT '网关地址',
  `pagereturn` varchar(255) DEFAULT NULL COMMENT '页面跳转网址',
  `serverreturn` varchar(255) DEFAULT NULL COMMENT '服务器通知网址',
  `defaultrate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '下家费率',
  `fengding` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '封顶手续费',
  `rate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '银行费率',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次更改时间',
  `unlockdomain` varchar(100) NOT NULL COMMENT '防封域名',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1开启 0关闭',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '渠道类型: 1 微信扫码 2 微信H5 3 支付宝扫码 4 支付宝H5 5网银跳转 6网银直连 7百度钱包 8 QQ钱包 9 京东钱包',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `paying_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '当天交易金额',
  `all_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '当天上游可交易量',
  `last_paying_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后交易时间',
  `min_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔最小交易额',
  `max_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔最大交易额',
  `control_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '风控状态:0否1是',
  `offline_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '通道上线状态:0已下线，1上线',
  `t0defaultrate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'T0运营费率',
  `t0fengding` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'T0封顶手续费',
  `t0rate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'T0成本费率',
  `zfb_pid` varchar(255) DEFAULT NULL COMMENT '支付宝分账',
  `is_mianqian` tinyint(1) DEFAULT '0',
  `agent_can_sh` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代理是否可以上号',
  `unit_samemoney_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '撞单风控0关闭1开启',
  `max_fail_nums` int(11) NOT NULL DEFAULT '0' COMMENT '最大连续失败多少次',
  `auto_paofen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1允许手动抢单0不允许手动抢单',
  `area_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0关闭1开启地区风控',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8 COMMENT='供应商列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_channel`
--

LOCK TABLES `pay_channel` WRITE;
/*!40000 ALTER TABLE `pay_channel` DISABLE KEYS */;
INSERT INTO `pay_channel` VALUES (251,'YueHe','悦和支付宝H5','','','','','http://39.107.91.129:18988/api/pay','','',0.0000,0.0000,0.0000,1660809867,'',0,4,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0),(252,'ShanWxH5','王子杉德微信扫码','','','','','https://cashier.sandpay.com.cn/qr/api/order/create','','',0.0000,0.0000,0.0000,1660841252,'',0,1,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0),(253,'ShanAlipay','王子杉德-支付宝扫码','','','','','https://cashier.sandpay.com.cn/qr/api/order/create','','',0.0000,0.0000,0.0000,1660842119,'',0,3,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0),(254,'Shanxralipayh5','衫德-旭日支付宝','','','','','https://boss.sandpay.com.cn/gateway/sand/ali','','',0.0000,0.0000,0.0000,1660902602,'',0,4,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0),(255,'Xovip','鑫鑫微信H5','','','','','https://api.longxiang886.xyz/gateway/index/checkpoint','','',0.0000,0.0000,0.0000,1661340851,'',1,2,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0),(256,'Xinxinalipay','鑫鑫支付宝','','','','','https://api.longxiang886.xyz/gateway/index/checkpoint','','',0.0000,0.0000,0.0000,1661317881,'',0,4,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0),(257,'Adapayalih5','Adapay支付宝H5','','','','','https://api.adapay.tech','','',0.0000,0.0000,0.0000,1661487108,'',1,4,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0),(258,'Shandebzh5','衫德H5包装支付宝生活号','','','','','https://sandcash.mixienet.com.cn/pay/h5/alipay','','',0.0000,0.0000,0.0000,1661520411,'',1,4,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0),(259,'JuHe','JuHe','','','','','http://yoyo.sjzwywl.com/Pay_Index.html','','',0.0000,0.0000,0.0000,1661982328,'',1,2,0,0,0.00,0.00,0,0.00,0.00,0,1,0.0000,0.0000,0.0000,NULL,0,0,0,0,0,0);
/*!40000 ALTER TABLE `pay_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_channel_account`
--

DROP TABLE IF EXISTS `pay_channel_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_channel_account` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '供应商通道账号ID',
  `channel_id` smallint(6) unsigned NOT NULL COMMENT '通道id',
  `mch_id` varchar(100) DEFAULT NULL COMMENT '商户号',
  `zfb_pid` varchar(128) NOT NULL,
  `signkey` varchar(2500) DEFAULT NULL COMMENT '签文密钥',
  `appid` varchar(100) DEFAULT NULL COMMENT '应用APPID',
  `appsecret` varchar(2500) DEFAULT NULL COMMENT '安全密钥',
  `defaultrate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '下家费率',
  `fengding` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '封顶手续费',
  `rate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '银行费率',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次更改时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1开启 0关闭',
  `title` varchar(100) DEFAULT NULL COMMENT '账户标题',
  `weight` tinyint(2) DEFAULT NULL COMMENT '轮询权重',
  `custom_rate` tinyint(1) DEFAULT NULL COMMENT '是否自定义费率',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始交易时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `last_paying_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后一笔交易时间',
  `paying_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '当天交易金额',
  `all_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单日可交易金额',
  `max_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔交易最大金额',
  `min_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔交易最小金额',
  `offline_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上线状态-1上线,0下线',
  `control_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '风控状态-0不风控,1风控中',
  `is_defined` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否自定义:1-是,0-否',
  `unit_frist_paying_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单位时间第一笔交易时间',
  `unit_paying_number` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '单时间交易笔数',
  `unit_paying_amount` decimal(11,0) unsigned NOT NULL DEFAULT '0' COMMENT '单位时间交易金额',
  `unit_interval` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '单位时间数值',
  `time_unit` char(1) NOT NULL DEFAULT 's' COMMENT '限制时间单位',
  `unit_number` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '单位时间次数',
  `unit_all_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单位时间金额',
  `t0defaultrate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'T0运营费率',
  `t0fengding` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'T0封顶手续费',
  `t0rate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'T0成本费率',
  `unlockdomain` varchar(255) NOT NULL COMMENT '防封域名',
  `add_user_name` varchar(256) NOT NULL,
  `fenzhuanzhang` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1-分账，2-转账',
  `add_user_id` int(15) NOT NULL,
  `account_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0系统1用户2码商3跑分',
  `last_online_time` varchar(13) DEFAULT NULL,
  `unit_same_amount` tinyint(2) NOT NULL DEFAULT '0' COMMENT '单位时间允许相同金额0允许1不允许',
  `fail_nums` int(11) NOT NULL DEFAULT '0' COMMENT '连续失败的次数',
  `day_paying_number` int(8) NOT NULL DEFAULT '0' COMMENT '今日成功笔数',
  `city_id` int(8) DEFAULT NULL COMMENT '市区',
  `prov_id` int(8) DEFAULT NULL COMMENT '省份',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=337 DEFAULT CHARSET=utf8 COMMENT='供应商账号列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_channel_account`
--

LOCK TABLES `pay_channel_account` WRITE;
/*!40000 ALTER TABLE `pay_channel_account` DISABLE KEYS */;
INSERT INTO `pay_channel_account` VALUES (328,251,'20220838','','ZeAOHGajsnIybgvDVkqTNuUJwCmEYLpW','901','',0.0000,0.0000,0.0000,1660809921,1,'20220838',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,6,0,NULL,NULL),(329,252,'6888801043416','','135456','','',0.0000,0.0000,0.0000,1660839364,1,'6888801043416',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,15,0,NULL,NULL),(330,253,'6888801043416','','135456','','',0.0000,0.0000,0.0000,1660839420,1,'6888801043416',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,2,0,NULL,NULL),(331,254,'6888805043623','','123456','','',0.0000,0.0000,0.0000,1660896008,1,'6888805043623',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,8,0,NULL,NULL),(332,255,'10044','','7935804CE032A3','1000','',0.0000,0.0000,0.0000,1661982204,1,'10044',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,0,0,NULL,NULL),(333,256,'10044','','2B5F16B8EB67B3','1109','',0.0000,0.0000,0.0000,1661318755,1,'10044',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,0,0,NULL,NULL),(336,259,'10001','','1avr3a100bvmsxfprn4f0u09dxrpini4','926','',0.0000,0.0000,0.0000,1661982359,1,'10001',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,0,0,NULL,NULL),(334,257,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdAkEA1kbgqwWRqKxSvJYU 1Hk6JMzaK11QPArZ3BymilNaVBL2Mue1O2Wi7u9ChDQ/6j11AFVA4bNcLBrqj5TK Nv+AQQJBAIMHSY0LK+exGlxtk/Lt3XNm9ohFkcS6ge3m37wK1et3puaJE7LCJaMt VdQ53dur2aUMUXweuMv5cLlVt1EvvSECQG/5yh6VYnEK3JHAvFHsp/3jL3/J28wE v6TPNBjFRkb5Qb+IZqULkAHc9p2v0FbQlvv9kVJhMKG7zygJUUM8cgECQCQr5rvv ktKg9veR3woQpXGk2LYt8LNfw7WtueA0qxnPF41qnpi/sKWtaLqE5ZraZyeFKpPg 8LFd56RZgQxV184=','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda','',0.0000,0.0000,0.0000,1661509319,1,'腾冲云智科技有限公司',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,0,0,NULL,NULL),(335,258,'6888805052385','','fPXhcoN6OAzoyBlmEkOIaBTzuVM9Dz0QpDNF2ISAvWx5bL8QMtrTdmvtWBevrE9JYNQa0egc6xY=','02020002','AICdLhx1ShwxnflxRvfA1oSzD2XSnCE6AAxG1fYLnrNHznAgYbgJRyTmopBjaA8tmdEZA1W9WigzO8+bF93pmIHS97NEnhmwSXpTk8boEy5B5SzlBJ/GpnoJMDw8W0EUnftIaiWtX45ixuz+UKFTiw==',0.0000,0.0000,0.0000,1661592693,1,'6888805052385',1,0,0,0,0,0.00,0.00,0.00,0.00,0,0,0,0,0,0,0,'s',0,0.00,0.0000,0.0000,0.0000,'','',0,0,0,NULL,0,4,0,NULL,NULL);
/*!40000 ALTER TABLE `pay_channel_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_complaints_codedeposit`
--

DROP TABLE IF EXISTS `pay_complaints_codedeposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_complaints_codedeposit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `pay_orderid` varchar(100) NOT NULL DEFAULT '0' COMMENT '系统订单号',
  `out_trade_id` varchar(50) NOT NULL DEFAULT '' COMMENT '下游订单号',
  `freeze_money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '冻结保证金额',
  `unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '计划解冻时间',
  `real_unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '实际解冻时间',
  `is_pause` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否暂停解冻 0正常解冻 1暂停解冻',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '解冻状态 0未解冻 1已解冻',
  `create_at` int(11) NOT NULL COMMENT '记录创建时间',
  `update_at` int(11) NOT NULL COMMENT '记录更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_unfreezeing` (`status`,`is_pause`,`unfreeze_time`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='投诉保证金余额';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_complaints_codedeposit`
--

LOCK TABLES `pay_complaints_codedeposit` WRITE;
/*!40000 ALTER TABLE `pay_complaints_codedeposit` DISABLE KEYS */;
INSERT INTO `pay_complaints_codedeposit` VALUES (35,101,'20190426235615102571','C20190426235615617922',8.0000,1556296575,1556294654,0,1,1556294175,1556294654),(36,101,'20190427122319555251','CS20190427122315134826',5.0000,1556341399,1556557934,0,1,1556338999,1556557934),(37,101,'20190427124438541004','CS20190427124432989782',15.0000,1556342678,0,0,0,1556340278,1556340278),(38,101,'20190427171324524810','C20190427171323558404',1.0000,1556358804,0,1,0,1556356404,1556356404),(39,101,'20190427171829535350','CS20190427171824344226',1000.0000,1556359109,1556356746,0,1,1556356709,1556356746),(40,101,'20190427172828994954','CS20190427172823922573',3000.0000,1556359708,1556357353,0,1,1556357308,1556357353),(41,101,'20190427173518545651','CS20190427173515896563',3000.0000,1556360118,1556357736,0,1,1556357718,1556357736),(42,101,'20190427174113579799','CS20190427174109579525',5000.0000,1556360473,1556358155,0,1,1556358073,1556358155),(43,101,'20190430004216561019','CS20190430004211119583',5000.0000,1556558537,1556556987,0,1,1556556137,1556556987),(44,101,'20190430012547989998','CS20190430012543822296',25.0000,1556561147,1556558790,0,1,1556558747,1556558790),(45,101,'20190430012820529910','CS20190430012818325137',50.0000,1556561300,0,0,0,1556558900,1556558900),(46,101,'20190430013504565557','CS20190430013500626547',100.0000,1556561704,0,0,0,1556559304,1556559304),(47,101,'20190503012400489754','C20190503012400427722',2.0000,1556820240,1556817898,0,1,1556817840,1556817898),(48,101,'20190503141840489810','C20190503141826474084',1.0000,1556866720,0,0,0,1556864320,1556864320),(49,101,'20190503142159555550','C20190503142159613253',2.0000,1556866919,0,0,0,1556864519,1556864519),(50,101,'20190503142256484810','C20190503142255978631',1.0000,1556866976,0,0,0,1556864576,1556864576),(51,101,'20190503142652995349','C20190503142651184649',2.0000,1556867212,0,0,0,1556864812,1556864812),(52,101,'20190503145035984948','C20190503145034755142',1.0000,1556868635,0,0,0,1556866235,1556866235),(53,101,'20190503145311559998','C20190503145311633386',1.0000,1556868791,0,0,0,1556866391,1556866391),(54,96,'20190509213627984953','C20190509213626644949',1.0000,1557410787,0,0,0,1557408987,1557408987),(55,101,'20190531011004995057','C20190531011003819055',1000.0000,1559314066,1559314929,0,1,1559311666,1559314929),(56,101,'20190531011004995057','C20190531011003819055',1000.0000,1559314255,1559314929,0,1,1559311855,1559314929);
/*!40000 ALTER TABLE `pay_complaints_codedeposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_complaints_codedeposit_rule`
--

DROP TABLE IF EXISTS `pay_complaints_codedeposit_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_complaints_codedeposit_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `is_system` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否系统规则 1是 0否',
  `ratio` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '投诉保证金比例（百分比）',
  `freeze_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '冻结时间（秒）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '规则是否开启 1开启 0关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='投诉保证金规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_complaints_codedeposit_rule`
--

LOCK TABLES `pay_complaints_codedeposit_rule` WRITE;
/*!40000 ALTER TABLE `pay_complaints_codedeposit_rule` DISABLE KEYS */;
INSERT INTO `pay_complaints_codedeposit_rule` VALUES (1,180586943,1,0.00,1800,1),(7,101,0,0.00,2400,1),(8,96,0,0.00,1200,0);
/*!40000 ALTER TABLE `pay_complaints_codedeposit_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_complaints_deposit`
--

DROP TABLE IF EXISTS `pay_complaints_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_complaints_deposit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `pay_orderid` varchar(100) NOT NULL DEFAULT '0' COMMENT '系统订单号',
  `out_trade_id` varchar(50) NOT NULL DEFAULT '' COMMENT '下游订单号',
  `freeze_money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '冻结保证金额',
  `unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '计划解冻时间',
  `real_unfreeze_time` int(11) NOT NULL DEFAULT '0' COMMENT '实际解冻时间',
  `is_pause` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否暂停解冻 0正常解冻 1暂停解冻',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '解冻状态 0未解冻 1已解冻',
  `create_at` int(11) NOT NULL COMMENT '记录创建时间',
  `update_at` int(11) NOT NULL COMMENT '记录更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_unfreezeing` (`status`,`is_pause`,`unfreeze_time`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='投诉保证金余额';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_complaints_deposit`
--

LOCK TABLES `pay_complaints_deposit` WRITE;
/*!40000 ALTER TABLE `pay_complaints_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_complaints_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_complaints_deposit_rule`
--

DROP TABLE IF EXISTS `pay_complaints_deposit_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_complaints_deposit_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `is_system` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否系统规则 1是 0否',
  `ratio` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '投诉保证金比例（百分比）',
  `freeze_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '冻结时间（秒）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '规则是否开启 1开启 0关闭',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='投诉保证金规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_complaints_deposit_rule`
--

LOCK TABLES `pay_complaints_deposit_rule` WRITE;
/*!40000 ALTER TABLE `pay_complaints_deposit_rule` DISABLE KEYS */;
INSERT INTO `pay_complaints_deposit_rule` VALUES (1,180586943,1,0.00,0,1);
/*!40000 ALTER TABLE `pay_complaints_deposit_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_ddqun`
--

DROP TABLE IF EXISTS `pay_ddqun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_ddqun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0未使用1占用中2已付款',
  `mark` varchar(255) DEFAULT NULL,
  `money` decimal(11,2) NOT NULL,
  `qrcode` text NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `cmd` varchar(255) DEFAULT NULL,
  `fuid` varchar(255) DEFAULT NULL,
  `groupBillName` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `bizId` varchar(255) DEFAULT NULL,
  `pay_orderid` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `uptime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_ddqun`
--

LOCK TABLES `pay_ddqun` WRITE;
/*!40000 ALTER TABLE `pay_ddqun` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_ddqun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_df_api_order`
--

DROP TABLE IF EXISTS `pay_df_api_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_df_api_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商户编号',
  `trade_no` varchar(30) NOT NULL DEFAULT '' COMMENT '平台订单号',
  `out_trade_no` varchar(30) NOT NULL DEFAULT '' COMMENT '商户订单号',
  `money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '金额',
  `bankname` varchar(100) NOT NULL DEFAULT '' COMMENT '银行名称',
  `subbranch` varchar(100) NOT NULL DEFAULT '' COMMENT '支行名称',
  `accountname` varchar(100) NOT NULL DEFAULT '' COMMENT '开户名',
  `cardnumber` varchar(100) NOT NULL DEFAULT '' COMMENT '银行卡号',
  `province` varchar(100) NOT NULL DEFAULT '' COMMENT '所属省',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '所属市',
  `ip` varchar(100) DEFAULT '' COMMENT 'IP地址',
  `check_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0：待审核 1：已提交后台审核 2：审核驳回',
  `extends` text COMMENT '扩展字段',
  `df_id` int(11) NOT NULL DEFAULT '0' COMMENT '代付ID',
  `notifyurl` varchar(255) DEFAULT '' COMMENT '异步通知地址',
  `reject_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '驳回原因',
  `check_time` int(11) NOT NULL DEFAULT '0' COMMENT '审核时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `df_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付API扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣',
  PRIMARY KEY (`id`),
  KEY `IND_UID` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_df_api_order`
--

LOCK TABLES `pay_df_api_order` WRITE;
/*!40000 ALTER TABLE `pay_df_api_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_df_api_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_email`
--

DROP TABLE IF EXISTS `pay_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_email` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `smtp_host` varchar(300) DEFAULT NULL,
  `smtp_port` varchar(300) DEFAULT NULL,
  `smtp_user` varchar(300) DEFAULT NULL,
  `smtp_pass` varchar(300) DEFAULT NULL,
  `smtp_email` varchar(300) DEFAULT NULL,
  `smtp_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_email`
--

LOCK TABLES `pay_email` WRITE;
/*!40000 ALTER TABLE `pay_email` DISABLE KEYS */;
INSERT INTO `pay_email` VALUES (1,'smtp.163.com','465','123@163.com','xa811121','123@163.com','聚合支付客服');
/*!40000 ALTER TABLE `pay_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_invitecode`
--

DROP TABLE IF EXISTS `pay_invitecode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_invitecode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invitecode` varchar(32) NOT NULL,
  `fmusernameid` int(11) unsigned NOT NULL DEFAULT '0',
  `syusernameid` int(11) NOT NULL DEFAULT '0',
  `regtype` tinyint(1) unsigned NOT NULL DEFAULT '4' COMMENT '用户组 4 普通用户 5 代理商',
  `fbdatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `yxdatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `sydatetime` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '邀请码状态 0 禁用 1 未使用 2 已使用',
  `is_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否管理员添加',
  PRIMARY KEY (`id`),
  UNIQUE KEY `invitecode` (`invitecode`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_invitecode`
--

LOCK TABLES `pay_invitecode` WRITE;
/*!40000 ALTER TABLE `pay_invitecode` DISABLE KEYS */;
INSERT INTO `pay_invitecode` VALUES (2,'o2rf9t',1,180768704,4,1534917410,1535003805,1534917416,2,1),(3,'wttye8',1,180768705,4,1534917489,1535003888,1534917496,2,1),(4,'ktn792',1,180768706,5,1534951096,1535037485,1534951110,2,1),(6,'wz0a94',1,180768716,4,1536592819,1536679216,1536592827,2,1),(7,'vx27sh',1,180768717,4,1536595154,1536681551,1536595158,2,1),(8,'wwnnph',1,180768718,4,1536596894,1536683292,1536596915,2,1),(9,'ojxy',1,19,4,1543080463,1543166861,1543080470,2,1),(10,'jgs0',9,24,4,1543144229,1543230620,1543144237,2,1),(11,'naf9',1,34,4,1544011753,1544098146,1544011765,2,1),(12,'ccwz',1,35,4,1544012858,1544099255,1544012883,2,1),(13,'8j4t',1,0,4,1545111862,1545198260,0,1,1),(14,'kvsw',1,0,5,1553268735,1553355130,0,1,1);
/*!40000 ALTER TABLE `pay_invitecode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_inviteconfig`
--

DROP TABLE IF EXISTS `pay_inviteconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_inviteconfig` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invitezt` tinyint(1) unsigned DEFAULT '1',
  `invitetype2number` int(11) NOT NULL DEFAULT '20',
  `invitetype2ff` smallint(6) NOT NULL DEFAULT '1',
  `invitetype5number` int(11) NOT NULL DEFAULT '20',
  `invitetype5ff` smallint(6) NOT NULL DEFAULT '1',
  `invitetype6number` int(11) NOT NULL DEFAULT '20',
  `invitetype6ff` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_inviteconfig`
--

LOCK TABLES `pay_inviteconfig` WRITE;
/*!40000 ALTER TABLE `pay_inviteconfig` DISABLE KEYS */;
INSERT INTO `pay_inviteconfig` VALUES (1,0,0,0,10,0,0,0);
/*!40000 ALTER TABLE `pay_inviteconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_loginrecord`
--

DROP TABLE IF EXISTS `pay_loginrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_loginrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `logindatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginip` varchar(100) NOT NULL,
  `loginaddress` varchar(300) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型：0：前台用户 1：后台用户',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=598 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_loginrecord`
--

LOCK TABLES `pay_loginrecord` WRITE;
/*!40000 ALTER TABLE `pay_loginrecord` DISABLE KEYS */;
INSERT INTO `pay_loginrecord` VALUES (1,1,'2018-11-24 18:50:30','110.83.187.210','福建省福州市',1),(2,9,'2018-11-25 08:21:57','117.61.151.52','江苏省连云港市',1),(3,19,'2018-11-25 08:23:18','117.61.151.52','江苏-',0),(4,9,'2018-11-25 08:28:49','36.113.32.87','浙江省',1),(5,19,'2018-11-25 08:31:48','36.113.32.87','浙江-',0),(6,9,'2018-11-25 08:52:10','59.35.84.122','广东省汕头市',1),(7,1,'2018-11-25 09:22:28','117.61.2.20','江苏省泰州市',1),(8,1,'2018-11-25 10:31:29','124.236.190.3','河北省石家庄市',1),(9,9,'2018-11-25 10:41:58','117.61.23.138','江苏省泰州市',1),(10,9,'2018-11-25 10:46:10','117.61.23.138','江苏省泰州市',1),(11,1,'2018-11-25 10:48:41','61.157.235.10','四川省广安市岳池县',1),(12,1,'2018-11-25 11:14:07','101.207.224.47','四川省',1),(13,1,'2018-11-25 13:08:09','101.207.224.47','四川省',1),(14,1,'2018-11-26 07:53:35','124.236.190.3','河北省石家庄市',1),(15,1,'2018-11-26 12:37:10','117.61.2.20','江苏省泰州市',1),(16,1,'2018-11-26 12:54:00','115.231.231.16','浙江省杭州市',1),(17,1,'2018-11-26 15:57:01','124.236.190.3','河北省石家庄市',1),(18,1,'2018-11-27 08:44:29','115.231.231.16','浙江省杭州市',1),(19,1,'2018-11-27 09:07:45','124.236.223.177','河北省石家庄市',1),(20,19,'2018-11-27 09:08:28','124.236.223.177','河北-石家庄',0),(21,1,'2018-11-27 09:56:42','223.104.6.48','中国',1),(22,1,'2018-11-27 14:05:09','115.231.231.16','浙江省杭州市',1),(23,1,'2018-11-27 16:55:45','146.88.200.80','美国',1),(24,1,'2018-11-28 09:06:55','117.22.244.72','陕西省西安市',1),(25,1,'2018-11-28 11:45:15','117.22.244.72','陕西省西安市',1),(26,27,'2018-11-28 12:39:24','1.198.7.36','河南-郑州',0),(27,1,'2018-11-28 16:14:00','120.33.105.238','福建省泉州市',1),(28,1,'2018-11-29 07:30:22','219.145.45.199','陕西省西安市',1),(29,1,'2018-11-29 07:31:50','103.78.130.13','亚太地区',1),(30,1,'2018-11-29 12:52:20','120.37.167.42','福建省泉州市',1),(31,1,'2018-11-29 13:16:01','219.145.45.199','陕西省西安市',1),(32,1,'2018-11-29 13:31:23','120.37.167.42','福建省泉州市',1),(33,1,'2018-11-29 15:25:01','183.211.163.123','江苏省',1),(34,1,'2018-11-29 15:27:04','182.97.56.228','江西省南昌市',1),(35,28,'2018-11-30 03:02:34','180.175.68.181','上海-上海',0),(36,1,'2018-11-30 03:03:21','120.37.167.42','福建省泉州市',1),(37,29,'2018-11-30 04:01:09','120.37.167.42','福建-泉州',0),(38,1,'2018-11-30 05:04:25','120.37.167.42','福建省泉州市',1),(39,1,'2018-11-30 06:44:09','59.55.43.215','江西省赣州市',1),(40,1,'2018-11-30 06:44:35','223.104.6.13','中国',1),(41,1,'2018-11-30 06:45:36','121.207.129.227','福建省厦门市',1),(42,1,'2018-11-30 08:33:03','180.159.23.174','上海市',1),(43,1,'2018-11-30 08:52:37','117.61.2.20','江苏省泰州市',1),(44,1,'2018-11-30 11:00:22','120.37.167.42','福建省泉州市',1),(45,1,'2018-11-30 11:56:19','59.63.225.102','贵州省',1),(46,1,'2018-11-30 12:06:27','112.64.119.50','上海市',1),(47,1,'2018-11-30 12:39:53','125.120.13.237','浙江省杭州市',1),(48,1,'2018-11-30 14:16:07','183.211.164.51','江苏省',1),(49,1,'2018-11-30 15:14:21','222.214.218.29','四川省乐山市',1),(50,1,'2018-11-30 16:00:35','112.5.202.46','福建省福州市',1),(51,1,'2018-12-01 06:58:29','117.61.2.20','江苏省泰州市',1),(52,1,'2018-12-01 11:42:04','222.214.218.29','四川省乐山市',1),(53,31,'2018-12-02 07:06:32','39.181.158.233','浙江-台州',0),(54,1,'2018-12-02 08:44:51','39.181.158.233','中国',1),(55,1,'2018-12-02 10:22:31','175.42.163.203','福建省三明市',1),(56,1,'2018-12-02 13:13:36','117.22.86.188','陕西省西安市',1),(57,1,'2018-12-02 16:52:11','223.104.248.13','中国',1),(58,1,'2018-12-02 16:53:21','106.92.98.83','重庆市',1),(59,1,'2018-12-02 17:33:04','106.92.98.83','重庆市',1),(60,1,'2018-12-02 20:10:11','223.104.248.13','中国',1),(61,1,'2018-12-02 20:51:45','223.104.248.13','中国',1),(62,1,'2018-12-02 20:52:15','223.104.248.13','中国',1),(63,1,'2018-12-02 20:53:23','223.104.248.13','中国',1),(64,1,'2018-12-02 21:14:41','223.104.248.13','中国',1),(65,1,'2018-12-03 02:24:43','202.109.166.232','江西省吉安市',1),(66,1,'2018-12-03 02:24:43','223.104.248.13','中国',1),(67,1,'2018-12-03 03:11:31','123.144.114.166','重庆市',1),(68,1,'2018-12-03 03:16:26','183.60.228.69','广东省深圳市',1),(69,1,'2018-12-03 04:17:49','183.134.50.69','浙江省宁波市',1),(70,1,'2018-12-03 06:55:07','117.22.86.188','陕西省西安市',1),(71,1,'2018-12-03 09:16:44','117.61.2.66','江苏省泰州市',1),(72,1,'2018-12-03 10:09:09','146.88.200.80','美国',1),(73,33,'2018-12-03 10:12:26','146.88.200.80','柬埔寨-',0),(74,1,'2018-12-03 10:57:39','120.37.167.42','福建省泉州市',1),(75,1,'2018-12-03 14:07:28','117.22.86.188','陕西省西安市',1),(76,1,'2018-12-03 15:48:26','221.130.50.2','江苏省南京市',1),(77,1,'2018-12-04 03:12:50','117.61.2.66','江苏省泰州市',1),(78,1,'2018-12-04 05:16:42','36.113.11.98','浙江省',1),(79,1,'2018-12-04 05:56:15','1.197.135.22','河南省南阳市',1),(80,1,'2018-12-04 07:40:24','106.114.68.237','河北省石家庄市',1),(81,1,'2018-12-04 08:44:41','120.37.166.244','福建省泉州市',1),(82,1,'2018-12-04 09:03:19','146.88.200.80','美国',1),(83,1,'2018-12-04 09:28:31','117.61.2.66','江苏省泰州市',1),(84,1,'2018-12-05 06:14:43','175.158.202.128','菲律宾',1),(85,1,'2018-12-05 10:05:16','120.37.166.244','福建省泉州市',1),(86,1,'2018-12-05 10:07:54','1.80.79.129','陕西省西安市',1),(87,34,'2018-12-05 12:09:42','120.37.166.244','福建-泉州',0),(88,35,'2018-12-05 12:29:03','120.37.166.244','福建-泉州',0),(89,36,'2018-12-05 12:58:39','120.37.166.244','福建-泉州',0),(90,37,'2018-12-05 13:58:03','120.37.166.244','福建-泉州',0),(91,1,'2018-12-05 14:12:04','117.61.15.171','江苏省泰州市',1),(92,38,'2018-12-05 14:41:38','120.37.166.244','福建-泉州',0),(93,1,'2018-12-05 16:04:16','120.37.166.244','福建省泉州市',1),(94,1,'2018-12-05 16:53:44','120.37.166.244','福建省泉州市',1),(95,1,'2018-12-05 17:27:30','120.37.166.244','福建省泉州市',1),(96,1,'2018-12-05 18:13:36','120.37.166.244','福建省泉州市',1),(97,1,'2018-12-05 18:23:15','175.158.202.128','菲律宾',1),(98,41,'2018-12-05 21:12:49','175.158.202.128','菲律宾-',0),(99,39,'2018-12-05 21:14:37','175.158.202.128','菲律宾-',0),(100,1,'2018-12-05 21:37:44','175.158.200.101','菲律宾',1),(101,1,'2018-12-06 03:37:42','120.37.166.244','福建省泉州市',1),(102,42,'2018-12-06 06:15:06','117.61.5.142','江苏-',0),(103,1,'2018-12-06 10:10:15','112.74.176.226','广东省佛山市',1),(104,1,'2018-12-06 10:52:26','221.13.63.69','贵州省',1),(105,1,'2018-12-06 10:55:01','223.167.152.126','上海市',1),(106,43,'2018-12-06 12:32:36','60.172.30.132','安徽-阜阳',0),(107,43,'2018-12-06 12:36:07','60.172.30.132','安徽-阜阳',0),(108,43,'2018-12-06 12:38:30','60.172.30.132','安徽-阜阳',0),(109,1,'2018-12-06 12:55:52','60.172.30.132','安徽省阜阳市',1),(110,1,'2018-12-06 13:07:40','219.144.157.167','陕西省西安市',1),(111,1,'2018-12-06 14:55:15','36.113.11.98','浙江省',1),(112,1,'2018-12-07 05:54:37','36.62.28.70','安徽省',1),(113,1,'2018-12-07 10:16:30','112.74.176.226','广东省佛山市',1),(114,1,'2018-12-07 13:12:43','219.145.45.194','陕西省西安市',1),(115,1,'2018-12-07 13:49:57','60.172.30.132','安徽省阜阳市',1),(116,1,'2018-12-07 14:04:32','60.172.30.132','安徽省阜阳市',1),(117,1,'2018-12-07 14:18:54','60.172.30.132','安徽省阜阳市',1),(118,1,'2018-12-07 14:31:16','60.172.30.132','安徽省阜阳市',1),(119,1,'2018-12-07 14:33:20','117.61.15.171','江苏省泰州市',1),(120,45,'2018-12-07 14:38:01','117.61.15.171','江苏-',0),(121,1,'2018-12-07 17:26:56','110.54.227.47','菲律宾',1),(122,39,'2018-12-08 00:58:27','175.158.203.141','菲律宾-',0),(123,1,'2018-12-08 05:02:16','117.61.2.66','江苏省泰州市',1),(124,46,'2018-12-08 08:00:11','113.85.99.183','广东-潮州',0),(125,1,'2018-12-08 11:53:46','117.61.150.107','江苏省连云港市',1),(126,1,'2018-12-08 15:32:05','120.37.166.244','福建省泉州市',1),(127,1,'2018-12-08 18:55:12','120.37.166.244','福建省泉州市',1),(128,1,'2018-12-08 19:04:15','120.37.166.244','福建省泉州市',1),(129,1,'2018-12-09 11:42:49','123.147.246.150','重庆市',1),(130,1,'2018-12-09 15:03:16','117.22.244.170','陕西省西安市',1),(131,1,'2018-12-11 07:44:42','117.24.106.231','福建省泉州市',1),(132,1,'2018-12-11 08:10:29','117.24.106.231','福建省泉州市',1),(133,1,'2018-12-11 09:59:08','219.144.156.109','陕西省西安市',1),(134,1,'2018-12-11 11:16:03','219.144.156.109','陕西省西安市',1),(135,1,'2018-12-11 11:16:08','119.163.86.145','山东省济南市',1),(136,1,'2018-12-11 13:19:36','36.40.28.252','陕西省西安市',1),(137,1,'2018-12-11 13:45:31','36.40.16.237','陕西省西安市',1),(138,43,'2018-12-11 17:57:04','117.136.44.248','河南-',0),(139,1,'2018-12-11 22:30:25','117.24.106.231','福建省泉州市',1),(140,1,'2018-12-12 02:25:47','1.80.78.248','陕西省西安市',1),(141,1,'2018-12-12 07:37:37','47.74.177.216','加拿大',1),(142,1,'2018-12-12 13:08:24','117.24.106.231','福建省泉州市',1),(143,1,'2018-12-12 14:45:14','119.163.86.145','山东省济南市',1),(144,1,'2018-12-12 14:45:14','119.163.86.145','山东省济南市',1),(145,1,'2018-12-12 15:20:46','117.24.106.231','福建省泉州市',1),(146,48,'2018-12-12 15:51:56','121.206.116.64','福建-龙岩',0),(147,1,'2018-12-12 15:53:38','119.163.86.145','山东省济南市',1),(148,1,'2018-12-12 21:30:49','175.158.200.124','菲律宾',1),(149,1,'2018-12-14 04:49:09','117.24.106.231','福建省泉州市',1),(150,1,'2018-12-14 04:53:14','36.108.170.205','浙江省',1),(151,1,'2018-12-14 12:43:51','119.163.86.145','山东省济南市',1),(152,1,'2018-12-14 15:50:39','117.24.106.231','福建省泉州市',1),(153,1,'2018-12-15 06:31:44','117.24.106.231','福建省泉州市',1),(154,1,'2018-12-15 07:09:50','117.61.2.66','江苏省泰州市',1),(155,1,'2018-12-15 08:04:26','117.61.2.66','江苏省泰州市',1),(156,1,'2018-12-15 08:20:41','117.61.2.66','江苏省泰州市',1),(157,1,'2018-12-15 15:30:13','36.108.170.205','浙江省',1),(158,1,'2018-12-15 16:41:03','117.24.106.231','福建省泉州市',1),(159,1,'2018-12-15 23:03:25','112.230.220.248','山东省济南市',1),(160,1,'2018-12-16 01:47:06','117.22.86.151','陕西省西安市',1),(161,1,'2018-12-16 06:34:52','117.24.106.231','福建省泉州市',1),(162,1,'2018-12-16 08:18:21','117.24.106.231','福建省泉州市',1),(163,1,'2018-12-16 12:44:37','117.24.106.231','福建省泉州市',1),(164,1,'2018-12-16 15:55:00','117.24.106.231','福建省泉州市',1),(165,1,'2018-12-17 11:10:45','117.61.2.66','江苏省泰州市',1),(166,1,'2018-12-17 12:38:44','117.61.2.66','江苏省泰州市',1),(167,1,'2018-12-17 13:55:23','219.145.45.53','陕西省西安市',1),(168,1,'2018-12-17 14:28:27','117.61.2.66','江苏省泰州市',1),(169,1,'2018-12-17 14:57:25','110.81.176.14','福建省泉州市',1),(170,5,'2018-12-17 14:58:08','110.81.176.14','福建-泉州',0),(171,1,'2018-12-17 14:59:28','112.230.220.248','山东省济南市',1),(172,1,'2018-12-18 03:11:10','113.118.90.157','广东省深圳市',1),(173,1,'2018-12-18 06:34:40','113.118.90.157','广东省深圳市',1),(174,1,'2018-12-18 11:50:42','101.70.210.3','浙江省',1),(175,1,'2018-12-18 12:29:18','112.230.220.248','山东省济南市',1),(176,1,'2018-12-18 15:05:04','114.24.48.187','台湾省',1),(177,1,'2018-12-18 15:21:30','112.230.220.248','山东省济南市',1),(178,1,'2018-12-19 12:21:32','101.70.210.3','浙江省',1),(179,1,'2018-12-19 14:10:59','112.230.220.248','山东省济南市',1),(180,1,'2018-12-19 19:01:15','110.81.176.14','福建省泉州市',1),(181,10,'2018-12-19 19:02:21','110.81.176.14','福建省泉州市',1),(182,10,'2018-12-19 19:02:43','110.81.176.14','福建省泉州市',1),(183,1,'2018-12-20 11:12:36','101.70.210.3','浙江省',1),(184,1,'2018-12-20 11:58:52','36.113.33.255','浙江省',1),(185,1,'2018-12-20 12:33:32','117.30.218.16','福建省',1),(186,1,'2018-12-20 12:37:01','106.122.183.135','广东省',1),(187,1,'2018-12-20 12:40:19','106.122.183.135','广东省',1),(188,1,'2018-12-20 14:02:15','14.210.128.28','广东省湛江市',1),(189,36,'2018-12-20 14:05:28','14.210.128.28','广东-湛江',0),(190,1,'2018-12-21 01:57:32','112.230.220.248','山东省济南市',1),(191,1,'2018-12-21 01:58:14','112.230.220.248','山东省济南市',1),(192,1,'2018-12-21 09:16:31','103.244.249.46','亚太地区',1),(193,1,'2018-12-21 10:28:05','103.244.249.46','亚太地区',1),(194,1,'2018-12-21 13:04:30','103.244.249.46','亚太地区',1),(195,49,'2018-12-21 13:39:04','122.238.168.12','浙江-温州',0),(196,1,'2018-12-21 16:51:22','36.113.33.255','浙江省',1),(197,36,'2018-12-23 04:25:40','183.18.32.240','广东-湛江',0),(198,1,'2018-12-23 13:30:48','117.61.66.18','江苏省扬州市',1),(199,1,'2018-12-25 08:54:09','211.157.178.165','北京市',1),(200,1,'2018-12-26 04:38:14','36.113.32.56','浙江省',1),(201,1,'2018-12-26 05:06:27','110.87.108.89','福建省厦门市',1),(202,1,'2018-12-26 06:49:26','113.113.120.177','广东省东莞市',1),(203,1,'2018-12-26 07:50:46','185.239.226.77','欧洲和中东地区',1),(204,1,'2018-12-26 08:13:07','185.239.226.77','欧洲和中东地区',1),(205,1,'2018-12-27 03:22:56','110.87.108.89','福建省厦门市',1),(206,1,'2018-12-28 07:45:46','113.118.89.175','广东省深圳市',1),(207,1,'2018-12-28 07:50:49','171.109.254.60','广西',1),(208,1,'2018-12-28 08:04:21','113.118.89.175','广东省深圳市',1),(209,1,'2018-12-28 10:58:25','115.84.84.163','老挝',1),(210,1,'2018-12-28 11:11:10','116.211.145.12','湖北省',1),(211,1,'2018-12-30 10:33:54','106.121.135.231','广东省',1),(212,1,'2018-12-30 10:39:23','1.203.182.4','北京市',1),(213,1,'2018-12-30 10:40:09','1.203.182.4','北京市',1),(214,1,'2018-12-31 14:25:26','117.136.39.239','中国',1),(215,13,'2018-12-31 18:46:20','14.220.123.55','广东-东莞',0),(216,52,'2019-01-01 23:27:07','117.181.180.170','广西-百色',0),(217,1,'2019-01-02 06:56:02','1.180.156.93','内蒙古',1),(218,1,'2019-01-02 08:27:26','123.235.217.129','山东省青岛市',1),(219,1,'2019-01-02 08:40:54','123.235.217.129','山东省青岛市',1),(220,53,'2019-01-02 09:34:49','1.180.156.93','内蒙古-巴彦淖尔',0),(221,1,'2019-01-02 10:21:26','45.64.121.183','美国',1),(222,1,'2019-01-02 12:07:00','101.70.210.47','浙江省',1),(223,1,'2019-01-03 06:02:52','1.180.156.90','内蒙古',1),(224,1,'2019-01-03 12:28:50','101.70.210.44','浙江省',1),(225,1,'2019-01-03 13:52:36','223.11.149.203','山西省',1),(226,1,'2019-01-04 04:37:17','222.214.218.29','四川省乐山市',1),(227,1,'2019-01-04 05:20:07','1.180.156.90','内蒙古',1),(228,1,'2019-01-04 06:02:35','183.17.52.96','广东省深圳市',1),(229,1,'2019-01-04 06:33:51','183.200.12.214','山西省',1),(230,1,'2019-01-04 07:21:59','123.160.134.68','河南省郑州市',1),(231,1,'2019-01-05 06:59:57','1.180.156.91','内蒙古',1),(232,1,'2019-01-05 07:19:22','36.46.86.151','陕西省',1),(233,1,'2019-01-05 16:47:05','175.158.202.166','菲律宾',1),(234,1,'2019-01-06 04:18:11','1.180.156.91','内蒙古',1),(235,1,'2019-01-06 11:21:16','222.214.218.29','四川省乐山市',1),(236,1,'2019-01-06 12:30:13','101.70.210.44','浙江省',1),(237,1,'2019-01-07 01:52:21','117.61.194.174','江苏省淮安市',1),(238,1,'2019-01-07 05:46:12','183.200.12.59','山西省',1),(239,1,'2019-01-07 17:09:10','115.215.79.9','浙江省宁波市',1),(240,1,'2019-01-07 17:10:29','115.215.79.9','浙江省宁波市',1),(241,1,'2019-01-08 06:19:24','1.180.156.90','内蒙古',1),(242,1,'2019-01-08 09:26:45','115.150.70.155','江西省赣州市',1),(243,1,'2019-01-08 09:27:16','171.15.167.101','河南省',1),(244,1,'2019-01-08 10:35:08','183.17.55.220','广东省深圳市',1),(245,1,'2019-01-08 12:16:59','171.15.167.101','河南省',1),(246,1,'2019-01-09 03:04:42','183.17.55.220','广东省深圳市',1),(247,1,'2019-01-09 08:45:50','36.113.10.117','浙江省',1),(248,1,'2019-01-09 15:32:47','1.180.156.93','内蒙古',1),(249,1,'2019-01-09 15:48:28','1.180.156.93','内蒙古',1),(250,1,'2019-01-10 02:31:38','36.113.10.117','浙江省',1),(251,1,'2019-01-10 07:33:24','1.180.156.90','内蒙古',1),(252,1,'2019-01-10 09:55:41','183.200.12.126','山西省',1),(253,1,'2019-01-10 13:35:30','175.158.203.85','菲律宾',1),(254,1,'2019-01-10 14:00:24','112.96.198.11','广东省佛山市',1),(255,1,'2019-01-10 14:29:07','123.139.18.6','陕西省西安市',1),(256,1,'2019-01-10 15:22:52','175.158.203.85','菲律宾',1),(257,5,'2019-01-11 00:50:07','175.158.202.228','菲律宾-',0),(258,5,'2019-01-11 03:03:46','175.158.202.68','菲律宾-',0),(259,1,'2019-01-11 06:46:21','183.17.54.58','广东省深圳市',1),(260,1,'2019-01-11 06:59:18','116.22.1.219','广东省广州市',1),(261,5,'2019-01-11 07:01:35','116.22.1.219','广东-广州',0),(262,1,'2019-01-11 07:37:52','115.239.205.118','浙江省绍兴市',1),(263,1,'2019-01-11 08:16:39','222.78.89.71','福建省龙岩市',1),(264,1,'2019-01-12 05:55:13','222.214.218.29','四川省乐山市',1),(265,1,'2019-01-12 07:08:51','113.248.156.20','重庆市',1),(266,1,'2019-01-12 09:27:06','107.151.99.74','北美地区',1),(267,1,'2019-01-12 10:04:51','113.93.107.213','广东省江门市',1),(268,1,'2019-01-12 13:55:06','113.93.108.53','广东省江门市',1),(269,65,'2019-01-13 01:25:29','180.141.195.233','广西-崇左',0),(270,65,'2019-01-13 01:26:48','180.141.195.233','广西-崇左',0),(271,65,'2019-01-13 01:34:02','180.141.195.233','广西-崇左',0),(272,1,'2019-01-13 12:49:21','222.214.218.29','四川省乐山市',1),(273,1,'2019-01-24 05:43:59','36.248.163.114','福建省福州市',1),(274,1,'2019-01-24 06:03:43','36.248.163.114','福建省福州市',1),(275,1,'2019-01-24 06:15:13','36.248.163.114','福建省福州市',1),(276,1,'2019-01-24 06:17:56','36.248.163.114','福建省福州市',1),(277,1,'2019-01-24 06:19:03','36.248.163.114','福建省福州市',1),(278,1,'2019-01-24 06:27:39','36.248.163.114','福建省福州市',1),(279,1,'2019-01-24 06:58:42','115.60.128.42','河南省郑州市',1),(280,1,'2019-01-26 03:03:43','115.60.132.46','河南省郑州市',1),(281,1,'2019-01-26 13:09:57','117.136.73.145','中国',1),(282,1,'2019-01-26 13:58:38','222.220.14.41','云南省西双版纳州景洪市',1),(283,61,'2019-01-26 14:01:28','222.220.14.41','云南-西双版纳傣族自治州',0),(284,1,'2019-01-26 15:09:34','27.153.173.236','福建省莆田市',1),(285,1,'2019-01-26 15:10:41','27.153.173.236','福建省莆田市',1),(286,61,'2019-01-26 15:11:15','27.153.173.236','福建-莆田',0),(287,1,'2019-01-27 14:33:20','222.220.14.41','云南省西双版纳州景洪市',1),(288,61,'2019-01-27 14:37:42','222.220.14.41','云南-西双版纳傣族自治州',0),(289,9,'2019-01-27 14:46:15','222.220.14.41','云南-西双版纳傣族自治州',0),(290,61,'2019-01-27 14:46:43','222.220.14.41','云南-西双版纳傣族自治州',0),(291,1,'2019-01-28 05:07:27','123.233.143.29','山东省济南市',1),(292,1,'2019-01-28 11:16:40','117.136.73.174','中国',1),(293,1,'2019-02-13 01:45:11','36.250.174.174','福建省',1),(294,1,'2019-02-13 01:48:32','221.192.179.28','河北省石家庄市',1),(295,1,'2019-02-13 01:54:42','36.250.174.174','福建省',1),(296,1,'2019-03-13 07:23:29','42.232.204.116','河南省',1),(297,1,'2019-03-14 05:12:28','42.232.204.116','河南省',1),(298,1,'2019-03-14 08:02:29','116.237.142.130','上海市长宁区',1),(299,1,'2019-03-14 08:06:46','116.237.142.130','上海市长宁区',1),(300,1,'2019-03-14 11:57:12','116.237.142.130','上海市长宁区',1),(301,1,'2019-03-17 12:29:41','58.48.224.209','湖北省武汉市',1),(302,1,'2019-03-18 07:32:02','110.5.69.252','菲律宾',1),(303,1,'2019-03-18 07:37:48','42.232.205.95','河南省',1),(304,1,'2019-03-18 08:15:06','58.48.224.209','湖北省武汉市',1),(305,1,'2019-03-18 08:15:37','123.146.198.147','重庆市',1),(306,1,'2019-03-18 08:54:34','218.28.64.162','河南省平顶山市',1),(307,1,'2019-03-18 09:00:12','36.57.154.114','安徽省',1),(308,1,'2019-03-18 15:09:07','36.57.155.196','安徽省',1),(309,1,'2019-03-18 15:31:52','116.1.241.161','广西南宁市',1),(310,1,'2019-03-19 05:36:11','42.232.205.95','河南省',1),(311,1,'2019-03-19 07:05:22','116.1.241.161','广西南宁市',1),(312,1,'2019-03-19 14:25:08','117.136.75.248','中国',1),(313,1,'2019-03-19 17:05:30','36.57.183.143','安徽省',1),(314,1,'2019-03-20 02:26:55','120.239.27.38','中国',1),(315,1,'2019-03-20 08:12:41','58.48.224.209','湖北省武汉市',1),(316,1,'2019-03-20 19:18:36','110.5.69.252','菲律宾',1),(317,1,'2019-03-21 07:26:50','110.5.69.252','菲律宾',1),(318,1,'2019-03-21 13:00:12','42.232.206.249','河南省',1),(319,1,'2019-03-22 03:49:18','36.22.229.24','浙江省',1),(320,1,'2019-03-22 04:51:42','223.88.224.221','中国',1),(321,1,'2019-03-22 09:55:18','223.88.224.221','中国',1),(322,1,'2019-03-22 15:23:21','42.232.206.249','河南省',1),(323,1,'2019-03-27 15:28:42','127.0.0.1','本机地址',1),(324,1,'2019-03-29 10:51:15','127.0.0.1','本机地址',1),(325,1,'2019-04-01 04:21:13','127.0.0.1','本机地址',1),(326,67,'2019-04-03 09:41:12','42.232.205.218','河南-平顶山',0),(327,67,'2019-04-03 09:45:51','120.33.106.226','福建-泉州',0),(328,69,'2019-04-03 10:03:36','120.33.106.226','福建-泉州',0),(329,69,'2019-04-03 10:09:26','120.33.106.226','福建-泉州',0),(330,67,'2019-04-03 10:32:49','120.33.106.226','福建-泉州',0),(331,67,'2019-04-03 11:03:00','120.33.106.226','福建-泉州',0),(332,70,'2019-04-03 13:49:50','203.168.16.8','广东-',0),(333,71,'2019-04-03 15:05:01','203.168.16.8','广东-',0),(334,67,'2019-04-03 15:26:12','223.104.45.65','福建-泉州',0),(335,72,'2019-04-03 15:26:46','183.220.47.200','四川-成都',0),(336,67,'2019-04-03 15:27:24','223.104.45.65','福建-泉州',0),(337,71,'2019-04-04 01:13:43','111.142.251.230','福建-泉州',0),(338,70,'2019-04-04 01:32:23','203.168.16.8','广东-',0),(339,71,'2019-04-04 01:35:04','203.168.16.8','广东-',0),(340,70,'2019-04-04 01:41:26','103.213.245.23','香港-',0),(341,71,'2019-04-04 01:55:11','203.168.16.8','广东-',0),(342,70,'2019-04-04 03:41:36','203.168.16.8','广东-',0),(343,71,'2019-04-04 03:46:14','203.168.16.8','广东-',0),(344,70,'2019-04-04 03:57:10','203.168.16.8','广东-',0),(345,71,'2019-04-04 04:08:33','203.168.16.8','广东-',0),(346,68,'2019-04-04 04:54:32','103.246.144.132','柬埔寨-',0),(347,68,'2019-04-04 05:24:59','58.22.114.37','福建-',0),(348,70,'2019-04-04 06:28:26','203.168.16.8','广东-',0),(349,67,'2019-04-04 07:43:59','120.33.106.226','福建-泉州',0),(350,69,'2019-04-04 07:47:46','120.33.106.226','福建-泉州',0),(351,69,'2019-04-04 07:47:34','120.33.106.226','福建-泉州',0),(352,68,'2019-04-04 08:07:14','103.246.144.132','柬埔寨-',0),(353,67,'2019-04-04 10:33:38','120.33.106.226','福建-泉州',0),(354,70,'2019-04-05 02:15:40','103.213.245.23','香港-',0),(355,67,'2019-04-05 04:56:30','220.162.89.27','福建-泉州',0),(356,68,'2019-04-05 16:12:31','117.24.206.176','福建-泉州',0),(357,68,'2019-04-05 16:13:28','117.24.206.176','福建-泉州',0),(358,68,'2019-04-05 16:20:09','103.197.105.178','柬埔寨-',0),(359,68,'2019-04-06 08:51:46','183.45.187.57','广东-中山',0),(360,68,'2019-04-06 17:38:01','110.81.13.60','福建-泉州',0),(361,68,'2019-04-07 03:39:36','110.81.13.60','福建-泉州',0),(362,74,'2019-04-07 05:17:11','58.22.113.17','福建-',0),(363,74,'2019-04-07 05:21:27','120.37.186.104','福建-泉州',0),(364,76,'2019-04-07 05:23:37','58.22.113.17','福建-',0),(365,68,'2019-04-07 05:33:24','120.37.186.104','福建-泉州',0),(366,76,'2019-04-07 06:31:14','110.81.13.60','福建-泉州',0),(367,68,'2019-04-07 06:38:08','110.81.13.60','福建-泉州',0),(368,76,'2019-04-07 06:44:52','110.81.13.60','福建-泉州',0),(369,74,'2019-04-07 06:45:15','110.81.13.60','福建-泉州',0),(370,68,'2019-04-07 06:46:03','110.81.13.60','福建-泉州',0),(371,74,'2019-04-07 06:47:22','110.81.13.60','福建-泉州',0),(372,74,'2019-04-07 06:47:49','110.81.13.60','福建-泉州',0),(373,76,'2019-04-07 06:48:26','110.81.13.60','福建-泉州',0),(374,68,'2019-04-07 06:49:11','110.81.13.60','福建-泉州',0),(375,68,'2019-04-07 06:50:53','110.81.13.60','福建-泉州',0),(376,75,'2019-04-07 06:53:33','110.81.13.60','福建-泉州',0),(377,75,'2019-04-07 07:00:30','120.37.186.104','福建-泉州',0),(378,75,'2019-04-07 07:57:26','110.81.13.60','福建-泉州',0),(379,75,'2019-04-07 08:36:42','120.37.186.104','福建-泉州',0),(380,75,'2019-04-07 08:37:17','120.37.186.104','福建-泉州',0),(381,68,'2019-04-07 08:40:01','110.81.13.60','福建-泉州',0),(382,68,'2019-04-07 08:40:32','110.81.13.60','福建-泉州',0),(383,75,'2019-04-07 08:51:50','110.81.13.60','福建-泉州',0),(384,68,'2019-04-07 08:55:33','110.81.13.60','福建-泉州',0),(385,75,'2019-04-07 08:56:09','110.81.13.60','福建-泉州',0),(386,68,'2019-04-07 08:57:39','110.81.13.60','福建-泉州',0),(387,75,'2019-04-07 09:11:12','120.37.186.104','福建-泉州',0),(388,68,'2019-04-07 09:11:58','110.81.13.60','福建-泉州',0),(389,75,'2019-04-07 09:12:29','120.37.186.104','福建-泉州',0),(390,75,'2019-04-07 09:13:30','120.37.186.104','福建-泉州',0),(391,78,'2019-04-07 09:22:56','120.37.186.104','福建-泉州',0),(392,68,'2019-04-07 10:59:15','110.81.13.60','福建-泉州',0),(393,68,'2019-04-07 10:59:41','110.81.13.60','福建-泉州',0),(394,68,'2019-04-07 14:47:50','110.81.13.60','福建-泉州',0),(395,78,'2019-04-08 04:56:22','121.205.48.179','福建-泉州',0),(396,78,'2019-04-08 06:05:40','47.74.213.182','香港-',0),(397,78,'2019-04-08 06:39:22','175.42.47.200','福建-福州',0),(398,68,'2019-04-08 15:30:49','139.162.218.56','英国-',0),(399,68,'2019-04-08 15:31:29','139.162.218.56','英国-',0),(400,68,'2019-04-08 15:32:36','58.22.113.100','福建-',0),(401,68,'2019-04-08 15:34:32','117.136.11.172','福建-泉州',0),(402,68,'2019-04-08 15:36:05','218.204.252.142','广东-广州',0),(403,1,'2019-04-09 04:13:12','42.232.207.13','河南省',1),(404,80,'2019-04-09 04:15:22','39.155.185.20','北京-北京',0),(405,81,'2019-04-09 04:54:24','211.97.128.168','福建-',0),(406,78,'2019-04-09 07:18:17','175.42.47.200','福建-福州',0),(407,78,'2019-04-09 07:25:02','121.205.48.179','福建-泉州',0),(408,75,'2019-04-09 07:30:17','121.205.48.179','福建-泉州',0),(409,68,'2019-04-09 07:47:36','110.81.13.60','福建-泉州',0),(410,82,'2019-04-09 07:47:58','123.14.87.132','河南-郑州',0),(411,82,'2019-04-09 07:49:59','123.14.87.132','河南-郑州',0),(412,78,'2019-04-09 08:23:56','121.205.48.179','福建-泉州',0),(413,75,'2019-04-09 08:25:33','121.205.48.179','福建-泉州',0),(414,78,'2019-04-09 08:30:36','121.205.48.179','福建-泉州',0),(415,75,'2019-04-09 08:35:32','121.205.48.179','福建-泉州',0),(416,68,'2019-04-09 08:36:06','121.205.48.179','福建-泉州',0),(417,75,'2019-04-09 08:42:25','110.81.13.60','福建-泉州',0),(418,68,'2019-04-09 08:45:11','110.81.13.60','福建-泉州',0),(419,75,'2019-04-09 08:49:19','110.81.13.60','福建-泉州',0),(420,78,'2019-04-09 08:53:12','121.205.48.179','福建-泉州',0),(421,75,'2019-04-09 08:54:24','121.205.48.179','福建-泉州',0),(422,1,'2019-04-09 17:02:09','123.55.51.149','河南省平顶山市',1),(423,84,'2019-04-09 17:07:41','112.31.253.8','安徽-',0),(424,82,'2019-04-10 02:02:51','123.14.92.38','河南-郑州',0),(425,80,'2019-04-10 02:26:17','39.155.185.20','北京-北京',0),(426,67,'2019-04-10 02:27:25','120.33.104.239','福建-泉州',0),(427,1,'2019-04-10 03:01:19','123.55.51.149','河南省平顶山市',1),(428,82,'2019-04-10 03:20:04','123.14.92.38','河南-郑州',0),(429,67,'2019-04-10 04:39:41','117.136.11.206','福建-泉州',0),(430,82,'2019-04-10 07:00:49','123.14.92.38','河南-郑州',0),(431,85,'2019-04-10 07:14:59','1.192.247.193','河南-郑州',0),(432,82,'2019-04-10 07:19:14','1.192.247.193','河南-郑州',0),(433,82,'2019-04-10 08:09:12','123.14.92.38','河南-郑州',0),(434,85,'2019-04-10 08:10:49','123.14.92.38','河南-郑州',0),(435,67,'2019-04-10 08:13:12','117.136.11.168','福建-泉州',0),(436,82,'2019-04-10 08:19:39','1.192.247.193','河南-郑州',0),(437,82,'2019-04-10 10:29:02','123.14.92.38','河南-郑州',0),(438,72,'2019-04-10 15:42:46','117.175.130.82','四川-成都',0),(439,82,'2019-04-11 02:05:23','123.14.95.49','河南-郑州',0),(440,85,'2019-04-11 02:08:52','123.14.95.49','河南-郑州',0),(441,82,'2019-04-11 02:30:14','123.14.95.49','河南-郑州',0),(442,85,'2019-04-11 02:30:33','123.14.95.49','河南-郑州',0),(443,82,'2019-04-11 02:35:54','1.192.246.170','河南-郑州',0),(444,85,'2019-04-11 05:45:58','123.14.95.49','河南-郑州',0),(445,82,'2019-04-11 05:51:08','123.14.95.49','河南-郑州',0),(446,82,'2019-04-11 10:04:13','123.14.95.49','河南-郑州',0),(447,67,'2019-04-11 11:15:02','120.33.105.204','福建-泉州',0),(448,11,'2019-04-11 14:59:48','106.122.240.131','广东省',1),(449,1,'2019-04-12 04:01:39','123.55.51.10','河南省平顶山市',1),(450,1,'2019-04-12 05:55:53','42.232.206.4','河南省',1),(451,82,'2019-04-12 08:04:45','123.14.86.189','河南-郑州',0),(452,85,'2019-04-12 08:06:37','123.14.86.189','河南-郑州',0),(453,85,'2019-04-12 08:07:44','123.14.86.189','河南-郑州',0),(454,82,'2019-04-12 08:08:17','123.14.86.189','河南-郑州',0),(455,82,'2019-04-12 08:11:40','123.14.86.189','河南-郑州',0),(456,82,'2019-04-12 10:24:01','1.192.247.235','河南-郑州',0),(457,75,'2019-04-12 11:06:26','110.81.13.60','福建-泉州',0),(458,75,'2019-04-12 11:07:22','58.22.113.40','福建-',0),(459,68,'2019-04-12 11:41:51','60.213.232.44','山东-聊城',0),(460,68,'2019-04-12 11:48:52','60.213.232.44','山东-聊城',0),(461,75,'2019-04-12 11:55:51','110.81.13.60','福建-泉州',0),(462,86,'2019-04-12 12:28:30','112.37.122.4','山东-聊城',0),(463,68,'2019-04-12 12:46:14','36.113.10.107','浙江-',0),(464,68,'2019-04-12 12:47:13','183.45.185.203','广东-中山',0),(465,68,'2019-04-12 14:17:04','110.81.13.60','福建-泉州',0),(466,75,'2019-04-12 14:20:00','110.81.13.60','福建-泉州',0),(467,75,'2019-04-12 14:21:30','183.45.185.203','广东-中山',0),(468,68,'2019-04-13 04:25:27','60.213.232.44','山东-聊城',0),(469,68,'2019-04-13 05:56:59','183.45.186.10','广东-中山',0),(470,68,'2019-04-13 05:57:10','60.213.232.44','山东-聊城',0),(471,82,'2019-04-13 08:13:50','123.14.86.5','河南-郑州',0),(472,1,'2019-04-13 08:25:59','61.158.152.46','河南省郑州市',1),(473,67,'2019-04-13 08:58:20','125.78.87.152','福建-泉州',0),(474,69,'2019-04-13 09:03:10','125.78.87.152','福建-泉州',0),(475,69,'2019-04-13 09:16:56','125.78.87.152','福建-泉州',0),(476,67,'2019-04-13 09:18:51','125.78.87.152','福建-泉州',0),(477,69,'2019-04-13 09:25:05','125.78.87.152','福建-泉州',0),(478,67,'2019-04-13 09:27:07','125.78.87.152','福建-泉州',0),(479,11,'2019-04-13 09:58:07','106.122.240.131','广东省',1),(480,82,'2019-04-13 11:32:26','123.14.86.5','河南-郑州',0),(481,84,'2019-04-13 11:40:30','118.112.123.3','四川-成都',0),(482,75,'2019-04-13 14:19:05','183.45.186.10','广东-中山',0),(483,68,'2019-04-13 14:27:12','110.81.13.60','福建-泉州',0),(484,67,'2019-04-14 03:53:21','125.78.87.152','福建-泉州',0),(485,75,'2019-04-14 07:57:09','183.45.186.10','广东-中山',0),(486,75,'2019-04-14 08:45:45','183.45.186.10','广东-中山',0),(487,75,'2019-04-14 08:46:11','183.45.186.10','广东-中山',0),(488,75,'2019-04-14 08:46:35','183.45.186.10','广东-中山',0),(489,75,'2019-04-14 08:46:52','183.45.186.10','广东-中山',0),(490,75,'2019-04-14 08:47:13','183.45.186.10','广东-中山',0),(491,68,'2019-04-14 10:28:36','47.245.54.192','香港-',0),(492,75,'2019-04-14 10:36:28','183.45.186.10','广东-中山',0),(493,68,'2019-04-14 11:07:03','121.34.153.204','广东-深圳',0),(494,67,'2019-04-14 11:27:28','223.104.45.65','福建-泉州',0),(495,67,'2019-04-14 11:28:21','223.104.45.65','福建-泉州',0),(496,67,'2019-04-14 11:28:49','223.104.45.65','福建-泉州',0),(497,75,'2019-04-14 13:00:29','183.45.186.10','广东-中山',0),(498,75,'2019-04-14 13:00:06','183.45.186.10','广东-中山',0),(499,68,'2019-04-14 13:03:05','183.45.186.10','广东-中山',0),(500,11,'2019-04-14 13:34:59','106.122.240.131','广东省',1),(501,11,'2019-04-14 13:35:34','106.122.240.131','广东省',1),(502,84,'2019-04-14 15:52:27','118.112.123.3','四川-成都',0),(503,82,'2019-04-15 03:05:03','1.192.243.8','河南-郑州',0),(504,82,'2019-04-15 05:33:14','123.14.86.22','河南-郑州',0),(505,85,'2019-04-15 05:47:59','123.14.86.22','河南-郑州',0),(506,85,'2019-04-15 05:48:18','123.14.86.22','河南-郑州',0),(507,82,'2019-04-15 05:53:39','1.192.243.8','河南-郑州',0),(508,1,'2019-04-15 05:55:51','222.89.212.189','河南省平顶山市',1),(509,11,'2019-04-15 05:58:20','106.122.240.131','广东省',1),(510,68,'2019-04-15 09:45:30','121.34.153.204','广东-深圳',0),(511,82,'2019-04-15 09:56:05','123.14.95.147','河南-郑州',0),(512,68,'2019-04-15 13:06:53','183.45.186.48','广东-中山',0),(513,75,'2019-04-15 13:19:28','183.45.186.48','广东-中山',0),(514,68,'2019-04-15 13:21:47','183.45.186.48','广东-中山',0),(515,75,'2019-04-15 13:22:46','183.45.186.48','广东-中山',0),(516,67,'2019-04-15 13:25:14','120.42.143.247','福建-泉州',0),(517,67,'2019-04-15 13:33:32','120.42.143.247','福建-泉州',0),(518,75,'2019-04-15 13:33:29','183.45.186.48','广东-中山',0),(519,75,'2019-04-15 13:33:17','183.45.186.48','广东-中山',0),(520,75,'2019-04-15 13:33:51','183.45.186.48','广东-中山',0),(521,68,'2019-04-15 13:34:33','183.45.186.48','广东-中山',0),(522,75,'2019-04-15 13:38:21','183.45.186.48','广东-中山',0),(523,68,'2019-04-15 14:21:45','183.45.186.48','广东-中山',0),(524,75,'2019-04-15 14:23:58','183.45.186.48','广东-中山',0),(525,1,'2019-04-15 15:40:49','171.8.171.40','河南省郑州市',1),(526,67,'2019-04-15 17:39:34','120.42.143.247','福建-泉州',0),(527,1,'2019-04-16 06:19:04','106.122.240.131','广东省',1),(528,84,'2019-04-16 06:21:03','106.122.240.131','福建-厦门',0),(529,68,'2019-04-16 06:23:23','106.122.240.131','福建-厦门',0),(530,68,'2019-04-16 06:23:11','106.122.240.131','福建-厦门',0),(531,80,'2019-04-16 06:59:32','39.155.185.20','北京-北京',0),(532,68,'2019-04-16 08:19:57','218.26.54.219','山西-',0),(533,1,'2019-04-16 12:11:50','61.158.149.113','河南省开封市',1),(534,81,'2019-04-16 14:36:55','211.97.129.117','福建-',0),(535,1,'2019-04-16 15:30:07','42.232.204.137','河南省',1),(536,75,'2019-04-16 16:17:51','183.45.186.48','广东-中山',0),(537,67,'2019-04-16 20:32:29','110.81.109.173','福建-泉州',0),(538,67,'2019-04-16 20:32:39','110.81.109.173','福建-泉州',0),(539,68,'2019-04-17 02:10:05','183.17.232.41','广东-深圳',0),(540,68,'2019-04-17 02:23:39','171.15.127.140','河南-郑州',0),(541,68,'2019-04-17 02:29:57','183.17.232.41','广东-深圳',0),(542,82,'2019-04-17 02:56:57','1.192.244.126','河南-郑州',0),(543,68,'2019-04-17 03:01:40','171.15.127.140','河南-郑州',0),(544,68,'2019-04-17 03:02:32','171.15.127.140','河南-郑州',0),(545,82,'2019-04-17 03:39:45','123.14.93.157','河南-郑州',0),(546,1,'2019-04-17 04:28:05','42.232.204.137','河南省',1),(547,82,'2019-04-17 05:33:56','123.14.93.157','河南-郑州',0),(548,82,'2019-04-17 10:09:22','123.14.93.157','河南-郑州',0),(549,82,'2019-04-17 11:26:26','123.14.93.157','河南-郑州',0),(550,75,'2019-04-17 11:47:55','183.45.185.124','广东-中山',0),(551,1,'2019-04-17 12:03:34','127.0.0.1','本机地址',1),(552,96,'2019-04-18 15:44:00','127.0.0.1','本机地址-',0),(553,1,'2019-04-18 15:53:43','127.0.0.1','本机地址',1),(554,72,'2019-04-18 15:54:24','127.0.0.1','本机地址-',0),(555,1,'2019-04-19 13:37:29','127.0.0.1','本机地址',1),(556,1,'2019-04-19 13:37:29','127.0.0.1','本机地址',1),(557,1,'2019-04-21 15:47:21','127.0.0.1','本机地址',1),(558,1,'2019-04-22 11:12:10','127.0.0.1','本机地址',1),(559,1,'2019-04-22 14:22:04','127.0.0.1','本机地址',1),(560,1,'2019-04-26 10:25:56','127.0.0.1','本机地址',1),(561,96,'2019-04-27 15:11:42','127.0.0.1','本机地址-',0),(562,1,'2019-04-28 05:10:24','127.0.0.1','本机地址',1),(563,1,'2019-04-29 16:22:56','127.0.0.1','本机地址',1),(564,1,'2019-05-06 07:08:58','127.0.0.1','本机地址',1),(565,1,'2019-05-09 08:48:44','127.0.0.1','本机地址',1),(566,1,'2019-05-12 13:57:17','127.0.0.1','本机地址',1),(567,1,'2019-05-13 10:34:59','127.0.0.1','本机地址',1),(568,1,'2019-05-14 17:18:24','127.0.0.1','本机地址',1),(569,1,'2019-05-16 17:38:00','127.0.0.1','本机地址',1),(570,1,'2019-05-18 06:07:37','127.0.0.1','本机地址',1),(571,1,'2019-05-18 13:26:56','127.0.0.1','本机地址',1),(572,1,'2019-05-19 07:21:07','127.0.0.1','本机地址',1),(573,1,'2019-05-21 09:01:08','127.0.0.1','本机地址',1),(574,1,'2019-05-22 16:01:41','127.0.0.1','本机地址',1),(575,1,'2019-05-25 05:02:56','127.0.0.1','本机地址',1),(576,1,'2022-08-18 07:53:35','183.225.141.12','云南省',1),(577,1,'2022-08-19 07:55:30','222.219.100.189','云南省保山市',1),(578,1,'2022-08-21 07:53:53','222.219.101.22','云南省保山市',1),(579,1,'2022-08-24 05:08:07','222.219.101.109','云南省保山市',1),(580,1,'2022-08-24 11:31:34','222.219.101.109','云南省保山市',1),(581,1,'2022-08-24 11:49:43','113.87.130.181','广东省深圳市',1),(582,1,'2022-08-25 15:02:23','222.219.101.76','云南省保山市',1),(583,1,'2022-08-26 04:09:05','222.219.101.76','云南省保山市',1),(584,1,'2022-08-26 06:07:05','113.87.130.181','广东省深圳市',1),(585,1,'2022-08-27 08:08:17','222.219.101.76','云南省保山市',1),(586,1,'2022-08-27 11:32:58','222.219.101.76','云南省保山市',1),(587,1,'2022-08-30 15:00:27','222.219.101.101','云南省保山市',1),(588,1,'2022-08-31 20:40:06','222.219.100.224','云南省保山市',1),(589,1,'2022-08-31 20:42:57','222.219.100.224','云南省保山市',1),(590,1,'2022-08-31 20:46:44','222.219.100.224','云南省保山市',1),(591,1,'2022-08-31 20:59:20','222.219.100.224','云南省保山市',1),(592,1,'2022-08-31 21:08:16','222.219.100.224','云南省保山市',1),(593,1,'2022-08-31 21:14:42','222.219.100.224','云南省保山市',1),(594,1,'2022-08-31 21:27:30','222.219.100.224','云南省保山市',1),(595,1,'2022-08-31 21:41:08','222.219.100.224','云南省保山市',1),(596,1,'2022-09-01 16:14:18','222.219.100.224','云南省保山市',1),(597,1,'2022-09-02 07:36:27','222.219.100.201','云南省保山市',1);
/*!40000 ALTER TABLE `pay_loginrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_member`
--

DROP TABLE IF EXISTS `pay_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `groupid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户组',
  `salt` varchar(10) NOT NULL COMMENT '密码随机字符',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '代理ID',
  `agent_cate` int(11) NOT NULL DEFAULT '0' COMMENT '代理级别',
  `balance` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '可用余额',
  `blockedbalance` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '冻结可用余额',
  `email` varchar(100) NOT NULL,
  `activate` varchar(200) NOT NULL,
  `regdatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `activatedatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别',
  `birthday` int(11) NOT NULL DEFAULT '0',
  `sfznumber` varchar(20) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ',
  `address` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `paypassword` varchar(32) DEFAULT NULL COMMENT '支付密码',
  `authorized` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 已认证 0 未认证 2 待审核',
  `apidomain` varchar(500) DEFAULT NULL COMMENT '授权访问域名',
  `apikey` varchar(32) NOT NULL COMMENT 'APIKEY',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1激活 0未激活',
  `receiver` varchar(255) DEFAULT NULL COMMENT '台卡显示的收款人信息',
  `unit_paying_number` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '单位时间已交易次数',
  `unit_paying_amount` decimal(11,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '单位时间已交易金额',
  `unit_frist_paying_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单位时间已交易的第一笔时间',
  `last_paying_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天最后一笔已交易时间',
  `paying_money` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '当天已交易金额',
  `login_ip` varchar(255) NOT NULL DEFAULT ' ' COMMENT '登录IP',
  `last_error_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录错误时间',
  `login_error_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '错误登录次数',
  `google_auth` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启谷歌身份验证登录',
  `df_api` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启代付API',
  `open_charge` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启充值功能',
  `df_domain` text NOT NULL COMMENT '代付域名报备',
  `df_auto_check` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付API自动审核',
  `google_secret_key` varchar(255) NOT NULL DEFAULT '' COMMENT '谷歌密钥',
  `df_ip` text NOT NULL COMMENT '代付域名报备IP',
  `session_random` varchar(50) NOT NULL DEFAULT '' COMMENT 'session随机字符串',
  `df_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付API扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `yckbalance` decimal(11,4) NOT NULL DEFAULT '0.0000' COMMENT '预存款余额',
  `agbalance` decimal(11,4) NOT NULL DEFAULT '0.0000' COMMENT '需要代理结算的余额',
  `can_take_money` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可以操作预存款',
  `can_sh` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可以上号',
  `path_id` varchar(255) DEFAULT '0,',
  `codeblockedbalance` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '码商冻结余额',
  `has_yck` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不开启预存款1开启预存款',
  `auto_paofen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1允许手动抢单0不允许手动抢单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_member`
--

LOCK TABLES `pay_member` WRITE;
/*!40000 ALTER TABLE `pay_member` DISABLE KEYS */;
INSERT INTO `pay_member` VALUES (102,'测试DEMO-勿删','fee62e3e7c6053dcfca97122c4aa1e3b',4,'3699',0,4,233.5100,0.0000,'1@qq.com','0af2c29f89f2b7e9aa61da6878c2a7a9',1660809712,2022,'测试DEMO-勿删',0,-28800,'1','1','1','1','e10adc3949ba59abbe56e057f20f883e',1,NULL,'04g3atwt5gk1crw3v3dhudv7cqukay25',1,NULL,16,233.5100,0,1661982473,233.5100,'',0,0,0,0,1,'',0,'','','',0,0,0.0000,0.0000,0,0,'0,U102,',0.0000,0,0),(103,'adapay测试','0ef76f7217c05d4e8874ea94f50c7ce9',4,'7995',0,4,1.3300,0.0000,'151@qq.com','ab55e8e47e31ad03c7c19f4c98c6e334',1661612236,2022,'adapay测试',0,-28800,'0','122','1212','12','e10adc3949ba59abbe56e057f20f883e',1,NULL,'tes6tssq2771rjrlktu681m1jtgzp7m3',1,NULL,1,1.3300,0,1661614195,1.3300,'',0,0,0,0,1,'',0,'','','',0,0,0.0000,0.0000,0,0,'0,U103,',0.0000,0,0);
/*!40000 ALTER TABLE `pay_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_member_agbalance`
--

DROP TABLE IF EXISTS `pay_member_agbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_member_agbalance` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `uid` int(15) NOT NULL COMMENT '用户id',
  `ag_uid` int(15) NOT NULL,
  `agbalance` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `updatetime` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_member_agbalance`
--

LOCK TABLES `pay_member_agbalance` WRITE;
/*!40000 ALTER TABLE `pay_member_agbalance` DISABLE KEYS */;
INSERT INTO `pay_member_agbalance` VALUES (1,56,53,60.9990,NULL),(2,4,67,117.8654,NULL),(3,71,70,9.9700,NULL),(4,68,68,1.9940,NULL),(5,75,75,7.9790,NULL),(6,80,80,0.0100,NULL),(7,78,75,0.0196,NULL),(8,85,82,1.0470,NULL),(9,86,75,3.9970,NULL),(10,4,4,4.5000,NULL),(11,86,68,0.9970,NULL),(12,4,82,0.0600,NULL),(13,82,82,0.0600,NULL),(14,5,5,7.9760,NULL),(15,5,75,0.7976,NULL);
/*!40000 ALTER TABLE `pay_member_agbalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_member_agent_cate`
--

DROP TABLE IF EXISTS `pay_member_agent_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_member_agent_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(50) DEFAULT NULL COMMENT '等级名',
  `desc` varchar(255) DEFAULT NULL COMMENT '等级描述',
  `ctime` int(11) DEFAULT '0' COMMENT '添加时间',
  `sort` int(11) DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_member_agent_cate`
--

LOCK TABLES `pay_member_agent_cate` WRITE;
/*!40000 ALTER TABLE `pay_member_agent_cate` DISABLE KEYS */;
INSERT INTO `pay_member_agent_cate` VALUES (4,'普通商户','',1522638122,99),(5,'普通代理商户','',1522638122,99),(6,'中级代理商户','',1522638122,99),(7,'高级代理商户','',1522638122,99),(8,'码商','',1555502645,99);
/*!40000 ALTER TABLE `pay_member_agent_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_moneychange`
--

DROP TABLE IF EXISTS `pay_moneychange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_moneychange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商户编号',
  `ymoney` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '原金额',
  `money` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '变动金额',
  `gmoney` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '变动后金额',
  `datetime` datetime DEFAULT NULL COMMENT '修改时间',
  `transid` varchar(50) DEFAULT NULL COMMENT '交易流水号',
  `tongdao` smallint(6) unsigned DEFAULT '0' COMMENT '支付通道ID',
  `lx` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `tcuserid` int(11) DEFAULT NULL,
  `tcdengji` int(11) DEFAULT NULL,
  `orderid` varchar(50) DEFAULT NULL COMMENT '订单号',
  `contentstr` varchar(255) DEFAULT NULL COMMENT '备注',
  `t` int(4) NOT NULL DEFAULT '0' COMMENT '结算方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_moneychange`
--

LOCK TABLES `pay_moneychange` WRITE;
/*!40000 ALTER TABLE `pay_moneychange` DISABLE KEYS */;
INSERT INTO `pay_moneychange` VALUES (11,102,85.0000,0.5500,85.5500,'2022-08-27 22:54:19','20220827225105575049',931,1,NULL,NULL,'C20220827225105579783','C20220827225105579783订单充值,结算方式：t+0',0),(12,102,85.5500,0.2500,85.8000,'2022-08-27 22:59:49','20220827225559102505',931,1,NULL,NULL,'C20220827225559320557','C20220827225559320557订单充值,结算方式：t+0',0),(13,102,85.8000,0.0100,85.8100,'2022-08-27 23:19:34','20220827231927102989',931,1,NULL,NULL,'C20220827231927837358','C20220827231927837358订单充值,结算方式：t+0',0),(14,103,0.0000,1.3300,1.3300,'2022-08-27 23:29:55','20220827232912569998',931,1,NULL,NULL,'C20220827232912137104','C20220827232912137104订单充值,结算方式：t+0',0),(15,102,85.8100,21.0000,106.8100,'2022-09-01 04:43:15','20220901044242505755',929,1,NULL,NULL,'20220901044242505510','20220901044242505510订单充值,结算方式：t+0',0),(16,102,106.8100,10.0000,116.8100,'2022-09-01 04:46:56','20220901044621100102',931,1,NULL,NULL,'20220901044621100100','20220901044621100100订单充值,结算方式：t+0',0),(17,102,116.8100,11.0000,127.8100,'2022-09-01 04:59:34','20220901045910101495',931,1,NULL,NULL,'20220901045909100101','20220901045909100101订单充值,结算方式：t+0',0),(18,102,127.8100,11.0000,138.8100,'2022-09-01 05:00:47','20220901050039559797',929,1,NULL,NULL,'20220901050039555753','20220901050039555753订单充值,结算方式：t+0',0),(19,102,138.8100,22.0000,160.8100,'2022-09-01 05:08:33','20220901050804524956',931,1,NULL,NULL,'20220901050803515698','20220901050803515698订单充值,结算方式：t+0',0),(20,102,160.8100,10.0000,170.8100,'2022-09-01 05:14:56','20220901051427515254',929,1,NULL,NULL,'20220901051427514956','20220901051427514956订单充值,结算方式：t+0',0),(21,102,170.8100,16.2000,187.0100,'2022-09-01 05:27:46','20220901052702545610',929,1,NULL,NULL,'20220901052702545398','20220901052702545398订单充值,结算方式：t+0',0),(22,102,187.0100,11.0000,198.0100,'2022-09-01 05:42:53','20220901054230549952',929,1,NULL,NULL,'20220901054230549798','20220901054230549798订单充值,结算方式：t+0',0),(23,102,198.0100,24.5000,222.5100,'2022-09-01 05:43:00','20220901054005539755',929,1,NULL,NULL,'20220901054005535597','20220901054005535597订单充值,结算方式：t+0',0),(24,102,222.5100,11.0000,233.5100,'2022-09-01 05:47:53','20220901054727102565',933,1,NULL,NULL,'C20220901054727442827','C20220901054727442827订单充值,结算方式：t+0',0);
/*!40000 ALTER TABLE `pay_moneychange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_order`
--

DROP TABLE IF EXISTS `pay_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_memberid` varchar(100) NOT NULL COMMENT '商户编号',
  `pay_orderid` varchar(100) NOT NULL COMMENT '系统订单号',
  `pay_amount` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000',
  `pay_poundage` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000',
  `pay_actualamount` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000',
  `pay_applydate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单创建日期',
  `pay_successdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单支付成功时间',
  `pay_bankcode` varchar(100) DEFAULT NULL COMMENT '银行编码',
  `pay_notifyurl` varchar(500) NOT NULL COMMENT '商家异步通知地址',
  `pay_callbackurl` varchar(500) NOT NULL COMMENT '商家页面通知地址',
  `pay_bankname` varchar(300) DEFAULT NULL,
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态: 0 未支付 1 已支付未返回 2 已支付已返回 3 超时订单 4已被抢单',
  `pay_productname` varchar(300) DEFAULT NULL COMMENT '商品名称',
  `pay_tongdao` varchar(50) DEFAULT NULL,
  `pay_zh_tongdao` varchar(50) DEFAULT NULL,
  `pay_tjurl` varchar(1000) DEFAULT NULL,
  `out_trade_id` varchar(50) NOT NULL COMMENT '商户订单号',
  `num` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '已补发次数',
  `memberid` varchar(100) DEFAULT NULL COMMENT '支付渠道商家号',
  `key` varchar(500) DEFAULT NULL COMMENT '支付渠道密钥',
  `account` varchar(100) DEFAULT NULL COMMENT '渠道账号',
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除订单 1 删除 0 未删',
  `ddlx` int(11) DEFAULT '0',
  `pay_ytongdao` varchar(50) DEFAULT NULL,
  `pay_yzh_tongdao` varchar(50) DEFAULT NULL,
  `xx` smallint(6) unsigned NOT NULL DEFAULT '0',
  `attach` text CHARACTER SET utf8mb4 COMMENT '商家附加字段,原样返回',
  `pay_channel_account` varchar(255) DEFAULT NULL COMMENT '通道账户',
  `cost` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '成本',
  `cost_rate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '成本费率',
  `account_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '子账号id',
  `channel_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '渠道id',
  `t` tinyint(2) NOT NULL DEFAULT '1' COMMENT '结算周期（计算费率）',
  `last_reissue_time` int(11) NOT NULL DEFAULT '11' COMMENT '最后补发时间',
  `lock_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单所属人',
  `qrurl` varchar(5555) NOT NULL,
  `pay_rand_amount` decimal(15,4) DEFAULT NULL COMMENT '随机金额',
  `account_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0系统1用户2码商',
  `is_mianqian` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1免签0官方',
  `is_pause` tinyint(1) NOT NULL DEFAULT '0' COMMENT '码商冻结',
  `code_rate_money` decimal(11,4) NOT NULL DEFAULT '0.0000' COMMENT '码商佣金',
  `is_budan` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不是1代表是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IND_ORD` (`pay_orderid`),
  KEY `account_id` (`account_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1550 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_order`
--

LOCK TABLES `pay_order` WRITE;
/*!40000 ALTER TABLE `pay_order` DISABLE KEYS */;
INSERT INTO `pay_order` VALUES (1530,'10102','20220827225105575049',0.5500,0.0000,0.5500,1661611865,1661612059,'931','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','Adapay支付宝H5',2,'收款','Adapayalih5','Adapay支付宝H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220827225105579783',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,1,'Adapayalih5','标题',0,'','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1531,'10102','20220827225559102505',0.2500,0.0000,0.2500,1661612159,1661612389,'931','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','Adapay支付宝H5',2,'收款','Adapayalih5','Adapay支付宝H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220827225559320557',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,1,'Adapayalih5','标题',0,'','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1532,'10000','20220827225607559710',0.0100,0.0000,0.0100,1661612167,0,'903','http://qdd.iun.cc/Pay_Test_notify.html','http://qdd.iun.cc/Pay_Test_callback.html',NULL,0,'测试订单','Adapayalih5','Adapay支付宝H5','http://qdd.iun.cc/Pay_Test_addOrder_aid_334_cid_257.html','CS20220827225603574142',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,1,'Adapayalih5','标题',0,'','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1533,'10103','20220827225811519798',0.3300,0.0000,0.3300,1661612291,0,'931','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','Adapay支付宝H5',0,'收款','Adapayalih5','Adapay支付宝H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220827225811167033',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,1,'Adapayalih5','标题',0,'','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1534,'10102','20220827230202974852',0.0100,0.0000,0.0100,1661612522,0,'931','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','Adapay支付宝H5',0,'收款','Adapayalih5','Adapay支付宝H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220827230201408977',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,1,'Adapayalih5','标题',0,'','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1535,'10102','20220827231920565754',0.0100,0.0000,0.0100,1661613560,0,'929','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','鑫鑫微信H5',0,'收款','Xovip','鑫鑫微信H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220827231920587643',0,'10044','7935804CE032A3','1000',0,1,'Xovip','Xovip支付宝',0,'','10044',0.0000,0.0000,332,255,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1536,'10102','20220827231927102989',0.0100,0.0000,0.0100,1661613567,1661613574,'931','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','Adapay支付宝H5',2,'收款','Adapayalih5','Adapay支付宝H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220827231927837358',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,1,'Adapayalih5','标题',0,'','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1537,'10102','20220827232629535256',1.2000,0.0000,1.2000,1661613989,0,'931','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','Adapay支付宝H5',0,'收款','Adapayalih5','Adapay支付宝H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220827232629756515',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,1,'Adapayalih5','标题',0,'','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1538,'10103','20220827232912569998',1.3300,0.0000,1.3300,1661614152,1661614195,'931','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','Adapay支付宝H5',2,'收款','Adapayalih5','Adapay支付宝H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220827232912137104',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,1,'Adapayalih5','标题',0,'','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1539,'10102','20220830204932999797',150.0000,0.0000,150.0000,1661863772,0,'929','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','鑫鑫微信H5',0,'收款','Xovip','鑫鑫微信H5','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220830204932104427',0,'10044','7935804CE032A3','1000',0,1,'Xovip','Xovip支付宝',0,'','10044',0.0000,0.0000,332,255,0,11,0,0,'',NULL,0,0,0,0.0000,0),(1540,'10102','20220901044242505755',21.0000,0.0000,21.0000,1661978562,1661978595,'929','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','鑫鑫微信H5',1,'MIUI小米小米手机4','Xovip','鑫鑫微信H5','http://2022.juhe.fk08.cn/','20220901044242505510',0,'10044','7935804CE032A3','1000',0,0,'Xovip','Xovip支付宝',0,'1234|456','10044',0.0000,0.0000,332,255,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1541,'10102','20220901044621100102',10.0000,0.0000,10.0000,1661978781,1661978816,'931','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','Adapay支付宝H5',1,'MIUI小米小米手机4','Adapayalih5','Adapay支付宝H5','http://2022.juhe.fk08.cn/','20220901044621100100',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,0,'Adapayalih5','标题',0,'1234|456','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1542,'10102','20220901045910101495',11.0000,0.0000,11.0000,1661979550,1661979574,'931','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','Adapay支付宝H5',2,'MIUI小米小米手机4','Adapayalih5','Adapay支付宝H5','http://2022.juhe.fk08.cn/','20220901045909100101',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,0,'Adapayalih5','标题',0,'1234|456','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1543,'10102','20220901050039559797',11.0000,0.0000,11.0000,1661979639,1661979647,'929','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','鑫鑫微信H5',2,'MIUI小米小米手机4','Xovip','鑫鑫微信H5','http://2022.juhe.fk08.cn/','20220901050039555753',0,'10044','7935804CE032A3','1000',0,0,'Xovip','Xovip支付宝',0,'1234|456','10044',0.0000,0.0000,332,255,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1544,'10102','20220901050804524956',22.0000,0.0000,22.0000,1661980084,1661980113,'931','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','Adapay支付宝H5',2,'MIUI小米小米手机4','Adapayalih5','Adapay支付宝H5','http://2022.juhe.fk08.cn/','20220901050803515698',0,'api_live_afead505-6050-4dfb-b9ce-434d77cd3673','MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL5kOb/0oKebLTjx 5EoUkiSpYeclw8b5+HFtFuKs0MEK/rO8GaD/7nWkW+EZbWGfpAxVpy5NOfqaeOM3 NoIGRxFmURaGd4BdriAk25xAmpLgx29gUN/+gGSV3Lyj0pPaUiws6+HLEYgBzb9d cdsLxm4j+VCxv+A49JMrf/+h14vdAgMBAAECgYEAjkh2hAa8PSWRsTnMorQm13Ei Mk0dt0i+K34cGUCPLYUa/ZU4DgLV4WL4KwwGm2tjfLhSHR8nkin4580uVhN87bDJ 8yCQBF7FI6xICw4/LTwN4vJxyMb9j9IgJCZHIpRgh3A/36O0HugDn7fIfgvDSLYq imXRi4NoTxanprF/VwECQQDjdro2EFXXSwo8fKqPxYW7Wdleoz+YXA0TpLzON5Bm FGnhntsHQTWwKnvOah/vkv75sX33+PsiyeQ+Uj7d7OSdA','app_2abe437b-bb34-4e7b-b3d3-efd4a5c1fcda',0,0,'Adapayalih5','标题',0,'1234|456','腾冲云智科技有限公司',0.0000,0.0000,334,257,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1545,'10102','20220901051427515254',10.0000,0.0000,10.0000,1661980467,1661980496,'929','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','鑫鑫微信H5',2,'MIUI小米小米手机4','Xovip','鑫鑫微信H5','http://2022.juhe.fk08.cn/','20220901051427514956',0,'10044','7935804CE032A3','1000',0,0,'Xovip','Xovip支付宝',0,'1234|456','10044',0.0000,0.0000,332,255,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1546,'10102','20220901052702545610',16.2000,0.0000,16.2000,1661981222,1661981266,'929','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','鑫鑫微信H5',2,'MIUI小米小米手机4','Xovip','鑫鑫微信H5','http://2022.juhe.fk08.cn/','20220901052702545398',0,'10044','7935804CE032A3','1000',0,0,'Xovip','Xovip支付宝',0,'1234|456','10044',0.0000,0.0000,332,255,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1547,'10102','20220901054005539755',24.5000,0.0000,24.5000,1661982005,1661982180,'929','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','鑫鑫微信H5',2,'MIUI小米小米手机4','Xovip','鑫鑫微信H5','http://2022.juhe.fk08.cn/','20220901054005535597',0,'10044','7935804CE032A3','1000',0,0,'Xovip','Xovip支付宝',0,'1234|456','10044',0.0000,0.0000,332,255,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1548,'10102','20220901054230549952',11.0000,0.0000,11.0000,1661982150,1661982173,'929','http://2022.juhe.fk08.cn/Pay_JuHe_notifyurl.html','http://2022.juhe.fk08.cn/Pay_JuHe_callbackurl.html','鑫鑫微信H5',2,'MIUI小米小米手机4','Xovip','鑫鑫微信H5','http://2022.juhe.fk08.cn/','20220901054230549798',0,'10044','7935804CE032A3','1003',0,0,'Xovip','Xovip支付宝',0,'1234|456','10044',0.0000,0.0000,332,255,0,11,0,0,'',NULL,0,0,0,0.0000,1),(1549,'10102','20220901054727102565',11.0000,0.0000,11.0000,1661982447,1661982473,'933','http://qdd.iun.cc/Pay_Charges_notify.html','http://qdd.iun.cc/Pay_Charges_callback.html','JuHe',2,'收款','JuHe','JuHe','http://qdd.iun.cc/Pay_Charges_checkout.html','C20220901054727442827',0,'10001','1avr3a100bvmsxfprn4f0u09dxrpini4','926',0,1,'JuHe','支付',0,'','10001',0.0000,0.0000,336,259,0,11,0,0,'',NULL,0,0,0,0.0000,0);
/*!40000 ALTER TABLE `pay_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_pay_channel_extend_fields`
--

DROP TABLE IF EXISTS `pay_pay_channel_extend_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_pay_channel_extend_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL DEFAULT '0' COMMENT '代付渠道ID',
  `code` varchar(64) NOT NULL DEFAULT '' COMMENT '代付渠道代码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '扩展字段名',
  `alias` varchar(50) NOT NULL DEFAULT '' COMMENT '扩展字段别名',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `etime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_pay_channel_extend_fields`
--

LOCK TABLES `pay_pay_channel_extend_fields` WRITE;
/*!40000 ALTER TABLE `pay_pay_channel_extend_fields` DISABLE KEYS */;
INSERT INTO `pay_pay_channel_extend_fields` VALUES (1,1,'Yibao','bankProvinceName','银行卡的所在省名称','',1533622880,1533622880),(2,1,'Yibao','bankProvinceCode','银行卡的所在省编码','',1533622891,1533622891),(3,1,'Yibao','bankCityName','银行卡的所在市名称','',1533622901,1533622901),(4,1,'Yibao','bankCityCode','银行卡的所在市编码','',1533622911,1533622911),(5,1,'Yibao','bankAreaName','银行卡的所在区名称','',1533622932,1533622932),(6,1,'Yibao','bankAreaCode','银行卡的所在区编码','',1533622945,1533622945),(7,1,'Yibao','bankId','银行卡的开户行编号','',1533622956,1533622956),(8,1,'Yibao','bankUserCert','银行卡的持卡人身份证','',1533622969,1533622969),(9,1,'Yibao','bankUserPhone','银行卡的预留手机号','',1533622991,1533622991),(11,2,'qtpay','lhh','联行号','必填',1537721443,1537721443);
/*!40000 ALTER TABLE `pay_pay_channel_extend_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_pay_for_another`
--

DROP TABLE IF EXISTS `pay_pay_for_another`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_pay_for_another` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `code` varchar(64) NOT NULL COMMENT '代付代码',
  `title` varchar(64) NOT NULL COMMENT '代付名称',
  `mch_id` varchar(255) NOT NULL DEFAULT ' ' COMMENT '商户号',
  `appid` varchar(100) NOT NULL DEFAULT ' ' COMMENT '应用APPID',
  `appsecret` varchar(100) NOT NULL DEFAULT ' ' COMMENT '应用密钥',
  `signkey` varchar(500) NOT NULL DEFAULT ' ' COMMENT '加密的秘钥',
  `public_key` varchar(1000) NOT NULL DEFAULT '  ' COMMENT '加密的公钥',
  `private_key` varchar(1000) NOT NULL DEFAULT '  ' COMMENT '加密的私钥',
  `exec_gateway` varchar(255) NOT NULL DEFAULT ' ' COMMENT '请求代付的地址',
  `query_gateway` varchar(255) NOT NULL DEFAULT ' ' COMMENT '查询代付的地址',
  `serverreturn` varchar(255) NOT NULL DEFAULT ' ' COMMENT '服务器通知网址',
  `unlockdomain` varchar(255) NOT NULL DEFAULT ' ' COMMENT '防封域名',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更改时间',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1开启 0关闭',
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认：1是，0否',
  `cost_rate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '成本费率',
  `rate_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '费率类型：按单笔收费0，按比例收费：1',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `updatetime` (`updatetime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='代付通道表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_pay_for_another`
--

LOCK TABLES `pay_pay_for_another` WRITE;
/*!40000 ALTER TABLE `pay_pay_for_another` DISABLE KEYS */;
INSERT INTO `pay_pay_for_another` VALUES (2,'qtpay','代付一号','12345678','','','abcdefg','','','','','','',1548600691,1,0,0.1500,0);
/*!40000 ALTER TABLE `pay_pay_for_another` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_paylog`
--

DROP TABLE IF EXISTS `pay_paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_paylog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `out_trade_no` varchar(50) NOT NULL,
  `result_code` varchar(50) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `fromuser` varchar(50) NOT NULL,
  `time_end` int(11) unsigned NOT NULL DEFAULT '0',
  `total_fee` smallint(6) unsigned NOT NULL DEFAULT '0',
  `payname` varchar(50) NOT NULL,
  `bank_type` varchar(20) DEFAULT NULL,
  `trade_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IND_TRD` (`transaction_id`),
  UNIQUE KEY `IND_ORD` (`out_trade_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_paylog`
--

LOCK TABLES `pay_paylog` WRITE;
/*!40000 ALTER TABLE `pay_paylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_paylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_product`
--

DROP TABLE IF EXISTS `pay_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '通道名称',
  `code` varchar(50) NOT NULL COMMENT '通道代码',
  `polling` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '接口模式 0 单独 1 轮询',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付类型 1 微信扫码 2 微信H5 3 支付宝扫码 4 支付宝H5 5 网银跳转 6网银直连  7 百度钱包  8 QQ钱包 9 京东钱包',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `isdisplay` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户端显示 1 显示 0 不显示',
  `channel` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '通道ID',
  `weight` text COMMENT '平台默认通道权重',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=934 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_product`
--

LOCK TABLES `pay_product` WRITE;
/*!40000 ALTER TABLE `pay_product` DISABLE KEYS */;
INSERT INTO `pay_product` VALUES (925,'悦和支付宝H5','YueHe',0,4,0,0,251,''),(926,'王子杉德微信扫码','ShanWxH5',0,1,0,0,252,''),(927,'王子杉德-支付宝扫码','Shanalipaysma',0,3,0,0,253,''),(928,'衫德-旭日支付宝','Shanxralipayh5',0,4,0,0,254,''),(929,'鑫鑫微信H5','Xinxinwxh5',0,2,1,1,255,''),(930,'鑫鑫支付宝','Xinxinalipay',0,4,0,0,256,''),(931,'Adapay支付宝H5','Adapayalih5',0,4,1,1,257,''),(932,'衫德H5包装支付宝生活号	','Shandebzh5',0,4,1,1,258,''),(933,'JuHe','JuHe',0,2,1,1,259,'');
/*!40000 ALTER TABLE `pay_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_product_user`
--

DROP TABLE IF EXISTS `pay_product_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_product_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT ' ',
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商户编号',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '商户通道ID',
  `polling` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '接口模式：0 单独 1 轮询',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '通道状态 0 关闭 1 启用',
  `channel` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '指定单独通道ID',
  `weight` varchar(255) DEFAULT NULL COMMENT '通道权重',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=726 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_product_user`
--

LOCK TABLES `pay_product_user` WRITE;
/*!40000 ALTER TABLE `pay_product_user` DISABLE KEYS */;
INSERT INTO `pay_product_user` VALUES (1,180762223,901,0,1,200,''),(2,180762223,902,0,1,199,''),(3,180762223,903,1,1,212,'201:1|212:2'),(4,180762223,904,0,1,211,'202:1|211:'),(5,180762223,905,0,1,0,''),(6,180762223,907,0,0,0,''),(7,180762223,908,0,1,203,''),(8,180762223,909,0,0,0,''),(9,180762223,910,0,0,0,''),(10,180768684,901,0,0,0,''),(11,180768684,902,0,0,0,''),(12,180768684,903,0,1,201,''),(13,180768684,904,0,1,202,'202:1'),(14,180768684,905,0,0,0,''),(15,180768684,907,0,0,0,''),(16,180768684,908,0,0,0,''),(17,180768684,909,0,0,0,''),(18,180768684,910,0,0,0,''),(19,180751041,901,0,0,0,''),(20,180751041,902,0,0,0,''),(21,180751041,903,0,0,0,'201:|204:'),(22,180751041,904,0,0,0,''),(23,180751041,905,0,0,0,''),(24,180751041,907,0,1,0,''),(25,180751041,908,0,0,0,''),(26,180751041,909,0,0,0,''),(27,180751041,910,0,0,0,''),(28,180751041,911,0,1,205,''),(29,180751041,912,0,1,206,''),(30,180762223,911,0,1,0,''),(31,180762223,912,1,0,0,''),(32,180768697,901,0,1,200,''),(33,180768697,902,0,0,0,''),(34,180768697,903,0,0,0,''),(35,180768697,904,0,0,0,''),(36,180768697,905,0,0,0,''),(37,180768697,907,0,0,0,''),(38,180768697,908,0,0,0,''),(39,180768697,909,0,0,0,''),(40,180768697,910,0,0,0,''),(41,180768697,911,0,0,0,''),(42,180768697,912,0,0,0,''),(43,180768700,901,1,1,0,'200:'),(44,180768700,902,1,1,0,'199:'),(45,180768700,903,1,1,0,'201:|204:'),(46,180768700,904,1,1,0,'202:'),(47,180768700,905,0,0,0,''),(48,180768700,907,0,0,0,''),(49,180768700,908,0,0,0,''),(50,180768700,909,0,0,0,''),(51,180768700,910,0,0,0,''),(52,180768700,911,0,0,0,''),(53,180768700,912,0,0,0,''),(54,180762223,913,0,1,207,''),(55,180762223,914,0,1,207,''),(56,180768704,901,1,1,0,'200:'),(57,180768704,902,0,1,199,''),(58,180768704,903,0,1,201,''),(59,180768704,904,0,1,202,''),(60,180768704,905,0,0,200,''),(61,180768704,907,0,0,0,''),(62,180768704,908,0,1,203,''),(63,180768704,909,0,0,0,''),(64,180768704,910,0,0,0,''),(65,180768704,911,0,0,0,''),(66,180768704,912,0,0,0,''),(67,180768710,901,0,1,0,''),(68,180768710,902,0,1,0,''),(69,180768710,903,0,1,0,''),(70,180768710,904,0,1,0,''),(71,180768710,905,0,1,0,''),(72,180768710,907,0,1,0,''),(73,180768710,908,0,1,0,''),(74,180768710,909,0,1,0,''),(75,180768710,910,0,1,0,''),(76,180768710,911,0,1,0,''),(77,180768710,912,0,1,0,''),(78,180768710,915,0,1,0,''),(79,180768715,901,0,1,0,''),(80,180768715,902,0,1,0,''),(81,180768715,903,0,1,0,''),(82,180768715,904,0,0,0,''),(83,180768715,905,0,0,0,''),(84,180768715,907,0,0,0,''),(85,180768715,908,0,0,0,''),(86,180768715,909,0,0,0,''),(87,180768715,910,0,0,0,''),(88,180768715,911,0,0,0,''),(89,180768715,912,0,0,0,''),(90,180768715,915,0,0,0,''),(91,180768715,916,0,0,0,''),(92,180768716,901,0,1,0,''),(93,180768716,902,0,1,0,''),(94,180768716,903,0,1,0,''),(95,180768716,904,0,0,0,''),(96,180768716,905,0,0,0,''),(97,180768716,907,0,0,0,''),(98,180768716,908,0,0,0,''),(99,180768716,909,0,0,0,''),(100,180768716,910,0,0,0,''),(101,180768716,911,0,0,0,''),(102,180768716,912,0,0,0,''),(103,180768716,915,0,0,0,''),(104,180768716,916,0,0,0,''),(105,180768710,916,0,1,0,''),(106,180762223,916,0,1,0,''),(107,180768728,901,0,0,0,''),(108,180768728,902,0,1,0,''),(109,180768728,903,0,1,0,''),(110,180768728,904,0,1,0,''),(111,180768728,905,0,0,0,''),(112,180768728,908,0,0,0,''),(113,180768728,911,0,0,0,''),(114,180768728,916,0,0,0,''),(115,180768731,901,0,0,0,''),(116,180768731,902,0,1,199,''),(117,180768731,903,0,1,213,'201:2|213:1'),(118,180768731,904,0,1,214,'202:2|214:1'),(119,180768731,905,0,0,0,''),(120,180768731,908,0,0,0,''),(121,180768731,911,0,1,209,''),(122,180768731,916,0,1,210,''),(123,180768736,901,0,0,0,''),(124,180768736,902,0,1,199,''),(125,180768736,903,0,1,212,''),(126,180768736,904,0,1,214,''),(127,180768736,911,0,0,0,''),(128,180768736,916,0,0,0,''),(129,180768735,901,0,0,0,''),(130,180768735,902,0,0,0,''),(131,180768735,903,0,1,213,''),(132,180768735,904,0,1,214,''),(133,180768735,911,0,0,0,''),(134,180768735,916,0,0,0,''),(135,180768733,901,0,0,0,''),(136,180768733,902,0,1,199,''),(137,180768733,903,0,1,213,'201:1|213:2'),(138,180768733,904,0,1,214,'202:1|214:2'),(139,180768733,911,0,1,209,''),(140,180768733,916,0,1,210,''),(141,180768730,901,0,0,0,''),(142,180768730,902,0,1,199,''),(143,180768730,903,0,1,201,''),(144,180768730,904,0,1,202,''),(145,180768730,911,0,1,209,''),(146,180768730,916,0,1,210,''),(147,180768734,901,0,0,0,''),(148,180768734,902,0,1,199,''),(149,180768734,903,0,1,201,''),(150,180768734,904,0,1,202,''),(151,180768734,911,0,1,209,''),(152,180768734,916,0,1,210,''),(153,180768732,901,0,0,0,''),(154,180768732,902,0,1,199,''),(155,180768732,903,0,1,213,'213:2'),(156,180768732,904,0,1,214,'202:1|214:2'),(157,180768732,911,0,1,209,''),(158,180768732,916,0,1,210,''),(159,180768737,901,0,0,0,''),(160,180768737,902,0,1,199,''),(161,180768737,903,0,1,201,''),(162,180768737,904,0,1,202,''),(163,180768737,911,0,1,209,''),(164,180768737,916,0,1,210,''),(165,180768738,901,0,0,0,''),(166,180768738,902,0,1,199,''),(167,180768738,903,0,1,201,''),(168,180768738,904,0,1,202,''),(169,180768738,911,0,1,209,''),(170,180768738,916,0,1,210,''),(171,180768741,901,0,0,0,''),(172,180768741,902,0,1,199,''),(173,180768741,903,0,1,201,''),(174,180768741,904,0,1,202,''),(175,180768741,911,0,1,209,''),(176,180768741,916,0,1,210,''),(177,180768740,901,0,0,0,''),(178,180768740,902,0,1,199,''),(179,180768740,903,0,1,201,''),(180,180768740,904,0,1,202,''),(181,180768740,911,0,1,209,''),(182,180768740,916,0,1,210,''),(183,180768742,901,0,0,0,''),(184,180768742,902,0,1,199,''),(185,180768742,903,0,1,213,'201:1|213:2'),(186,180768742,904,0,1,214,'202:1|214:2'),(187,180768742,911,0,1,209,''),(188,180768742,916,0,1,210,''),(189,180768743,901,0,0,0,''),(190,180768743,902,0,1,199,''),(191,180768743,903,0,1,201,'201:|212:'),(192,180768743,904,0,1,202,'202:|211:'),(193,180768743,911,0,1,0,''),(194,180768743,916,0,1,0,''),(195,180768750,901,0,0,0,''),(196,180768750,902,0,1,199,''),(197,180768750,903,0,1,212,'212:1|213:2'),(198,180768750,904,0,1,211,'211:1|214:2'),(199,180768750,911,0,1,209,''),(200,180768750,916,0,1,210,''),(201,180768749,901,0,0,0,''),(202,180768749,902,0,0,199,''),(203,180768749,903,0,1,213,'212:1|213:2'),(204,180768749,904,0,1,214,'211:1|214:2'),(205,180768749,911,0,0,209,''),(206,180768749,916,0,0,210,''),(207,180768748,901,0,0,0,''),(208,180768748,902,0,0,199,''),(209,180768748,903,0,1,212,'201:1|213:2'),(210,180768748,904,0,1,211,'211:1|214:2'),(211,180768748,911,0,0,209,''),(212,180768748,916,0,0,210,''),(213,180768747,901,0,0,0,''),(214,180768747,902,0,1,199,''),(215,180768747,903,0,1,212,'212:1|213:2'),(216,180768747,904,0,1,211,''),(217,180768747,911,1,0,209,''),(218,180768747,916,0,1,210,''),(219,180768746,901,0,0,0,''),(220,180768746,902,0,1,199,''),(221,180768746,903,0,1,212,'201:1|213:2'),(222,180768746,904,0,1,211,'202:1|214:2'),(223,180768746,911,0,1,209,''),(224,180768746,916,0,1,210,''),(225,180768745,901,0,0,0,''),(226,180768745,902,0,1,199,''),(227,180768745,903,0,1,201,'201:1|212:2'),(228,180768745,904,0,1,202,'202:1|211:2'),(229,180768745,911,0,1,209,''),(230,180768745,916,0,1,210,''),(231,180768744,901,0,0,0,''),(232,180768744,902,0,1,199,''),(233,180768744,903,0,1,212,'201:1|213:2'),(234,180768744,904,0,1,211,'202:1|214:2'),(235,180768744,911,0,1,209,''),(236,180768744,916,0,1,210,''),(237,180768751,901,0,0,0,''),(238,180768751,902,0,0,199,''),(239,180768751,903,0,1,213,'212:1'),(240,180768751,904,0,1,214,'211:1|214:2'),(241,180768751,911,0,1,0,''),(242,180768751,916,0,1,0,''),(243,2,901,0,1,0,''),(244,2,902,0,1,0,''),(245,2,903,0,1,0,''),(246,2,904,0,1,0,''),(247,2,911,0,1,0,''),(248,2,916,0,1,0,''),(249,2,905,0,1,0,''),(250,2,907,0,1,0,''),(251,2,908,0,1,0,''),(252,2,909,0,1,0,''),(253,2,910,0,1,0,''),(254,2,912,0,1,0,''),(255,2,918,0,1,0,''),(256,13,901,0,0,218,''),(257,13,902,0,1,228,''),(258,13,903,0,0,0,''),(259,13,904,0,0,0,''),(260,13,905,0,0,0,''),(261,13,907,0,0,0,''),(262,13,908,0,0,0,''),(263,13,909,0,0,0,''),(264,13,910,0,0,0,''),(265,13,911,0,0,0,''),(266,13,912,0,0,0,''),(267,13,916,0,0,0,''),(268,13,918,0,0,0,''),(269,5,901,0,1,237,''),(270,5,902,0,1,246,''),(271,5,903,0,1,249,'215:|238:|239:|242:|244:|245:|247:|249:'),(272,5,904,0,1,233,''),(273,5,905,0,1,0,''),(274,5,907,0,1,0,''),(275,5,908,0,1,0,''),(276,5,909,0,1,0,''),(277,5,910,0,1,0,''),(278,5,911,0,1,0,''),(279,5,912,0,1,0,''),(280,5,916,0,1,0,''),(281,5,918,0,1,0,''),(282,17,901,0,1,0,''),(283,17,902,0,1,0,''),(284,17,903,0,1,0,''),(285,17,904,0,1,227,''),(286,17,905,0,1,0,''),(287,17,907,0,1,0,''),(288,17,908,0,1,0,''),(289,17,909,0,1,0,''),(290,17,910,0,1,0,''),(291,17,911,0,1,0,''),(292,17,912,0,1,0,''),(293,17,916,0,1,0,''),(294,17,918,0,1,0,''),(295,4,901,0,0,0,''),(296,4,902,0,1,246,''),(297,4,903,0,0,242,''),(298,4,904,0,0,0,''),(299,4,905,0,0,0,''),(300,4,907,0,0,0,''),(301,4,908,0,0,0,''),(302,4,909,0,0,0,''),(303,4,910,0,0,0,''),(304,4,911,0,0,0,''),(305,4,912,0,0,0,''),(306,4,916,0,0,0,''),(307,4,918,0,0,221,''),(308,19,901,0,1,218,''),(309,19,902,0,1,228,''),(310,19,903,0,1,215,''),(311,19,904,0,1,216,''),(312,19,905,0,1,0,''),(313,19,907,0,1,0,''),(314,19,908,0,1,0,''),(315,19,909,0,0,0,''),(316,19,910,0,0,0,''),(317,19,911,0,0,0,''),(318,19,912,0,0,0,''),(319,19,916,0,0,0,''),(320,19,918,0,0,0,''),(321,23,901,0,0,0,''),(322,23,902,0,0,0,''),(323,23,903,0,1,215,''),(324,23,904,0,0,0,''),(325,23,905,0,0,0,''),(326,23,907,0,0,0,''),(327,23,908,0,0,0,''),(328,23,909,0,0,0,''),(329,23,910,0,0,0,''),(330,23,911,0,0,0,''),(331,23,912,0,0,0,''),(332,23,916,0,0,0,''),(333,23,918,0,0,0,''),(490,53,901,0,0,0,''),(334,30,901,0,1,0,''),(335,30,902,0,1,0,''),(336,30,903,0,1,0,''),(337,30,904,1,1,216,'216:|227:|233:'),(338,30,905,0,1,0,''),(339,30,907,0,1,0,''),(340,30,908,0,1,0,''),(341,30,909,0,1,0,''),(342,30,910,0,1,0,''),(343,30,911,0,1,0,''),(344,30,912,0,1,0,''),(345,30,916,0,1,0,''),(346,30,918,0,1,0,''),(492,53,903,0,1,242,''),(347,31,901,0,0,218,'218:'),(348,31,902,1,1,217,'217:1|228:2|229:2'),(349,31,903,0,0,0,'215:|225:|226:|230:'),(350,31,904,0,0,0,'216:|227:|233:'),(351,31,905,0,0,0,''),(352,31,907,0,0,0,'222:|231:'),(353,31,908,0,0,0,'224:'),(354,31,909,0,0,0,''),(355,31,910,0,0,0,''),(356,31,911,0,0,0,'223:'),(357,31,912,0,0,0,''),(358,31,916,0,0,0,''),(359,31,918,0,0,0,'221:'),(360,34,901,0,0,218,''),(361,34,902,0,1,228,''),(362,34,903,0,0,0,''),(363,34,904,0,0,0,''),(364,34,905,0,0,0,''),(365,34,907,0,0,0,''),(366,34,908,0,0,0,''),(367,34,909,0,0,0,''),(368,34,910,0,0,0,''),(369,34,911,0,0,0,''),(370,34,912,0,0,0,''),(371,34,916,0,0,0,''),(372,34,918,0,0,0,''),(373,9,901,0,0,0,''),(374,9,902,1,1,229,'228:|229:'),(375,9,903,0,0,225,''),(376,9,904,0,0,0,''),(377,9,905,0,0,0,''),(378,9,907,0,0,0,''),(379,9,908,0,0,0,''),(380,9,909,0,0,0,''),(381,9,910,0,0,0,''),(382,9,911,0,0,0,''),(383,9,912,0,0,0,''),(384,9,916,0,0,0,''),(385,9,918,0,0,0,''),(386,36,901,0,0,218,''),(387,36,902,0,0,229,'229:3'),(388,36,903,0,1,225,''),(389,36,904,0,1,216,''),(390,36,905,0,0,0,''),(391,36,907,0,0,0,''),(392,36,908,0,0,0,''),(393,36,909,0,0,0,''),(394,36,910,0,0,0,''),(395,36,911,0,0,0,''),(396,36,912,0,0,0,''),(397,36,916,0,0,0,''),(398,36,918,0,0,0,''),(399,6,901,0,0,0,''),(400,6,902,0,1,228,''),(401,6,903,0,0,0,''),(402,6,904,0,0,0,''),(403,6,905,0,0,0,''),(404,6,907,0,0,0,''),(405,6,908,0,0,0,''),(406,6,909,0,0,0,''),(407,6,910,0,0,0,''),(408,6,911,0,0,0,''),(409,6,912,0,0,0,''),(410,6,916,0,0,0,''),(411,6,918,0,0,0,''),(412,37,901,0,0,0,''),(413,37,902,0,1,228,''),(414,37,903,0,0,0,''),(415,37,904,0,0,0,''),(416,37,905,0,0,0,''),(417,37,907,0,0,0,''),(418,37,908,0,0,0,''),(419,37,909,0,0,0,''),(420,37,910,0,0,0,''),(421,37,911,0,0,0,''),(422,37,912,0,0,0,''),(423,37,916,0,0,0,''),(424,37,918,0,0,0,''),(425,39,901,0,0,0,''),(426,39,902,0,1,229,''),(427,39,903,0,0,0,''),(428,39,904,0,0,0,''),(429,39,905,0,0,0,''),(430,39,907,0,0,0,''),(431,39,908,0,0,0,''),(432,39,909,0,0,0,''),(433,39,910,0,0,0,''),(434,39,911,0,0,0,''),(435,39,912,0,0,0,''),(436,39,916,0,0,0,''),(437,39,918,0,0,0,''),(438,41,901,0,0,0,''),(439,41,902,0,1,228,''),(440,41,903,0,0,0,''),(441,41,904,0,0,0,''),(442,41,905,0,0,0,''),(443,41,907,0,0,0,''),(444,41,908,0,0,0,''),(445,41,909,0,0,0,''),(446,41,910,0,0,0,''),(447,41,911,0,0,0,''),(448,41,912,0,0,0,''),(449,41,916,0,0,0,''),(450,41,918,0,0,0,''),(451,38,901,0,0,0,''),(452,38,902,1,1,0,'228:1|229:2'),(453,38,903,0,1,225,''),(454,38,904,0,0,0,''),(455,38,905,0,0,0,''),(456,38,907,0,0,0,''),(457,38,908,0,0,0,''),(458,38,909,0,0,0,''),(459,38,910,0,0,0,''),(460,38,911,0,0,0,''),(461,38,912,0,0,0,''),(462,38,916,0,0,0,''),(463,38,918,0,0,0,''),(491,53,902,0,0,0,''),(464,33,901,0,0,0,''),(465,33,902,0,0,0,''),(466,33,903,0,0,0,''),(467,33,904,0,0,0,''),(468,33,905,0,0,0,''),(469,33,907,0,0,0,''),(470,33,908,0,0,0,''),(471,33,909,0,0,0,''),(472,33,910,0,0,0,''),(473,33,911,0,0,0,''),(474,33,912,0,0,0,''),(475,33,916,0,0,0,''),(476,33,918,0,0,0,''),(477,48,901,0,0,0,''),(478,48,902,0,1,229,'217:3|228:0|229:1'),(479,48,903,0,0,0,''),(480,48,904,0,0,0,''),(481,48,905,0,0,0,''),(482,48,907,0,0,0,''),(483,48,908,0,0,0,''),(484,48,909,0,0,0,''),(485,48,910,0,0,0,''),(486,48,911,0,0,0,''),(487,48,912,0,0,0,''),(488,48,916,0,0,0,''),(489,48,918,0,0,0,''),(493,53,904,0,0,0,''),(494,53,905,0,0,0,''),(495,53,907,0,0,0,''),(496,53,908,0,0,0,''),(497,53,909,0,0,0,''),(498,53,910,0,0,0,''),(499,53,911,0,0,0,''),(500,53,912,0,0,0,''),(501,53,916,0,0,0,''),(502,53,918,0,0,0,''),(503,56,901,0,0,0,''),(504,56,902,0,0,0,''),(505,56,903,0,1,242,'215:|238:|239:|241:|242:'),(506,56,904,0,0,0,''),(507,56,905,0,0,0,''),(508,56,907,0,0,0,''),(509,56,908,0,0,0,''),(510,56,909,0,0,0,''),(511,56,910,0,0,0,''),(512,56,911,0,0,0,''),(513,56,912,0,0,0,''),(514,56,916,0,0,0,''),(515,56,918,0,0,0,''),(516,55,901,0,0,0,''),(517,55,902,0,0,0,''),(518,55,903,0,1,226,''),(519,55,904,0,0,0,''),(520,55,905,0,0,0,''),(521,55,907,0,0,0,''),(522,55,908,0,0,0,''),(523,55,909,0,0,0,''),(524,55,910,0,0,0,''),(525,55,911,0,0,0,''),(526,55,912,0,0,0,''),(527,55,916,0,0,0,''),(528,55,918,0,0,0,''),(529,61,901,0,1,0,''),(530,61,902,0,0,0,''),(531,61,903,0,1,0,''),(532,61,904,0,1,0,''),(533,61,905,0,0,0,''),(534,61,907,0,0,0,''),(535,61,908,0,0,0,''),(536,61,909,0,0,0,''),(537,61,910,0,0,0,''),(538,61,911,0,1,0,''),(539,61,912,0,1,0,''),(540,61,916,0,1,0,''),(541,61,918,0,1,221,''),(542,62,901,0,0,0,''),(543,62,902,0,0,0,''),(544,62,903,0,0,0,''),(545,62,904,0,0,0,''),(546,62,905,0,0,0,''),(547,62,907,0,0,0,''),(548,62,908,0,0,0,''),(549,62,909,0,0,0,''),(550,62,910,0,0,0,''),(551,62,911,0,0,0,''),(552,62,912,1,1,0,''),(553,62,916,1,0,0,''),(554,62,918,0,0,0,''),(555,67,901,0,0,0,''),(556,67,902,0,0,0,''),(557,67,903,0,0,0,''),(558,67,904,0,0,0,''),(559,67,905,0,0,0,''),(560,67,907,0,0,0,''),(561,67,908,0,0,0,''),(562,67,909,0,0,0,''),(563,67,910,0,0,0,''),(564,67,911,0,0,0,''),(565,67,912,0,0,0,''),(566,67,916,0,0,0,''),(567,67,918,0,0,0,''),(568,59,901,0,0,0,''),(569,59,902,0,0,0,''),(570,59,903,0,1,215,''),(571,59,904,0,1,233,''),(572,59,905,0,0,0,''),(573,59,907,0,0,0,''),(574,59,908,0,0,0,''),(575,59,909,0,0,0,''),(576,59,910,0,0,0,''),(577,59,911,0,0,0,''),(578,59,912,0,0,0,''),(579,59,916,0,0,0,''),(580,59,918,0,0,0,''),(581,4,919,0,1,238,''),(582,67,919,0,1,238,''),(583,67,920,0,1,239,''),(584,67,921,0,1,242,''),(585,68,903,0,0,0,''),(586,68,904,0,0,0,''),(587,68,919,0,1,238,''),(588,68,920,0,1,239,''),(589,68,921,0,1,242,''),(590,69,903,0,0,0,''),(591,69,904,0,0,0,''),(592,69,919,0,0,0,''),(593,69,920,0,0,0,''),(594,69,921,0,1,242,''),(595,4,920,0,1,239,''),(596,4,921,0,1,242,''),(597,70,903,0,1,215,''),(598,70,904,0,1,233,''),(599,70,919,0,0,0,''),(600,70,920,0,0,0,''),(601,70,921,0,1,242,''),(602,71,903,0,0,0,''),(603,71,904,0,0,0,''),(604,71,919,0,0,0,''),(605,71,920,0,0,0,''),(606,71,921,0,1,242,''),(607,5,919,0,1,238,''),(608,5,920,0,1,239,''),(609,5,921,0,1,242,''),(610,5,922,0,1,0,''),(611,5,923,0,1,244,''),(612,4,922,0,1,247,''),(613,4,923,0,1,244,''),(614,74,903,0,0,0,''),(615,74,904,0,0,0,''),(616,74,919,0,1,238,''),(617,74,920,0,1,239,''),(618,74,921,0,1,242,''),(619,74,922,0,1,243,''),(620,74,923,0,1,244,''),(621,75,903,0,0,0,''),(622,75,904,0,0,0,''),(623,75,919,0,1,238,''),(624,75,920,0,1,239,''),(625,75,921,0,1,242,''),(626,75,922,0,1,243,''),(627,75,923,0,1,244,''),(628,76,903,0,0,0,''),(629,76,904,0,0,0,''),(630,76,919,0,1,238,''),(631,76,920,0,1,239,''),(632,76,921,0,1,242,''),(633,76,922,0,1,243,''),(634,76,923,0,1,244,''),(635,68,922,0,1,243,''),(636,68,923,0,1,244,''),(637,78,903,0,0,0,''),(638,78,904,0,0,0,''),(639,78,919,0,1,238,''),(640,78,920,0,1,239,''),(641,78,921,0,1,242,''),(642,78,922,0,1,243,''),(643,78,923,0,1,244,''),(644,81,903,0,0,0,''),(645,81,904,0,0,0,''),(646,81,919,0,0,0,''),(647,81,920,0,0,0,''),(648,81,921,0,0,0,''),(649,81,922,0,0,0,''),(650,81,923,0,0,0,''),(651,81,924,0,1,245,''),(652,80,903,0,0,0,''),(653,80,904,0,0,0,''),(654,80,919,0,0,0,''),(655,80,920,0,0,0,''),(656,80,921,0,0,0,''),(657,80,922,0,0,0,''),(658,80,923,0,1,244,''),(659,80,924,0,1,245,''),(660,83,903,0,0,0,''),(661,83,904,0,1,233,''),(662,83,919,0,0,0,''),(663,83,920,0,0,0,''),(664,83,921,0,1,242,''),(665,83,922,0,0,0,''),(666,83,923,0,0,0,''),(667,83,924,0,0,0,''),(668,5,924,0,1,245,''),(669,82,903,0,0,0,''),(670,82,904,0,0,0,''),(671,82,919,0,1,238,''),(672,82,920,0,1,239,''),(673,82,921,0,1,242,''),(674,82,922,0,1,243,''),(675,82,923,0,1,244,''),(676,82,924,0,1,245,''),(677,85,903,0,0,0,''),(678,85,904,0,0,0,''),(679,85,919,0,1,238,''),(680,85,920,0,1,239,''),(681,85,921,0,1,242,''),(682,85,922,0,1,243,''),(683,85,923,0,1,244,''),(684,85,924,0,1,245,''),(685,4,924,0,1,245,''),(686,86,902,0,0,0,''),(687,86,903,0,1,0,''),(688,86,904,0,0,0,''),(689,86,919,0,1,238,''),(690,86,920,0,1,239,''),(691,86,921,0,1,242,''),(692,86,922,0,1,243,''),(693,86,923,0,1,244,''),(694,86,924,0,1,245,''),(695,84,902,0,0,0,''),(696,84,903,0,1,247,''),(697,84,904,0,0,0,''),(698,84,919,0,1,238,''),(699,84,920,0,1,239,''),(700,84,921,0,1,242,''),(701,84,922,0,1,247,''),(702,84,923,0,1,244,''),(703,84,924,0,1,245,''),(704,101,902,0,0,0,''),(705,101,903,0,0,0,''),(706,101,904,0,0,0,''),(707,101,919,0,0,0,''),(708,101,920,0,0,0,''),(709,101,921,0,1,242,''),(710,101,922,0,1,247,''),(711,101,923,0,0,0,''),(712,101,924,0,0,0,''),(713,83,902,0,0,0,''),(714,102,925,0,1,251,''),(715,102,926,0,1,252,''),(716,102,927,0,1,253,''),(717,102,928,0,1,254,''),(718,102,929,0,1,255,''),(719,102,930,0,1,256,''),(720,102,931,0,1,257,''),(721,102,932,0,1,258,''),(722,103,929,0,0,0,''),(723,103,931,0,1,257,''),(724,103,932,0,0,0,''),(725,102,933,0,1,259,'');
/*!40000 ALTER TABLE `pay_product_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_reconciliation`
--

DROP TABLE IF EXISTS `pay_reconciliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_reconciliation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT '0' COMMENT '用户ID',
  `order_total_count` int(11) DEFAULT '0' COMMENT '总订单数',
  `order_success_count` int(11) DEFAULT '0' COMMENT '成功订单数',
  `order_fail_count` int(11) DEFAULT '0' COMMENT '未支付订单数',
  `order_total_amount` decimal(11,4) DEFAULT '0.0000' COMMENT '订单总额',
  `order_success_amount` decimal(11,4) DEFAULT '0.0000' COMMENT '订单实付总额',
  `date` date DEFAULT NULL COMMENT '日期',
  `ctime` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_reconciliation`
--

LOCK TABLES `pay_reconciliation` WRITE;
/*!40000 ALTER TABLE `pay_reconciliation` DISABLE KEYS */;
INSERT INTO `pay_reconciliation` VALUES (1,2,0,0,0,NULL,NULL,'2018-09-25',1537847211),(2,2,0,0,0,NULL,NULL,'2018-09-24',1537847211),(3,2,0,0,0,NULL,NULL,'2018-09-27',1538043984),(4,2,0,0,0,NULL,NULL,'2018-09-26',1538043984),(5,2,0,0,0,NULL,NULL,'2018-10-10',1539141066),(6,2,0,0,0,NULL,NULL,'2018-10-09',1539141066),(7,2,0,0,0,NULL,NULL,'2018-10-08',1539141066),(8,2,0,0,0,NULL,NULL,'2018-10-07',1539141066),(9,2,0,0,0,NULL,NULL,'2018-10-06',1539141066),(10,2,0,0,0,NULL,NULL,'2018-10-05',1539141066),(11,2,0,0,0,NULL,NULL,'2018-10-04',1539141066),(12,2,0,0,0,NULL,NULL,'2018-10-03',1539141066),(13,2,0,0,0,NULL,NULL,'2018-10-02',1539141066),(14,2,0,0,0,NULL,NULL,'2018-10-01',1539141066),(15,5,0,0,0,NULL,NULL,'2018-10-16',1539694388),(16,5,0,0,0,NULL,NULL,'2018-10-15',1539694388),(17,5,0,0,0,NULL,NULL,'2018-10-14',1539694388),(18,5,0,0,0,NULL,NULL,'2018-10-17',1539707042),(19,5,0,0,0,NULL,NULL,'2018-10-18',1539867731),(20,5,0,0,0,NULL,NULL,'2018-10-20',1540038139),(21,5,0,0,0,NULL,NULL,'2018-10-19',1540038139),(22,5,0,0,0,NULL,NULL,'2018-10-21',1540064223),(23,6,0,0,0,NULL,NULL,'2018-10-30',1540909439),(24,6,0,0,0,NULL,NULL,'2018-10-29',1540909439),(25,6,0,0,0,NULL,NULL,'2018-10-28',1540909439),(26,6,0,0,0,NULL,NULL,'2018-10-27',1540909439),(27,6,0,0,0,NULL,NULL,'2018-10-26',1540909439),(28,6,0,0,0,NULL,NULL,'2018-10-25',1540909439),(29,6,0,0,0,NULL,NULL,'2018-10-24',1540909439),(30,6,0,0,0,NULL,NULL,'2018-10-23',1540909439),(31,6,0,0,0,NULL,NULL,'2018-10-22',1540909439),(32,6,0,0,0,NULL,NULL,'2018-10-21',1540909439),(33,5,0,0,0,NULL,NULL,'2018-11-01',1541003877),(34,5,0,0,0,NULL,NULL,'2018-10-31',1541003877),(35,5,0,0,0,NULL,NULL,'2018-10-30',1541003877),(36,5,0,0,0,NULL,NULL,'2018-10-29',1541003877),(37,5,0,0,0,NULL,NULL,'2018-10-28',1541003877),(38,5,0,0,0,NULL,NULL,'2018-10-27',1541003877),(39,5,0,0,0,NULL,NULL,'2018-10-26',1541003877),(40,5,0,0,0,NULL,NULL,'2018-10-25',1541003877),(41,5,0,0,0,NULL,NULL,'2018-10-24',1541003877),(42,5,0,0,0,NULL,NULL,'2018-10-23',1541003877),(43,5,0,0,0,NULL,NULL,'2018-10-22',1541003882),(44,14,0,0,0,NULL,NULL,'2018-11-03',1541259685),(45,14,0,0,0,NULL,NULL,'2018-11-02',1541259685),(46,14,0,0,0,NULL,NULL,'2018-11-01',1541259685),(47,14,0,0,0,NULL,NULL,'2018-10-31',1541259685),(48,14,0,0,0,NULL,NULL,'2018-10-30',1541259685),(49,14,0,0,0,NULL,NULL,'2018-10-29',1541259685),(50,14,0,0,0,NULL,NULL,'2018-10-28',1541259685),(51,14,0,0,0,NULL,NULL,'2018-10-27',1541259685),(52,14,0,0,0,NULL,NULL,'2018-10-26',1541259685),(53,14,0,0,0,NULL,NULL,'2018-10-25',1541259685),(54,14,0,0,0,NULL,NULL,'2018-11-06',1541443458),(55,14,0,0,0,NULL,NULL,'2018-11-05',1541443458),(56,14,0,0,0,NULL,NULL,'2018-11-04',1541443458),(57,5,12,4,8,1189.0000,396.0000,'2018-11-07',1541523096),(58,5,0,0,0,NULL,NULL,'2018-11-06',1541523096),(59,5,0,0,0,NULL,NULL,'2018-11-05',1541523096),(60,5,0,0,0,NULL,NULL,'2018-11-04',1541523096),(61,5,0,0,0,NULL,NULL,'2018-11-03',1541523096),(62,5,0,0,0,NULL,NULL,'2018-11-02',1541523096),(63,14,0,0,0,NULL,NULL,'2018-11-16',1542361195),(64,14,0,0,0,NULL,NULL,'2018-11-15',1542361195),(65,14,0,0,0,NULL,NULL,'2018-11-14',1542361195),(66,14,0,0,0,NULL,NULL,'2018-11-13',1542361195),(67,14,0,0,0,NULL,NULL,'2018-11-12',1542361195),(68,14,0,0,0,NULL,NULL,'2018-11-11',1542361195),(69,14,0,0,0,NULL,NULL,'2018-11-10',1542361195),(70,14,0,0,0,NULL,NULL,'2018-11-09',1542361195),(71,14,0,0,0,NULL,NULL,'2018-11-08',1542361195),(72,14,0,0,0,NULL,NULL,'2018-11-07',1542361195),(73,5,0,0,0,NULL,NULL,'2018-11-21',1542783404),(74,5,0,0,0,NULL,NULL,'2018-11-20',1542783404),(75,5,0,0,0,NULL,NULL,'2018-11-19',1542783404),(76,5,1,0,1,100.0000,NULL,'2018-11-18',1542783404),(77,5,4,0,4,396.0000,NULL,'2018-11-17',1542783404),(78,5,0,0,0,NULL,NULL,'2018-11-16',1542783404),(79,5,0,0,0,NULL,NULL,'2018-11-15',1542783404),(80,5,0,0,0,NULL,NULL,'2018-11-14',1542783404),(81,5,0,0,0,NULL,NULL,'2018-11-13',1542783404),(82,5,0,0,0,NULL,NULL,'2018-11-12',1542783404),(83,5,0,0,0,NULL,NULL,'2018-11-11',1542798639),(84,5,0,0,0,NULL,NULL,'2018-11-10',1542798639),(85,5,0,0,0,NULL,NULL,'2018-11-09',1542798639),(86,5,0,0,0,NULL,NULL,'2018-11-08',1542798639),(87,14,0,0,0,NULL,NULL,'2018-11-22',1542860048),(88,14,0,0,0,NULL,NULL,'2018-11-21',1542860048),(89,14,0,0,0,NULL,NULL,'2018-11-20',1542860048),(90,14,0,0,0,NULL,NULL,'2018-11-19',1542860048),(91,14,0,0,0,NULL,NULL,'2018-11-18',1542860048),(92,14,0,0,0,NULL,NULL,'2018-11-17',1542860048),(93,14,0,0,0,NULL,NULL,'2018-10-23',1542860063),(94,NULL,0,0,0,NULL,NULL,'2018-11-22',1542878867),(95,NULL,0,0,0,NULL,NULL,'2018-11-21',1542878867),(96,NULL,0,0,0,NULL,NULL,'2018-11-20',1542878867),(97,NULL,0,0,0,NULL,NULL,'2018-11-19',1542878867),(98,NULL,0,0,0,NULL,NULL,'2018-11-18',1542878867),(99,NULL,0,0,0,NULL,NULL,'2018-11-17',1542878867),(100,NULL,0,0,0,NULL,NULL,'2018-11-16',1542878867),(101,NULL,0,0,0,NULL,NULL,'2018-11-15',1542878867),(102,NULL,0,0,0,NULL,NULL,'2018-11-14',1542878867),(103,NULL,0,0,0,NULL,NULL,'2018-11-13',1542878867),(104,NULL,0,0,0,NULL,NULL,'2018-11-23',1542903537),(105,NULL,0,0,0,NULL,NULL,'2018-11-22',1542903537),(106,NULL,0,0,0,NULL,NULL,'2018-11-21',1542903537),(107,NULL,0,0,0,NULL,NULL,'2018-11-20',1542903537),(108,NULL,0,0,0,NULL,NULL,'2018-11-19',1542903537),(109,NULL,0,0,0,NULL,NULL,'2018-11-18',1542903537),(110,NULL,0,0,0,NULL,NULL,'2018-11-17',1542903537),(111,NULL,0,0,0,NULL,NULL,'2018-11-16',1542903537),(112,NULL,0,0,0,NULL,NULL,'2018-11-15',1542903537),(113,NULL,0,0,0,NULL,NULL,'2018-11-14',1542903537),(114,17,0,0,0,NULL,NULL,'2018-11-23',1542958124),(115,17,0,0,0,NULL,NULL,'2018-11-22',1542958124),(116,17,0,0,0,NULL,NULL,'2018-11-21',1542958124),(117,17,0,0,0,NULL,NULL,'2018-11-24',1543055360),(118,14,0,0,0,NULL,NULL,'2018-11-24',1543056712),(119,14,0,0,0,NULL,NULL,'2018-11-23',1543056712),(120,19,3,0,3,13.0000,NULL,'2018-11-26',1543239582),(121,19,2,0,2,2.0000,NULL,'2018-11-25',1543239582),(122,5,20,2,18,12.0800,0.0200,'2018-11-28',1543335901),(123,5,4,0,4,4.0000,NULL,'2018-11-27',1543335901),(124,5,1,0,1,1.0000,NULL,'2018-11-26',1543335901),(125,5,4,2,2,4.0000,2.0000,'2018-11-25',1543335901),(126,5,0,0,0,NULL,NULL,'2018-11-24',1543335901),(127,5,0,0,0,NULL,NULL,'2018-11-23',1543335901),(128,5,0,0,0,NULL,NULL,'2018-11-22',1543335901),(129,27,0,0,0,NULL,NULL,'2018-11-29',1543423278),(130,27,0,0,0,NULL,NULL,'2018-11-28',1543423278),(131,5,7,0,7,0.0700,NULL,'2018-11-30',1543550367),(132,5,21,1,20,0.2100,0.0100,'2018-11-29',1543550367),(133,5,16,4,12,335.0800,34.0000,'2018-12-03',1543807826),(134,5,6,0,6,0.0600,NULL,'2018-12-02',1543807826),(135,5,29,0,29,11.2900,NULL,'2018-12-01',1543807826),(136,31,0,0,0,NULL,NULL,'2018-12-03',1543808016),(137,31,0,0,0,NULL,NULL,'2018-12-02',1543808016),(138,5,19,1,18,1259.0000,11.0000,'2018-12-04',1543856540),(139,33,0,0,0,NULL,NULL,'2018-12-04',1543899953),(140,33,0,0,0,NULL,NULL,'2018-12-03',1543899953),(141,31,17,2,15,1.1600,0.0200,'2018-12-05',1543990841),(142,31,0,0,0,NULL,NULL,'2018-12-04',1543990841),(143,NULL,0,0,0,NULL,NULL,'2018-12-06',1544027500),(144,NULL,0,0,0,NULL,NULL,'2018-12-05',1544027500),(145,NULL,0,0,0,NULL,NULL,'2018-12-04',1544027500),(146,NULL,0,0,0,NULL,NULL,'2018-12-03',1544027500),(147,NULL,0,0,0,NULL,NULL,'2018-12-02',1544027500),(148,NULL,0,0,0,NULL,NULL,'2018-12-01',1544027500),(149,NULL,0,0,0,NULL,NULL,'2018-11-30',1544027500),(150,NULL,0,0,0,NULL,NULL,'2018-11-29',1544027500),(151,NULL,0,0,0,NULL,NULL,'2018-11-28',1544027500),(152,NULL,0,0,0,NULL,NULL,'2018-11-27',1544027500),(153,38,1,0,1,90.0000,NULL,'2018-12-06',1544031500),(154,38,0,0,0,NULL,NULL,'2018-12-05',1544031500),(155,41,0,0,0,NULL,NULL,'2018-12-08',1544230064),(156,41,0,0,0,NULL,NULL,'2018-12-07',1544230064),(157,41,0,0,0,NULL,NULL,'2018-12-06',1544230064),(158,41,0,0,0,NULL,NULL,'2018-12-05',1544230064),(159,43,0,0,0,NULL,NULL,'2018-12-12',1544551035),(160,43,0,0,0,NULL,NULL,'2018-12-11',1544551035),(161,43,0,0,0,NULL,NULL,'2018-12-10',1544551035),(162,43,0,0,0,NULL,NULL,'2018-12-09',1544551035),(163,43,0,0,0,NULL,NULL,'2018-12-08',1544551035),(164,43,0,0,0,NULL,NULL,'2018-12-07',1544551035),(165,43,0,0,0,NULL,NULL,'2018-12-06',1544551035),(166,36,0,0,0,NULL,NULL,'2018-12-20',1545314941),(167,36,0,0,0,NULL,NULL,'2018-12-19',1545314941),(168,36,0,0,0,NULL,NULL,'2018-12-18',1545314941),(169,36,15,0,15,44.7200,NULL,'2018-12-17',1545314941),(170,36,0,0,0,NULL,NULL,'2018-12-16',1545314941),(171,36,4,3,1,297.6000,232.5000,'2018-12-15',1545314941),(172,36,5,1,4,17.2200,5.0000,'2018-12-14',1545314941),(173,36,0,0,0,NULL,NULL,'2018-12-13',1545314941),(174,36,2,0,2,188.0000,NULL,'2018-12-12',1545314941),(175,36,0,0,0,NULL,NULL,'2018-12-11',1545314941),(176,48,0,0,0,NULL,NULL,'2018-12-22',1545411147),(177,48,0,0,0,NULL,NULL,'2018-12-21',1545411147),(178,48,0,0,0,NULL,NULL,'2018-12-20',1545411147),(179,48,0,0,0,NULL,NULL,'2018-12-19',1545411147),(180,48,0,0,0,NULL,NULL,'2018-12-18',1545411147),(181,48,0,0,0,NULL,NULL,'2018-12-17',1545411147),(182,48,0,0,0,NULL,NULL,'2018-12-16',1545411147),(183,48,0,0,0,NULL,NULL,'2018-12-15',1545411147),(184,48,0,0,0,NULL,NULL,'2018-12-14',1545411147),(185,48,56,2,54,102.2500,0.9050,'2018-12-13',1545411147),(186,48,0,0,0,NULL,NULL,'2018-12-12',1545411160),(187,39,0,0,0,NULL,NULL,'2018-12-23',1545576226),(188,39,0,0,0,NULL,NULL,'2018-12-22',1545576226),(189,39,0,0,0,NULL,NULL,'2018-12-21',1545576226),(190,39,0,0,0,NULL,NULL,'2018-12-20',1545576226),(191,39,0,0,0,NULL,NULL,'2018-12-19',1545576226),(192,39,0,0,0,NULL,NULL,'2018-12-18',1545576226),(193,39,0,0,0,NULL,NULL,'2018-12-17',1545576226),(194,39,0,0,0,NULL,NULL,'2018-12-16',1545576226),(195,39,1,1,0,28.0000,28.0000,'2018-12-15',1545576226),(196,39,0,0,0,NULL,NULL,'2018-12-14',1545576226),(197,5,4,4,0,10199.0000,10099.0000,'2019-01-05',1546693408),(198,5,0,0,0,NULL,NULL,'2019-01-04',1546693408),(199,5,0,0,0,NULL,NULL,'2019-01-03',1546693408),(200,5,1,0,1,1.0000,NULL,'2019-01-02',1546693408),(201,5,3,0,3,3.0000,NULL,'2019-01-01',1546693408),(202,5,0,0,0,NULL,NULL,'2018-12-31',1546693408),(203,5,0,0,0,NULL,NULL,'2018-12-30',1546693408),(204,5,1,0,1,1.0000,NULL,'2018-12-29',1546693408),(205,5,2,0,2,2.0000,NULL,'2018-12-28',1546693408),(206,5,1,0,1,1.0000,NULL,'2018-12-27',1546693408),(207,62,0,0,0,NULL,NULL,'2019-01-08',1546939705),(208,62,0,0,0,NULL,NULL,'2019-01-07',1546939705),(209,62,0,0,0,NULL,NULL,'2019-01-10',1547128868),(210,62,0,0,0,NULL,NULL,'2019-01-09',1547128868),(211,5,0,0,0,NULL,NULL,'2019-01-11',1547175978),(212,5,0,0,0,NULL,NULL,'2019-01-10',1547175978),(213,5,4,0,4,3.9600,NULL,'2019-01-09',1547175978),(214,5,6,2,4,10892.9799,10890.0000,'2019-01-08',1547175978),(215,5,2,0,2,1.9800,NULL,'2019-01-07',1547175978),(216,5,0,0,0,NULL,100.0000,'2019-01-06',1547175978),(217,62,0,0,0,NULL,NULL,'2019-01-12',1547288050),(218,62,0,0,0,NULL,NULL,'2019-01-11',1547288050),(219,60,0,0,0,NULL,NULL,'2019-01-12',1547288258),(220,60,0,0,0,NULL,NULL,'2019-01-11',1547288258),(221,60,0,0,0,NULL,NULL,'2019-01-10',1547288258),(222,60,0,0,0,NULL,NULL,'2019-01-09',1547288258),(223,60,0,0,0,NULL,NULL,'2019-01-08',1547288258),(224,60,0,0,0,NULL,NULL,'2019-01-07',1547288258),(225,60,0,0,0,NULL,NULL,'2019-01-06',1547288258),(226,60,0,0,0,NULL,NULL,'2019-01-05',1547288258),(227,5,0,0,0,NULL,NULL,'2019-01-13',1547383902),(228,5,1,0,1,0.9900,NULL,'2019-01-12',1547383902),(229,62,0,0,0,NULL,NULL,'2019-01-24',1548309343),(230,62,0,0,0,NULL,NULL,'2019-01-23',1548309343),(231,62,0,0,0,NULL,NULL,'2019-01-22',1548309343),(232,62,0,0,0,NULL,NULL,'2019-01-21',1548309343),(233,62,0,0,0,NULL,NULL,'2019-01-20',1548309343),(234,62,0,0,0,NULL,NULL,'2019-01-19',1548309343),(235,62,0,0,0,NULL,NULL,'2019-01-18',1548309343),(236,62,0,0,0,NULL,NULL,'2019-01-17',1548309343),(237,62,0,0,0,NULL,NULL,'2019-01-16',1548309343),(238,62,0,0,0,NULL,NULL,'2019-01-15',1548309343),(239,62,0,0,0,NULL,NULL,'2019-01-26',1548474588),(240,62,0,0,0,NULL,NULL,'2019-01-25',1548474588),(241,5,0,0,0,NULL,NULL,'2019-04-04',1554353389),(242,5,0,0,0,NULL,NULL,'2019-04-03',1554353389),(243,5,0,0,0,NULL,NULL,'2019-04-02',1554353389),(244,5,0,0,0,NULL,NULL,'2019-04-01',1554353389),(245,5,0,0,0,NULL,NULL,'2019-03-31',1554353389),(246,5,0,0,0,NULL,NULL,'2019-03-30',1554353389),(247,5,0,0,0,NULL,NULL,'2019-03-29',1554353389),(248,5,0,0,0,NULL,NULL,'2019-03-28',1554353389),(249,5,0,0,0,NULL,NULL,'2019-03-27',1554353389),(250,5,0,0,0,NULL,NULL,'2019-03-26',1554353389),(251,5,0,0,0,NULL,NULL,'2019-03-25',1554353397),(252,5,0,0,0,NULL,NULL,'2019-03-24',1554353397),(253,5,0,0,0,NULL,NULL,'2019-03-23',1554353397),(254,5,0,0,0,NULL,NULL,'2019-03-22',1554353397),(255,5,0,0,0,NULL,NULL,'2019-03-21',1554353397),(256,5,0,0,0,NULL,NULL,'2019-03-20',1554353397),(257,5,0,0,0,NULL,NULL,'2019-03-19',1554353397),(258,5,0,0,0,NULL,NULL,'2019-03-18',1554353397),(259,5,0,0,0,NULL,NULL,'2019-03-17',1554353397),(260,5,0,0,0,NULL,NULL,'2019-03-16',1554353397),(261,5,0,0,0,NULL,NULL,'2019-03-15',1554353399),(262,5,0,0,0,NULL,NULL,'2019-03-14',1554353399),(263,5,0,0,0,NULL,NULL,'2019-03-13',1554353399),(264,5,0,0,0,NULL,NULL,'2019-03-12',1554353399),(265,5,0,0,0,NULL,NULL,'2019-03-11',1554353399),(266,5,0,0,0,NULL,NULL,'2019-03-10',1554353399),(267,5,0,0,0,NULL,NULL,'2019-03-09',1554353399),(268,5,0,0,0,NULL,NULL,'2019-03-08',1554353399),(269,5,0,0,0,NULL,NULL,'2019-03-07',1554353399),(270,5,0,0,0,NULL,NULL,'2019-03-06',1554353399),(271,5,0,0,0,NULL,NULL,'2019-03-05',1554353400),(272,5,0,0,0,NULL,NULL,'2019-03-04',1554353400),(273,5,0,0,0,NULL,NULL,'2019-03-03',1554353400),(274,5,0,0,0,NULL,NULL,'2019-03-02',1554353400),(275,5,0,0,0,NULL,NULL,'2019-03-01',1554353400),(276,5,0,0,0,NULL,NULL,'2019-02-28',1554353400),(277,5,0,0,0,NULL,NULL,'2019-02-27',1554353400),(278,5,0,0,0,NULL,NULL,'2019-02-26',1554353400),(279,5,0,0,0,NULL,NULL,'2019-02-25',1554353400),(280,5,0,0,0,NULL,NULL,'2019-02-24',1554353400),(281,5,0,0,0,NULL,NULL,'2018-12-25',1554353402),(282,5,0,0,0,NULL,NULL,'2018-12-24',1554353402),(283,5,0,0,0,NULL,NULL,'2018-12-23',1554353402),(284,5,0,0,0,NULL,NULL,'2018-12-22',1554353402),(285,5,0,0,0,NULL,NULL,'2018-12-21',1554353402),(286,5,0,0,0,NULL,NULL,'2018-12-20',1554353402),(287,5,0,0,0,NULL,NULL,'2018-12-19',1554353402),(288,5,0,0,0,NULL,NULL,'2018-12-18',1554353402),(289,5,0,0,0,NULL,NULL,'2018-12-17',1554353402),(290,5,0,0,0,NULL,NULL,'2018-12-16',1554353402),(291,85,5,0,5,0.0500,NULL,'2019-04-11',1554949060),(292,85,0,0,0,NULL,NULL,'2019-04-10',1554949060),(293,69,0,0,0,NULL,NULL,'2019-04-13',1555146234),(294,69,0,0,0,NULL,NULL,'2019-04-12',1555146234),(295,69,0,0,0,NULL,NULL,'2019-04-11',1555146234),(296,69,0,0,0,NULL,NULL,'2019-04-10',1555146234),(297,69,0,0,0,NULL,NULL,'2019-04-09',1555146234),(298,69,0,0,0,NULL,NULL,'2019-04-08',1555146234),(299,69,0,0,0,NULL,NULL,'2019-04-07',1555146234),(300,69,0,0,0,NULL,NULL,'2019-04-06',1555146234),(301,69,0,0,0,NULL,NULL,'2019-04-05',1555146234),(302,69,1,0,1,10.0000,NULL,'2019-04-04',1555146234);
/*!40000 ALTER TABLE `pay_reconciliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_redo_order`
--

DROP TABLE IF EXISTS `pay_redo_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_redo_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作管理员',
  `money` decimal(15,4) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：增加 2：减少',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '冲正备注',
  `date` datetime NOT NULL COMMENT '冲正周期',
  `ctime` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_redo_order`
--

LOCK TABLES `pay_redo_order` WRITE;
/*!40000 ALTER TABLE `pay_redo_order` DISABLE KEYS */;
INSERT INTO `pay_redo_order` VALUES (1,180751041,1,1000.0000,1,'测试【冲正周期:2018-07-29】','2018-07-29 00:00:00',1532840631),(2,180768684,1,7607.6380,2,'调试【冲正周期:2018-07-29】','2018-07-29 00:00:00',1532845165),(3,180768684,1,74769.2000,2,'资金银行转账已结清\r\n【冲正周期:2018-07-29】','2018-07-29 00:00:00',1532856261),(4,55,1,10000.0000,1,'测试【冲正周期:2019-01-05】','2019-01-05 00:00:00',1546672872),(5,62,1,111.0000,1,'00【冲正周期:2019-01-12】','2019-01-12 00:00:00',1547301393),(6,62,1,100.0000,1,'12345【冲正周期:2019-03-30】','2019-03-30 00:00:00',1553917893),(7,56,1,10000.0000,1,'123【冲正周期:2019-04-01】','2019-04-01 00:00:00',1554111435),(8,68,1,0.0030,1,'333【冲正周期:2019-04-09】','2019-04-09 00:00:00',1554784862),(9,75,1,0.0060,1,'333【冲正周期:2019-04-09】','2019-04-09 00:00:00',1554784875),(10,75,1,10.0000,1,'ces 【冲正周期:2019-04-09】','2019-04-09 00:00:00',1554796435),(11,68,1,100.0000,1,'123【冲正周期:2019-04-14】','2019-04-14 00:00:00',1555232824),(12,74,68,1.0000,1,'1【冲正周期:2019-04-17】','2019-04-17 00:00:00',1555475187),(13,82,1,1000.0000,1,'12【冲正周期:2019-04-17】','2019-04-17 00:00:00',1555475302),(14,96,1,1000.0000,1,'123【冲正周期:2019-04-19】','2019-04-19 00:00:00',1555658863),(15,68,1,100.0000,1,'123【冲正周期:2019-04-20】','2019-04-20 00:00:00',1555774874),(16,101,1,1000.0000,1,'123【冲正周期:2019-04-21】','2019-04-21 00:00:00',1555839483),(17,5,1,100.0000,1,'132【冲正周期:2019-04-21】','2019-04-21 00:00:00',1555845230),(18,84,1,100.0000,1,'123【冲正周期:2019-04-21】','2019-04-21 00:00:00',1555862205),(19,101,1,1000.0000,1,'123【冲正周期:2019-04-21】','2019-04-21 00:00:00',1555862231),(20,84,1,100000.0000,1,'123【冲正周期:2019-04-21】','2019-04-21 00:00:00',1555862392),(21,85,1,100.0000,1,'123【冲正周期:2019-05-03】','2019-05-03 00:00:00',1556817632);
/*!40000 ALTER TABLE `pay_redo_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_route`
--

DROP TABLE IF EXISTS `pay_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_route` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `urlstr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_route`
--

LOCK TABLES `pay_route` WRITE;
/*!40000 ALTER TABLE `pay_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_separate`
--

DROP TABLE IF EXISTS `pay_separate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_separate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '由哪一个生成的id',
  `member_id` int(11) NOT NULL COMMENT '高级用户id',
  `channel_account_id` int(11) NOT NULL,
  `zfb_pid` varchar(128) COLLATE utf8_bin NOT NULL,
  `rate` decimal(15,4) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_separate`
--

LOCK TABLES `pay_separate` WRITE;
/*!40000 ALTER TABLE `pay_separate` DISABLE KEYS */;
INSERT INTO `pay_separate` VALUES (1,0,0,81,'201818538691122',0.0500,1553776545,1553776554),(2,0,0,255,'111222',0.0000,1553874845,1553874874),(4,0,0,255,'123456',0.0000,1553874885,0),(5,0,0,255,'999999',0.0000,1553875022,0);
/*!40000 ALTER TABLE `pay_separate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_separate_order`
--

DROP TABLE IF EXISTS `pay_separate_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_separate_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_account_id` int(11) NOT NULL,
  `tag` tinyint(1) NOT NULL,
  `order_id` varchar(100) COLLATE utf8_bin NOT NULL,
  `sepa_order` varchar(100) COLLATE utf8_bin NOT NULL,
  `out_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `in_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_separate_order`
--

LOCK TABLES `pay_separate_order` WRITE;
/*!40000 ALTER TABLE `pay_separate_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_separate_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_sms`
--

DROP TABLE IF EXISTS `pay_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_key` varchar(255) DEFAULT NULL COMMENT 'App Key',
  `app_secret` varchar(255) DEFAULT NULL COMMENT 'App Secret',
  `sign_name` varchar(255) DEFAULT NULL COMMENT '默认签名',
  `is_open` int(11) DEFAULT '0' COMMENT '是否开启，0关闭，1开启',
  `admin_mobile` varchar(255) DEFAULT NULL COMMENT '管理员接收手机',
  `is_receive` int(11) DEFAULT '0' COMMENT '是否开启，0关闭，1开启',
  `sms_channel` varchar(20) NOT NULL DEFAULT 'aliyun' COMMENT '短信通道',
  `smsbao_user` varchar(50) NOT NULL DEFAULT '' COMMENT '短信宝账号',
  `smsbao_pass` varchar(50) NOT NULL DEFAULT '' COMMENT '短信宝密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_sms`
--

LOCK TABLES `pay_sms` WRITE;
/*!40000 ALTER TABLE `pay_sms` DISABLE KEYS */;
INSERT INTO `pay_sms` VALUES (3,'appKey','appSecret','聚合支付',0,NULL,0,'smsbao','zhanghao','mima');
/*!40000 ALTER TABLE `pay_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_sms_template`
--

DROP TABLE IF EXISTS `pay_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_sms_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `template_code` varchar(255) DEFAULT NULL COMMENT '模板代码',
  `call_index` varchar(255) DEFAULT NULL COMMENT '调用字符串',
  `template_content` text COMMENT '模板内容',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_sms_template`
--

LOCK TABLES `pay_sms_template` WRITE;
/*!40000 ALTER TABLE `pay_sms_template` DISABLE KEYS */;
INSERT INTO `pay_sms_template` VALUES (3,'修改支付密码','SMS_144455941 ','editPayPassword','您正在进行修改支付密码操作，验证码为：${code} ，该验证码 5 分钟内有效，请勿泄露于他人。',1512202260),(4,'修改登录密码','SMS_144450598','editPassword','您的验证码为：${code} ，你正在进行修改登录密码操作，该验证码3 分钟内有效，请勿泄露于他人。',1512190115),(5,'异地登录','SMS_144455604','loginWarning','检测到您的账号登录异常，如非本人操纵，请及时修改账号密码。',1512202260),(6,'申请结算','SMS_144456102','clearing','您的申请结算验证码为：${code}  ，验证码只用于平台结算验证，为了您的资金安全，打死也不能告诉任何人。',1512202260),(7,'委托结算','SMS_144450916','entrusted','您的验证码为：${code} ，你正在进行 委托结算 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1512202260),(8,'绑定手机','SMS_144455941 ','bindMobile','您的验证码为：${code} ，你正在进行 绑定手机 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1514534290),(9,'更新手机','SMS_144450938','editMobile','您的验证码为：${code} ，你正在进行 更新手机 号码操作，该验证码 5 分钟内有效，请勿泄露于他人。',1514535688),(10,'更新银行卡 ','SMS_144450919','addBankcardSend','您的验证码为：${code} ，你正在进行 更新银行卡 \r\n 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1514535688),(11,'修改个人资料','SMS_144450923','saveProfile','您的验证码为：${code} ，你正在进行 修改个人资料 操作，该验证码 5 分钟内有效，请勿泄露于他人。',151453568),(12,'绑定管理员手机号码','SMS_144450927','adminbindMobile','您的验证码为：${code} ，你正在进行 绑定管理员手机号码 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(13,'修改管理员手机号码','SMS_144455951','admineditMobile','您的验证码为：${code} ，你正在进行 修改管理员手机号码 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(14,'批量删除订单','SMS_144455956','delOrderSend','您的验证码为：${code} ，你正在进行 批量删除订单  操作，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(15,'解绑谷歌身份验证器','SMS_119087905','unbindGoogle','您的验证码为：${code} ，你正在进行 解绑谷歌身份验证器 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(16,'设置订单为已支付','SMS_144455959','setOrderPaidSend','您的验证码为：${code} ，你正在进行 设置订单为已支付 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(17,'清理数据','SMS_144450934','clearDataSend','您的验证码为：${code} ，你正在进行 清理数据 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(18,'增加/减少余额（冲正）','SMS_111795375','adjustUserMoneySend','您的验证码为：${code} ，你正在进行 增加/减少余额（冲正） 操作，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(19,'提交代付','SMS_144450941','submitDfSend','您的提交代付验证码为：${code} ，该验证码 3 分钟内有效，请勿泄露于他人。',1527670734),(20,'测试短信','SMS_144455594','test','您的测试短信验证码为：${code} ，您正在进行重要操作，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(21,'系统配置','SMS_144854336','sysconfigSend','您的系统配置验证码为：${code} ，该验证码 5 分钟内有效，请勿泄露于他人。',1527670734),(22,'客户提现提醒','SMS_144455785','tixian','平台有客户申请提现，请及时处理！',1536649511);
/*!40000 ALTER TABLE `pay_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_systembank`
--

DROP TABLE IF EXISTS `pay_systembank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_systembank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bankcode` varchar(100) DEFAULT NULL,
  `bankname` varchar(300) DEFAULT NULL,
  `images` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COMMENT='结算银行';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_systembank`
--

LOCK TABLES `pay_systembank` WRITE;
/*!40000 ALTER TABLE `pay_systembank` DISABLE KEYS */;
INSERT INTO `pay_systembank` VALUES (162,'BOB','北京银行','BOB.gif'),(164,'BEA','东亚银行','BEA.gif'),(165,'ICBC','中国工商银行','ICBC.gif'),(166,'CEB','中国光大银行','CEB.gif'),(167,'GDB','广发银行','GDB.gif'),(168,'HXB','华夏银行','HXB.gif'),(169,'CCB','中国建设银行','CCB.gif'),(170,'BCM','交通银行','BCM.gif'),(171,'CMSB','中国民生银行','CMSB.gif'),(172,'NJCB','南京银行','NJCB.gif'),(173,'NBCB','宁波银行','NBCB.gif'),(174,'ABC','中国农业银行','5414c87492ad8.gif'),(175,'PAB','平安银行','5414c0929a632.gif'),(176,'BOS','上海银行','BOS.gif'),(177,'SPDB','上海浦东发展银行','SPDB.gif'),(178,'SDB','深圳发展银行','SDB.gif'),(179,'CIB','兴业银行','CIB.gif'),(180,'PSBC','中国邮政储蓄银行','PSBC.gif'),(181,'CMBC','招商银行','CMBC.gif'),(182,'CZB','浙商银行','CZB.gif'),(183,'BOC','中国银行','BOC.gif'),(184,'CNCB','中信银行','CNCB.gif'),(193,'ALIPAY','支付宝','58b83a5820644.jpg'),(194,'WXZF','微信支付','58b83a757a298.jpg');
/*!40000 ALTER TABLE `pay_systembank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_template`
--

DROP TABLE IF EXISTS `pay_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT ' ' COMMENT '模板名称',
  `theme` varchar(255) NOT NULL DEFAULT ' ' COMMENT '模板代码',
  `is_default` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认模板:1是，0否',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `remarks` varchar(255) NOT NULL DEFAULT ' ' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_template`
--

LOCK TABLES `pay_template` WRITE;
/*!40000 ALTER TABLE `pay_template` DISABLE KEYS */;
INSERT INTO `pay_template` VALUES (1,' 默认模板','default',0,1524299660,1524299660,' 默认模板'),(2,'2018新模板','view4',1,1546583665,1546583665,'包含所有页面'),(3,'模板二','view2',0,1541007060,1541007060,'默认模板二，有登录页，注册页'),(4,'模板三','view3',0,1541007043,1541007043,'雀付优化模板-有登录页，注册页，支持手机浏览'),(5,'模板五','view5',0,1541007015,1541007015,'无首页-有登录页，注册页-自适应手机'),(6,'九州支付','view6',0,1541007031,1541007031,'九州支付,有登录页，不支持手机访问'),(8,'钱嘟嘟','qiswl',0,0,1556008483,'钱嘟嘟');
/*!40000 ALTER TABLE `pay_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_tikuanconfig`
--

DROP TABLE IF EXISTS `pay_tikuanconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_tikuanconfig` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商户编号',
  `tkzxmoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔最小提款金额',
  `tkzdmoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔最大提款金额',
  `dayzdmoney` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '当日提款最大总金额',
  `dayzdnum` int(11) NOT NULL DEFAULT '0' COMMENT '当日提款最大次数',
  `t1zt` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'T+1 ：1开启 0 关闭',
  `t0zt` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'T+0 ：1开启 0 关闭',
  `gmt0` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '购买T0',
  `tkzt` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '提款设置 1 开启 0 关闭',
  `tktype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '提款手续费类型 1 每笔 0 比例 ',
  `systemxz` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 系统规则 1 用户规则',
  `sxfrate` varchar(20) DEFAULT NULL COMMENT '单笔提款比例',
  `sxffixed` varchar(20) DEFAULT NULL COMMENT '单笔提款手续费',
  `issystem` tinyint(1) unsigned DEFAULT '0' COMMENT '平台规则 1 是 0 否',
  `allowstart` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '提款允许开始时间',
  `allowend` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '提款允许结束时间',
  `daycardzdmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单人单卡单日最高提现额',
  `auto_df_switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动代付开关',
  `auto_df_maxmoney` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单笔代付最大金额限制',
  `auto_df_stime` varchar(20) NOT NULL DEFAULT '' COMMENT '自动代付开始时间',
  `auto_df_etime` varchar(20) NOT NULL DEFAULT '' COMMENT '自动代付结束时间',
  `auto_df_max_count` int(11) NOT NULL DEFAULT '0' COMMENT '商户每天自动代付笔数限制',
  `auto_df_max_sum` int(11) NOT NULL DEFAULT '0' COMMENT '商户每天自动代付最大总金额限制',
  `tk_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IND_UID` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_tikuanconfig`
--

LOCK TABLES `pay_tikuanconfig` WRITE;
/*!40000 ALTER TABLE `pay_tikuanconfig` DISABLE KEYS */;
INSERT INTO `pay_tikuanconfig` VALUES (28,1,10.00,50000.00,5000000.00,100,0,0,200.00,1,2,0,'4','5',1,23,0,1000000.00,1,50000.00,'00:00','23:59',0,0,0),(37,96,11.00,1000.00,10000.00,2,0,0,0.00,1,2,1,'3','2',0,0,0,0.00,0,0.00,'','',0,0,0);
/*!40000 ALTER TABLE `pay_tikuanconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_tikuanholiday`
--

DROP TABLE IF EXISTS `pay_tikuanholiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_tikuanholiday` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排除日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='排除节假日';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_tikuanholiday`
--

LOCK TABLES `pay_tikuanholiday` WRITE;
/*!40000 ALTER TABLE `pay_tikuanholiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_tikuanholiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_tikuanmoney`
--

DROP TABLE IF EXISTS `pay_tikuanmoney`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_tikuanmoney` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '结算用户ID',
  `websiteid` int(11) NOT NULL DEFAULT '0',
  `payapiid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '结算通道ID',
  `t` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '结算方式: 1 T+1 ,0 T+0',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `datetype` varchar(2) NOT NULL,
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=691 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_tikuanmoney`
--

LOCK TABLES `pay_tikuanmoney` WRITE;
/*!40000 ALTER TABLE `pay_tikuanmoney` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_tikuanmoney` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_tikuantime`
--

DROP TABLE IF EXISTS `pay_tikuantime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_tikuantime` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baiks` tinyint(2) unsigned DEFAULT '0' COMMENT '白天提款开始时间',
  `baijs` tinyint(2) unsigned DEFAULT '0' COMMENT '白天提款结束时间',
  `wanks` tinyint(2) unsigned DEFAULT '0' COMMENT '晚间提款开始时间',
  `wanjs` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='提款时间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_tikuantime`
--

LOCK TABLES `pay_tikuantime` WRITE;
/*!40000 ALTER TABLE `pay_tikuantime` DISABLE KEYS */;
INSERT INTO `pay_tikuantime` VALUES (1,24,17,18,24);
/*!40000 ALTER TABLE `pay_tikuantime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_tklist`
--

DROP TABLE IF EXISTS `pay_tklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_tklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `bankname` varchar(300) NOT NULL,
  `bankzhiname` varchar(300) NOT NULL,
  `banknumber` varchar(300) NOT NULL,
  `bankfullname` varchar(300) NOT NULL,
  `sheng` varchar(300) NOT NULL,
  `shi` varchar(300) NOT NULL,
  `sqdatetime` datetime DEFAULT NULL,
  `cldatetime` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `tkmoney` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sxfmoney` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000',
  `money` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000',
  `t` int(4) NOT NULL DEFAULT '1',
  `payapiid` int(11) NOT NULL DEFAULT '0',
  `memo` text COMMENT '备注',
  `tk_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣',
  `cuserid` int(11) DEFAULT '0' COMMENT '0系统',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_tklist`
--

LOCK TABLES `pay_tklist` WRITE;
/*!40000 ALTER TABLE `pay_tklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_tklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_updatelog`
--

DROP TABLE IF EXISTS `pay_updatelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_updatelog` (
  `version` varchar(20) NOT NULL,
  `lastupdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_updatelog`
--

LOCK TABLES `pay_updatelog` WRITE;
/*!40000 ALTER TABLE `pay_updatelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_updatelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_user_channel_account`
--

DROP TABLE IF EXISTS `pay_user_channel_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_user_channel_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `account_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '子账号id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启指定账号',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户指定指账号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_user_channel_account`
--

LOCK TABLES `pay_user_channel_account` WRITE;
/*!40000 ALTER TABLE `pay_user_channel_account` DISABLE KEYS */;
INSERT INTO `pay_user_channel_account` VALUES (4,180762223,'2,50',0),(5,180751041,'16,17',1),(6,180768751,'',0),(7,6,'74',1),(8,5,'269,291,304',0),(9,67,'',0),(10,56,'267',1),(11,4,'269,271,291,304,310',1),(12,69,'271',1),(13,71,'275',1),(14,78,'309',1),(15,85,'303',1),(16,76,'',1),(17,84,'284,269,278,291,310',0),(18,75,'313,309',1);
/*!40000 ALTER TABLE `pay_user_channel_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_user_channel_type`
--

DROP TABLE IF EXISTS `pay_user_channel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_user_channel_type` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `uid` int(15) NOT NULL,
  `channel_id` int(15) NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0走码商1走自己通道',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_user_channel_type`
--

LOCK TABLES `pay_user_channel_type` WRITE;
/*!40000 ALTER TABLE `pay_user_channel_type` DISABLE KEYS */;
INSERT INTO `pay_user_channel_type` VALUES (1,5,233,1),(2,5,246,0),(3,5,245,1),(4,5,242,0),(5,84,242,0),(6,85,238,0),(7,85,239,0),(8,85,242,0);
/*!40000 ALTER TABLE `pay_user_channel_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_user_code`
--

DROP TABLE IF EXISTS `pay_user_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_user_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT '0' COMMENT '0找回密码',
  `code` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL COMMENT '更新时间',
  `endtime` int(11) DEFAULT NULL COMMENT '有效时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_user_code`
--

LOCK TABLES `pay_user_code` WRITE;
/*!40000 ALTER TABLE `pay_user_code` DISABLE KEYS */;
INSERT INTO `pay_user_code` VALUES (6,0,'36989','11210980','11210980@qq.com',NULL,0,1538813477,NULL,1538814077);
/*!40000 ALTER TABLE `pay_user_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_user_riskcontrol_config`
--

DROP TABLE IF EXISTS `pay_user_riskcontrol_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_user_riskcontrol_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `min_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔最小金额',
  `max_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔最大金额',
  `unit_all_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单位时间内交易总金额',
  `all_money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '当天交易总金额',
  `start_time` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '一天交易开始时间',
  `end_time` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '一天交易结束时间',
  `unit_number` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '单位时间内交易的总笔数',
  `is_system` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否平台规则',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态:1开通，0关闭',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `edit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `time_unit` char(1) NOT NULL DEFAULT 'i' COMMENT '限制的时间单位',
  `unit_interval` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '单位时间值',
  `domain` varchar(255) NOT NULL DEFAULT ' ' COMMENT '防封域名',
  `systemxz` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 系统规则 1 用户规则',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='交易配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_user_riskcontrol_config`
--

LOCK TABLES `pay_user_riskcontrol_config` WRITE;
/*!40000 ALTER TABLE `pay_user_riskcontrol_config` DISABLE KEYS */;
INSERT INTO `pay_user_riskcontrol_config` VALUES (1,0,0.00,0.00,0.00,0.00,0,0,0,1,0,1543806443,0,'i',0,'',0),(2,180751041,0.00,10000.00,0.00,0.00,0,0,0,0,0,1533759190,1532768653,'s',0,'',1),(3,180768684,1.00,10000.00,0.00,299972.00,0,0,0,0,1,1532846143,1532774264,'s',0,'',1),(4,180762223,10.00,5000.00,0.00,0.00,0,0,0,0,0,1536964058,1532774447,'s',0,'',0);
/*!40000 ALTER TABLE `pay_user_riskcontrol_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_userrate`
--

DROP TABLE IF EXISTS `pay_userrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_userrate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `payapiid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '通道ID',
  `feilv` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '运营费率',
  `fengding` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '封顶费率',
  `t0feilv` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'T0运营费率',
  `t0fengding` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'T0封顶费率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=336 DEFAULT CHARSET=utf8 COMMENT='商户通道费率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_userrate`
--

LOCK TABLES `pay_userrate` WRITE;
/*!40000 ALTER TABLE `pay_userrate` DISABLE KEYS */;
INSERT INTO `pay_userrate` VALUES (223,68,901,0.0030,0.0500,0.0030,0.0500),(224,68,902,0.0030,0.0500,0.0030,0.0500),(225,68,903,0.0030,0.0500,0.0030,0.0500),(226,68,904,0.0030,0.0500,0.0030,0.0500),(227,68,919,0.0030,0.0500,0.0030,0.0500),(228,67,903,0.0015,0.0500,0.0015,0.0500),(229,67,904,0.0015,0.0500,0.0015,0.0500),(230,67,919,0.0015,0.0500,0.0015,0.0500),(231,67,920,0.0015,0.0500,0.0015,0.0500),(232,67,921,6.0000,6.0000,6.0000,6.0000),(233,69,921,0.0220,0.0220,0.0220,0.0220),(234,70,903,0.0030,0.0500,0.0030,0.0500),(235,70,904,0.0030,0.0500,0.0030,0.0500),(236,70,919,0.0030,0.0500,0.0030,0.0500),(237,70,920,0.0030,0.0500,0.0030,0.0500),(238,70,921,0.0030,0.0500,0.0030,0.0500),(239,72,903,0.0030,0.0500,0.0030,0.0500),(240,72,904,0.0030,0.0500,0.0030,0.0500),(241,72,919,0.0030,0.0500,0.0030,0.0500),(242,72,920,0.0030,0.0500,0.0030,0.0500),(243,72,921,0.0030,0.0500,0.0030,0.0500),(244,71,921,0.0500,0.0500,0.0300,0.0500),(245,76,919,0.0300,0.0300,0.0200,0.0200),(246,76,920,0.0000,0.0000,0.0000,0.0000),(247,76,921,0.0000,0.0000,0.0000,0.0000),(248,76,922,0.0000,0.0000,0.0000,0.0000),(249,76,923,0.0000,0.0000,0.0000,0.0000),(250,78,919,0.0000,0.0000,0.0000,0.0000),(251,78,920,0.0000,0.0000,0.0000,0.0000),(252,78,921,0.0200,0.0200,0.0200,0.0200),(253,78,922,0.0000,0.0000,0.0000,0.0000),(254,78,923,0.0000,0.0000,0.0000,0.0000),(255,82,902,0.0030,0.0030,0.0030,0.0030),(256,82,903,0.0030,0.0030,0.0030,0.0030),(257,82,904,0.0030,0.0030,0.0030,0.0030),(258,82,919,0.0030,0.0030,0.0030,0.0030),(259,82,920,0.0030,0.0030,0.0030,0.0030),(260,82,921,0.0030,0.0030,0.0030,0.0030),(261,82,922,0.0030,0.0030,0.0030,0.0030),(262,82,923,0.0030,0.0030,0.0030,0.0030),(263,82,924,0.0030,0.0030,0.0030,0.0030),(264,4,902,0.0000,0.0000,0.0030,0.0030),(265,4,903,0.0000,0.0000,0.0030,0.0030),(266,4,904,0.0000,0.0000,0.0030,0.0030),(267,4,919,0.0000,0.0000,0.0030,0.0030),(268,4,920,0.0000,0.0000,0.0030,0.0030),(269,4,921,0.0000,0.0000,0.0030,0.0030),(270,4,922,0.0000,0.0000,0.0030,0.0030),(271,4,923,0.0000,0.0000,0.0030,0.0030),(272,4,924,0.0000,0.0000,0.0030,0.0030),(273,96,902,0.0030,0.0500,0.0030,0.0500),(274,96,903,0.0030,0.0500,0.0030,0.0500),(275,96,904,0.0030,0.0500,0.0030,0.0500),(276,96,919,0.0030,0.0500,0.0030,0.0500),(277,96,920,0.0030,0.0500,0.0030,0.0500),(278,96,921,0.0030,0.0500,0.0030,0.0500),(279,96,922,0.0050,0.0500,0.0050,0.0500),(280,96,923,0.0030,0.0500,0.0030,0.0500),(281,96,924,0.0030,0.0500,0.0030,0.0500),(282,101,902,0.0000,0.0000,0.0000,0.0000),(283,101,903,0.0000,0.0000,0.0000,0.0000),(284,101,904,0.0000,0.0000,0.0000,0.0000),(285,101,919,0.0000,0.0000,0.0000,0.0000),(286,101,920,0.0000,0.0000,0.0000,0.0000),(287,101,921,0.0010,5.0000,0.0030,5.0000),(288,101,922,0.0020,0.0000,0.0040,0.0000),(289,101,923,0.0000,0.0000,0.0000,0.0000),(290,101,924,0.0000,0.0000,0.0000,0.0000),(291,67,902,0.0000,0.0000,0.0000,0.0000),(292,67,922,0.0000,0.0000,0.0000,0.0000),(293,67,923,0.0000,0.0000,0.0000,0.0000),(294,67,924,0.0000,0.0000,0.0000,0.0000),(295,68,920,0.0000,0.0000,0.0000,0.0000),(296,68,921,7.0000,7.0000,7.0000,7.0000),(297,68,922,0.0000,0.0000,0.0000,0.0000),(298,68,923,0.0000,0.0000,0.0000,0.0000),(299,68,924,0.0000,0.0000,0.0000,0.0000),(300,74,902,0.0000,0.0000,0.0000,0.0000),(301,74,903,0.0000,0.0000,0.0000,0.0000),(302,74,904,0.0000,0.0000,0.0000,0.0000),(303,74,919,0.0000,0.0000,0.0000,0.0000),(304,74,920,0.0000,0.0000,0.0000,0.0000),(305,74,921,8.0000,8.0000,8.0000,8.0000),(306,74,922,0.0000,0.0000,0.0000,0.0000),(307,74,923,0.0000,0.0000,0.0000,0.0000),(308,74,924,0.0000,0.0000,0.0000,0.0000),(309,84,902,0.0000,0.0000,0.0000,0.0000),(310,84,903,0.0000,0.0000,0.0000,0.0000),(311,84,904,0.0000,0.0000,0.0000,0.0000),(312,84,919,0.0000,0.0000,0.0000,0.0000),(313,84,920,0.0000,0.0000,0.0000,0.0000),(314,84,921,9.0000,9.0000,9.0000,9.0000),(315,84,922,0.0000,0.0000,0.0000,0.0000),(316,84,923,0.0000,0.0000,0.0000,0.0000),(317,84,924,0.0000,0.0000,0.0000,0.0000),(318,5,902,0.0000,0.0000,0.0000,0.0000),(319,5,903,0.0000,0.0000,0.0000,0.0000),(320,5,904,0.0000,0.0000,0.0000,0.0000),(321,5,919,0.0000,0.0000,0.0000,0.0000),(322,5,920,0.0000,0.0000,0.0000,0.0000),(323,5,921,0.0200,0.0200,0.0200,0.0200),(324,5,922,0.0000,0.0000,0.0000,0.0000),(325,5,923,0.0000,0.0000,0.0000,0.0000),(326,5,924,0.0000,0.0000,0.0000,0.0000),(327,77,902,0.0000,0.0000,0.0000,0.0000),(328,77,903,0.0000,0.0000,0.0000,0.0000),(329,77,904,0.0000,0.0000,0.0000,0.0000),(330,77,919,0.0000,0.0000,0.0300,0.0000),(331,77,920,0.0000,0.0000,0.0000,0.0000),(332,77,921,0.0000,0.0000,0.0000,0.0000),(333,77,922,0.0000,0.0000,0.0000,0.0000),(334,77,923,0.0000,0.0000,0.0000,0.0000),(335,77,924,0.0000,0.0000,0.0000,0.0000);
/*!40000 ALTER TABLE `pay_userrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_version`
--

DROP TABLE IF EXISTS `pay_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL DEFAULT '0' COMMENT '版本',
  `author` varchar(255) NOT NULL DEFAULT ' ' COMMENT '作者',
  `save_time` varchar(255) NOT NULL DEFAULT '0000-00-00' COMMENT '修改时间,格式YYYY-mm-dd',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='数据库版本表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_version`
--

LOCK TABLES `pay_version` WRITE;
/*!40000 ALTER TABLE `pay_version` DISABLE KEYS */;
INSERT INTO `pay_version` VALUES (1,'5.5','qq0000000','2018-4-8'),(2,'5.6','qq0000000','2018/9/02 17:45:33'),(3,'5.7.1','qq0000000','2018-4-17');
/*!40000 ALTER TABLE `pay_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_websiteconfig`
--

DROP TABLE IF EXISTS `pay_websiteconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_websiteconfig` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `websitename` varchar(300) DEFAULT NULL COMMENT '网站名称',
  `domain` varchar(300) DEFAULT NULL COMMENT '网址',
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL COMMENT '后台目录名称',
  `icp` varchar(100) DEFAULT NULL,
  `tongji` varchar(1000) DEFAULT NULL COMMENT '统计',
  `login` varchar(100) DEFAULT NULL COMMENT '登录地址',
  `payingservice` tinyint(1) unsigned DEFAULT '0' COMMENT '商户代付 1 开启 0 关闭',
  `authorized` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '商户认证 1 开启 0 关闭',
  `invitecode` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邀请码注册',
  `company` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `serverkey` varchar(50) DEFAULT NULL COMMENT '授权服务key',
  `withdraw` tinyint(1) DEFAULT '0' COMMENT '提现通知：0关闭，1开启',
  `login_warning_num` tinyint(3) unsigned NOT NULL DEFAULT '3' COMMENT '前台可以错误登录次数',
  `login_ip` varchar(1000) NOT NULL DEFAULT ' ' COMMENT '登录IP',
  `is_repeat_order` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许重复订单:1是，0否',
  `google_auth` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启谷歌身份验证登录',
  `df_api` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启代付API',
  `logo` varchar(255) NOT NULL DEFAULT ' ' COMMENT '公司logo',
  `random_mchno` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启随机商户号',
  `register_need_activate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户注册是否需激活',
  `admin_alone_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT '管理员是否只允许同时一次登录',
  `max_auth_error_times` int(10) NOT NULL DEFAULT '5' COMMENT '验证错误最大次数',
  `auth_error_ban_time` int(10) NOT NULL DEFAULT '10' COMMENT '验证错误超限冻结时间（分钟）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_websiteconfig`
--

LOCK TABLES `pay_websiteconfig` WRITE;
/*!40000 ALTER TABLE `pay_websiteconfig` DISABLE KEYS */;
INSERT INTO `pay_websiteconfig` VALUES (1,'钱嘟嘟','qdd.iun.cc','10086@qq.com','17000000000000','10086','admin','京ICP备8812000号','','Login',1,1,0,'钱嘟嘟','0d6de302cbc615de3b09463acea87662',1,3,' ',0,0,1,'Uploads/logo/5cbed8403b817.png',0,1,0,10,10);
/*!40000 ALTER TABLE `pay_websiteconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_wttklist`
--

DROP TABLE IF EXISTS `pay_wttklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_wttklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `bankname` varchar(300) NOT NULL,
  `bankzhiname` varchar(300) NOT NULL,
  `banknumber` varchar(300) NOT NULL,
  `bankfullname` varchar(300) NOT NULL,
  `sheng` varchar(300) NOT NULL,
  `shi` varchar(300) NOT NULL,
  `sqdatetime` datetime DEFAULT NULL,
  `cldatetime` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `tkmoney` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sxfmoney` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '手续费',
  `money` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '实际到账',
  `t` int(4) NOT NULL DEFAULT '1',
  `payapiid` int(11) NOT NULL DEFAULT '0',
  `memo` text COMMENT '备注',
  `additional` varchar(1000) NOT NULL DEFAULT ' ' COMMENT '额外的参数',
  `code` varchar(64) NOT NULL DEFAULT ' ' COMMENT '代码控制器名称',
  `df_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '代付通道id',
  `df_name` varchar(64) NOT NULL DEFAULT ' ' COMMENT '代付名称',
  `orderid` varchar(100) NOT NULL DEFAULT ' ' COMMENT '订单id',
  `cost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成本',
  `cost_rate` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '成本费率',
  `rate_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '费率类型：按单笔收费0，按比例收费：1',
  `extends` text COMMENT '扩展数据',
  `out_trade_no` varchar(30) DEFAULT '' COMMENT '下游订单号',
  `df_api_id` int(11) DEFAULT '0' COMMENT '代付API申请ID',
  `auto_submit_try` int(10) NOT NULL DEFAULT '0' COMMENT '自动代付尝试提交次数',
  `is_auto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否自动提交',
  `last_submit_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后提交时间',
  `df_lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付锁，防止重复提交',
  `auto_query_num` int(10) NOT NULL DEFAULT '0' COMMENT '自动查询次数',
  `channel_mch_id` varchar(50) NOT NULL DEFAULT '' COMMENT '通道商户号',
  `df_charge_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '代付API扣除手续费方式，0：从到账金额里扣，1：从商户余额里扣',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `df_id` (`df_id`),
  KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_wttklist`
--

LOCK TABLES `pay_wttklist` WRITE;
/*!40000 ALTER TABLE `pay_wttklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_wttklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'qdd_iun'
--

--
-- Dumping routines for database 'qdd_iun'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-03  0:49:11
