-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: dl_adb_all
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dl_adb_all`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_adb_all` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_adb_all`;

--
-- Table structure for table `aaa`
--

DROP TABLE IF EXISTS `aaa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aaa` (
  `aaa` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `attrib` varchar(255) DEFAULT NULL,
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `num` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `error_password_times` int(11) NOT NULL DEFAULT '5',
  `busy_time` int(11) NOT NULL DEFAULT '600',
  `client_per_ip` int(11) NOT NULL DEFAULT '0',
  `activate_url` varchar(255) NOT NULL DEFAULT '',
  `activate_aaa_ip` varchar(15) NOT NULL DEFAULT '',
  `ecard_fill_url` varchar(255) NOT NULL DEFAULT '',
  `ecard_resend_url` varchar(255) NOT NULL DEFAULT '',
  `ecard_web_status_url` varchar(255) NOT NULL DEFAULT '',
  `antibot_server` varchar(255) DEFAULT NULL,
  `antibot_action` varchar(255) DEFAULT NULL,
  `passpod_server` varchar(255) DEFAULT NULL,
  `auth_server` varchar(255) DEFAULT NULL,
  `coin_trade_server` varchar(255) DEFAULT 'transfer.gyyx.cn:81',
  `recharge_url` varchar(255) NOT NULL DEFAULT '',
  `inquiry_url` varchar(255) NOT NULL DEFAULT '',
  `sms_auth_url` varchar(255) NOT NULL DEFAULT 'http://interface.message.gyyx.cn/v1/Send/Account',
  `memo` text,
  PRIMARY KEY (`aaa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aaa`
--

LOCK TABLES `aaa` WRITE;
/*!40000 ALTER TABLE `aaa` DISABLE KEYS */;
INSERT INTO `aaa` VALUES ('aaa_coding','10.2.50.30',8300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_daili','${IP}','${AAA_PORT}',NULL,'',1,1,5,30,0,'http://127.0.0.1/','','127.0.0.1','127.0.0.1','127.0.0.1',NULL,NULL,'127.0.0.1',NULL,'transfer.gyyx.cn:81','127.0.0.1','127.0.0.1','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_dongsh','10.3.4.35',8300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_jiangw_30','10.2.50.30',8001,NULL,'',1,1,3,600,0,'http://10.2.50.58/simulateforum/vipsms_jiangw.php','10.2.50.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_jiangw_pk','10.2.50.30',8003,NULL,'',1,2,5,30,0,'http://10.2.50.58/simulateforum/vipsms_jiangw.php','','127.0.0.1','127.0.0.1','127.0.0.1',NULL,NULL,'127.0.0.1',NULL,'transfer.gyyx.cn:81','127.0.0.1','127.0.0.1','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_liy','10.3.102.75',8000,NULL,'',1,1,3,600,0,'','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_luoyh','10.3.4.25',8001,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_quls_30','10.3.4.5',8300,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_test','10.2.50.57',12054,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.50.57','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_weism','10.3.35.4',8300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_wuxl','10.3.4.20',8001,NULL,'',0,0,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_xg_liy','10.3.4.22',8001,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_xg_quls','10.3.4.5',9300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_xuj','10.3.4.10',8300,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_xuj_30','10.2.50.30',8300,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_yugq','10.3.4.26',8021,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_zenghh','10.3.4.30',8001,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_zenghh_1','10.3.4.30',9001,NULL,'',1,1,3,600,0,'','10.3.4.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('aaa_zhangq3_30','10.3.102.39',8300,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01g_aaa_pack','10.2.50.57',8857,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,'http://10.2.50.58/simulateforum/passpod.php',NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01g_aaa_pack58','10.2.50.58',8857,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01_aaa_hong','10.3.4.4',10001,NULL,'',1,1,3,600,0,'','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01_aaa_hongjs','10.3.4.4',8001,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01_aaa_shuxx','10.3.4.12',8001,NULL,'',1,1,30,1,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL),('p01_aaa_yeyh2','10.3.102.24',8054,NULL,'',1,1,3,600,0,'http://transfer.gyyx.cn:81/WenDaoServiceV2/Register.ashx','10.2.48.30','','','',NULL,NULL,NULL,NULL,'transfer.gyyx.cn:81','','','http:// interface.message.gyyx.cn/v1/Send/Account',NULL);
/*!40000 ALTER TABLE `aaa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_comp`
--

DROP TABLE IF EXISTS `acc_comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_comp` (
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `comp` varchar(128) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`account`,`branch`,`comp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_comp`
--

LOCK TABLES `acc_comp` WRITE;
/*!40000 ALTER TABLE `acc_comp` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_comp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_log`
--

DROP TABLE IF EXISTS `acc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `msg` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `account` (`account`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_log`
--

LOCK TABLES `acc_log` WRITE;
/*!40000 ALTER TABLE `acc_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `blocked_time` varchar(14) NOT NULL DEFAULT '0',
  `blocked_reason` varchar(128) NOT NULL DEFAULT '',
  `temp_blocked_time` varchar(14) NOT NULL DEFAULT '',
  `temp_blocked_reason` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `protect` varchar(32) NOT NULL DEFAULT '',
  `auto_lock` int(11) NOT NULL DEFAULT '0',
  `locked` varchar(14) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `limit_trade_coin` int(11) NOT NULL DEFAULT '0',
  `trade_lock_time` varchar(14) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `birthday` varchar(8) NOT NULL DEFAULT '',
  `id_type` varchar(32) NOT NULL DEFAULT '',
  `id_num` varchar(32) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `active_time` varchar(14) NOT NULL DEFAULT '',
  `first_login_time` varchar(14) NOT NULL DEFAULT '',
  `first_login_mac` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` varchar(32) NOT NULL DEFAULT '',
  `permit_ip` varchar(128) NOT NULL DEFAULT '',
  `permit_id` varchar(128) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `adult` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `coin_password` varchar(32) NOT NULL DEFAULT '',
  `unlock_coin_password_time` varchar(14) NOT NULL DEFAULT '',
  `org_password` varchar(32) NOT NULL DEFAULT '',
  `org_permit_ip` varchar(128) NOT NULL DEFAULT '',
  `last_login_time` varchar(14) NOT NULL DEFAULT '',
  `last_login_ip` varchar(128) NOT NULL DEFAULT '',
  `last_login_id` varchar(32) NOT NULL DEFAULT '',
  `presentee` tinyint(4) NOT NULL DEFAULT '0',
  `reg_date` varchar(14) NOT NULL DEFAULT '',
  `active_path` tinyint(4) NOT NULL DEFAULT '0',
  `trade_coin` int(11) NOT NULL DEFAULT '0',
  `last_trade_coin` char(14) NOT NULL DEFAULT '',
  `consum_coin` int(11) NOT NULL DEFAULT '0',
  `last_consum_coin` char(14) NOT NULL DEFAULT '',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memo` text,
  PRIMARY KEY (`account`),
  KEY `last_login_time` (`last_login_time`),
  KEY `update_time` (`update_time`),
  KEY `active_time` (`active_time`),
  KEY `reg_date` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_code`
--

DROP TABLE IF EXISTS `account_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_code` int(11) NOT NULL,
  `update_time` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_code`
--

LOCK TABLES `account_code` WRITE;
/*!40000 ALTER TABLE `account_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_coin_trade`
--

DROP TABLE IF EXISTS `account_coin_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_coin_trade` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_coin_trade`
--

LOCK TABLES `account_coin_trade` WRITE;
/*!40000 ALTER TABLE `account_coin_trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_coin_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_account`
--

DROP TABLE IF EXISTS `activity_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_account`
--

LOCK TABLES `activity_account` WRITE;
/*!40000 ALTER TABLE `activity_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_coin_log`
--

DROP TABLE IF EXISTS `add_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `add_time` varchar(14) NOT NULL DEFAULT '',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `add_silver_coin` int(11) NOT NULL DEFAULT '0',
  `add_gold_coin` int(11) NOT NULL DEFAULT '0',
  `cur_gold_coin` int(11) NOT NULL DEFAULT '0',
  `cur_silver_coin` int(11) NOT NULL DEFAULT '0',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_coin_log`
--

LOCK TABLES `add_coin_log` WRITE;
/*!40000 ALTER TABLE `add_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_gold_coin_log`
--

DROP TABLE IF EXISTS `add_gold_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_gold_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `cost_time` varchar(14) NOT NULL DEFAULT '',
  `cost_platform` tinyint(4) NOT NULL DEFAULT '0',
  `cost_coin` int(11) NOT NULL DEFAULT '0',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `buy_item` varchar(32) NOT NULL DEFAULT '',
  `buy_item_amount` int(11) NOT NULL DEFAULT '0',
  `silver_coin_cost` int(11) NOT NULL DEFAULT '0',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_cost` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `cur_state` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `cost_time` (`cost_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_gold_coin_log`
--

LOCK TABLES `add_gold_coin_log` WRITE;
/*!40000 ALTER TABLE `add_gold_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_gold_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_acc`
--

DROP TABLE IF EXISTS `admin_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_acc` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `privilege` text NOT NULL,
  `permit_ip` varchar(128) NOT NULL DEFAULT '',
  `permit_id` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_acc`
--

LOCK TABLES `admin_acc` WRITE;
/*!40000 ALTER TABLE `admin_acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ahserver`
--

DROP TABLE IF EXISTS `ahserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ahserver` (
  `ahserver` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`ahserver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ahserver`
--

LOCK TABLES `ahserver` WRITE;
/*!40000 ALTER TABLE `ahserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `ahserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alipay_account`
--

DROP TABLE IF EXISTS `alipay_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alipay_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `alipay_account` varchar(255) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alipay_account`
--

LOCK TABLES `alipay_account` WRITE;
/*!40000 ALTER TABLE `alipay_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `alipay_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiaddiction`
--

DROP TABLE IF EXISTS `antiaddiction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiaddiction` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `last_offline` int(10) NOT NULL DEFAULT '0',
  `total_offline` int(10) NOT NULL DEFAULT '0',
  `total_online` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiaddiction`
--

LOCK TABLES `antiaddiction` WRITE;
/*!40000 ALTER TABLE `antiaddiction` DISABLE KEYS */;
/*!40000 ALTER TABLE `antiaddiction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antibot_log`
--

DROP TABLE IF EXISTS `antibot_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antibot_log` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `bot_type` varchar(16) DEFAULT NULL,
  `bot_content` text,
  `time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`no`),
  KEY `bot_type` (`bot_type`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antibot_log`
--

LOCK TABLES `antibot_log` WRITE;
/*!40000 ALTER TABLE `antibot_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `antibot_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_bind`
--

DROP TABLE IF EXISTS `app_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_bind` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_type` tinyint(4) NOT NULL DEFAULT '1',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_bind`
--

LOCK TABLES `app_bind` WRITE;
/*!40000 ALTER TABLE `app_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena_account`
--

DROP TABLE IF EXISTS `arena_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arena_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena_account`
--

LOCK TABLES `arena_account` WRITE;
/*!40000 ALTER TABLE `arena_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_info`
--

DROP TABLE IF EXISTS `card_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_info` (
  `number` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `used` int(11) NOT NULL DEFAULT '0',
  `locked` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_info`
--

LOCK TABLES `card_info` WRITE;
/*!40000 ALTER TABLE `card_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccs`
--

DROP TABLE IF EXISTS `ccs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccs` (
  `ccs` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(31) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ccs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccs`
--

LOCK TABLES `ccs` WRITE;
/*!40000 ALTER TABLE `ccs` DISABLE KEYS */;
INSERT INTO `ccs` VALUES ('ccs_coding','10.2.50.30',8100,'coding',1,'',NULL),('ccs_daili','${IP}',8110,'${SERVER_NAME}',1,'',NULL),('ccs_dongsh','10.3.4.35',8100,'dongsh',1,'',NULL),('ccs_jiangw_30','10.2.50.30',8010,'jiangw_30',1,'',NULL),('ccs_jiangw_pk','10.2.50.30',8012,'pk',1,'',NULL),('ccs_luoyh','10.3.4.25',8010,'luoyh',1,'',NULL),('ccs_quls_30','10.3.4.5',8100,'quls_30',0,'',NULL),('ccs_test','10.2.50.57',12087,'test',1,'',NULL),('ccs_weism','10.3.35.4',8100,'weism',1,'',NULL),('ccs_wuxl','10.3.4.20',8004,'wuxl',1,'',NULL),('ccs_wuxl2','10.3.4.20',8014,'wuxl2',2,'',NULL),('ccs_xg_liy','10.3.4.22',8303,'xg_liy',1,'',NULL),('ccs_xg_quls','10.3.4.5',9100,'quls_xg',1,'',NULL),('ccs_xg_zenghh','10.3.4.2',9100,'zenghh_xg',1,'',NULL),('ccs_xuj','10.3.4.10',8100,'xuj',1,'',NULL),('ccs_xuj_30','10.2.50.30',8100,'xuj_30',1,'',NULL),('ccs_yugq','10.3.4.26',8002,'yugq',1,'',NULL),('ccs_zenghh','10.3.4.30',8005,'zenghh',1,'',NULL),('ccs_zhangq3_30','10.3.102.39',8100,'zhangq3',1,'',NULL),('p01g_ccs_pack','10.2.50.57',9887,'gy_pack',1,'',NULL),('p01g_ccs_pack58','10.2.50.58',9887,'gy_pack58',1,'',NULL),('p01_ccs_hong','10.3.4.4',10005,'hong',1,'',NULL),('p01_ccs_hongjs','10.3.4.4',8005,'hongjs',1,'',NULL),('p01_ccs_shuxx','10.3.4.12',8005,'shuxx',1,'',NULL),('p01_ccs_yeyh2','10.3.4.2',8087,'yeyh2',1,'',NULL);
/*!40000 ALTER TABLE `ccs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge`
--

DROP TABLE IF EXISTS `charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `card_bonus` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge`
--

LOCK TABLES `charge` WRITE;
/*!40000 ALTER TABLE `charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_encourage`
--

DROP TABLE IF EXISTS `charge_encourage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_encourage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `encourage` varchar(128) NOT NULL DEFAULT '0',
  `start_time` char(14) NOT NULL DEFAULT '0',
  `end_time` char(14) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gold_coin` (`gold_coin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_encourage`
--

LOCK TABLES `charge_encourage` WRITE;
/*!40000 ALTER TABLE `charge_encourage` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_encourage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_log`
--

DROP TABLE IF EXISTS `charge_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `src_ip` varchar(15) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `number` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `delta_count` int(11) NOT NULL DEFAULT '0',
  `delta_time` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_log`
--

LOCK TABLES `charge_log` WRITE;
/*!40000 ALTER TABLE `charge_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citywar_account`
--

DROP TABLE IF EXISTS `citywar_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citywar_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citywar_account`
--

LOCK TABLES `citywar_account` WRITE;
/*!40000 ALTER TABLE `citywar_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `citywar_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_red_packets_log`
--

DROP TABLE IF EXISTS `coin_red_packets_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_red_packets_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `gold_coin_before` int(11) NOT NULL DEFAULT '0',
  `gold_coin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_red_packets_log`
--

LOCK TABLES `coin_red_packets_log` WRITE;
/*!40000 ALTER TABLE `coin_red_packets_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_red_packets_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_trade_log`
--

DROP TABLE IF EXISTS `coin_trade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_trade_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `gold_coin_before` int(11) NOT NULL DEFAULT '0',
  `gold_coin_after` int(11) NOT NULL DEFAULT '0',
  `store_coin_before` int(11) NOT NULL DEFAULT '0',
  `store_coin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_trade_log`
--

LOCK TABLES `coin_trade_log` WRITE;
/*!40000 ALTER TABLE `coin_trade_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_trade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `version` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`version`,`dist`,`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('','${SERVER_NAME}','global','   ɱ     ','${SERVER_NAME}    :  ϵ/${SERVER_NAME}    :ľϵ/${SERVER_NAME}    :ˮϵ/${SERVER_NAME}    :  ϵ/${SERVER_NAME}    :  ϵ','',NULL),('','${SERVER_NAME}','global','baishou_shengyan','([\"${SERVER_NAME}һ  \":({40,79,}),\"${SERVER_NAME}һ  \":({80,99,}),\"${SERVER_NAME}һ  \":({100,119,}),\"${SERVER_NAME}һ  \":({120,159,}),])','',''),('','${SERVER_NAME}','global','chongzhi_fanli','({\"2017-03-18-00:00:00\",\"2017-03-20-17:14:59\", 1})','',''),('','${SERVER_NAME}','global','CITY_WAR_SERVER','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','dongfu_tiaozhan','${SERVER_NAME}һ  ','',''),('','${SERVER_NAME}','global','douchong_dahui','${SERVER_NAME}һ  ','',''),('','${SERVER_NAME}','global',' Ե    ','${SERVER_NAME}    :60-69,70-79,80-89/${SERVER_NAME}    :90-99,100-109,110-119/${SERVER_NAME}    :120-129,130-139,140-149,150-159,160-169','',NULL),('','${SERVER_NAME}','global','fishing_server','({\"${SERVER_NAME}һ  \",\"${SERVER_NAME}    \" })','',NULL),('','${SERVER_NAME}','global','group_buying_server','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','hero_boss_server','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','journey_of_asktao','([ \"date\" : \"20160713\", \"checksum\" : \"5FA8074842CF18DF6DDBEEB02BC8E289\" ])','',''),('','${SERVER_NAME}','global','ldb_host','127.0.0.1:','',NULL),('','${SERVER_NAME}','global','lgxy_server','${SERVER_NAME}һ  ','',''),('','${SERVER_NAME}','global','longxue_boss_server','${SERVER_NAME}һ  ','',''),('','${SERVER_NAME}','global','map_decorate_server','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','mdb_host','127.0.0.1:','',NULL),('','${SERVER_NAME}','global','party_qkbgz','([4:\"${SERVER_NAME}    \",3:\"${SERVER_NAME}    \",2:\"${SERVER_NAME}һ  \",])','',NULL),('','${SERVER_NAME}','global','party_qql','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','party_sell_servers','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','red_envelope','([ \"start_time\" : \"2016-01-09-00:00:00\", \"sort_end_time\" : \"2016-02-27-23:59:59\", \"end_time\" : \"2016-02-28-23:59:59\", \"envelope_list\" : ({ ([\"time\" : \"2016-01-18-14:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-18-16:00:00\",\"coin\" : 3000000,\"amount\" : 3000,]),([\"time\" : \"2016-01-23-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-23-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-14:00:00\",\"coin\" : 100000,\"amount\" : 100,]),([\"time\" : \"2016-01-24-16:00:00\",\"coin\" : 100000,\"amount\" : 100,]) }), \"sys_name\" : \"  ??  ?  \", \"version\" : 3 ])','',''),('','${SERVER_NAME}','global','send_exp_online','([\"end_time\":\"2010-06-29-12:00:00\",\"start_time\":\"2010-06-29-10:00:00\",\"interval\":0,\"duration\":0,])','',''),('','${SERVER_NAME}','global','shengsidou','1','',''),('','${SERVER_NAME}','global','sncbc_open_gs','({\"${SERVER_NAME}һ  \",\"${SERVER_NAME}    \" })','',NULL),('','${SERVER_NAME}','global','super_boss_server','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','task_control_server','${SERVER_NAME}һ  ','',''),('','${SERVER_NAME}','global','vendue_place','${SERVER_NAME}һ  ','','NULL'),('','${SERVER_NAME}','global','WAR_GROUP_A','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','WAR_GROUP_B','${SERVER_NAME}    ','',NULL),('','${SERVER_NAME}','global','WAR_GROUP_C','${SERVER_NAME}    ','',NULL),('','${SERVER_NAME}','global','wedding_server','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','world_boss_server','${SERVER_NAME}һ  ','',''),('','${SERVER_NAME}','global','world_level_config','0','',NULL),('','${SERVER_NAME}','global','wuzhuangyuan','${SERVER_NAME}һ  :60-69,70-79/${SERVER_NAME}һ  :80-89,90-99/${SERVER_NAME}һ  :100-109,110-119/${SERVER_NAME}һ  :120-129,130-139,140-149,150-159,160-169','',''),('','${SERVER_NAME}','global','xinfjjwz','([ \"start_time\" : \"2017-07-01-20:00:00\", \"end_time\" : \"${SERVER_NAME}-08-21-19:59:59\" ])','',''),('','${SERVER_NAME}','global','xinfu_chongbang','([ \"start_time\" : \"2016-08-08-00:00:00\", \"end_time\" : \"2016-08-31-23:59:59\", \"bonus_time\" : \"2016-09-06-23:59:59\", \"order_end_time\" : \"2016-09-10-23:59:59\", \"url\" : \"http://wd.gyyx.cn/huodong/wdxf/tf/bwcx/cbbs/index.html\" ])','',''),('','${SERVER_NAME}','global','xiygc_zhenyz','({\"${SERVER_NAME}һ  \"})','',''),('','${SERVER_NAME}','global','xiygc_zhenyzb','([\"40-69\":1,\"70-79\":1,\"80-89\":1,\"90-99\":1,\"100-109\":1,\"110-119\":1,\"120-129\":1,\"130-139\":1,\"140-149\":1,\"150-159\":1,\"160-169\":1])','',''),('','${SERVER_NAME}','global','yuqing_shandian_challenge','${SERVER_NAME}һ  ','',NULL),('','${SERVER_NAME}','global','      ','${SERVER_NAME}    :60-69,70-79/${SERVER_NAME}һ  :80-89,90-99/${SERVER_NAME}    :100-109,110-119/${SERVER_NAME}    :120-129,130-139,140-149','',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_log`
--

DROP TABLE IF EXISTS `cost_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `cost_time` varchar(14) NOT NULL DEFAULT '',
  `cost_platform` tinyint(4) NOT NULL DEFAULT '0',
  `cost_coin` int(11) NOT NULL DEFAULT '0',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `buy_item` varchar(32) NOT NULL DEFAULT '',
  `buy_item_amount` int(11) NOT NULL DEFAULT '0',
  `silver_coin_cost` int(11) NOT NULL DEFAULT '0',
  `silver_coin_left` int(11) NOT NULL DEFAULT '0',
  `gold_coin_cost` int(11) NOT NULL DEFAULT '0',
  `gold_coin_left` int(11) NOT NULL DEFAULT '0',
  `cur_state` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `gs_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `cost_time` (`cost_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_log`
--

LOCK TABLES `cost_log` WRITE;
/*!40000 ALTER TABLE `cost_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_info`
--

DROP TABLE IF EXISTS `coupon_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_info` (
  `code` varchar(32) NOT NULL DEFAULT '',
  `gid` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_info`
--

LOCK TABLES `coupon_info` WRITE;
/*!40000 ALTER TABLE `coupon_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_log`
--

DROP TABLE IF EXISTS `credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `coupon_gold_used` int(11) NOT NULL DEFAULT '0',
  `coupon_silver_used` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `source` tinyint(4) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`,`transaction_id`),
  KEY `account` (`account`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_log`
--

LOCK TABLES `credit_log` WRITE;
/*!40000 ALTER TABLE `credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_ccs`
--

DROP TABLE IF EXISTS `cs_ccs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_ccs` (
  `ccs` varchar(32) NOT NULL DEFAULT '',
  `role` text NOT NULL,
  `privilege` text NOT NULL,
  `ip` varchar(31) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ccs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_ccs`
--

LOCK TABLES `cs_ccs` WRITE;
/*!40000 ALTER TABLE `cs_ccs` DISABLE KEYS */;
INSERT INTO `cs_ccs` VALUES ('ccs_daili','LEAGUE_SOURCE/PARTYWAR_SOURCE/ARENA_SOURCE/BOTTLE_SOURCE/DRAFT_SOURCE/SDDH_SOURCE/EVERYONE_PK_SOURCE/CELEBRITY_SOURCE/SAMSUNG_SOURCE/CITYWAR_SOURCE/XGAME_SOURCE/ACTIVITY_SOURCE\r\n','*','${IP}',8110,1,'${SERVER_NAME}','',NULL),('ccs_pk','LEAGUE_COMPETE/PARTYWAR_COMPETE/ARENA_COMPETE/SDDH_COMPETE/CELEBRITY_COMPETE/SAMSUNG_COMPETE/CITYWAR_COMPETE/XGAME_COMPETE/EVERYONE_PK_COMPETE/ACTIVITY_COMPETE\r\n','*','${IP}',8012,1,'pk','',NULL),('ccs_quls_30','ARENA_SOURCE','*','10.3.4.5',8100,1,'quls_30','',NULL),('ccs_xuj','ARENA_COMPETE','cmd_league_oper/cmd_partywar_oper/cmd_bottle_oper/cmd_arena_oper/cmd_draft_oper/cmd_sddh_oper   ','10.3.4.10',8100,1,'xuj','',NULL),('ccs_yugq','','*','10.3.4.9',8002,1,'yugq','',NULL),('p01_ccs_shuxx','','*','10.3.4.12',8005,1,'shuxx','',NULL);
/*!40000 ALTER TABLE `cs_ccs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_everyone_pk_account`
--

DROP TABLE IF EXISTS `cs_everyone_pk_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_everyone_pk_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_everyone_pk_account`
--

LOCK TABLES `cs_everyone_pk_account` WRITE;
/*!40000 ALTER TABLE `cs_everyone_pk_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_everyone_pk_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csa`
--

DROP TABLE IF EXISTS `csa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csa` (
  `csa` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `port` varchar(15) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `cs_dist` varchar(255) NOT NULL DEFAULT '',
  `http_ip` varchar(255) NOT NULL DEFAULT '',
  `http_port` int(11) NOT NULL DEFAULT '0',
  `http_plat` varchar(255) NOT NULL DEFAULT '',
  `httpd_enable` int(1) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`csa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csa`
--

LOCK TABLES `csa` WRITE;
/*!40000 ALTER TABLE `csa` DISABLE KEYS */;
INSERT INTO `csa` VALUES ('csa_daili','${IP}','6101',7,'${SERVER_NAME}','',0,'',0,''),('csa_dongsh','10.3.4.35','6001',3,'csa_dongsh','',0,'',0,''),('csa_hongjs','10.3.4.4','9051',2,'csa_hongjs','',0,'',0,''),('csa_luoyh','10.3.4.25','6001',9,'csa_luoyh','',0,'',0,''),('csa_quls','10.3.4.5','6001',1,'csa_quls','',0,'',0,''),('csa_shuxx','10.3.4.12','4052',4,'??  t  t???  ','',0,'',0,''),('csa_xuj','10.3.4.10','9999',8,'csa_xuj','',0,'',0,''),('csa_yugq','10.3.4.26','6001',6,'csa_yugq','',0,'',0,''),('csa_zenghh','10.3.4.30','8051',5,'csa_zenghh','',0,'',0,''),('p01_csa_yeyh2','10.3.102.24','4080',1,'??  t?D  a  t???  ','',0,'',0,'');
/*!40000 ALTER TABLE `csa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_account`
--

DROP TABLE IF EXISTS `csw_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_account` (
  `account` varchar(64) NOT NULL DEFAULT '',
  `dist` varchar(64) NOT NULL DEFAULT '',
  `gid` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_account`
--

LOCK TABLES `csw_account` WRITE;
/*!40000 ALTER TABLE `csw_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_config`
--

DROP TABLE IF EXISTS `csw_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_config` (
  `csw_name` varchar(128) NOT NULL DEFAULT '',
  `csw_key` varchar(128) NOT NULL DEFAULT '',
  `csw_value` text,
  `memo` text,
  PRIMARY KEY (`csw_name`,`csw_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_config`
--

LOCK TABLES `csw_config` WRITE;
/*!40000 ALTER TABLE `csw_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_party_info`
--

DROP TABLE IF EXISTS `csw_party_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_party_info` (
  `name` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(64) NOT NULL DEFAULT '',
  `party` varchar(128) NOT NULL DEFAULT '',
  `score` int(8) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`dist`,`party`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_party_info`
--

LOCK TABLES `csw_party_info` WRITE;
/*!40000 ALTER TABLE `csw_party_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_party_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cta`
--

DROP TABLE IF EXISTS `cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cta` (
  `cta` varchar(32) NOT NULL DEFAULT '',
  `privilege` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `access_adb_user` varchar(32) NOT NULL DEFAULT '',
  `access_adb_password` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`cta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cta`
--

LOCK TABLES `cta` WRITE;
/*!40000 ALTER TABLE `cta` DISABLE KEYS */;
INSERT INTO `cta` VALUES ('chenqs','*','10.3.4.7',0,'yugq','chenqs','81DC9BDB52D04DC20036DBD8313ED055',NULL),('dongsh','*','10.3.4.35',0,'    ͬ  ','dongsh','81DC9BDB52D04DC20036DBD8313ED055',NULL),('hongjs','*','10.3.4.4,10.3.4.7',0,'hongjs','hongjs','81DC9BDB52D04DC20036DBD8313ED055',NULL),('shuxx','*','10.3.4.12',0,'shuxx','shuxx','81DC9BDB52D04DC20036DBD8313ED055',NULL),('xuj','*','10.3.102.191,10.3.102.62',0,'xuj','xuj','81DC9BDB52D04DC20036DBD8313ED055',NULL),('yugq','*','10.3.4.26',0,'yugq','yugq','81DC9BDB52D04DC20036DBD8313ED055',NULL),('    ͬ  ','*','${IP}',0,'    ͬ  ','root','81DC9BDB52D04DC20036DBD8313ED055',NULL);
/*!40000 ALTER TABLE `cta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dba`
--

DROP TABLE IF EXISTS `dba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dba` (
  `dba` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dba`
--

LOCK TABLES `dba` WRITE;
/*!40000 ALTER TABLE `dba` DISABLE KEYS */;
INSERT INTO `dba` VALUES ('dba_coding','10.2.50.30',8200,'coding','',1,NULL),('dba_daili','${IP}',8120,'${SERVER_NAME}','',1,NULL),('dba_dongsh','10.3.4.35',8200,'dongsh','',1,NULL),('dba_jiangw_30','10.2.50.30',8020,'jiangw_30','',1,NULL),('dba_jiangw_pk','${IP}',8022,'pk','',2,NULL),('dba_liy','10.3.102.75',8020,'liy','',1,NULL),('dba_luoyh','10.3.4.25',8020,'luoyh','',1,NULL),('dba_quls_30','10.3.4.5',8200,'quls_30','',1,NULL),('dba_test','10.2.50.57',12065,'test','',1,NULL),('dba_weism','10.3.35.4',8200,'weism','',1,NULL),('dba_wuxl','10.3.4.20',8003,'wuxl','',1,NULL),('dba_xg_quls','10.3.4.5',9200,'quls_xg','',1,NULL),('dba_xuj','10.3.4.10',8200,'xuj','',1,''),('dba_xuj_30','10.2.50.30',8200,'xuj_30','',1,NULL),('dba_zenghh','10.3.4.30',8003,'zenghh','',1,NULL),('dba_zhangq3_30','10.3.102.39',8200,'zhangq3','',1,NULL),('p01d_dba_yugq32','10.3.4.26',8005,'yugq','',1,NULL),('p01g_dba_pack','10.2.50.57',9867,'gy_pack','',1,NULL),('p01g_dba_pack58','10.2.50.58',9867,'gy_pack58','',1,NULL),('p01_dba_hong','10.3.4.4',10003,'hong','',1,NULL),('p01_dba_hongjs','10.3.4.4',8003,'hongjs','',1,NULL),('p01_dba_shuxx','10.3.4.12',8003,'shuxx','',1,NULL),('p01_dba_yeyh2','10.3.102.24',8076,'yeyh2','',1,NULL);
/*!40000 ALTER TABLE `dba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddb`
--

DROP TABLE IF EXISTS `ddb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddb` (
  `ddb` varchar(32) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `driver` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`ddb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddb`
--

LOCK TABLES `ddb` WRITE;
/*!40000 ALTER TABLE `ddb` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `dist` varchar(32) NOT NULL DEFAULT '',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `service` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `spa` varchar(32) NOT NULL DEFAULT '',
  `csa` varchar(32) NOT NULL DEFAULT '',
  `party_war_server` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES ('coding','','login/new_char/permit_wizard/new_account',1,'spa_coding','','',NULL),('dongsh','','login/new_char/permit_wizard/new_account',1,'spa_dongsh','','',NULL),('gy_pack','','login/new_char/permit_wizard/new_account',1,'p01g_spa_pack','','',NULL),('gy_pack58','','login/new_char/permit_wizard/new_account',1,'p01g_spa_pack58','','',NULL),('hong','','login/new_char/permit_wizard/new_account',1,'p01_spa_hong','p01_csa_hong','',NULL),('hongjs','','login/new_char/permit_wizard/new_account',1,'p01_spa_hongjs','csa_hongjs','',NULL),('${SERVER_NAME}','','login/new_char/permit_wizard/new_account/new_party',1,'spa_jiangw','csa_daili','',NULL),('jiangw_30','','login/new_char/permit_wizard/new_account',1,'spa_jiangw_30','csa_jiangw','',NULL),('jiangw_pk','','login/new_char/permit_wizard/new_account',2,'spa_jiangw_pk','csa_jiangw','',NULL),('luoyh','','login/new_char/permit_wizard/new_account',1,'spa_luoyh','csa_luoyh','',NULL),('quls_30','','login/new_char/permit_wizard/new_account',1,'spa_quls_30','csa_quls','',NULL),('shuxx','','login/new_char/permit_wizard/new_account/new_party',1,'p01_spa_shuxx','csa_shuxx','p01_gs_shuxx',NULL),('test','','login/new_char/permit_wizard/new_account',1,'spa_test','','',NULL),('weism','','login/new_char/permit_wizard/new_account',1,'spa_weism','','',NULL),('wuxl','','login/new_char/permit_wizard/new_account',1,'spa_wuxl','','',NULL),('xg_liy','','login/new_char/permit_wizard/new_account',1,'spa_xg_liy','csa_xg_liy','',NULL),('xuj','','login/new_char/permit_wizard/new_account',1,'spa_xuj','csa_xuj','',NULL),('xuj_30','','login/new_char/permit_wizard/new_account',1,'spa_xuj_30','','',NULL),('yeyh2','','login/new_char/permit_wizard/new_account',1,'spa_yeyh2','p01_csa_yeyh2','',NULL),('yugq','','login/new_char/permit_wizard/new_account',1,'spa_yugq','csa_yugq','',NULL),('zenghh','','login/new_char/permit_wizard/new_account',1,'spa_zenghh','csa_zenghh','',NULL),('zenghh_1','','login/new_char/permit_wizard/new_account',2,'spa_zenghh_1','','',NULL),('zhangq3','','login/new_char/permit_wizard/new_account',1,'spa_zhangq3_30','','','(NULL)');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecard_business`
--

DROP TABLE IF EXISTS `ecard_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecard_business` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `action` varchar(10) DEFAULT NULL,
  `buyer_done` int(11) DEFAULT NULL,
  `seller_done` int(11) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ecard_seller` (`ecard_seller`,`seller_done`),
  KEY `ecard_buyer` (`ecard_buyer`,`buyer_done`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecard_business`
--

LOCK TABLES `ecard_business` WRITE;
/*!40000 ALTER TABLE `ecard_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecard_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecard_log`
--

DROP TABLE IF EXISTS `ecard_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecard_log` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_pwd` varchar(20) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `direction` varchar(10) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ecard_id` (`ecard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecard_log`
--

LOCK TABLES `ecard_log` WRITE;
/*!40000 ALTER TABLE `ecard_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecard_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecard_need_to_resend`
--

DROP TABLE IF EXISTS `ecard_need_to_resend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecard_need_to_resend` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `ecard_no` varchar(30) DEFAULT NULL,
  `ecard_pwd` varchar(20) DEFAULT NULL,
  `ecard_id` varchar(100) DEFAULT NULL,
  `ecard_server` varchar(30) DEFAULT NULL,
  `ecard_seller` varchar(128) DEFAULT NULL,
  `ecard_buyer` varchar(128) DEFAULT NULL,
  `ecard_buyer_account` varchar(128) DEFAULT NULL,
  `ecard_price` int(11) DEFAULT NULL,
  `ecard_type` int(11) DEFAULT NULL,
  `ecard_dist` varchar(30) DEFAULT NULL,
  `ecard_time` varchar(30) DEFAULT NULL,
  `ecard_order_id` text,
  `send_result` int(11) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `ecard_id` (`ecard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecard_need_to_resend`
--

LOCK TABLES `ecard_need_to_resend` WRITE;
/*!40000 ALTER TABLE `ecard_need_to_resend` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecard_need_to_resend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage`
--

DROP TABLE IF EXISTS `encourage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `encourage_type` varchar(255) NOT NULL DEFAULT '',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `locked` int(11) NOT NULL DEFAULT '0',
  `insert_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `insert_time` (`insert_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage`
--

LOCK TABLES `encourage` WRITE;
/*!40000 ALTER TABLE `encourage` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage_log`
--

DROP TABLE IF EXISTS `encourage_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `encourage_id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `request_time` (`request_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage_log`
--

LOCK TABLES `encourage_log` WRITE;
/*!40000 ALTER TABLE `encourage_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `express_recharge`
--

DROP TABLE IF EXISTS `express_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `express_recharge` (
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(2) DEFAULT NULL,
  `result_code` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `inquiry_times` int(11) DEFAULT NULL,
  `card_no` varchar(30) DEFAULT NULL,
  `card_pwd` varchar(20) DEFAULT NULL,
  `user_name` varchar(128) DEFAULT NULL,
  `char_name` varchar(32) DEFAULT NULL,
  `server_name` varchar(30) DEFAULT NULL,
  `sales_name` varchar(128) DEFAULT NULL,
  `user_ip` varchar(15) DEFAULT NULL,
  `par_value` int(11) DEFAULT NULL,
  `pay_type` varchar(30) DEFAULT NULL,
  `card_type` tinyint(4) DEFAULT NULL,
  `update_time` varchar(14) DEFAULT NULL,
  `insert_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`order_id`),
  KEY `result_inquiry` (`result`,`inquiry_times`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `express_recharge`
--

LOCK TABLES `express_recharge` WRITE;
/*!40000 ALTER TABLE `express_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `express_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbuy_coin_log`
--

DROP TABLE IF EXISTS `gbuy_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbuy_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gcoin_before` int(11) NOT NULL DEFAULT '0',
  `gcoin_after` int(11) NOT NULL DEFAULT '0',
  `scoin_before` int(11) NOT NULL DEFAULT '0',
  `scoin_after` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin_before` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin_after` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin_before` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin_after` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbuy_coin_log`
--

LOCK TABLES `gbuy_coin_log` WRITE;
/*!40000 ALTER TABLE `gbuy_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbuy_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_coin_log`
--

DROP TABLE IF EXISTS `gift_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `coupon_gold_used` int(11) NOT NULL DEFAULT '0',
  `coupon_silver_used` int(11) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `source` tinyint(4) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`,`transaction_id`),
  KEY `account` (`account`),
  KEY `transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_coin_log`
--

LOCK TABLES `gift_coin_log` WRITE;
/*!40000 ALTER TABLE `gift_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_valid_time`
--

DROP TABLE IF EXISTS `gift_valid_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_valid_time` (
  `gift_type` varchar(30) NOT NULL DEFAULT '',
  `start_time` varchar(14) NOT NULL DEFAULT '0',
  `end_time` varchar(14) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`gift_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_valid_time`
--

LOCK TABLES `gift_valid_time` WRITE;
/*!40000 ALTER TABLE `gift_valid_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_valid_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip`
--

DROP TABLE IF EXISTS `ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip` (
  `start_ip` varchar(32) NOT NULL DEFAULT '',
  `end_ip` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) DEFAULT NULL,
  `province` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `memo` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`start_ip`,`end_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip`
--

LOCK TABLES `ip` WRITE;
/*!40000 ALTER TABLE `ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_card`
--

DROP TABLE IF EXISTS `ip_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_card` (
  `card_no` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `used` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`card_no`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_card`
--

LOCK TABLES `ip_card` WRITE;
/*!40000 ALTER TABLE `ip_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_info`
--

DROP TABLE IF EXISTS `ip_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_info` (
  `start_ip_desc` varchar(16) NOT NULL DEFAULT '',
  `end_ip_desc` varchar(16) NOT NULL DEFAULT '',
  `start_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `end_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `country` varchar(64) DEFAULT NULL,
  `province` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`start_ip_desc`,`end_ip_desc`,`start_ip`,`end_ip`),
  KEY `start_ip` (`start_ip`),
  KEY `end_ip` (`end_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_info`
--

LOCK TABLES `ip_info` WRITE;
/*!40000 ALTER TABLE `ip_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldba`
--

DROP TABLE IF EXISTS `ldba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldba` (
  `ldba` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`ldba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldba`
--

LOCK TABLES `ldba` WRITE;
/*!40000 ALTER TABLE `ldba` DISABLE KEYS */;
INSERT INTO `ldba` VALUES ('ldba_jiangw','${IP}',8040,' ڲ     ','',2,NULL),('ldba_jiangw_30','10.2.50.30',8040,'jiangw_30','',2,NULL),('ldba_jiangw_pk','${IP}',8050,'pk','',2,NULL);
/*!40000 ALTER TABLE `ldba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league_account`
--

DROP TABLE IF EXISTS `league_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `league_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league_account`
--

LOCK TABLES `league_account` WRITE;
/*!40000 ALTER TABLE `league_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `league_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_encrypt`
--

DROP TABLE IF EXISTS `local_encrypt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_encrypt` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(64) NOT NULL DEFAULT '',
  `local_encrypt_info` text NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `time` varchar(32) NOT NULL DEFAULT '0',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_encrypt`
--

LOCK TABLES `local_encrypt` WRITE;
/*!40000 ALTER TABLE `local_encrypt` DISABLE KEYS */;
/*!40000 ALTER TABLE `local_encrypt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrix`
--

DROP TABLE IF EXISTS `matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrix` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `matrix` text NOT NULL,
  `bind_time` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(32) NOT NULL DEFAULT '',
  `claim_lost_off_time` varchar(32) NOT NULL DEFAULT '',
  `enable` int(11) NOT NULL DEFAULT '1',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrix`
--

LOCK TABLES `matrix` WRITE;
/*!40000 ALTER TABLE `matrix` DISABLE KEYS */;
/*!40000 ALTER TABLE `matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_device`
--

DROP TABLE IF EXISTS `mp_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_device` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `device` varchar(128) NOT NULL DEFAULT '',
  `os` tinyint(4) NOT NULL DEFAULT '0',
  `bind_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_device`
--

LOCK TABLES `mp_device` WRITE;
/*!40000 ALTER TABLE `mp_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partywar_account`
--

DROP TABLE IF EXISTS `partywar_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partywar_account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partywar_account`
--

LOCK TABLES `partywar_account` WRITE;
/*!40000 ALTER TABLE `partywar_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `partywar_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_deposit`
--

DROP TABLE IF EXISTS `pet_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(128) NOT NULL DEFAULT '',
  `pet_level` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `pet_data` text NOT NULL,
  `org_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `org_owner_name` varchar(32) NOT NULL DEFAULT '',
  `new_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `new_owner_name` varchar(32) NOT NULL DEFAULT '',
  `deposit_owner` varchar(32) NOT NULL DEFAULT '',
  `deposit_time` varchar(14) NOT NULL DEFAULT '',
  `deposit_reason` text NOT NULL,
  `take_owner` varchar(32) NOT NULL DEFAULT '',
  `take_time` varchar(14) NOT NULL DEFAULT '',
  `take_reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pet_iid` (`pet_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_deposit`
--

LOCK TABLES `pet_deposit` WRITE;
/*!40000 ALTER TABLE `pet_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_auth`
--

DROP TABLE IF EXISTS `phone_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_auth` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_info` text,
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_auth`
--

LOCK TABLES `phone_auth` WRITE;
/*!40000 ALTER TABLE `phone_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_bind`
--

DROP TABLE IF EXISTS `phone_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_bind` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `bind_time` char(14) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_bind`
--

LOCK TABLES `phone_bind` WRITE;
/*!40000 ALTER TABLE `phone_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege_group`
--

DROP TABLE IF EXISTS `privilege_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege_group` (
  `privilege_group` varchar(15) NOT NULL DEFAULT '',
  `class` varchar(15) NOT NULL DEFAULT '',
  `privilege` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`privilege_group`,`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege_group`
--

LOCK TABLES `privilege_group` WRITE;
/*!40000 ALTER TABLE `privilege_group` DISABLE KEYS */;
INSERT INTO `privilege_group` VALUES ('CS1','admintool','block_character/fetch_keywords/chat_attr/channel_silence/set_inspect_area/query_ddb/query_adb/query_mdb/query_ldb/query_tdb/monitor_signature/query_online_char',''),('CS2','admintool','polling_char/ip_query/trace_iid/restrict_char/polling_account/throw_in_jail/jail_and_silence',''),('CS3','admintool','control_account/oper_check/release_protected/transfer_pet/transfer_item/bind_roll_back/delete_pet/delete_item/polling_account/transfer_cash/delete_cash',''),('CS4','admintool','update_keywords/add_keywords/delete_keywords',''),('G1','admintool','query_ddb/query_adb/query_mdb/oper_character/block_account/block_character/delete_character/recover_character/release_character/delete_item/control_account/delete_pet/polling_char','');
/*!40000 ALTER TABLE `privilege_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_recall`
--

DROP TABLE IF EXISTS `property_recall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_recall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT '',
  `ob_type` tinyint(4) unsigned DEFAULT NULL,
  `take` tinyint(4) unsigned DEFAULT NULL,
  `exchange` tinyint(4) unsigned DEFAULT '0',
  `depend` varchar(16) DEFAULT NULL,
  `checksum` int(32) NOT NULL DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`),
  KEY `owner` (`update_time`,`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_recall`
--

LOCK TABLES `property_recall` WRITE;
/*!40000 ALTER TABLE `property_recall` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_recall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protect_bonus`
--

DROP TABLE IF EXISTS `protect_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protect_bonus` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `branch` varchar(7) NOT NULL DEFAULT '',
  `dist` varchar(32) DEFAULT NULL,
  `matrix_time` text,
  `passpod_time` text,
  `phone_time` text,
  `sm_time` text,
  `bonus_time` varchar(14) DEFAULT NULL,
  `bonus_type` varchar(10) DEFAULT NULL,
  `bonus_info` text,
  `insert_time` varchar(14) NOT NULL DEFAULT '',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `memo` text,
  PRIMARY KEY (`account`,`branch`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protect_bonus`
--

LOCK TABLES `protect_bonus` WRITE;
/*!40000 ALTER TABLE `protect_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `protect_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protect_range`
--

DROP TABLE IF EXISTS `protect_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protect_range` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `p_range` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protect_range`
--

LOCK TABLES `protect_range` WRITE;
/*!40000 ALTER TABLE `protect_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `protect_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_store`
--

DROP TABLE IF EXISTS `purchase_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_store` (
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '0',
  `content` text,
  `sub_amount` int(11) unsigned DEFAULT NULL,
  `amount` int(11) unsigned DEFAULT NULL,
  `type` tinyint(2) unsigned DEFAULT NULL,
  `end_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_store`
--

LOCK TABLES `purchase_store` WRITE;
/*!40000 ALTER TABLE `purchase_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwd_protect`
--

DROP TABLE IF EXISTS `pwd_protect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pwd_protect` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `protect_info` text,
  `checksum` varchar(32) DEFAULT NULL,
  `bind_time` varchar(14) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`account`,`protect_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwd_protect`
--

LOCK TABLES `pwd_protect` WRITE;
/*!40000 ALTER TABLE `pwd_protect` DISABLE KEYS */;
/*!40000 ALTER TABLE `pwd_protect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_runtime`
--

DROP TABLE IF EXISTS `qr_runtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qr_runtime` (
  `qrid` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`qrid`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_runtime`
--

LOCK TABLES `qr_runtime` WRITE;
/*!40000 ALTER TABLE `qr_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `qr_runtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red_envelope`
--

DROP TABLE IF EXISTS `red_envelope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `red_envelope` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `total_coin` int(11) NOT NULL DEFAULT '0',
  `cur_coin` int(11) NOT NULL DEFAULT '0',
  `total_num` int(11) NOT NULL DEFAULT '0',
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `deadline` int(11) NOT NULL DEFAULT '0',
  `use` tinyint(4) NOT NULL DEFAULT '0',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`name`,`iid`,`use`),
  KEY `iid` (`iid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_envelope`
--

LOCK TABLES `red_envelope` WRITE;
/*!40000 ALTER TABLE `red_envelope` DISABLE KEYS */;
/*!40000 ALTER TABLE `red_envelope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relative_acc`
--

DROP TABLE IF EXISTS `relative_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relative_acc` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `last_add_coin_cookie` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relative_acc`
--

LOCK TABLES `relative_acc` WRITE;
/*!40000 ALTER TABLE `relative_acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `relative_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_ctrl`
--

DROP TABLE IF EXISTS `safe_ctrl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safe_ctrl` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `protect_info` text,
  `checksum` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`account`,`protect_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_ctrl`
--

LOCK TABLES `safe_ctrl` WRITE;
/*!40000 ALTER TABLE `safe_ctrl` DISABLE KEYS */;
INSERT INTO `safe_ctrl` VALUES ('w04700115','total_switch','36','F94DEADFEE0F1C5339944EABABF108CE','');
/*!40000 ALTER TABLE `safe_ctrl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '1500',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `enable` int(11) NOT NULL DEFAULT '0',
  `server_key` varchar(32) NOT NULL DEFAULT '',
  `when_iid_duplicated` varchar(32) NOT NULL DEFAULT '',
  `when_challenge_failed` varchar(32) NOT NULL DEFAULT 'punish_ex',
  `when_found_cheater` varchar(32) NOT NULL DEFAULT '',
  `punish_id` int(11) NOT NULL DEFAULT '0',
  `save_when_coin_cost` int(11) NOT NULL DEFAULT '0',
  `charge_level` int(11) NOT NULL DEFAULT '0',
  `charge_interval` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ahserver` varchar(32) NOT NULL DEFAULT '',
  `ip_wt` varchar(15) NOT NULL DEFAULT '',
  `ip_dx` varchar(15) NOT NULL DEFAULT '',
  `enable_multi_ip` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES 
${LINES_SQL};
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_status`
--

DROP TABLE IF EXISTS `server_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_status` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `available` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `online` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '0',
  `cpu_cost` int(11) NOT NULL DEFAULT '0',
  `cpu_satisfy` int(11) NOT NULL DEFAULT '0',
  `report_time` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_status`
--

LOCK TABLES `server_status` WRITE;
/*!40000 ALTER TABLE `server_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `permit` varchar(255) NOT NULL DEFAULT '',
  `forbid` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spa`
--

DROP TABLE IF EXISTS `spa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spa` (
  `spa` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server_key` varchar(32) DEFAULT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL DEFAULT '0',
  `port` int(11) NOT NULL DEFAULT '0',
  `http_plat` varchar(255) DEFAULT NULL,
  `http_ip` varchar(255) DEFAULT NULL,
  `httpd_enable` int(1) DEFAULT NULL,
  `httpd_port` int(16) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`spa`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spa`
--

LOCK TABLES `spa` WRITE;
/*!40000 ALTER TABLE `spa` DISABLE KEYS */;
INSERT INTO `spa` VALUES ('p01g_spa_pack','gy_pack',NULL,'10.2.50.57',1,9877,NULL,NULL,NULL,NULL,NULL),('p01g_spa_pack58','gy_pack58',NULL,'10.2.50.58',1,9877,NULL,NULL,NULL,NULL,NULL),('p01_spa_hong','hong',NULL,'10.3.4.4',1,10011,NULL,NULL,NULL,NULL,NULL),('p01_spa_hongjs','hongjs',NULL,'10.3.4.4',1,8011,NULL,NULL,NULL,NULL,NULL),('p01_spa_shuxx','shuxx',NULL,'10.3.4.12',1,8009,NULL,NULL,NULL,NULL,NULL),('spa_coding','coding',NULL,'10.2.50.30',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_dongsh','dongsh',NULL,'10.3.4.35',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_jiangw','    ͬ  ',NULL,'${IP}',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_jiangw_30','jiangw_30',NULL,'10.2.50.30',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_jiangw_pk','jiangw_pk',NULL,'${IP}',2,8032,NULL,NULL,NULL,NULL,NULL),('spa_luoyh','luoyh',NULL,'10.3.4.25',1,8030,NULL,NULL,NULL,NULL,NULL),('spa_quls_30','quls_30',NULL,'10.3.4.5',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_test','test',NULL,'10.2.50.57',1,12076,NULL,NULL,NULL,NULL,NULL),('spa_weism','weism',NULL,'10.3.35.4',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_wuxl','wuxl',NULL,'10.3.4.20',1,9877,NULL,NULL,NULL,NULL,NULL),('spa_xuj','xuj',NULL,'10.3.4.10',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_xuj_30','xuj_30',NULL,'10.2.50.30',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_yeyh2','yeyh2',NULL,'10.3.102.24',1,8066,NULL,NULL,NULL,NULL,NULL),('spa_yugq','yugq',NULL,'10.3.4.26',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_zenghh','zenghh',NULL,'10.3.4.30',1,8400,NULL,NULL,NULL,NULL,NULL),('spa_zenghh_1','zenghh_1',NULL,'10.3.4.30',1,9400,NULL,NULL,NULL,NULL,NULL),('spa_zhangq3_30','zhangq3',NULL,'10.3.102.39',1,8400,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_9apay`
--

DROP TABLE IF EXISTS `t_9apay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_9apay` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `orderno` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `orderid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cardno` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GameCurrency` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `appid` int(255) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `server_id` int(255) DEFAULT NULL,
  `Processing` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_9apay`
--

LOCK TABLES `t_9apay` WRITE;
/*!40000 ALTER TABLE `t_9apay` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_9apay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_data`
--

DROP TABLE IF EXISTS `top_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_data` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `top_key` varchar(128) NOT NULL DEFAULT '',
  `top_content` text NOT NULL,
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`top_index`,`top_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_data`
--

LOCK TABLES `top_data` WRITE;
/*!40000 ALTER TABLE `top_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_data`
--

DROP TABLE IF EXISTS `transfer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_data` (
  `transfer_id` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `class` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `mesg_ok` varchar(255) NOT NULL DEFAULT '',
  `mesg_cht` varchar(255) NOT NULL DEFAULT '',
  `tip` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `limit_day` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `transfer_account` varchar(16) NOT NULL DEFAULT '',
  `transfer_time` varchar(14) NOT NULL DEFAULT '',
  `request_gid` varchar(16) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transfer_id`),
  KEY `owner` (`owner`),
  KEY `iid` (`iid`),
  KEY `class` (`class`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_data`
--

LOCK TABLES `transfer_data` WRITE;
/*!40000 ALTER TABLE `transfer_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tts`
--

DROP TABLE IF EXISTS `tts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tts` (
  `tts` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `trading_url` varchar(255) NOT NULL DEFAULT '',
  `web_status_url` varchar(32) NOT NULL DEFAULT '',
  `http_ip` varchar(255) NOT NULL DEFAULT '',
  `http_plat` varchar(255) NOT NULL DEFAULT '',
  `httpd_enable` int(1) NOT NULL DEFAULT '0',
  `httpd_port` int(16) NOT NULL DEFAULT '0',
  `check_sum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`tts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tts`
--

LOCK TABLES `tts` WRITE;
/*!40000 ALTER TABLE `tts` DISABLE KEYS */;
INSERT INTO `tts` VALUES ('p01g_tts_pack','10.2.50.57',9897,1,'gy_pack','http://10.3.102.49','http://treasure.gyyx.com','*','1a  ?',1,85,''),('p01g_tts_pack58','10.2.50.58',9897,1,'gy_pack58','http://10.3.102.49','http://treasure.gyyx.com','*','1a  ?',1,85,''),('p01_tts_hongjs','10.3.4.4',8071,1,'hongjs','http://10.3.102.49','http://treasure.gyyx.com','*','1a  ?',1,85,''),('p01_tts_yeyh2','10.3.102.24',8600,1,'yeyh2','http://10.3.102.49','http://treasure.gyyx.com','*','1a  ?',1,85,''),('tte_test','10.2.50.57',12011,1,'test','http://10.3.102.49','http://treasure.gyyx.com','*','1a  ?',1,85,''),('tts_jiangw','${IP}',8600,1,'    ͬ  ','http://10.2.50.58/simulateforum/trading.php','http://treasure.gyyx.com','*','1a  ?',1,85,''),('tts_quls','10.3.102.203',8600,1,'quls_30','http://10.3.102.49','http://treasure.gyyx.com','*','1a  ?',1,85,''),('tts_shuxx','10.3.4.12',9000,1,'shuxx','http://10.2.16.7','http://treasure.gyyx.com','*','1a  ?',0,85,''),('tts_xuj','10.3.4.10',8600,1,'xuj','','','','',0,9550,''),('tts_yugq','10.3.4.26',9001,1,'yugq','','','','',0,0,''),('tts_zhangq3_30','10.3.102.39',8600,1,'zhangq3','http://10.3.102.49','http://treasure.gyyx.com','*','1a  ?',1,85,'');
/*!40000 ALTER TABLE `tts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip_sms_protect`
--

DROP TABLE IF EXISTS `vip_sms_protect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_sms_protect` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `p_coin_trade` int(11) NOT NULL DEFAULT '0',
  `p_coin_consum` int(11) NOT NULL DEFAULT '0',
  `p_prop_trade` int(11) NOT NULL DEFAULT '0',
  `p_block_account` int(11) NOT NULL DEFAULT '0',
  `p_oper_role` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_sms_protect`
--

LOCK TABLES `vip_sms_protect` WRITE;
/*!40000 ALTER TABLE `vip_sms_protect` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip_sms_protect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wba`
--

DROP TABLE IF EXISTS `wba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wba` (
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `force_count` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`user`,`ip`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wba`
--

LOCK TABLES `wba` WRITE;
/*!40000 ALTER TABLE `wba` DISABLE KEYS */;
/*!40000 ALTER TABLE `wba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xg_name`
--

DROP TABLE IF EXISTS `xg_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xg_name` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `xg_type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`xg_type`),
  KEY `xg_type` (`xg_type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xg_name`
--

LOCK TABLES `xg_name` WRITE;
/*!40000 ALTER TABLE `xg_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `xg_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_ddb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_ddb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_ddb_1`;

--
-- Table structure for table `activate_user_data`
--

DROP TABLE IF EXISTS `activate_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activate_user_data` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name` (`name`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activate_user_data`
--

LOCK TABLES `activate_user_data` WRITE;
/*!40000 ALTER TABLE `activate_user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `activate_user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_recognize`
--

DROP TABLE IF EXISTS `admin_recognize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_recognize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `owner_gid` varchar(16) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `data` text,
  `reason` text,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_recognize`
--

LOCK TABLES `admin_recognize` WRITE;
/*!40000 ALTER TABLE `admin_recognize` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_recognize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attention_data`
--

DROP TABLE IF EXISTS `attention_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attention_data` (
  `attention_type` varchar(32) NOT NULL DEFAULT '',
  `attention_id` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`attention_type`,`attention_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attention_data`
--

LOCK TABLES `attention_data` WRITE;
/*!40000 ALTER TABLE `attention_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `attention_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_char_info`
--

DROP TABLE IF EXISTS `basic_char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_char_info` (
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `polar` tinyint(4) NOT NULL DEFAULT '0',
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `tt_weibo_name` varchar(128) NOT NULL DEFAULT '',
  `hide_tt_weibo` tinyint(4) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_char_info`
--

LOCK TABLES `basic_char_info` WRITE;
/*!40000 ALTER TABLE `basic_char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `basic_char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottle_data`
--

DROP TABLE IF EXISTS `bottle_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bottle_data` (
  `bid` varchar(48) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `recv_dist` varchar(32) NOT NULL DEFAULT '',
  `recv_gid` char(16) NOT NULL DEFAULT '',
  `recv_name` varchar(32) NOT NULL DEFAULT '',
  `recv_level` int(11) NOT NULL DEFAULT '0',
  `recv_polar` tinyint(4) NOT NULL DEFAULT '0',
  `recv_gender` tinyint(4) NOT NULL DEFAULT '0',
  `recv_time` char(14) NOT NULL DEFAULT '',
  `recv_read` tinyint(4) NOT NULL DEFAULT '0',
  `send_dist` varchar(32) NOT NULL DEFAULT '',
  `send_gid` char(16) NOT NULL DEFAULT '',
  `send_name` varchar(32) NOT NULL DEFAULT '',
  `send_level` int(11) NOT NULL DEFAULT '0',
  `send_polar` tinyint(4) NOT NULL DEFAULT '0',
  `send_gender` tinyint(4) NOT NULL DEFAULT '0',
  `send_time` char(14) NOT NULL DEFAULT '',
  `send_read` tinyint(4) NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `destroy_time` char(14) NOT NULL DEFAULT '',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `recv_gid` (`recv_dist`,`recv_gid`),
  KEY `send_gid` (`send_dist`,`send_gid`),
  KEY `recv_time` (`recv_time`),
  KEY `send_time` (`send_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle_data`
--

LOCK TABLES `bottle_data` WRITE;
/*!40000 ALTER TABLE `bottle_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `bottle_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name_path` (`name`,`path`),
  KEY `path_time` (`path`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data1`
--

DROP TABLE IF EXISTS `data1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data1` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `branch` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`,`name`,`branch`),
  KEY `name_path` (`name`,`path`),
  KEY `path_time` (`path`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data1`
--

LOCK TABLES `data1` WRITE;
/*!40000 ALTER TABLE `data1` DISABLE KEYS */;
/*!40000 ALTER TABLE `data1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gid_info`
--

DROP TABLE IF EXISTS `gid_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gid_info` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`gid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gid_info`
--

LOCK TABLES `gid_info` WRITE;
/*!40000 ALTER TABLE `gid_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `gid_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_deposit`
--

DROP TABLE IF EXISTS `item_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(128) NOT NULL DEFAULT '',
  `item_level` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `item_data` text NOT NULL,
  `org_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `org_owner_name` varchar(32) NOT NULL DEFAULT '',
  `new_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `new_owner_name` varchar(32) NOT NULL DEFAULT '',
  `deposit_owner` varchar(32) NOT NULL DEFAULT '',
  `deposit_time` varchar(14) NOT NULL DEFAULT '',
  `deposit_reason` text NOT NULL,
  `take_owner` varchar(32) NOT NULL DEFAULT '',
  `take_time` varchar(14) NOT NULL DEFAULT '',
  `take_reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_iid` (`item_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_deposit`
--

LOCK TABLES `item_deposit` WRITE;
/*!40000 ALTER TABLE `item_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_update`
--

DROP TABLE IF EXISTS `online_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_name` varchar(128) NOT NULL DEFAULT '',
  `server_ver` varchar(32) NOT NULL DEFAULT '',
  `server_type` varchar(16) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`update_name`,`server_ver`,`server_type`),
  KEY `ver_type` (`server_ver`,`server_type`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_update`
--

LOCK TABLES `online_update` WRITE;
/*!40000 ALTER TABLE `online_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_deposit`
--

DROP TABLE IF EXISTS `pet_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(128) NOT NULL DEFAULT '',
  `pet_level` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `pet_data` text NOT NULL,
  `org_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `org_owner_name` varchar(32) NOT NULL DEFAULT '',
  `new_owner_gid` varchar(16) NOT NULL DEFAULT '',
  `new_owner_name` varchar(32) NOT NULL DEFAULT '',
  `deposit_owner` varchar(32) NOT NULL DEFAULT '',
  `deposit_time` varchar(14) NOT NULL DEFAULT '',
  `deposit_reason` text NOT NULL,
  `take_owner` varchar(32) NOT NULL DEFAULT '',
  `take_time` varchar(14) NOT NULL DEFAULT '',
  `take_reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pet_iid` (`pet_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_deposit`
--

LOCK TABLES `pet_deposit` WRITE;
/*!40000 ALTER TABLE `pet_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_recall`
--

DROP TABLE IF EXISTS `property_recall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_recall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT '',
  `ob_type` tinyint(4) unsigned DEFAULT NULL,
  `take` tinyint(4) unsigned DEFAULT NULL,
  `exchange` tinyint(4) unsigned DEFAULT '0',
  `depend` varchar(16) DEFAULT NULL,
  `checksum` int(32) NOT NULL DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`),
  KEY `owner` (`update_time`,`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_recall`
--

LOCK TABLES `property_recall` WRITE;
/*!40000 ALTER TABLE `property_recall` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_recall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_store`
--

DROP TABLE IF EXISTS `purchase_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_store` (
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(16) NOT NULL DEFAULT '',
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '0',
  `content` text,
  `sub_amount` int(11) unsigned DEFAULT NULL,
  `amount` int(11) unsigned DEFAULT NULL,
  `type` tinyint(2) unsigned DEFAULT NULL,
  `end_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_store`
--

LOCK TABLES `purchase_store` WRITE;
/*!40000 ALTER TABLE `purchase_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red_envelope`
--

DROP TABLE IF EXISTS `red_envelope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `red_envelope` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `total_coin` int(11) NOT NULL DEFAULT '0',
  `cur_coin` int(11) NOT NULL DEFAULT '0',
  `total_num` int(11) NOT NULL DEFAULT '0',
  `cur_num` int(11) NOT NULL DEFAULT '0',
  `deadline` int(11) NOT NULL DEFAULT '0',
  `use` tinyint(4) NOT NULL DEFAULT '0',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`name`,`iid`,`use`),
  KEY `iid` (`iid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_envelope`
--

LOCK TABLES `red_envelope` WRITE;
/*!40000 ALTER TABLE `red_envelope` DISABLE KEYS */;
/*!40000 ALTER TABLE `red_envelope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_data`
--

DROP TABLE IF EXISTS `top_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_data` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `top_key` varchar(128) NOT NULL DEFAULT '',
  `top_content` text NOT NULL,
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`top_index`,`top_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_data`
--

LOCK TABLES `top_data` WRITE;
/*!40000 ALTER TABLE `top_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_data`
--

DROP TABLE IF EXISTS `transfer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_data` (
  `transfer_id` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `class` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `mesg_ok` varchar(255) NOT NULL DEFAULT '',
  `mesg_cht` varchar(255) NOT NULL DEFAULT '',
  `tip` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `limit_day` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `transfer_account` varchar(16) NOT NULL DEFAULT '',
  `transfer_time` varchar(14) NOT NULL DEFAULT '',
  `request_gid` varchar(16) NOT NULL DEFAULT '',
  `request_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transfer_id`),
  KEY `owner` (`owner`),
  KEY `iid` (`iid`),
  KEY `class` (`class`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_data`
--

LOCK TABLES `transfer_data` WRITE;
/*!40000 ALTER TABLE `transfer_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xg_name`
--

DROP TABLE IF EXISTS `xg_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xg_name` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `xg_type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`xg_type`),
  KEY `xg_type` (`xg_type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xg_name`
--

LOCK TABLES `xg_name` WRITE;
/*!40000 ALTER TABLE `xg_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `xg_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_dmdb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_dmdb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_dmdb_1`;

--
-- Table structure for table `account_basic`
--

DROP TABLE IF EXISTS `account_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_basic` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `silver_coin` int(10) NOT NULL DEFAULT '0',
  `gold_coin` int(10) NOT NULL DEFAULT '0',
  `last_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`silver_coin`,`gold_coin`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_basic`
--

LOCK TABLES `account_basic` WRITE;
/*!40000 ALTER TABLE `account_basic` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  `start_time` char(14) NOT NULL DEFAULT '',
  `end_time` char(14) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(255) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `activity` (`activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anti_cheater_log`
--

DROP TABLE IF EXISTS `anti_cheater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anti_cheater_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anti_cheater_log`
--

LOCK TABLES `anti_cheater_log` WRITE;
/*!40000 ALTER TABLE `anti_cheater_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `anti_cheater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiaddiction_log`
--

DROP TABLE IF EXISTS `antiaddiction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiaddiction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `online_time` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiaddiction_log`
--

LOCK TABLES `antiaddiction_log` WRITE;
/*!40000 ALTER TABLE `antiaddiction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `antiaddiction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apex_log`
--

DROP TABLE IF EXISTS `apex_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apex_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) NOT NULL DEFAULT '0',
  `kill_action` varchar(32) NOT NULL DEFAULT '',
  `task` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(3) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) DEFAULT NULL,
  `error_id` int(11) NOT NULL DEFAULT '0',
  `str_n` tinyint(3) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `mac_gids` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `error_id` (`error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apex_log`
--

LOCK TABLES `apex_log` WRITE;
/*!40000 ALTER TABLE `apex_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apex_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_log`
--

DROP TABLE IF EXISTS `apply_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_log` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(10) NOT NULL DEFAULT '0',
  `insider` int(10) unsigned NOT NULL DEFAULT '0',
  `item_type` tinyint(3) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `item_life` int(11) NOT NULL DEFAULT '0',
  `item_source` tinyint(4) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `lv_equipment` smallint(5) unsigned DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `name` (`item_name`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_log`
--

LOCK TABLES `apply_log` WRITE;
/*!40000 ALTER TABLE `apply_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_talk_log`
--

DROP TABLE IF EXISTS `auto_talk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_talk_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(2) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `max_lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `map` varchar(255) NOT NULL DEFAULT '',
  `call_times` int(11) NOT NULL DEFAULT '0',
  `publish` tinyint(2) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `gid` (`gid`),
  KEY `mac` (`mac`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_talk_log`
--

LOCK TABLES `auto_talk_log` WRITE;
/*!40000 ALTER TABLE `auto_talk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_talk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behavior_log`
--

DROP TABLE IF EXISTS `behavior_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `behavior_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `time_used` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_fd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addup_exp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_tao` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_play` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_round` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_talk_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_friend_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_npc` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_exchange` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_mouse` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_move_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_stall` smallint(5) unsigned NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behavior_log`
--

LOCK TABLES `behavior_log` WRITE;
/*!40000 ALTER TABLE `behavior_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `behavior_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_log`
--

DROP TABLE IF EXISTS `block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `due` int(11) NOT NULL DEFAULT '0',
  `reason_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`),
  KEY `account` (`account`),
  KEY `action` (`action`),
  KEY `time_gid` (`update_time`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_log`
--

LOCK TABLES `block_log` WRITE;
/*!40000 ALTER TABLE `block_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `bonus_prop` varchar(32) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_log`
--

DROP TABLE IF EXISTS `channel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '0',
  `target` varchar(32) NOT NULL DEFAULT '',
  `msg` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `sender` (`name`),
  KEY `target` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_log`
--

LOCK TABLES `channel_log` WRITE;
/*!40000 ALTER TABLE `channel_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_basic`
--

DROP TABLE IF EXISTS `char_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_basic` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `level` int(10) DEFAULT NULL,
  `cash` int(10) DEFAULT NULL,
  `balance` int(10) DEFAULT NULL,
  `reputation` int(10) DEFAULT NULL,
  `pot` int(10) DEFAULT NULL,
  `total_score` int(10) DEFAULT NULL,
  `party_contrib` int(10) DEFAULT NULL,
  `total_played_time` int(10) DEFAULT NULL,
  `char_name` varchar(32) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `last_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`gid`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_basic`
--

LOCK TABLES `char_basic` WRITE;
/*!40000 ALTER TABLE `char_basic` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_cost`
--

DROP TABLE IF EXISTS `char_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_cost` (
  `gid` varchar(32) NOT NULL DEFAULT '',
  `silver_coin` int(10) DEFAULT NULL,
  `gold_coin` int(10) DEFAULT NULL,
  `last_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_cost`
--

LOCK TABLES `char_cost` WRITE;
/*!40000 ALTER TABLE `char_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_incre`
--

DROP TABLE IF EXISTS `char_incre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_incre` (
  `gid` varchar(32) NOT NULL DEFAULT '',
  `exp` int(10) DEFAULT NULL,
  `cash` int(10) DEFAULT NULL,
  `tao` int(10) DEFAULT NULL,
  `reputation` int(10) DEFAULT NULL,
  `pot` int(10) DEFAULT NULL,
  `total_score` int(10) DEFAULT NULL,
  `party_contrib` int(10) DEFAULT NULL,
  `last_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_incre`
--

LOCK TABLES `char_incre` WRITE;
/*!40000 ALTER TABLE `char_incre` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_incre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_salary`
--

DROP TABLE IF EXISTS `char_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_salary` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `silver_coin` int(12) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  `glory` int(12) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_salary`
--

LOCK TABLES `char_salary` WRITE;
/*!40000 ALTER TABLE `char_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_item_cost`
--

DROP TABLE IF EXISTS `charge_item_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_item_cost` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `item` varchar(32) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `item` (`item`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_item_cost`
--

LOCK TABLES `charge_item_cost` WRITE;
/*!40000 ALTER TABLE `charge_item_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_item_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charge_item_sale`
--

DROP TABLE IF EXISTS `charge_item_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_item_sale` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `item` varchar(32) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL,
  `coin` int(12) DEFAULT NULL,
  `coin_type` varchar(32) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `item` (`item`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charge_item_sale`
--

LOCK TABLES `charge_item_sale` WRITE;
/*!40000 ALTER TABLE `charge_item_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `charge_item_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_log`
--

DROP TABLE IF EXISTS `chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `chat_type` varchar(32) NOT NULL DEFAULT '',
  `chat_channel` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_log`
--

LOCK TABLES `chat_log` WRITE;
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_action_log`
--

DROP TABLE IF EXISTS `client_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_action_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `tao` int(11) unsigned DEFAULT NULL,
  `gold_coin` int(11) unsigned DEFAULT NULL,
  `in_party` tinyint(4) unsigned DEFAULT NULL,
  `send_num` int(11) unsigned DEFAULT NULL,
  `send_gids` int(11) unsigned DEFAULT NULL,
  `receive_num` int(11) unsigned DEFAULT NULL,
  `receive_gids` int(11) unsigned DEFAULT NULL,
  `current_channel` int(11) unsigned DEFAULT NULL,
  `troop_channel` int(11) unsigned DEFAULT NULL,
  `party_channel` int(11) unsigned DEFAULT NULL,
  `team_channel` int(11) unsigned DEFAULT NULL,
  `world_channel` int(11) unsigned DEFAULT NULL,
  `whoop_channel` int(11) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` int(11) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `mac` (`mac`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_action_log`
--

LOCK TABLES `client_action_log` WRITE;
/*!40000 ALTER TABLE `client_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_performance_log`
--

DROP TABLE IF EXISTS `client_performance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_performance_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `record_interval` int(11) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `cpu_cost` int(11) DEFAULT NULL,
  `mem_cost` varchar(128) DEFAULT NULL,
  `render_frame_rate` int(11) unsigned DEFAULT NULL,
  `cur_scene` tinyint(4) unsigned DEFAULT NULL,
  `cur_room_user` int(11) unsigned DEFAULT NULL,
  `cur_room_name` varchar(32) DEFAULT NULL,
  `cur_process_num` int(11) unsigned DEFAULT NULL,
  `minimize_window` tinyint(4) unsigned DEFAULT NULL,
  `button_type` varchar(32) DEFAULT NULL,
  `button_name` varchar(32) DEFAULT NULL,
  `timeslice` varchar(32) DEFAULT NULL,
  `button_times` int(11) unsigned DEFAULT NULL,
  `directx_version` varchar(19) DEFAULT NULL,
  `prever_download` varchar(19) DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `para4` varchar(64) DEFAULT NULL,
  `para5` varchar(128) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `mac` (`mac`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_performance_log`
--

LOCK TABLES `client_performance_log` WRITE;
/*!40000 ALTER TABLE `client_performance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_performance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_consume_log`
--

DROP TABLE IF EXISTS `coin_consume_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_consume_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `consume_info` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_consume_log`
--

LOCK TABLES `coin_consume_log` WRITE;
/*!40000 ALTER TABLE `coin_consume_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_consume_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_cost`
--

DROP TABLE IF EXISTS `coin_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_cost` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `coin` int(12) DEFAULT NULL,
  `coin_type` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_cost`
--

LOCK TABLES `coin_cost` WRITE;
/*!40000 ALTER TABLE `coin_cost` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_order_log`
--

DROP TABLE IF EXISTS `coin_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `store_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `server` (`server`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_order_log`
--

LOCK TABLES `coin_order_log` WRITE;
/*!40000 ALTER TABLE `coin_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect_data_log`
--

DROP TABLE IF EXISTS `collect_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect_data_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `cpu_id` varchar(64) NOT NULL DEFAULT '',
  `cpu_info` varchar(64) NOT NULL DEFAULT '',
  `disk_sequence` varchar(64) NOT NULL DEFAULT '',
  `mac_address` varchar(64) NOT NULL DEFAULT '',
  `video_card` varchar(64) NOT NULL DEFAULT '',
  `memory_size` int(11) NOT NULL DEFAULT '0',
  `video_memory` int(11) NOT NULL DEFAULT '0',
  `bios` varchar(64) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(64) NOT NULL DEFAULT '',
  `para2` varchar(64) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect_data_log`
--

LOCK TABLES `collect_data_log` WRITE;
/*!40000 ALTER TABLE `collect_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_in_map_log`
--

DROP TABLE IF EXISTS `combat_in_map_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_in_map_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `tao` int(11) NOT NULL DEFAULT '0',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `map` varchar(32) NOT NULL DEFAULT '',
  `combat_times` int(11) NOT NULL DEFAULT '0',
  `combat_pet` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `char_name` (`char_name`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_in_map_log`
--

LOCK TABLES `combat_in_map_log` WRITE;
/*!40000 ALTER TABLE `combat_in_map_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_in_map_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_log`
--

DROP TABLE IF EXISTS `combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `in_party` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `all_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_degree` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `main_attribute` varchar(32) NOT NULL DEFAULT '0',
  `ratio_attribute` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `para5` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_log`
--

LOCK TABLES `combat_log` WRITE;
/*!40000 ALTER TABLE `combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_hist`
--

DROP TABLE IF EXISTS `common_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_hist` (
  `id` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  KEY `id` (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_hist`
--

LOCK TABLES `common_hist` WRITE;
/*!40000 ALTER TABLE `common_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_log`
--

DROP TABLE IF EXISTS `common_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_log`
--

LOCK TABLES `common_log` WRITE;
/*!40000 ALTER TABLE `common_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_coin_log`
--

DROP TABLE IF EXISTS `cost_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `cost_type` varchar(32) NOT NULL DEFAULT '',
  `cost` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_coin_log`
--

LOCK TABLES `cost_coin_log` WRITE;
/*!40000 ALTER TABLE `cost_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_combat_log`
--

DROP TABLE IF EXISTS `csc_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `g_coin` int(11) NOT NULL DEFAULT '0',
  `s_coin` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `para4` varchar(128) NOT NULL DEFAULT '',
  `para5` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `server_account` (`server`,`account`),
  KEY `server_gid` (`server`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_combat_log`
--

LOCK TABLES `csc_combat_log` WRITE;
/*!40000 ALTER TABLE `csc_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_combat_log`
--

DROP TABLE IF EXISTS `csl_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(15) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `score_left` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_combat_log`
--

LOCK TABLES `csl_combat_log` WRITE;
/*!40000 ALTER TABLE `csl_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_log`
--

DROP TABLE IF EXISTS `csl_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_log`
--

LOCK TABLES `csl_match_log` WRITE;
/*!40000 ALTER TABLE `csl_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_combat_log`
--

DROP TABLE IF EXISTS `csp_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `party_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_combat_log`
--

LOCK TABLES `csp_combat_log` WRITE;
/*!40000 ALTER TABLE `csp_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_match_log`
--

DROP TABLE IF EXISTS `csp_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_party_name` varchar(32) NOT NULL DEFAULT '0',
  `away_party_name` varchar(32) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_match_log`
--

LOCK TABLES `csp_match_log` WRITE;
/*!40000 ALTER TABLE `csp_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debug_log`
--

DROP TABLE IF EXISTS `debug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type_action` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debug_log`
--

LOCK TABLES `debug_log` WRITE;
/*!40000 ALTER TABLE `debug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `debug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage_detail_log`
--

DROP TABLE IF EXISTS `encourage_detail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage_detail_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `encourage_id` int(11) DEFAULT '0',
  `ip` varchar(16) DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(255) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage_detail_log`
--

LOCK TABLES `encourage_detail_log` WRITE;
/*!40000 ALTER TABLE `encourage_detail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage_detail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_log`
--

DROP TABLE IF EXISTS `equipment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_iid` varchar(32) DEFAULT '',
  `cost_item_name` varchar(32) DEFAULT '',
  `cost_item_iid` varchar(32) DEFAULT '',
  `cost` int(10) NOT NULL DEFAULT '0',
  `oper_result` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(128) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `item_prop` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `action` (`action`),
  KEY `equip_iid` (`item_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_log`
--

LOCK TABLES `equipment_log` WRITE;
/*!40000 ALTER TABLE `equipment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errand_log`
--

DROP TABLE IF EXISTS `errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errand_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errand_log`
--

LOCK TABLES `errand_log` WRITE;
/*!40000 ALTER TABLE `errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_appraise_log`
--

DROP TABLE IF EXISTS `exchange_appraise_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_appraise_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `exchange_time` char(14) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `report` tinyint(4) NOT NULL DEFAULT '0',
  `star` tinyint(4) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account1` (`account1`),
  KEY `account2` (`account2`),
  KEY `gid1` (`gid1`),
  KEY `gid2` (`gid2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_appraise_log`
--

LOCK TABLES `exchange_appraise_log` WRITE;
/*!40000 ALTER TABLE `exchange_appraise_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_appraise_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_baiguidi`
--

DROP TABLE IF EXISTS `game_baiguidi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_baiguidi` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `times` int(12) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_baiguidi`
--

LOCK TABLES `game_baiguidi` WRITE;
/*!40000 ALTER TABLE `game_baiguidi` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_baiguidi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_chongwutaowang`
--

DROP TABLE IF EXISTS `game_chongwutaowang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_chongwutaowang` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `times` int(12) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_chongwutaowang`
--

LOCK TABLES `game_chongwutaowang` WRITE;
/*!40000 ALTER TABLE `game_chongwutaowang` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_chongwutaowang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_wanyaoku`
--

DROP TABLE IF EXISTS `game_wanyaoku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_wanyaoku` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_wanyaoku`
--

LOCK TABLES `game_wanyaoku` WRITE;
/*!40000 ALTER TABLE `game_wanyaoku` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_wanyaoku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_yabiao`
--

DROP TABLE IF EXISTS `game_yabiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_yabiao` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `gid` varchar(32) DEFAULT NULL,
  `level` varchar(12) DEFAULT NULL,
  `polar` int(2) DEFAULT NULL,
  `insider` int(2) DEFAULT NULL,
  `times` int(12) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_yabiao`
--

LOCK TABLES `game_yabiao` WRITE;
/*!40000 ALTER TABLE `game_yabiao` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_yabiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbuy_action_log`
--

DROP TABLE IF EXISTS `gbuy_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbuy_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin` int(11) NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin` int(11) NOT NULL DEFAULT '0',
  `gbg_id` varchar(32) NOT NULL DEFAULT '',
  `gbg_name` varchar(32) NOT NULL DEFAULT '',
  `gbg_amount` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `gbg_id` (`gbg_id`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbuy_action_log`
--

LOCK TABLES `gbuy_action_log` WRITE;
/*!40000 ALTER TABLE `gbuy_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbuy_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_log`
--

DROP TABLE IF EXISTS `gift_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_log`
--

LOCK TABLES `gift_log` WRITE;
/*!40000 ALTER TABLE `gift_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_log`
--

DROP TABLE IF EXISTS `gm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`),
  KEY `account` (`account`),
  KEY `action` (`action`),
  KEY `time_gid` (`update_time`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_log`
--

LOCK TABLES `gm_log` WRITE;
/*!40000 ALTER TABLE `gm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_log`
--

DROP TABLE IF EXISTS `gs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gs_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `ctime` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `server` (`server`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_log`
--

LOCK TABLES `gs_log` WRITE;
/*!40000 ALTER TABLE `gs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_credit_log`
--

DROP TABLE IF EXISTS `history_credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_credit_log` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `used` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_credit_log`
--

LOCK TABLES `history_credit_log` WRITE;
/*!40000 ALTER TABLE `history_credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_action_log`
--

DROP TABLE IF EXISTS `important_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `party_gid` char(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_action_log`
--

LOCK TABLES `important_action_log` WRITE;
/*!40000 ALTER TABLE `important_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_log`
--

DROP TABLE IF EXISTS `important_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_action` (`type`,`action`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_log`
--

LOCK TABLES `important_log` WRITE;
/*!40000 ALTER TABLE `important_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_log`
--

DROP TABLE IF EXISTS `important_pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) NOT NULL DEFAULT '',
  `account_to` varchar(32) NOT NULL DEFAULT '',
  `gid_from` char(16) NOT NULL DEFAULT '',
  `gid_to` char(16) NOT NULL DEFAULT '',
  `lv_from` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv_to` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(32) NOT NULL DEFAULT '',
  `pet_property` text NOT NULL,
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account_to` (`account_to`),
  KEY `gid_to` (`gid_to`),
  KEY `pet_iid` (`pet_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_log`
--

LOCK TABLES `important_pet_log` WRITE;
/*!40000 ALTER TABLE `important_pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_task_log`
--

DROP TABLE IF EXISTS `ip_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `task` varchar(32) NOT NULL DEFAULT '',
  `num` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_task_log`
--

LOCK TABLES `ip_task_log` WRITE;
/*!40000 ALTER TABLE `ip_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_exchange`
--

DROP TABLE IF EXISTS `item_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_exchange` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(32) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL,
  `total_price` int(12) DEFAULT NULL,
  `exchange_type` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_exchange`
--

LOCK TABLES `item_exchange` WRITE;
/*!40000 ALTER TABLE `item_exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transfer_log`
--

DROP TABLE IF EXISTS `item_transfer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_transfer_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) DEFAULT NULL,
  `account_to` varchar(32) DEFAULT NULL,
  `gid_from` varchar(16) DEFAULT NULL,
  `gid_to` varchar(16) DEFAULT NULL,
  `lv_from` tinyint(3) unsigned DEFAULT NULL,
  `lv_to` tinyint(3) unsigned DEFAULT NULL,
  `gold_coin_from` int(10) unsigned DEFAULT NULL,
  `gold_coin_to` int(10) unsigned DEFAULT NULL,
  `mac_from` char(16) DEFAULT NULL,
  `mac_to` char(16) DEFAULT NULL,
  `ip_from` varchar(15) DEFAULT NULL,
  `ip_to` varchar(15) DEFAULT NULL,
  `locality_from` varchar(64) DEFAULT NULL,
  `locality_to` varchar(64) DEFAULT NULL,
  `item_iid` varchar(32) DEFAULT NULL,
  `item_name` varchar(32) DEFAULT NULL,
  `item_amount` int(10) unsigned DEFAULT NULL,
  `transfer_type` tinyint(3) unsigned DEFAULT NULL,
  `transfer_id` varchar(32) DEFAULT NULL,
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(10) unsigned DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account_from`),
  KEY `gid` (`gid_from`),
  KEY `iid` (`item_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transfer_log`
--

LOCK TABLES `item_transfer_log` WRITE;
/*!40000 ALTER TABLE `item_transfer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transfer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_up_log`
--

DROP TABLE IF EXISTS `level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `time_used` bigint(20) DEFAULT NULL,
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `create_time` varchar(14) NOT NULL DEFAULT '',
  `newbie` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `para4` bigint(20) DEFAULT NULL,
  `para5` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_up_log`
--

LOCK TABLES `level_up_log` WRITE;
/*!40000 ALTER TABLE `level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `party` varchar(32) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `login_ip` (`login_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material1_log`
--

DROP TABLE IF EXISTS `material1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material1_log`
--

LOCK TABLES `material1_log` WRITE;
/*!40000 ALTER TABLE `material1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_log`
--

DROP TABLE IF EXISTS `material_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `silver_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_log`
--

LOCK TABLES `material_log` WRITE;
/*!40000 ALTER TABLE `material_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money1_log`
--

DROP TABLE IF EXISTS `money1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `cash_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money1_log`
--

LOCK TABLES `money1_log` WRITE;
/*!40000 ALTER TABLE `money1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `gid` char(16) NOT NULL DEFAULT '',
  `gid_op` char(16) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `voucher` int(11) DEFAULT NULL,
  `after_value` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nummary_log`
--

DROP TABLE IF EXISTS `nummary_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nummary_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `totality` bigint(20) unsigned NOT NULL DEFAULT '0',
  `times` mediumint(9) unsigned DEFAULT NULL,
  `gids` mediumint(9) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type_action` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nummary_log`
--

LOCK TABLES `nummary_log` WRITE;
/*!40000 ALTER TABLE `nummary_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `nummary_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_contrib_convert`
--

DROP TABLE IF EXISTS `party_contrib_convert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_contrib_convert` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `party_contrib` int(12) DEFAULT NULL,
  `got` int(12) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  `got_type` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_contrib_convert`
--

LOCK TABLES `party_contrib_convert` WRITE;
/*!40000 ALTER TABLE `party_contrib_convert` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_contrib_convert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_level_up_log`
--

DROP TABLE IF EXISTS `pet_level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `lv` int(4) NOT NULL DEFAULT '0',
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `iid` (`iid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_level_up_log`
--

LOCK TABLES `pet_level_up_log` WRITE;
/*!40000 ALTER TABLE `pet_level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_log`
--

DROP TABLE IF EXISTS `pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(16) NOT NULL DEFAULT '',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `cost_item` varchar(16) NOT NULL DEFAULT '',
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `pet_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `pet_iid` (`pet_iid`),
  KEY `item_iid` (`item_iid`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_log`
--

LOCK TABLES `pet_log` WRITE;
/*!40000 ALTER TABLE `pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plug_log`
--

DROP TABLE IF EXISTS `plug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plug_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool` int(11) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `coins` int(11) NOT NULL DEFAULT '0',
  `relevance` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `tool` (`tool`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plug_log`
--

LOCK TABLES `plug_log` WRITE;
/*!40000 ALTER TABLE `plug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `plug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_bind_log`
--

DROP TABLE IF EXISTS `property_bind_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_bind_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `para` varchar(32) DEFAULT NULL,
  `main` tinyint(4) unsigned DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `iid` (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_bind_log`
--

LOCK TABLES `property_bind_log` WRITE;
/*!40000 ALTER TABLE `property_bind_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_bind_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_platform_log`
--

DROP TABLE IF EXISTS `purchase_platform_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_name` varchar(64) NOT NULL DEFAULT '0',
  `commodity_iid` varchar(32) NOT NULL DEFAULT '',
  `commodity_amount` int(11) NOT NULL DEFAULT '0',
  `unit_price` int(11) NOT NULL DEFAULT '0',
  `turnover` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `order_id` (`order_id`),
  KEY `time_account` (`update_time`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_platform_log`
--

LOCK TABLES `purchase_platform_log` WRITE;
/*!40000 ALTER TABLE `purchase_platform_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_platform_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_log`
--

DROP TABLE IF EXISTS `report_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `para4` varchar(255) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account1` (`account1`),
  KEY `account2` (`account2`),
  KEY `name2` (`name2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_log`
--

LOCK TABLES `report_log` WRITE;
/*!40000 ALTER TABLE `report_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_convert`
--

DROP TABLE IF EXISTS `reputation_convert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_convert` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `reputation` int(12) DEFAULT NULL,
  `got` int(12) DEFAULT NULL,
  `got_type` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `last_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `gid` (`gid`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_convert`
--

LOCK TABLES `reputation_convert` WRITE;
/*!40000 ALTER TABLE `reputation_convert` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation_convert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_log`
--

DROP TABLE IF EXISTS `safe_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `ob_iid` varchar(32) NOT NULL DEFAULT '',
  `ob_name` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_log`
--

LOCK TABLES `safe_log` WRITE;
/*!40000 ALTER TABLE `safe_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `safe_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_log`
--

DROP TABLE IF EXISTS `sale_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_log`
--

LOCK TABLES `sale_log` WRITE;
/*!40000 ALTER TABLE `sale_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) DEFAULT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `server` varchar(20) DEFAULT NULL,
  `cpu` varchar(6) DEFAULT NULL,
  `vmem` varchar(6) DEFAULT NULL,
  `rmem` varchar(6) DEFAULT NULL,
  `cpu2` varchar(6) DEFAULT NULL,
  `para1` varchar(6) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_log`
--

DROP TABLE IF EXISTS `switch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_log`
--

LOCK TABLES `switch_log` WRITE;
/*!40000 ALTER TABLE `switch_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_monitor_log`
--

DROP TABLE IF EXISTS `system_monitor_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_monitor_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `number_ih` int(11) NOT NULL DEFAULT '0',
  `number_il` int(11) NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `degree` (`degree`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_monitor_log`
--

LOCK TABLES `system_monitor_log` WRITE;
/*!40000 ALTER TABLE `system_monitor_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_monitor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_stat_log`
--

DROP TABLE IF EXISTS `tao_stat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_stat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `finish_date` char(8) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `gid_times` int(11) NOT NULL DEFAULT '0',
  `gid_charge_times` int(11) NOT NULL DEFAULT '0',
  `lv_charge_times` int(11) NOT NULL DEFAULT '0',
  `ip_times` int(11) NOT NULL DEFAULT '0',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `punish` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `finish_date` (`finish_date`),
  KEY `gid` (`gid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_stat_log`
--

LOCK TABLES `tao_stat_log` WRITE;
/*!40000 ALTER TABLE `tao_stat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_stat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_task_log`
--

DROP TABLE IF EXISTS `tao_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `use_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_cha` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_task_log`
--

LOCK TABLES `tao_task_log` WRITE;
/*!40000 ALTER TABLE `tao_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_log`
--

DROP TABLE IF EXISTS `task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(16) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `task_type` varchar(16) NOT NULL DEFAULT '',
  `task_name` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `task_type` (`task_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_log`
--

LOCK TABLES `task_log` WRITE;
/*!40000 ALTER TABLE `task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_report_ip_log`
--

DROP TABLE IF EXISTS `user_report_ip_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_report_ip_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_report_ip_log`
--

LOCK TABLES `user_report_ip_log` WRITE;
/*!40000 ALTER TABLE `user_report_ip_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_report_ip_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishing_log`
--

DROP TABLE IF EXISTS `wishing_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishing_log` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`gid`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishing_log`
--

LOCK TABLES `wishing_log` WRITE;
/*!40000 ALTER TABLE `wishing_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishing_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_add_point_log`
--

DROP TABLE IF EXISTS `zq_add_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_add_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_add` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_add_point_log`
--

LOCK TABLES `zq_add_point_log` WRITE;
/*!40000 ALTER TABLE `zq_add_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_add_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_card_log`
--

DROP TABLE IF EXISTS `zq_card_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_card_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_card_log`
--

LOCK TABLES `zq_card_log` WRITE;
/*!40000 ALTER TABLE `zq_card_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_card_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_combat_log`
--

DROP TABLE IF EXISTS `zq_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `total_round` int(11) NOT NULL DEFAULT '0',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_combat_log`
--

LOCK TABLES `zq_combat_log` WRITE;
/*!40000 ALTER TABLE `zq_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_cost_point_log`
--

DROP TABLE IF EXISTS `zq_cost_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_cost_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_cost` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_cost_point_log`
--

LOCK TABLES `zq_cost_point_log` WRITE;
/*!40000 ALTER TABLE `zq_cost_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_cost_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_errand_log`
--

DROP TABLE IF EXISTS `zq_errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_errand_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_errand_log`
--

LOCK TABLES `zq_errand_log` WRITE;
/*!40000 ALTER TABLE `zq_errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_login_log`
--

DROP TABLE IF EXISTS `zq_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `xg_point` int(11) NOT NULL DEFAULT '0',
  `card_num` int(11) NOT NULL DEFAULT '0',
  `fragment_num` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_login_log`
--

LOCK TABLES `zq_login_log` WRITE;
/*!40000 ALTER TABLE `zq_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_lv_up_log`
--

DROP TABLE IF EXISTS `zq_lv_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_lv_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_lv_up_log`
--

LOCK TABLES `zq_lv_up_log` WRITE;
/*!40000 ALTER TABLE `zq_lv_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_lv_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_ldb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_ldb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_ldb_1`;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  `start_time` char(14) NOT NULL DEFAULT '',
  `end_time` char(14) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(255) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `activity` (`activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anti_cheater_log`
--

DROP TABLE IF EXISTS `anti_cheater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anti_cheater_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anti_cheater_log`
--

LOCK TABLES `anti_cheater_log` WRITE;
/*!40000 ALTER TABLE `anti_cheater_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `anti_cheater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiaddiction_log`
--

DROP TABLE IF EXISTS `antiaddiction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiaddiction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `online_time` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiaddiction_log`
--

LOCK TABLES `antiaddiction_log` WRITE;
/*!40000 ALTER TABLE `antiaddiction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `antiaddiction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apex_log`
--

DROP TABLE IF EXISTS `apex_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apex_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) NOT NULL DEFAULT '0',
  `kill_action` varchar(32) NOT NULL DEFAULT '',
  `task` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(3) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) DEFAULT NULL,
  `error_id` int(11) NOT NULL DEFAULT '0',
  `str_n` tinyint(3) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `mac_gids` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `error_id` (`error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apex_log`
--

LOCK TABLES `apex_log` WRITE;
/*!40000 ALTER TABLE `apex_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apex_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_log`
--

DROP TABLE IF EXISTS `apply_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_log` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(10) NOT NULL DEFAULT '0',
  `insider` int(10) unsigned NOT NULL DEFAULT '0',
  `item_type` tinyint(3) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `item_life` int(11) NOT NULL DEFAULT '0',
  `item_source` tinyint(4) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `lv_equipment` smallint(5) unsigned DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `name` (`item_name`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_log`
--

LOCK TABLES `apply_log` WRITE;
/*!40000 ALTER TABLE `apply_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_talk_log`
--

DROP TABLE IF EXISTS `auto_talk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_talk_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(2) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `max_lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `map` varchar(255) NOT NULL DEFAULT '',
  `call_times` int(11) NOT NULL DEFAULT '0',
  `publish` tinyint(2) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `gid` (`gid`),
  KEY `mac` (`mac`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_talk_log`
--

LOCK TABLES `auto_talk_log` WRITE;
/*!40000 ALTER TABLE `auto_talk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_talk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behavior_log`
--

DROP TABLE IF EXISTS `behavior_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `behavior_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `time_used` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_fd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addup_exp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_tao` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_play` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_round` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_talk_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_friend_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_npc` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_exchange` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_mouse` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_move_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_stall` smallint(5) unsigned NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behavior_log`
--

LOCK TABLES `behavior_log` WRITE;
/*!40000 ALTER TABLE `behavior_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `behavior_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_log`
--

DROP TABLE IF EXISTS `block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `due` int(11) NOT NULL DEFAULT '0',
  `reason_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`),
  KEY `account` (`account`),
  KEY `action` (`action`),
  KEY `time_gid` (`update_time`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_log`
--

LOCK TABLES `block_log` WRITE;
/*!40000 ALTER TABLE `block_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `bonus_prop` varchar(32) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_log`
--

DROP TABLE IF EXISTS `channel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '0',
  `target` varchar(32) NOT NULL DEFAULT '',
  `msg` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `sender` (`name`),
  KEY `target` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_log`
--

LOCK TABLES `channel_log` WRITE;
/*!40000 ALTER TABLE `channel_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_log`
--

DROP TABLE IF EXISTS `chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `chat_type` varchar(32) NOT NULL DEFAULT '',
  `chat_channel` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_log`
--

LOCK TABLES `chat_log` WRITE;
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_action_log`
--

DROP TABLE IF EXISTS `client_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_action_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `tao` int(11) unsigned DEFAULT NULL,
  `gold_coin` int(11) unsigned DEFAULT NULL,
  `in_party` tinyint(4) unsigned DEFAULT NULL,
  `send_num` int(11) unsigned DEFAULT NULL,
  `send_gids` int(11) unsigned DEFAULT NULL,
  `receive_num` int(11) unsigned DEFAULT NULL,
  `receive_gids` int(11) unsigned DEFAULT NULL,
  `current_channel` int(11) unsigned DEFAULT NULL,
  `troop_channel` int(11) unsigned DEFAULT NULL,
  `party_channel` int(11) unsigned DEFAULT NULL,
  `team_channel` int(11) unsigned DEFAULT NULL,
  `world_channel` int(11) unsigned DEFAULT NULL,
  `whoop_channel` int(11) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` int(11) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `mac` (`mac`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_action_log`
--

LOCK TABLES `client_action_log` WRITE;
/*!40000 ALTER TABLE `client_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_performance_log`
--

DROP TABLE IF EXISTS `client_performance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_performance_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `record_interval` int(11) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `cpu_cost` int(11) DEFAULT NULL,
  `mem_cost` varchar(128) DEFAULT NULL,
  `render_frame_rate` int(11) unsigned DEFAULT NULL,
  `cur_scene` tinyint(4) unsigned DEFAULT NULL,
  `cur_room_user` int(11) unsigned DEFAULT NULL,
  `cur_room_name` varchar(32) DEFAULT NULL,
  `cur_process_num` int(11) unsigned DEFAULT NULL,
  `minimize_window` tinyint(4) unsigned DEFAULT NULL,
  `button_type` varchar(32) DEFAULT NULL,
  `button_name` varchar(32) DEFAULT NULL,
  `timeslice` varchar(32) DEFAULT NULL,
  `button_times` int(11) unsigned DEFAULT NULL,
  `directx_version` varchar(19) DEFAULT NULL,
  `prever_download` varchar(19) DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `para4` varchar(64) DEFAULT NULL,
  `para5` varchar(128) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `mac` (`mac`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_performance_log`
--

LOCK TABLES `client_performance_log` WRITE;
/*!40000 ALTER TABLE `client_performance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_performance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_consume_log`
--

DROP TABLE IF EXISTS `coin_consume_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_consume_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `consume_info` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_consume_log`
--

LOCK TABLES `coin_consume_log` WRITE;
/*!40000 ALTER TABLE `coin_consume_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_consume_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_order_log`
--

DROP TABLE IF EXISTS `coin_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `store_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `server` (`server`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_order_log`
--

LOCK TABLES `coin_order_log` WRITE;
/*!40000 ALTER TABLE `coin_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect_data_log`
--

DROP TABLE IF EXISTS `collect_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect_data_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `cpu_id` varchar(64) NOT NULL DEFAULT '',
  `cpu_info` varchar(64) NOT NULL DEFAULT '',
  `disk_sequence` varchar(64) NOT NULL DEFAULT '',
  `mac_address` varchar(64) NOT NULL DEFAULT '',
  `video_card` varchar(64) NOT NULL DEFAULT '',
  `memory_size` int(11) NOT NULL DEFAULT '0',
  `video_memory` int(11) NOT NULL DEFAULT '0',
  `bios` varchar(64) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(64) NOT NULL DEFAULT '',
  `para2` varchar(64) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect_data_log`
--

LOCK TABLES `collect_data_log` WRITE;
/*!40000 ALTER TABLE `collect_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_in_map_log`
--

DROP TABLE IF EXISTS `combat_in_map_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_in_map_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `tao` int(11) NOT NULL DEFAULT '0',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `map` varchar(32) NOT NULL DEFAULT '',
  `combat_times` int(11) NOT NULL DEFAULT '0',
  `combat_pet` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `char_name` (`char_name`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_in_map_log`
--

LOCK TABLES `combat_in_map_log` WRITE;
/*!40000 ALTER TABLE `combat_in_map_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_in_map_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_log`
--

DROP TABLE IF EXISTS `combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `in_party` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `all_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_degree` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `main_attribute` varchar(32) NOT NULL DEFAULT '0',
  `ratio_attribute` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `para5` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_log`
--

LOCK TABLES `combat_log` WRITE;
/*!40000 ALTER TABLE `combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_hist`
--

DROP TABLE IF EXISTS `common_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_hist` (
  `id` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  KEY `id` (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_hist`
--

LOCK TABLES `common_hist` WRITE;
/*!40000 ALTER TABLE `common_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_log`
--

DROP TABLE IF EXISTS `common_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_log`
--

LOCK TABLES `common_log` WRITE;
/*!40000 ALTER TABLE `common_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_coin_log`
--

DROP TABLE IF EXISTS `cost_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `cost_type` varchar(32) NOT NULL DEFAULT '',
  `cost` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_coin_log`
--

LOCK TABLES `cost_coin_log` WRITE;
/*!40000 ALTER TABLE `cost_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_combat_log`
--

DROP TABLE IF EXISTS `csc_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `g_coin` int(11) NOT NULL DEFAULT '0',
  `s_coin` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `para4` varchar(128) NOT NULL DEFAULT '',
  `para5` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `server_account` (`server`,`account`),
  KEY `server_gid` (`server`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_combat_log`
--

LOCK TABLES `csc_combat_log` WRITE;
/*!40000 ALTER TABLE `csc_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_combat_log`
--

DROP TABLE IF EXISTS `csl_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(15) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `score_left` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_combat_log`
--

LOCK TABLES `csl_combat_log` WRITE;
/*!40000 ALTER TABLE `csl_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_log`
--

DROP TABLE IF EXISTS `csl_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_log`
--

LOCK TABLES `csl_match_log` WRITE;
/*!40000 ALTER TABLE `csl_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_combat_log`
--

DROP TABLE IF EXISTS `csp_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `party_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_combat_log`
--

LOCK TABLES `csp_combat_log` WRITE;
/*!40000 ALTER TABLE `csp_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_match_log`
--

DROP TABLE IF EXISTS `csp_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_party_name` varchar(32) NOT NULL DEFAULT '0',
  `away_party_name` varchar(32) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_match_log`
--

LOCK TABLES `csp_match_log` WRITE;
/*!40000 ALTER TABLE `csp_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debug_log`
--

DROP TABLE IF EXISTS `debug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type_action` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debug_log`
--

LOCK TABLES `debug_log` WRITE;
/*!40000 ALTER TABLE `debug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `debug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage_detail_log`
--

DROP TABLE IF EXISTS `encourage_detail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage_detail_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `encourage_id` int(11) DEFAULT '0',
  `ip` varchar(16) DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(255) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage_detail_log`
--

LOCK TABLES `encourage_detail_log` WRITE;
/*!40000 ALTER TABLE `encourage_detail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage_detail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_log`
--

DROP TABLE IF EXISTS `equipment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_iid` varchar(32) DEFAULT '',
  `cost_item_name` varchar(32) DEFAULT '',
  `cost_item_iid` varchar(32) DEFAULT '',
  `cost` int(10) NOT NULL DEFAULT '0',
  `oper_result` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(128) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `item_prop` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `action` (`action`),
  KEY `equip_iid` (`item_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_log`
--

LOCK TABLES `equipment_log` WRITE;
/*!40000 ALTER TABLE `equipment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errand_log`
--

DROP TABLE IF EXISTS `errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errand_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errand_log`
--

LOCK TABLES `errand_log` WRITE;
/*!40000 ALTER TABLE `errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_appraise_log`
--

DROP TABLE IF EXISTS `exchange_appraise_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_appraise_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `exchange_time` char(14) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `report` tinyint(4) NOT NULL DEFAULT '0',
  `star` tinyint(4) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account1` (`account1`),
  KEY `account2` (`account2`),
  KEY `gid1` (`gid1`),
  KEY `gid2` (`gid2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_appraise_log`
--

LOCK TABLES `exchange_appraise_log` WRITE;
/*!40000 ALTER TABLE `exchange_appraise_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_appraise_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbuy_action_log`
--

DROP TABLE IF EXISTS `gbuy_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbuy_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin` int(11) NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin` int(11) NOT NULL DEFAULT '0',
  `gbg_id` varchar(32) NOT NULL DEFAULT '',
  `gbg_name` varchar(32) NOT NULL DEFAULT '',
  `gbg_amount` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `gbg_id` (`gbg_id`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbuy_action_log`
--

LOCK TABLES `gbuy_action_log` WRITE;
/*!40000 ALTER TABLE `gbuy_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbuy_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_log`
--

DROP TABLE IF EXISTS `gift_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_log`
--

LOCK TABLES `gift_log` WRITE;
/*!40000 ALTER TABLE `gift_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_log`
--

DROP TABLE IF EXISTS `gm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`),
  KEY `account` (`account`),
  KEY `action` (`action`),
  KEY `time_gid` (`update_time`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_log`
--

LOCK TABLES `gm_log` WRITE;
/*!40000 ALTER TABLE `gm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_log`
--

DROP TABLE IF EXISTS `gs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gs_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `ctime` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `server` (`server`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_log`
--

LOCK TABLES `gs_log` WRITE;
/*!40000 ALTER TABLE `gs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_credit_log`
--

DROP TABLE IF EXISTS `history_credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_credit_log` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `used` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_credit_log`
--

LOCK TABLES `history_credit_log` WRITE;
/*!40000 ALTER TABLE `history_credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_action_log`
--

DROP TABLE IF EXISTS `important_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `party_gid` char(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_action_log`
--

LOCK TABLES `important_action_log` WRITE;
/*!40000 ALTER TABLE `important_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_log`
--

DROP TABLE IF EXISTS `important_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_action` (`type`,`action`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_log`
--

LOCK TABLES `important_log` WRITE;
/*!40000 ALTER TABLE `important_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_log`
--

DROP TABLE IF EXISTS `important_pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) NOT NULL DEFAULT '',
  `account_to` varchar(32) NOT NULL DEFAULT '',
  `gid_from` char(16) NOT NULL DEFAULT '',
  `gid_to` char(16) NOT NULL DEFAULT '',
  `lv_from` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv_to` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(32) NOT NULL DEFAULT '',
  `pet_property` text NOT NULL,
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account_to` (`account_to`),
  KEY `gid_to` (`gid_to`),
  KEY `pet_iid` (`pet_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_log`
--

LOCK TABLES `important_pet_log` WRITE;
/*!40000 ALTER TABLE `important_pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_task_log`
--

DROP TABLE IF EXISTS `ip_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `task` varchar(32) NOT NULL DEFAULT '',
  `num` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_task_log`
--

LOCK TABLES `ip_task_log` WRITE;
/*!40000 ALTER TABLE `ip_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transfer_log`
--

DROP TABLE IF EXISTS `item_transfer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_transfer_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) DEFAULT NULL,
  `account_to` varchar(32) DEFAULT NULL,
  `gid_from` varchar(16) DEFAULT NULL,
  `gid_to` varchar(16) DEFAULT NULL,
  `lv_from` tinyint(3) unsigned DEFAULT NULL,
  `lv_to` tinyint(3) unsigned DEFAULT NULL,
  `gold_coin_from` int(10) unsigned DEFAULT NULL,
  `gold_coin_to` int(10) unsigned DEFAULT NULL,
  `mac_from` char(16) DEFAULT NULL,
  `mac_to` char(16) DEFAULT NULL,
  `ip_from` varchar(15) DEFAULT NULL,
  `ip_to` varchar(15) DEFAULT NULL,
  `locality_from` varchar(64) DEFAULT NULL,
  `locality_to` varchar(64) DEFAULT NULL,
  `item_iid` varchar(32) DEFAULT NULL,
  `item_name` varchar(32) DEFAULT NULL,
  `item_amount` int(10) unsigned DEFAULT NULL,
  `transfer_type` tinyint(3) unsigned DEFAULT NULL,
  `transfer_id` varchar(32) DEFAULT NULL,
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(10) unsigned DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account_from`),
  KEY `gid` (`gid_from`),
  KEY `iid` (`item_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transfer_log`
--

LOCK TABLES `item_transfer_log` WRITE;
/*!40000 ALTER TABLE `item_transfer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transfer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_up_log`
--

DROP TABLE IF EXISTS `level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `time_used` bigint(20) DEFAULT NULL,
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `create_time` varchar(14) NOT NULL DEFAULT '',
  `newbie` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `para4` bigint(20) DEFAULT NULL,
  `para5` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_up_log`
--

LOCK TABLES `level_up_log` WRITE;
/*!40000 ALTER TABLE `level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `party` varchar(32) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `login_ip` (`login_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material1_log`
--

DROP TABLE IF EXISTS `material1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material1_log`
--

LOCK TABLES `material1_log` WRITE;
/*!40000 ALTER TABLE `material1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_log`
--

DROP TABLE IF EXISTS `material_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `silver_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_log`
--

LOCK TABLES `material_log` WRITE;
/*!40000 ALTER TABLE `material_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money1_log`
--

DROP TABLE IF EXISTS `money1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `cash_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money1_log`
--

LOCK TABLES `money1_log` WRITE;
/*!40000 ALTER TABLE `money1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `gid` char(16) NOT NULL DEFAULT '',
  `gid_op` char(16) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `voucher` int(11) DEFAULT NULL,
  `after_value` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nummary_log`
--

DROP TABLE IF EXISTS `nummary_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nummary_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `totality` bigint(20) unsigned NOT NULL DEFAULT '0',
  `times` mediumint(9) unsigned DEFAULT NULL,
  `gids` mediumint(9) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type_action` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nummary_log`
--

LOCK TABLES `nummary_log` WRITE;
/*!40000 ALTER TABLE `nummary_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `nummary_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_level_up_log`
--

DROP TABLE IF EXISTS `pet_level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `lv` int(4) NOT NULL DEFAULT '0',
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `iid` (`iid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_level_up_log`
--

LOCK TABLES `pet_level_up_log` WRITE;
/*!40000 ALTER TABLE `pet_level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_log`
--

DROP TABLE IF EXISTS `pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(16) NOT NULL DEFAULT '',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `cost_item` varchar(16) NOT NULL DEFAULT '',
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `pet_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `pet_iid` (`pet_iid`),
  KEY `item_iid` (`item_iid`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_log`
--

LOCK TABLES `pet_log` WRITE;
/*!40000 ALTER TABLE `pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plug_log`
--

DROP TABLE IF EXISTS `plug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plug_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool` int(11) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `coins` int(11) NOT NULL DEFAULT '0',
  `relevance` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `tool` (`tool`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plug_log`
--

LOCK TABLES `plug_log` WRITE;
/*!40000 ALTER TABLE `plug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `plug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_bind_log`
--

DROP TABLE IF EXISTS `property_bind_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_bind_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `para` varchar(32) DEFAULT NULL,
  `main` tinyint(4) unsigned DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `iid` (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_bind_log`
--

LOCK TABLES `property_bind_log` WRITE;
/*!40000 ALTER TABLE `property_bind_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_bind_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_platform_log`
--

DROP TABLE IF EXISTS `purchase_platform_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_name` varchar(64) NOT NULL DEFAULT '0',
  `commodity_iid` varchar(32) NOT NULL DEFAULT '',
  `commodity_amount` int(11) NOT NULL DEFAULT '0',
  `unit_price` int(11) NOT NULL DEFAULT '0',
  `turnover` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `order_id` (`order_id`),
  KEY `time_account` (`update_time`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_platform_log`
--

LOCK TABLES `purchase_platform_log` WRITE;
/*!40000 ALTER TABLE `purchase_platform_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_platform_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_log`
--

DROP TABLE IF EXISTS `report_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `para4` varchar(255) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account1` (`account1`),
  KEY `account2` (`account2`),
  KEY `name2` (`name2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_log`
--

LOCK TABLES `report_log` WRITE;
/*!40000 ALTER TABLE `report_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_log`
--

DROP TABLE IF EXISTS `safe_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `ob_iid` varchar(32) NOT NULL DEFAULT '',
  `ob_name` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_log`
--

LOCK TABLES `safe_log` WRITE;
/*!40000 ALTER TABLE `safe_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `safe_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_log`
--

DROP TABLE IF EXISTS `sale_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_log`
--

LOCK TABLES `sale_log` WRITE;
/*!40000 ALTER TABLE `sale_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) DEFAULT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `server` varchar(20) DEFAULT NULL,
  `cpu` varchar(6) DEFAULT NULL,
  `vmem` varchar(6) DEFAULT NULL,
  `rmem` varchar(6) DEFAULT NULL,
  `cpu2` varchar(6) DEFAULT NULL,
  `para1` varchar(6) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_log`
--

DROP TABLE IF EXISTS `switch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_log`
--

LOCK TABLES `switch_log` WRITE;
/*!40000 ALTER TABLE `switch_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_monitor_log`
--

DROP TABLE IF EXISTS `system_monitor_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_monitor_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `number_ih` int(11) NOT NULL DEFAULT '0',
  `number_il` int(11) NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `degree` (`degree`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_monitor_log`
--

LOCK TABLES `system_monitor_log` WRITE;
/*!40000 ALTER TABLE `system_monitor_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_monitor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_stat_log`
--

DROP TABLE IF EXISTS `tao_stat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_stat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `finish_date` char(8) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `gid_times` int(11) NOT NULL DEFAULT '0',
  `gid_charge_times` int(11) NOT NULL DEFAULT '0',
  `lv_charge_times` int(11) NOT NULL DEFAULT '0',
  `ip_times` int(11) NOT NULL DEFAULT '0',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `punish` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `finish_date` (`finish_date`),
  KEY `gid` (`gid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_stat_log`
--

LOCK TABLES `tao_stat_log` WRITE;
/*!40000 ALTER TABLE `tao_stat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_stat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_task_log`
--

DROP TABLE IF EXISTS `tao_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `use_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_cha` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_task_log`
--

LOCK TABLES `tao_task_log` WRITE;
/*!40000 ALTER TABLE `tao_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_log`
--

DROP TABLE IF EXISTS `task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(16) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `task_type` varchar(16) NOT NULL DEFAULT '',
  `task_name` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `task_type` (`task_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_log`
--

LOCK TABLES `task_log` WRITE;
/*!40000 ALTER TABLE `task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_report_ip_log`
--

DROP TABLE IF EXISTS `user_report_ip_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_report_ip_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_report_ip_log`
--

LOCK TABLES `user_report_ip_log` WRITE;
/*!40000 ALTER TABLE `user_report_ip_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_report_ip_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishing_log`
--

DROP TABLE IF EXISTS `wishing_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishing_log` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`gid`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishing_log`
--

LOCK TABLES `wishing_log` WRITE;
/*!40000 ALTER TABLE `wishing_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishing_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_add_point_log`
--

DROP TABLE IF EXISTS `zq_add_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_add_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_add` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_add_point_log`
--

LOCK TABLES `zq_add_point_log` WRITE;
/*!40000 ALTER TABLE `zq_add_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_add_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_card_log`
--

DROP TABLE IF EXISTS `zq_card_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_card_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_card_log`
--

LOCK TABLES `zq_card_log` WRITE;
/*!40000 ALTER TABLE `zq_card_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_card_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_combat_log`
--

DROP TABLE IF EXISTS `zq_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `total_round` int(11) NOT NULL DEFAULT '0',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_combat_log`
--

LOCK TABLES `zq_combat_log` WRITE;
/*!40000 ALTER TABLE `zq_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_cost_point_log`
--

DROP TABLE IF EXISTS `zq_cost_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_cost_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_cost` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_cost_point_log`
--

LOCK TABLES `zq_cost_point_log` WRITE;
/*!40000 ALTER TABLE `zq_cost_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_cost_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_errand_log`
--

DROP TABLE IF EXISTS `zq_errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_errand_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_errand_log`
--

LOCK TABLES `zq_errand_log` WRITE;
/*!40000 ALTER TABLE `zq_errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_login_log`
--

DROP TABLE IF EXISTS `zq_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `xg_point` int(11) NOT NULL DEFAULT '0',
  `card_num` int(11) NOT NULL DEFAULT '0',
  `fragment_num` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_login_log`
--

LOCK TABLES `zq_login_log` WRITE;
/*!40000 ALTER TABLE `zq_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_lv_up_log`
--

DROP TABLE IF EXISTS `zq_lv_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_lv_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_lv_up_log`
--

LOCK TABLES `zq_lv_up_log` WRITE;
/*!40000 ALTER TABLE `zq_lv_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_lv_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_ldb_all`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_ldb_all` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_ldb_all`;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `activity` varchar(32) NOT NULL DEFAULT '',
  `start_time` char(14) NOT NULL DEFAULT '',
  `end_time` char(14) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(255) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `activity` (`activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anti_cheater_log`
--

DROP TABLE IF EXISTS `anti_cheater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anti_cheater_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anti_cheater_log`
--

LOCK TABLES `anti_cheater_log` WRITE;
/*!40000 ALTER TABLE `anti_cheater_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `anti_cheater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antiaddiction_log`
--

DROP TABLE IF EXISTS `antiaddiction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antiaddiction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `online_time` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antiaddiction_log`
--

LOCK TABLES `antiaddiction_log` WRITE;
/*!40000 ALTER TABLE `antiaddiction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `antiaddiction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apex_log`
--

DROP TABLE IF EXISTS `apex_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apex_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) NOT NULL DEFAULT '0',
  `kill_action` varchar(32) NOT NULL DEFAULT '',
  `task` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(3) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) DEFAULT NULL,
  `error_id` int(11) NOT NULL DEFAULT '0',
  `str_n` tinyint(3) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `mac_gids` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `error_id` (`error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apex_log`
--

LOCK TABLES `apex_log` WRITE;
/*!40000 ALTER TABLE `apex_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apex_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_log`
--

DROP TABLE IF EXISTS `apply_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_log` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` tinyint(3) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) DEFAULT NULL,
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(10) NOT NULL DEFAULT '0',
  `insider` int(10) unsigned NOT NULL DEFAULT '0',
  `item_type` tinyint(3) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_price` int(11) NOT NULL DEFAULT '0',
  `item_life` int(11) NOT NULL DEFAULT '0',
  `item_source` tinyint(4) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `lv_equipment` smallint(5) unsigned DEFAULT NULL,
  `para1` int(10) DEFAULT NULL,
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `name` (`item_name`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_log`
--

LOCK TABLES `apply_log` WRITE;
/*!40000 ALTER TABLE `apply_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_talk_log`
--

DROP TABLE IF EXISTS `auto_talk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_talk_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(2) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `max_lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `map` varchar(255) NOT NULL DEFAULT '',
  `call_times` int(11) NOT NULL DEFAULT '0',
  `publish` tinyint(2) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `gid` (`gid`),
  KEY `mac` (`mac`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_talk_log`
--

LOCK TABLES `auto_talk_log` WRITE;
/*!40000 ALTER TABLE `auto_talk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_talk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `behavior_log`
--

DROP TABLE IF EXISTS `behavior_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `behavior_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `time_used` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_fd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addup_exp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_tao` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addup_play` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_round` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_talk_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_friend_times` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_npc` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_exchange` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_click_mouse` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addup_move_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_used_stall` smallint(5) unsigned NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `behavior_log`
--

LOCK TABLES `behavior_log` WRITE;
/*!40000 ALTER TABLE `behavior_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `behavior_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_log`
--

DROP TABLE IF EXISTS `block_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `due` int(11) NOT NULL DEFAULT '0',
  `reason_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`),
  KEY `account` (`account`),
  KEY `action` (`action`),
  KEY `time_gid` (`update_time`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_log`
--

LOCK TABLES `block_log` WRITE;
/*!40000 ALTER TABLE `block_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `bonus_prop` varchar(32) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_log`
--

DROP TABLE IF EXISTS `channel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `channel` int(11) NOT NULL DEFAULT '0',
  `target` varchar(32) NOT NULL DEFAULT '',
  `msg` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `sender` (`name`),
  KEY `target` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_log`
--

LOCK TABLES `channel_log` WRITE;
/*!40000 ALTER TABLE `channel_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_log`
--

DROP TABLE IF EXISTS `chat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `chat_type` varchar(32) NOT NULL DEFAULT '',
  `chat_channel` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_log`
--

LOCK TABLES `chat_log` WRITE;
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_action_log`
--

DROP TABLE IF EXISTS `client_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_action_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `tao` int(11) unsigned DEFAULT NULL,
  `gold_coin` int(11) unsigned DEFAULT NULL,
  `in_party` tinyint(4) unsigned DEFAULT NULL,
  `send_num` int(11) unsigned DEFAULT NULL,
  `send_gids` int(11) unsigned DEFAULT NULL,
  `receive_num` int(11) unsigned DEFAULT NULL,
  `receive_gids` int(11) unsigned DEFAULT NULL,
  `current_channel` int(11) unsigned DEFAULT NULL,
  `troop_channel` int(11) unsigned DEFAULT NULL,
  `party_channel` int(11) unsigned DEFAULT NULL,
  `team_channel` int(11) unsigned DEFAULT NULL,
  `world_channel` int(11) unsigned DEFAULT NULL,
  `whoop_channel` int(11) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` int(11) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `mac` (`mac`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_action_log`
--

LOCK TABLES `client_action_log` WRITE;
/*!40000 ALTER TABLE `client_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_performance_log`
--

DROP TABLE IF EXISTS `client_performance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_performance_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `record_interval` int(11) DEFAULT NULL,
  `account` varchar(32) DEFAULT NULL,
  `gid` varchar(32) DEFAULT NULL,
  `mac` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `insider` tinyint(4) unsigned DEFAULT NULL,
  `lv` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `cpu_cost` int(11) DEFAULT NULL,
  `mem_cost` varchar(128) DEFAULT NULL,
  `render_frame_rate` int(11) unsigned DEFAULT NULL,
  `cur_scene` tinyint(4) unsigned DEFAULT NULL,
  `cur_room_user` int(11) unsigned DEFAULT NULL,
  `cur_room_name` varchar(32) DEFAULT NULL,
  `cur_process_num` int(11) unsigned DEFAULT NULL,
  `minimize_window` tinyint(4) unsigned DEFAULT NULL,
  `button_type` varchar(32) DEFAULT NULL,
  `button_name` varchar(32) DEFAULT NULL,
  `timeslice` varchar(32) DEFAULT NULL,
  `button_times` int(11) unsigned DEFAULT NULL,
  `directx_version` varchar(19) DEFAULT NULL,
  `prever_download` varchar(19) DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `para4` varchar(64) DEFAULT NULL,
  `para5` varchar(128) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `mac` (`mac`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_performance_log`
--

LOCK TABLES `client_performance_log` WRITE;
/*!40000 ALTER TABLE `client_performance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_performance_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_consume_log`
--

DROP TABLE IF EXISTS `coin_consume_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_consume_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `update_time` char(14) NOT NULL DEFAULT '',
  `consume_info` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_consume_log`
--

LOCK TABLES `coin_consume_log` WRITE;
/*!40000 ALTER TABLE `coin_consume_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_consume_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_order_log`
--

DROP TABLE IF EXISTS `coin_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `order_id` varchar(15) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `store_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `server` (`server`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_order_log`
--

LOCK TABLES `coin_order_log` WRITE;
/*!40000 ALTER TABLE `coin_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect_data_log`
--

DROP TABLE IF EXISTS `collect_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect_data_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `cpu_id` varchar(64) NOT NULL DEFAULT '',
  `cpu_info` varchar(64) NOT NULL DEFAULT '',
  `disk_sequence` varchar(64) NOT NULL DEFAULT '',
  `mac_address` varchar(64) NOT NULL DEFAULT '',
  `video_card` varchar(64) NOT NULL DEFAULT '',
  `memory_size` int(11) NOT NULL DEFAULT '0',
  `video_memory` int(11) NOT NULL DEFAULT '0',
  `bios` varchar(64) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(64) NOT NULL DEFAULT '',
  `para2` varchar(64) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect_data_log`
--

LOCK TABLES `collect_data_log` WRITE;
/*!40000 ALTER TABLE `collect_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_in_map_log`
--

DROP TABLE IF EXISTS `combat_in_map_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_in_map_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `tao` int(11) NOT NULL DEFAULT '0',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `map` varchar(32) NOT NULL DEFAULT '',
  `combat_times` int(11) NOT NULL DEFAULT '0',
  `combat_pet` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `char_name` (`char_name`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_in_map_log`
--

LOCK TABLES `combat_in_map_log` WRITE;
/*!40000 ALTER TABLE `combat_in_map_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_in_map_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_log`
--

DROP TABLE IF EXISTS `combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `in_party` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `all_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_round` int(11) NOT NULL DEFAULT '0',
  `abnormal_degree` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `main_attribute` varchar(32) NOT NULL DEFAULT '0',
  `ratio_attribute` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `para5` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_log`
--

LOCK TABLES `combat_log` WRITE;
/*!40000 ALTER TABLE `combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_hist`
--

DROP TABLE IF EXISTS `common_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_hist` (
  `id` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  KEY `id` (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_hist`
--

LOCK TABLES `common_hist` WRITE;
/*!40000 ALTER TABLE `common_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_log`
--

DROP TABLE IF EXISTS `common_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_log`
--

LOCK TABLES `common_log` WRITE;
/*!40000 ALTER TABLE `common_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_coin_log`
--

DROP TABLE IF EXISTS `cost_coin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_coin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `cost_type` varchar(32) NOT NULL DEFAULT '',
  `cost` int(11) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(64) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_coin_log`
--

LOCK TABLES `cost_coin_log` WRITE;
/*!40000 ALTER TABLE `cost_coin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_coin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_combat_log`
--

DROP TABLE IF EXISTS `csc_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `g_coin` int(11) NOT NULL DEFAULT '0',
  `s_coin` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `para4` varchar(128) NOT NULL DEFAULT '',
  `para5` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `server_account` (`server`,`account`),
  KEY `server_gid` (`server`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_combat_log`
--

LOCK TABLES `csc_combat_log` WRITE;
/*!40000 ALTER TABLE `csc_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_combat_log`
--

DROP TABLE IF EXISTS `csl_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(15) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `score_left` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_combat_log`
--

LOCK TABLES `csl_combat_log` WRITE;
/*!40000 ALTER TABLE `csl_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_log`
--

DROP TABLE IF EXISTS `csl_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `stage_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`stage_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_log`
--

LOCK TABLES `csl_match_log` WRITE;
/*!40000 ALTER TABLE `csl_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_combat_log`
--

DROP TABLE IF EXISTS `csp_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `party_id` varchar(32) NOT NULL DEFAULT '',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_combat_log`
--

LOCK TABLES `csp_combat_log` WRITE;
/*!40000 ALTER TABLE `csp_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csp_match_log`
--

DROP TABLE IF EXISTS `csp_match_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csp_match_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `league_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `season_id` int(11) unsigned NOT NULL DEFAULT '0',
  `round_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `matchday_id` tinyint(4) NOT NULL DEFAULT '0',
  `result` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `home_party_name` varchar(32) NOT NULL DEFAULT '0',
  `away_party_name` varchar(32) NOT NULL DEFAULT '0',
  `home_gid_num` int(11) NOT NULL DEFAULT '0',
  `away_gid_num` int(11) NOT NULL DEFAULT '0',
  `home_avg_lv` int(11) NOT NULL DEFAULT '0',
  `away_avg_lv` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `combat_index` (`league_id`,`season_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csp_match_log`
--

LOCK TABLES `csp_match_log` WRITE;
/*!40000 ALTER TABLE `csp_match_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `csp_match_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debug_log`
--

DROP TABLE IF EXISTS `debug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(128) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type_action` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debug_log`
--

LOCK TABLES `debug_log` WRITE;
/*!40000 ALTER TABLE `debug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `debug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encourage_detail_log`
--

DROP TABLE IF EXISTS `encourage_detail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encourage_detail_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '',
  `encourage_type` varchar(64) NOT NULL DEFAULT '',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `encourage_id` int(11) DEFAULT '0',
  `ip` varchar(16) DEFAULT '',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(255) DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encourage_detail_log`
--

LOCK TABLES `encourage_detail_log` WRITE;
/*!40000 ALTER TABLE `encourage_detail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `encourage_detail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_log`
--

DROP TABLE IF EXISTS `equipment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `item_iid` varchar(32) DEFAULT '',
  `cost_item_name` varchar(32) DEFAULT '',
  `cost_item_iid` varchar(32) DEFAULT '',
  `cost` int(10) NOT NULL DEFAULT '0',
  `oper_result` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(32) DEFAULT '',
  `para2` varchar(128) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `item_prop` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `action` (`action`),
  KEY `equip_iid` (`item_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_log`
--

LOCK TABLES `equipment_log` WRITE;
/*!40000 ALTER TABLE `equipment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errand_log`
--

DROP TABLE IF EXISTS `errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errand_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errand_log`
--

LOCK TABLES `errand_log` WRITE;
/*!40000 ALTER TABLE `errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_appraise_log`
--

DROP TABLE IF EXISTS `exchange_appraise_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_appraise_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `exchange_time` char(14) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `report` tinyint(4) NOT NULL DEFAULT '0',
  `star` tinyint(4) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account1` (`account1`),
  KEY `account2` (`account2`),
  KEY `gid1` (`gid1`),
  KEY `gid2` (`gid2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_appraise_log`
--

LOCK TABLES `exchange_appraise_log` WRITE;
/*!40000 ALTER TABLE `exchange_appraise_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_appraise_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gbuy_action_log`
--

DROP TABLE IF EXISTS `gbuy_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gbuy_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `gbuy_gcoin` int(11) NOT NULL DEFAULT '0',
  `gbuy_scoin` int(11) NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `coin` int(11) NOT NULL DEFAULT '0',
  `gbg_id` varchar(32) NOT NULL DEFAULT '',
  `gbg_name` varchar(32) NOT NULL DEFAULT '',
  `gbg_amount` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `gbg_id` (`gbg_id`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gbuy_action_log`
--

LOCK TABLES `gbuy_action_log` WRITE;
/*!40000 ALTER TABLE `gbuy_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbuy_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_log`
--

DROP TABLE IF EXISTS `gift_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_log`
--

LOCK TABLES `gift_log` WRITE;
/*!40000 ALTER TABLE `gift_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_log`
--

DROP TABLE IF EXISTS `gm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operator` (`operator`),
  KEY `account` (`account`),
  KEY `action` (`action`),
  KEY `time_gid` (`update_time`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_log`
--

LOCK TABLES `gm_log` WRITE;
/*!40000 ALTER TABLE `gm_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_log`
--

DROP TABLE IF EXISTS `gs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gs_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `ctime` varchar(32) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `server` (`server`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_log`
--

LOCK TABLES `gs_log` WRITE;
/*!40000 ALTER TABLE `gs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `gs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_credit_log`
--

DROP TABLE IF EXISTS `history_credit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_credit_log` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT '0',
  `used` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_credit_log`
--

LOCK TABLES `history_credit_log` WRITE;
/*!40000 ALTER TABLE `history_credit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_credit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_action_log`
--

DROP TABLE IF EXISTS `important_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `party_gid` char(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_action_log`
--

LOCK TABLES `important_action_log` WRITE;
/*!40000 ALTER TABLE `important_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_log`
--

DROP TABLE IF EXISTS `important_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(128) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_action` (`type`,`action`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_log`
--

LOCK TABLES `important_log` WRITE;
/*!40000 ALTER TABLE `important_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_log`
--

DROP TABLE IF EXISTS `important_pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) NOT NULL DEFAULT '',
  `account_to` varchar(32) NOT NULL DEFAULT '',
  `gid_from` char(16) NOT NULL DEFAULT '',
  `gid_to` char(16) NOT NULL DEFAULT '',
  `lv_from` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv_to` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(32) NOT NULL DEFAULT '',
  `pet_property` text NOT NULL,
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `para3` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account_to` (`account_to`),
  KEY `gid_to` (`gid_to`),
  KEY `pet_iid` (`pet_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_log`
--

LOCK TABLES `important_pet_log` WRITE;
/*!40000 ALTER TABLE `important_pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_task_log`
--

DROP TABLE IF EXISTS `ip_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `task` varchar(32) NOT NULL DEFAULT '',
  `num` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_task_log`
--

LOCK TABLES `ip_task_log` WRITE;
/*!40000 ALTER TABLE `ip_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_transfer_log`
--

DROP TABLE IF EXISTS `item_transfer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_transfer_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `account_from` varchar(32) DEFAULT NULL,
  `account_to` varchar(32) DEFAULT NULL,
  `gid_from` varchar(16) DEFAULT NULL,
  `gid_to` varchar(16) DEFAULT NULL,
  `lv_from` tinyint(3) unsigned DEFAULT NULL,
  `lv_to` tinyint(3) unsigned DEFAULT NULL,
  `gold_coin_from` int(10) unsigned DEFAULT NULL,
  `gold_coin_to` int(10) unsigned DEFAULT NULL,
  `mac_from` char(16) DEFAULT NULL,
  `mac_to` char(16) DEFAULT NULL,
  `ip_from` varchar(15) DEFAULT NULL,
  `ip_to` varchar(15) DEFAULT NULL,
  `locality_from` varchar(64) DEFAULT NULL,
  `locality_to` varchar(64) DEFAULT NULL,
  `item_iid` varchar(32) DEFAULT NULL,
  `item_name` varchar(32) DEFAULT NULL,
  `item_amount` int(10) unsigned DEFAULT NULL,
  `transfer_type` tinyint(3) unsigned DEFAULT NULL,
  `transfer_id` varchar(32) DEFAULT NULL,
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(10) unsigned DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `account` (`account_from`),
  KEY `gid` (`gid_from`),
  KEY `iid` (`item_iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_transfer_log`
--

LOCK TABLES `item_transfer_log` WRITE;
/*!40000 ALTER TABLE `item_transfer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_transfer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level_up_log`
--

DROP TABLE IF EXISTS `level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `upgrade_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `time_used` bigint(20) DEFAULT NULL,
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `create_time` varchar(14) NOT NULL DEFAULT '',
  `newbie` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `para4` bigint(20) DEFAULT NULL,
  `para5` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_up_log`
--

LOCK TABLES `level_up_log` WRITE;
/*!40000 ALTER TABLE `level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `silver_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `party` varchar(32) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `protect_type` varchar(32) NOT NULL DEFAULT '',
  `upgrade_state` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `login_ip` (`login_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_log`
--

LOCK TABLES `login_log` WRITE;
/*!40000 ALTER TABLE `login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material1_log`
--

DROP TABLE IF EXISTS `material1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material1_log`
--

LOCK TABLES `material1_log` WRITE;
/*!40000 ALTER TABLE `material1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_log`
--

DROP TABLE IF EXISTS `material_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '0',
  `gid` varchar(32) NOT NULL DEFAULT '0',
  `lv` int(11) unsigned NOT NULL DEFAULT '0',
  `tao` int(11) unsigned NOT NULL DEFAULT '0',
  `login_ip` varchar(32) NOT NULL DEFAULT '0',
  `mac` varchar(32) NOT NULL DEFAULT '0',
  `gold_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `silver_coin` int(11) unsigned NOT NULL DEFAULT '0',
  `insider` varchar(32) NOT NULL DEFAULT '0',
  `map` varchar(32) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `lasted_time` int(11) unsigned NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_log`
--

LOCK TABLES `material_log` WRITE;
/*!40000 ALTER TABLE `material_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money1_log`
--

DROP TABLE IF EXISTS `money1_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money1_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(32) NOT NULL DEFAULT '',
  `cash_type` tinyint(4) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money1_log`
--

LOCK TABLES `money1_log` WRITE;
/*!40000 ALTER TABLE `money1_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `gid` char(16) NOT NULL DEFAULT '',
  `gid_op` char(16) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `voucher` int(11) DEFAULT NULL,
  `after_value` varchar(64) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nummary_log`
--

DROP TABLE IF EXISTS `nummary_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nummary_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` tinyint(4) unsigned DEFAULT NULL,
  `action` varchar(32) NOT NULL DEFAULT '',
  `totality` bigint(20) unsigned NOT NULL DEFAULT '0',
  `times` mediumint(9) unsigned DEFAULT NULL,
  `gids` mediumint(9) unsigned DEFAULT NULL,
  `para1` int(11) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `type_action` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nummary_log`
--

LOCK TABLES `nummary_log` WRITE;
/*!40000 ALTER TABLE `nummary_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `nummary_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_level_up_log`
--

DROP TABLE IF EXISTS `pet_level_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_level_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `lv` int(4) NOT NULL DEFAULT '0',
  `last_lv_up` varchar(14) NOT NULL DEFAULT '',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) DEFAULT '',
  `para3` varchar(255) DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `iid` (`iid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_level_up_log`
--

LOCK TABLES `pet_level_up_log` WRITE;
/*!40000 ALTER TABLE `pet_level_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_level_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_log`
--

DROP TABLE IF EXISTS `pet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `pet_name` varchar(16) NOT NULL DEFAULT '',
  `pet_iid` varchar(32) NOT NULL DEFAULT '',
  `cost_item` varchar(16) NOT NULL DEFAULT '',
  `item_iid` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `pet_memo` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `pet_iid` (`pet_iid`),
  KEY `item_iid` (`item_iid`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_log`
--

LOCK TABLES `pet_log` WRITE;
/*!40000 ALTER TABLE `pet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plug_log`
--

DROP TABLE IF EXISTS `plug_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plug_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tool` int(11) NOT NULL DEFAULT '0',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `coins` int(11) NOT NULL DEFAULT '0',
  `relevance` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `tool` (`tool`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plug_log`
--

LOCK TABLES `plug_log` WRITE;
/*!40000 ALTER TABLE `plug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `plug_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_bind_log`
--

DROP TABLE IF EXISTS `property_bind_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_bind_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(16) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `para` varchar(32) DEFAULT NULL,
  `main` tinyint(4) unsigned DEFAULT '0',
  `data` text,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `iid` (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_bind_log`
--

LOCK TABLES `property_bind_log` WRITE;
/*!40000 ALTER TABLE `property_bind_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_bind_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_platform_log`
--

DROP TABLE IF EXISTS `purchase_platform_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `order_id` varchar(32) NOT NULL DEFAULT '',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_name` varchar(64) NOT NULL DEFAULT '0',
  `commodity_iid` varchar(32) NOT NULL DEFAULT '',
  `commodity_amount` int(11) NOT NULL DEFAULT '0',
  `unit_price` int(11) NOT NULL DEFAULT '0',
  `turnover` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `order_id` (`order_id`),
  KEY `time_account` (`update_time`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_platform_log`
--

LOCK TABLES `purchase_platform_log` WRITE;
/*!40000 ALTER TABLE `purchase_platform_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_platform_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_log`
--

DROP TABLE IF EXISTS `report_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account1` varchar(32) NOT NULL DEFAULT '',
  `name1` varchar(32) NOT NULL DEFAULT '',
  `gid1` varchar(32) NOT NULL DEFAULT '',
  `lv1` tinyint(4) NOT NULL DEFAULT '0',
  `tao1` int(11) NOT NULL DEFAULT '0',
  `gold_coin1` int(11) NOT NULL DEFAULT '0',
  `account2` varchar(32) NOT NULL DEFAULT '',
  `name2` varchar(32) NOT NULL DEFAULT '',
  `gid2` varchar(32) NOT NULL DEFAULT '',
  `lv2` tinyint(4) NOT NULL DEFAULT '0',
  `tao2` int(11) NOT NULL DEFAULT '0',
  `gold_coin2` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `para4` varchar(255) NOT NULL DEFAULT '',
  `para5` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account1` (`account1`),
  KEY `account2` (`account2`),
  KEY `name2` (`name2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_log`
--

LOCK TABLES `report_log` WRITE;
/*!40000 ALTER TABLE `report_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safe_log`
--

DROP TABLE IF EXISTS `safe_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tao` int(10) unsigned NOT NULL DEFAULT '0',
  `ob_iid` varchar(32) NOT NULL DEFAULT '',
  `ob_name` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `para3` int(11) DEFAULT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safe_log`
--

LOCK TABLES `safe_log` WRITE;
/*!40000 ALTER TABLE `safe_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `safe_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_log`
--

DROP TABLE IF EXISTS `sale_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_log`
--

LOCK TABLES `sale_log` WRITE;
/*!40000 ALTER TABLE `sale_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) DEFAULT NULL,
  `pid` varchar(6) DEFAULT NULL,
  `server` varchar(20) DEFAULT NULL,
  `cpu` varchar(6) DEFAULT NULL,
  `vmem` varchar(6) DEFAULT NULL,
  `rmem` varchar(6) DEFAULT NULL,
  `cpu2` varchar(6) DEFAULT NULL,
  `para1` varchar(6) DEFAULT NULL,
  `para2` varchar(32) DEFAULT NULL,
  `para3` varchar(32) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_log`
--

DROP TABLE IF EXISTS `switch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_log`
--

LOCK TABLES `switch_log` WRITE;
/*!40000 ALTER TABLE `switch_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_monitor_log`
--

DROP TABLE IF EXISTS `system_monitor_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_monitor_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `number_ih` int(11) NOT NULL DEFAULT '0',
  `number_il` int(11) NOT NULL DEFAULT '0',
  `degree` tinyint(4) NOT NULL DEFAULT '0',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `mac` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(255) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `degree` (`degree`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_monitor_log`
--

LOCK TABLES `system_monitor_log` WRITE;
/*!40000 ALTER TABLE `system_monitor_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_monitor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_stat_log`
--

DROP TABLE IF EXISTS `tao_stat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_stat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `finish_date` char(8) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `gid_times` int(11) NOT NULL DEFAULT '0',
  `gid_charge_times` int(11) NOT NULL DEFAULT '0',
  `lv_charge_times` int(11) NOT NULL DEFAULT '0',
  `ip_times` int(11) NOT NULL DEFAULT '0',
  `ip_gids` int(11) NOT NULL DEFAULT '0',
  `punish` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `finish_date` (`finish_date`),
  KEY `gid` (`gid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_stat_log`
--

LOCK TABLES `tao_stat_log` WRITE;
/*!40000 ALTER TABLE `tao_stat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_stat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tao_task_log`
--

DROP TABLE IF EXISTS `tao_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tao_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `dist_id` int(11) NOT NULL DEFAULT '0',
  `dist_name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `mac` char(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `use_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_charge` tinyint(4) NOT NULL DEFAULT '0',
  `lv_cha` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tao_task_log`
--

LOCK TABLES `tao_task_log` WRITE;
/*!40000 ALTER TABLE `tao_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tao_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_log`
--

DROP TABLE IF EXISTS `task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(16) NOT NULL DEFAULT '',
  `dist` varchar(16) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `task_type` varchar(16) NOT NULL DEFAULT '',
  `task_name` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `line` varchar(16) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `insider` int(11) NOT NULL DEFAULT '0',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `update_time` (`update_time`),
  KEY `gid` (`gid`),
  KEY `task_type` (`task_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_log`
--

LOCK TABLES `task_log` WRITE;
/*!40000 ALTER TABLE `task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `severity` int(11) unsigned NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` varchar(128) NOT NULL DEFAULT '0',
  `para3` varchar(128) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_report_ip_log`
--

DROP TABLE IF EXISTS `user_report_ip_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_report_ip_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `lv` tinyint(4) NOT NULL DEFAULT '0',
  `para1` varchar(255) NOT NULL DEFAULT '',
  `para2` varchar(32) NOT NULL DEFAULT '',
  `para3` varchar(32) NOT NULL DEFAULT '',
  `para4` varchar(32) NOT NULL DEFAULT '',
  `para5` varchar(32) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_report_ip_log`
--

LOCK TABLES `user_report_ip_log` WRITE;
/*!40000 ALTER TABLE `user_report_ip_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_report_ip_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishing_log`
--

DROP TABLE IF EXISTS `wishing_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishing_log` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`gid`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishing_log`
--

LOCK TABLES `wishing_log` WRITE;
/*!40000 ALTER TABLE `wishing_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishing_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_add_point_log`
--

DROP TABLE IF EXISTS `zq_add_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_add_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_add` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_add_point_log`
--

LOCK TABLES `zq_add_point_log` WRITE;
/*!40000 ALTER TABLE `zq_add_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_add_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_card_log`
--

DROP TABLE IF EXISTS `zq_card_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_card_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_card_log`
--

LOCK TABLES `zq_card_log` WRITE;
/*!40000 ALTER TABLE `zq_card_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_card_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_combat_log`
--

DROP TABLE IF EXISTS `zq_combat_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_combat_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `total_round` int(11) NOT NULL DEFAULT '0',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `result` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_combat_log`
--

LOCK TABLES `zq_combat_log` WRITE;
/*!40000 ALTER TABLE `zq_combat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_combat_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_cost_point_log`
--

DROP TABLE IF EXISTS `zq_cost_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_cost_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `point_before` int(11) NOT NULL DEFAULT '0',
  `point_after` int(11) NOT NULL DEFAULT '0',
  `point_cost` int(11) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '',
  `item_name` varchar(32) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_cost_point_log`
--

LOCK TABLES `zq_cost_point_log` WRITE;
/*!40000 ALTER TABLE `zq_cost_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_cost_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_errand_log`
--

DROP TABLE IF EXISTS `zq_errand_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_errand_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '0',
  `action` varchar(32) NOT NULL DEFAULT '0',
  `bonus_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '0',
  `bonus_prop` varchar(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`),
  KEY `action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_errand_log`
--

LOCK TABLES `zq_errand_log` WRITE;
/*!40000 ALTER TABLE `zq_errand_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_errand_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_login_log`
--

DROP TABLE IF EXISTS `zq_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `privilege` int(11) NOT NULL DEFAULT '0',
  `login_mode` int(11) NOT NULL DEFAULT '0',
  `time_used` int(11) NOT NULL DEFAULT '0',
  `hero_lv` int(11) NOT NULL DEFAULT '0',
  `xg_point` int(11) NOT NULL DEFAULT '0',
  `card_num` int(11) NOT NULL DEFAULT '0',
  `fragment_num` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_login_log`
--

LOCK TABLES `zq_login_log` WRITE;
/*!40000 ALTER TABLE `zq_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zq_lv_up_log`
--

DROP TABLE IF EXISTS `zq_lv_up_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zq_lv_up_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` char(14) NOT NULL DEFAULT '',
  `line` tinyint(4) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `create_time` char(14) NOT NULL DEFAULT '',
  `ip` varchar(18) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `hero_name` varchar(32) NOT NULL DEFAULT '',
  `lv` int(11) NOT NULL DEFAULT '0',
  `bonus_name` varchar(32) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`),
  KEY `time` (`update_time`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_lv_up_log`
--

LOCK TABLES `zq_lv_up_log` WRITE;
/*!40000 ALTER TABLE `zq_lv_up_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `zq_lv_up_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_mdb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_mdb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_mdb_1`;

--
-- Table structure for table `acc_info`
--

DROP TABLE IF EXISTS `acc_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_info` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_info`
--

LOCK TABLES `acc_info` WRITE;
/*!40000 ALTER TABLE `acc_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_info_copy`
--

DROP TABLE IF EXISTS `acc_info_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_info_copy` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_info_copy`
--

LOCK TABLES `acc_info_copy` WRITE;
/*!40000 ALTER TABLE `acc_info_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_info_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `blocked_time` varchar(14) NOT NULL DEFAULT '',
  `blocked_reason` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `protect` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `birthday` varchar(8) NOT NULL DEFAULT '',
  `id_type` varchar(32) NOT NULL DEFAULT '',
  `id_num` varchar(32) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `privilege` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `permit_ip` varchar(15) NOT NULL DEFAULT '',
  `permit_id` varchar(16) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena_user_info`
--

DROP TABLE IF EXISTS `arena_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arena_user_info` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `tt_score` int(32) NOT NULL DEFAULT '0',
  `w_score` int(32) NOT NULL DEFAULT '0',
  `tao` int(32) NOT NULL DEFAULT '0',
  `wcoin` int(32) NOT NULL DEFAULT '0',
  `family` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`),
  KEY `tt_score` (`tt_score`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena_user_info`
--

LOCK TABLES `arena_user_info` WRITE;
/*!40000 ALTER TABLE `arena_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_info`
--

DROP TABLE IF EXISTS `char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `charge_items_value` int(11) NOT NULL DEFAULT '0',
  `glory` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_ip` varchar(16) NOT NULL DEFAULT '',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '',
  `first_login_mac` varchar(32) NOT NULL DEFAULT '',
  `last_login_mac` varchar(32) NOT NULL DEFAULT '',
  `service_member_end_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `family_title` varchar(32) NOT NULL DEFAULT '',
  `activity_info` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `month_tao` int(11) NOT NULL DEFAULT '0',
  `month_tao_ti` char(14) NOT NULL DEFAULT '',
  `total_score` int(11) NOT NULL DEFAULT '0',
  `char_status` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_job` varchar(32) NOT NULL DEFAULT '',
  `party_contrib` int(11) DEFAULT NULL,
  `portrait` int(11) NOT NULL DEFAULT '0',
  `deny_login` int(11) NOT NULL DEFAULT '0',
  `last_privilege` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `auto_stall` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `nice` int(11) NOT NULL DEFAULT '0',
  `title` varchar(32) NOT NULL DEFAULT '',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `tortoise` int(11) NOT NULL DEFAULT '0',
  `reputation` int(11) NOT NULL DEFAULT '0',
  `wrestle_score` int(11) DEFAULT NULL,
  `newbie_survey_answer` int(11) NOT NULL DEFAULT '0',
  `tower_num` int(11) NOT NULL DEFAULT '0',
  `tower_time` int(11) NOT NULL DEFAULT '0',
  `tongtt_num` int(11) NOT NULL DEFAULT '0',
  `vip_score` int(11) NOT NULL DEFAULT '0',
  `tongtt_time` int(11) NOT NULL DEFAULT '0',
  `question_score` int(11) NOT NULL DEFAULT '0',
  `question_cost` int(11) NOT NULL DEFAULT '0',
  `last_question_time` int(11) NOT NULL DEFAULT '0',
  `arena_level` int(11) NOT NULL DEFAULT '0',
  `arena_exp` int(11) NOT NULL DEFAULT '0',
  `arena_score` int(11) NOT NULL DEFAULT '0',
  `kill_pkers` int(11) NOT NULL DEFAULT '0',
  `kill_officers` int(11) NOT NULL DEFAULT '0',
  `achieve` int(11) NOT NULL DEFAULT '0',
  `qixjh_round` int(11) NOT NULL DEFAULT '0',
  `qixjh_type` int(11) NOT NULL DEFAULT '0',
  `qixjh_time` int(11) NOT NULL DEFAULT '0',
  `tunt_name` varchar(32) NOT NULL DEFAULT '',
  `tunt_time` int(11) NOT NULL DEFAULT '0',
  `shid_name` varchar(32) NOT NULL DEFAULT '',
  `shid_time` int(11) NOT NULL DEFAULT '0',
  `kuilw_name` varchar(32) NOT NULL DEFAULT '',
  `kuilw_time` int(11) NOT NULL DEFAULT '0',
  `acc_blocked_time` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_info`
--

LOCK TABLES `char_info` WRITE;
/*!40000 ALTER TABLE `char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_info`
--

DROP TABLE IF EXISTS `child_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `wisdom` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `physique` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `str_effect` int(11) NOT NULL DEFAULT '0',
  `wit_effect` int(11) NOT NULL DEFAULT '0',
  `dex_effect` int(11) NOT NULL DEFAULT '0',
  `phy_effect` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`iid`),
  KEY `iid` (`iid`),
  KEY `owner` (`owner`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_info`
--

LOCK TABLES `child_info` WRITE;
/*!40000 ALTER TABLE `child_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info`
--

DROP TABLE IF EXISTS `city_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info` (
  `city` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `level` int(8) NOT NULL DEFAULT '1',
  `buildings` text,
  `memo` text,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info`
--

LOCK TABLES `city_info` WRITE;
/*!40000 ALTER TABLE `city_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citywar_info`
--

DROP TABLE IF EXISTS `citywar_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citywar_info` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `start_time` varchar(14) NOT NULL DEFAULT '',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `city_name` varchar(32) NOT NULL DEFAULT '',
  `defense_dist` varchar(32) NOT NULL DEFAULT '',
  `attack_dist` varchar(128) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`start_time`,`city_name`),
  KEY `start_time` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citywar_info`
--

LOCK TABLES `citywar_info` WRITE;
/*!40000 ALTER TABLE `citywar_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `citywar_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_recording`
--

DROP TABLE IF EXISTS `combat_recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_recording` (
  `version` varchar(32) NOT NULL DEFAULT '',
  `combat_id` varchar(32) NOT NULL DEFAULT '',
  `msg_index` int(32) NOT NULL DEFAULT '0',
  `content` text,
  `time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`combat_id`,`msg_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_recording`
--

LOCK TABLES `combat_recording` WRITE;
/*!40000 ALTER TABLE `combat_recording` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_recording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_sign_info`
--

DROP TABLE IF EXISTS `csc_sign_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_sign_info` (
  `csc` varchar(128) NOT NULL DEFAULT '',
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`csc`,`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_sign_info`
--

LOCK TABLES `csc_sign_info` WRITE;
/*!40000 ALTER TABLE `csc_sign_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_sign_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_dist_info`
--

DROP TABLE IF EXISTS `csl_dist_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_dist_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`dist`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_dist_info`
--

LOCK TABLES `csl_dist_info` WRITE;
/*!40000 ALTER TABLE `csl_dist_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_dist_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_info`
--

DROP TABLE IF EXISTS `csl_match_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `matchday` int(11) NOT NULL DEFAULT '0',
  `start_time` char(14) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `home_point` tinyint(4) NOT NULL DEFAULT '0',
  `away_point` tinyint(4) NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`),
  KEY `home_dist` (`home_dist`),
  KEY `away_dist` (`away_dist`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_info`
--

LOCK TABLES `csl_match_info` WRITE;
/*!40000 ALTER TABLE `csl_match_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_person_info`
--

DROP TABLE IF EXISTS `csl_person_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_person_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `contrib` int(11) NOT NULL DEFAULT '0',
  `combat` int(11) NOT NULL DEFAULT '0',
  `victory` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`,`dist`,`level_section`,`gid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_person_info`
--

LOCK TABLES `csl_person_info` WRITE;
/*!40000 ALTER TABLE `csl_person_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_person_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_sign_info`
--

DROP TABLE IF EXISTS `csw_sign_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_sign_info` (
  `csw_name` varchar(128) DEFAULT NULL,
  `path` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `time` varchar(64) DEFAULT NULL,
  `para1` varchar(128) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_sign_info`
--

LOCK TABLES `csw_sign_info` WRITE;
/*!40000 ALTER TABLE `csw_sign_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_sign_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draft_info`
--

DROP TABLE IF EXISTS `draft_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draft_info` (
  `season` varchar(32) NOT NULL DEFAULT '',
  `stage` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `gender` int(8) NOT NULL DEFAULT '1',
  `cur_votes` int(32) NOT NULL DEFAULT '0',
  `total_votes` int(32) NOT NULL DEFAULT '0',
  `flowers` int(32) NOT NULL DEFAULT '0',
  `di_declare` varchar(255) NOT NULL DEFAULT '',
  `images` text,
  `memo` text,
  PRIMARY KEY (`season`,`stage`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draft_info`
--

LOCK TABLES `draft_info` WRITE;
/*!40000 ALTER TABLE `draft_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `draft_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_info`
--

DROP TABLE IF EXISTS `important_pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`),
  KEY `env` (`dist`,`env`),
  KEY `owner` (`owner`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_info`
--

LOCK TABLES `important_pet_info` WRITE;
/*!40000 ALTER TABLE `important_pet_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `durability` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `rebuild_level` int(11) NOT NULL DEFAULT '0',
  `color` varchar(16) NOT NULL DEFAULT '0',
  `suit_level` int(11) NOT NULL DEFAULT '0',
  `req_level` int(11) NOT NULL DEFAULT '0',
  `perfect_degree` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`owner`,`dist`,`pos`,`env`),
  KEY `iid` (`iid`),
  KEY `env` (`dist`,`env`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_info` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ns_top_info`
--

DROP TABLE IF EXISTS `ns_top_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ns_top_info` (
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ns_top_info`
--

LOCK TABLES `ns_top_info` WRITE;
/*!40000 ALTER TABLE `ns_top_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ns_top_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paonan_user_info`
--

DROP TABLE IF EXISTS `paonan_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paonan_user_info` (
  `account` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `daily_task` varchar(128) NOT NULL DEFAULT '',
  `achieve_task` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(128) NOT NULL DEFAULT '',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paonan_user_info`
--

LOCK TABLES `paonan_user_info` WRITE;
/*!40000 ALTER TABLE `paonan_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `paonan_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_basic_info`
--

DROP TABLE IF EXISTS `party_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_basic_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `creator` varchar(100) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `icon_state` tinyint(2) NOT NULL DEFAULT '0',
  `temp_icon` text NOT NULL,
  `construct` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `last_give_party_money_time` varchar(16) NOT NULL DEFAULT '',
  `base_construct` int(11) NOT NULL DEFAULT '0',
  `last_pay_score_time` varchar(16) NOT NULL DEFAULT '',
  `last_save_time` varchar(16) NOT NULL DEFAULT '',
  `annouce` text NOT NULL,
  `skill_state` int(11) NOT NULL DEFAULT '0',
  `last_activity_time` varchar(16) NOT NULL DEFAULT '',
  `war_victory` int(11) NOT NULL DEFAULT '0',
  `pay_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_basic_info`
--

LOCK TABLES `party_basic_info` WRITE;
/*!40000 ALTER TABLE `party_basic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_members_info`
--

DROP TABLE IF EXISTS `party_members_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_members_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `party_job` varchar(100) NOT NULL DEFAULT '',
  `party_activity` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `member_gid` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`member_gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_members_info`
--

LOCK TABLES `party_members_info` WRITE;
/*!40000 ALTER TABLE `party_members_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_members_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_skills_info`
--

DROP TABLE IF EXISTS `party_skills_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_skills_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `skill_score` int(11) NOT NULL DEFAULT '0',
  `skill_level` int(11) NOT NULL DEFAULT '0',
  `skill_next_level_score` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `skill` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_skills_info`
--

LOCK TABLES `party_skills_info` WRITE;
/*!40000 ALTER TABLE `party_skills_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_skills_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_info`
--

DROP TABLE IF EXISTS `pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`),
  KEY `env` (`dist`,`env`),
  KEY `owner` (`owner`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_info`
--

LOCK TABLES `pet_info` WRITE;
/*!40000 ALTER TABLE `pet_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_status`
--

DROP TABLE IF EXISTS `server_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_status` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `available` int(11) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '0',
  `cpu_cost` int(11) NOT NULL DEFAULT '0',
  `cpu_satisfy` int(11) NOT NULL DEFAULT '0',
  `report_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_status`
--

LOCK TABLES `server_status` WRITE;
/*!40000 ALTER TABLE `server_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_info`
--

DROP TABLE IF EXISTS `shop_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `shop_id` varchar(128) NOT NULL DEFAULT '',
  `shop_name` varchar(64) NOT NULL DEFAULT '',
  `shop_owner` varchar(32) NOT NULL DEFAULT '',
  `shop_counters` int(11) NOT NULL DEFAULT '0',
  `shop_base_money` int(11) NOT NULL DEFAULT '0',
  `shop_run_money` int(11) NOT NULL DEFAULT '0',
  `shop_state` varchar(20) NOT NULL DEFAULT '',
  `shop_level` int(11) NOT NULL DEFAULT '0',
  `shop_type` varchar(20) NOT NULL DEFAULT '',
  `shop_credit_rank` int(11) NOT NULL DEFAULT '0',
  `shop_credit_value` int(11) NOT NULL DEFAULT '0',
  `shop_rate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`owner`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_info`
--

LOCK TABLES `shop_info` WRITE;
/*!40000 ALTER TABLE `shop_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sync_info`
--

DROP TABLE IF EXISTS `sync_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sync_info` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sync_info`
--

LOCK TABLES `sync_info` WRITE;
/*!40000 ALTER TABLE `sync_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sync_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_char`
--

DROP TABLE IF EXISTS `top_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_char` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_char`
--

LOCK TABLES `top_char` WRITE;
/*!40000 ALTER TABLE `top_char` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_pet`
--

DROP TABLE IF EXISTS `top_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_pet` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_pet`
--

LOCK TABLES `top_pet` WRITE;
/*!40000 ALTER TABLE `top_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_tongtt`
--

DROP TABLE IF EXISTS `top_tongtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_tongtt` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `over_lv` int(11) NOT NULL DEFAULT '0',
  `used_ti` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_tongtt`
--

LOCK TABLES `top_tongtt` WRITE;
/*!40000 ALTER TABLE `top_tongtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_tongtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_char_info`
--

DROP TABLE IF EXISTS `upgrade_char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `upgrade_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_char_info`
--

LOCK TABLES `upgrade_char_info` WRITE;
/*!40000 ALTER TABLE `upgrade_char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_mdb_all`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_mdb_all` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_mdb_all`;

--
-- Table structure for table `acc_info`
--

DROP TABLE IF EXISTS `acc_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_info` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_info`
--

LOCK TABLES `acc_info` WRITE;
/*!40000 ALTER TABLE `acc_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_info_copy`
--

DROP TABLE IF EXISTS `acc_info_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_info_copy` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `expired_time` varchar(14) NOT NULL DEFAULT '',
  `points` int(11) NOT NULL DEFAULT '0',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_info_copy`
--

LOCK TABLES `acc_info_copy` WRITE;
/*!40000 ALTER TABLE `acc_info_copy` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_info_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account` varchar(32) NOT NULL DEFAULT '',
  `blocked_time` varchar(14) NOT NULL DEFAULT '',
  `blocked_reason` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `protect` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `birthday` varchar(8) NOT NULL DEFAULT '',
  `id_type` varchar(32) NOT NULL DEFAULT '',
  `id_num` varchar(32) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `mobile` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `privilege` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `permit_ip` varchar(15) NOT NULL DEFAULT '',
  `permit_id` varchar(16) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` varchar(14) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena_user_info`
--

DROP TABLE IF EXISTS `arena_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arena_user_info` (
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `tt_score` int(32) NOT NULL DEFAULT '0',
  `w_score` int(32) NOT NULL DEFAULT '0',
  `tao` int(32) NOT NULL DEFAULT '0',
  `wcoin` int(32) NOT NULL DEFAULT '0',
  `family` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`path`),
  KEY `tt_score` (`tt_score`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena_user_info`
--

LOCK TABLES `arena_user_info` WRITE;
/*!40000 ALTER TABLE `arena_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `char_info`
--

DROP TABLE IF EXISTS `char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `charge_items_value` int(11) NOT NULL DEFAULT '0',
  `glory` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `first_login_ip` varchar(16) NOT NULL DEFAULT '',
  `last_login_ip` varchar(16) NOT NULL DEFAULT '',
  `first_login_mac` varchar(32) NOT NULL DEFAULT '',
  `last_login_mac` varchar(32) NOT NULL DEFAULT '',
  `service_member_end_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `family_title` varchar(32) NOT NULL DEFAULT '',
  `activity_info` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `month_tao` int(11) NOT NULL DEFAULT '0',
  `month_tao_ti` char(14) NOT NULL DEFAULT '',
  `total_score` int(11) NOT NULL DEFAULT '0',
  `char_status` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_job` varchar(32) NOT NULL DEFAULT '',
  `party_contrib` int(11) DEFAULT NULL,
  `portrait` int(11) NOT NULL DEFAULT '0',
  `deny_login` int(11) NOT NULL DEFAULT '0',
  `last_privilege` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `auto_stall` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `nice` int(11) NOT NULL DEFAULT '0',
  `title` varchar(32) NOT NULL DEFAULT '',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `tortoise` int(11) NOT NULL DEFAULT '0',
  `reputation` int(11) NOT NULL DEFAULT '0',
  `wrestle_score` int(11) DEFAULT NULL,
  `newbie_survey_answer` int(11) NOT NULL DEFAULT '0',
  `tower_num` int(11) NOT NULL DEFAULT '0',
  `tower_time` int(11) NOT NULL DEFAULT '0',
  `tongtt_num` int(11) NOT NULL DEFAULT '0',
  `vip_score` int(11) NOT NULL DEFAULT '0',
  `tongtt_time` int(11) NOT NULL DEFAULT '0',
  `question_score` int(11) NOT NULL DEFAULT '0',
  `question_cost` int(11) NOT NULL DEFAULT '0',
  `last_question_time` int(11) NOT NULL DEFAULT '0',
  `arena_level` int(11) NOT NULL DEFAULT '0',
  `arena_exp` int(11) NOT NULL DEFAULT '0',
  `arena_score` int(11) NOT NULL DEFAULT '0',
  `kill_pkers` int(11) NOT NULL DEFAULT '0',
  `kill_officers` int(11) NOT NULL DEFAULT '0',
  `achieve` int(11) NOT NULL DEFAULT '0',
  `qixjh_round` int(11) NOT NULL DEFAULT '0',
  `qixjh_type` int(11) NOT NULL DEFAULT '0',
  `qixjh_time` int(11) NOT NULL DEFAULT '0',
  `tunt_name` varchar(32) NOT NULL DEFAULT '',
  `tunt_time` int(11) NOT NULL DEFAULT '0',
  `shid_name` varchar(32) NOT NULL DEFAULT '',
  `shid_time` int(11) NOT NULL DEFAULT '0',
  `kuilw_name` varchar(32) NOT NULL DEFAULT '',
  `kuilw_time` int(11) NOT NULL DEFAULT '0',
  `acc_blocked_time` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_info`
--

LOCK TABLES `char_info` WRITE;
/*!40000 ALTER TABLE `char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_info`
--

DROP TABLE IF EXISTS `child_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `wisdom` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `physique` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `str_effect` int(11) NOT NULL DEFAULT '0',
  `wit_effect` int(11) NOT NULL DEFAULT '0',
  `dex_effect` int(11) NOT NULL DEFAULT '0',
  `phy_effect` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`iid`),
  KEY `iid` (`iid`),
  KEY `owner` (`owner`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_info`
--

LOCK TABLES `child_info` WRITE;
/*!40000 ALTER TABLE `child_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_info`
--

DROP TABLE IF EXISTS `city_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_info` (
  `city` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `party_name` varchar(32) NOT NULL DEFAULT '',
  `party_gid` varchar(32) NOT NULL DEFAULT '',
  `level` int(8) NOT NULL DEFAULT '1',
  `buildings` text,
  `memo` text,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_info`
--

LOCK TABLES `city_info` WRITE;
/*!40000 ALTER TABLE `city_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citywar_info`
--

DROP TABLE IF EXISTS `citywar_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citywar_info` (
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `start_time` varchar(14) NOT NULL DEFAULT '',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `city_name` varchar(32) NOT NULL DEFAULT '',
  `defense_dist` varchar(32) NOT NULL DEFAULT '',
  `attack_dist` varchar(128) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(255) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`start_time`,`city_name`),
  KEY `start_time` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citywar_info`
--

LOCK TABLES `citywar_info` WRITE;
/*!40000 ALTER TABLE `citywar_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `citywar_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combat_recording`
--

DROP TABLE IF EXISTS `combat_recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combat_recording` (
  `version` varchar(32) NOT NULL DEFAULT '',
  `combat_id` varchar(32) NOT NULL DEFAULT '',
  `msg_index` int(32) NOT NULL DEFAULT '0',
  `content` text,
  `time` varchar(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`combat_id`,`msg_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combat_recording`
--

LOCK TABLES `combat_recording` WRITE;
/*!40000 ALTER TABLE `combat_recording` DISABLE KEYS */;
/*!40000 ALTER TABLE `combat_recording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csc_sign_info`
--

DROP TABLE IF EXISTS `csc_sign_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csc_sign_info` (
  `csc` varchar(128) NOT NULL DEFAULT '',
  `path` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `time` varchar(14) NOT NULL DEFAULT '0',
  `para1` varchar(128) NOT NULL DEFAULT '0',
  `para2` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`csc`,`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csc_sign_info`
--

LOCK TABLES `csc_sign_info` WRITE;
/*!40000 ALTER TABLE `csc_sign_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csc_sign_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_dist_info`
--

DROP TABLE IF EXISTS `csl_dist_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_dist_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`dist`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_dist_info`
--

LOCK TABLES `csl_dist_info` WRITE;
/*!40000 ALTER TABLE `csl_dist_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_dist_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_match_info`
--

DROP TABLE IF EXISTS `csl_match_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_match_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `stage` tinyint(4) NOT NULL DEFAULT '0',
  `matchday` int(11) NOT NULL DEFAULT '0',
  `start_time` char(14) NOT NULL DEFAULT '',
  `home_dist` varchar(32) NOT NULL DEFAULT '',
  `away_dist` varchar(32) NOT NULL DEFAULT '',
  `home_point` tinyint(4) NOT NULL DEFAULT '0',
  `away_point` tinyint(4) NOT NULL DEFAULT '0',
  `home_score` int(11) NOT NULL DEFAULT '0',
  `away_score` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`),
  KEY `home_dist` (`home_dist`),
  KEY `away_dist` (`away_dist`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_match_info`
--

LOCK TABLES `csl_match_info` WRITE;
/*!40000 ALTER TABLE `csl_match_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_match_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csl_person_info`
--

DROP TABLE IF EXISTS `csl_person_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csl_person_info` (
  `season` int(11) NOT NULL DEFAULT '0',
  `league_id` varchar(32) NOT NULL DEFAULT '',
  `round` int(11) NOT NULL DEFAULT '0',
  `match_id` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `level_section` varchar(32) NOT NULL DEFAULT '',
  `gid` char(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `contrib` int(11) NOT NULL DEFAULT '0',
  `combat` int(11) NOT NULL DEFAULT '0',
  `victory` int(11) NOT NULL DEFAULT '0',
  `time` char(14) NOT NULL DEFAULT '',
  PRIMARY KEY (`season`,`league_id`,`round`,`match_id`,`dist`,`level_section`,`gid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csl_person_info`
--

LOCK TABLES `csl_person_info` WRITE;
/*!40000 ALTER TABLE `csl_person_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csl_person_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csw_sign_info`
--

DROP TABLE IF EXISTS `csw_sign_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csw_sign_info` (
  `csw_name` varchar(128) DEFAULT NULL,
  `path` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `time` varchar(64) DEFAULT NULL,
  `para1` varchar(128) DEFAULT NULL,
  `para2` varchar(255) DEFAULT NULL,
  `memo` text,
  PRIMARY KEY (`path`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csw_sign_info`
--

LOCK TABLES `csw_sign_info` WRITE;
/*!40000 ALTER TABLE `csw_sign_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `csw_sign_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draft_info`
--

DROP TABLE IF EXISTS `draft_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draft_info` (
  `season` varchar(32) NOT NULL DEFAULT '',
  `stage` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `gender` int(8) NOT NULL DEFAULT '1',
  `cur_votes` int(32) NOT NULL DEFAULT '0',
  `total_votes` int(32) NOT NULL DEFAULT '0',
  `flowers` int(32) NOT NULL DEFAULT '0',
  `di_declare` varchar(255) NOT NULL DEFAULT '',
  `images` text,
  `memo` text,
  PRIMARY KEY (`season`,`stage`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draft_info`
--

LOCK TABLES `draft_info` WRITE;
/*!40000 ALTER TABLE `draft_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `draft_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_pet_info`
--

DROP TABLE IF EXISTS `important_pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`),
  KEY `env` (`dist`,`env`),
  KEY `owner` (`owner`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_pet_info`
--

LOCK TABLES `important_pet_info` WRITE;
/*!40000 ALTER TABLE `important_pet_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `important_pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_info`
--

DROP TABLE IF EXISTS `item_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `durability` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `rebuild_level` int(11) NOT NULL DEFAULT '0',
  `color` varchar(16) NOT NULL DEFAULT '0',
  `suit_level` int(11) NOT NULL DEFAULT '0',
  `req_level` int(11) NOT NULL DEFAULT '0',
  `perfect_degree` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`owner`,`dist`,`pos`,`env`),
  KEY `iid` (`iid`),
  KEY `env` (`dist`,`env`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_info`
--

LOCK TABLES `item_info` WRITE;
/*!40000 ALTER TABLE `item_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_info` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `login_mode` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `login_ip` varchar(15) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ns_top_info`
--

DROP TABLE IF EXISTS `ns_top_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ns_top_info` (
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `regal` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ns_top_info`
--

LOCK TABLES `ns_top_info` WRITE;
/*!40000 ALTER TABLE `ns_top_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ns_top_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paonan_user_info`
--

DROP TABLE IF EXISTS `paonan_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paonan_user_info` (
  `account` varchar(128) NOT NULL DEFAULT '',
  `gid` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT '',
  `dist` varchar(128) NOT NULL DEFAULT '',
  `daily_task` varchar(128) NOT NULL DEFAULT '',
  `achieve_task` varchar(128) NOT NULL DEFAULT '',
  `update_time` varchar(128) NOT NULL DEFAULT '',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paonan_user_info`
--

LOCK TABLES `paonan_user_info` WRITE;
/*!40000 ALTER TABLE `paonan_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `paonan_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_basic_info`
--

DROP TABLE IF EXISTS `party_basic_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_basic_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `creator` varchar(100) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `icon_state` tinyint(2) NOT NULL DEFAULT '0',
  `temp_icon` text NOT NULL,
  `construct` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `last_give_party_money_time` varchar(16) NOT NULL DEFAULT '',
  `base_construct` int(11) NOT NULL DEFAULT '0',
  `last_pay_score_time` varchar(16) NOT NULL DEFAULT '',
  `last_save_time` varchar(16) NOT NULL DEFAULT '',
  `annouce` text NOT NULL,
  `skill_state` int(11) NOT NULL DEFAULT '0',
  `last_activity_time` varchar(16) NOT NULL DEFAULT '',
  `war_victory` int(11) NOT NULL DEFAULT '0',
  `pay_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_basic_info`
--

LOCK TABLES `party_basic_info` WRITE;
/*!40000 ALTER TABLE `party_basic_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_basic_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_members_info`
--

DROP TABLE IF EXISTS `party_members_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_members_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `party_contrib` int(11) NOT NULL DEFAULT '0',
  `party_job` varchar(100) NOT NULL DEFAULT '',
  `party_activity` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `member_gid` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`member_gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_members_info`
--

LOCK TABLES `party_members_info` WRITE;
/*!40000 ALTER TABLE `party_members_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_members_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party_skills_info`
--

DROP TABLE IF EXISTS `party_skills_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party_skills_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `skill_score` int(11) NOT NULL DEFAULT '0',
  `skill_level` int(11) NOT NULL DEFAULT '0',
  `skill_next_level_score` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `skill` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`dist`,`gid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party_skills_info`
--

LOCK TABLES `party_skills_info` WRITE;
/*!40000 ALTER TABLE `party_skills_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `party_skills_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_info`
--

DROP TABLE IF EXISTS `pet_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `pos` int(11) NOT NULL DEFAULT '0',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `env` varchar(128) NOT NULL DEFAULT '',
  `longevity` int(11) NOT NULL DEFAULT '0',
  `iid` varchar(32) NOT NULL DEFAULT '',
  `loyalty` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `martial` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `phy_power` int(11) NOT NULL DEFAULT '0',
  `mag_power` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0',
  `pet_upgraded` int(11) NOT NULL DEFAULT '0',
  `save_to_text` text NOT NULL,
  PRIMARY KEY (`dist`,`owner`,`pos`,`env`),
  KEY `iid` (`iid`),
  KEY `env` (`dist`,`env`),
  KEY `owner` (`owner`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_info`
--

LOCK TABLES `pet_info` WRITE;
/*!40000 ALTER TABLE `pet_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_status`
--

DROP TABLE IF EXISTS `server_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_status` (
  `server` varchar(32) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `available` int(11) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  `max_user` int(11) NOT NULL DEFAULT '0',
  `cpu_cost` int(11) NOT NULL DEFAULT '0',
  `cpu_satisfy` int(11) NOT NULL DEFAULT '0',
  `report_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_status`
--

LOCK TABLES `server_status` WRITE;
/*!40000 ALTER TABLE `server_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_info`
--

DROP TABLE IF EXISTS `shop_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `owner` varchar(32) NOT NULL DEFAULT '',
  `shop_id` varchar(128) NOT NULL DEFAULT '',
  `shop_name` varchar(64) NOT NULL DEFAULT '',
  `shop_owner` varchar(32) NOT NULL DEFAULT '',
  `shop_counters` int(11) NOT NULL DEFAULT '0',
  `shop_base_money` int(11) NOT NULL DEFAULT '0',
  `shop_run_money` int(11) NOT NULL DEFAULT '0',
  `shop_state` varchar(20) NOT NULL DEFAULT '',
  `shop_level` int(11) NOT NULL DEFAULT '0',
  `shop_type` varchar(20) NOT NULL DEFAULT '',
  `shop_credit_rank` int(11) NOT NULL DEFAULT '0',
  `shop_credit_value` int(11) NOT NULL DEFAULT '0',
  `shop_rate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`dist`,`owner`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_info`
--

LOCK TABLES `shop_info` WRITE;
/*!40000 ALTER TABLE `shop_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sync_info`
--

DROP TABLE IF EXISTS `sync_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sync_info` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sync_info`
--

LOCK TABLES `sync_info` WRITE;
/*!40000 ALTER TABLE `sync_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sync_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_char`
--

DROP TABLE IF EXISTS `top_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_char` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_char`
--

LOCK TABLES `top_char` WRITE;
/*!40000 ALTER TABLE `top_char` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_pet`
--

DROP TABLE IF EXISTS `top_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_pet` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `owner_name` varchar(32) NOT NULL DEFAULT '',
  `val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_pet`
--

LOCK TABLES `top_pet` WRITE;
/*!40000 ALTER TABLE `top_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_tongtt`
--

DROP TABLE IF EXISTS `top_tongtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_tongtt` (
  `top_index` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `over_lv` int(11) NOT NULL DEFAULT '0',
  `used_ti` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`top_index`,`rank`,`dist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_tongtt`
--

LOCK TABLES `top_tongtt` WRITE;
/*!40000 ALTER TABLE `top_tongtt` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_tongtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_char_info`
--

DROP TABLE IF EXISTS `upgrade_char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_char_info` (
  `update_time` varchar(16) NOT NULL DEFAULT '',
  `dist` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `create_time` varchar(16) NOT NULL DEFAULT '',
  `upgrade_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `last_login_time` varchar(16) NOT NULL DEFAULT '',
  `last_logout_time` varchar(16) NOT NULL DEFAULT '',
  `family` varchar(32) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `tao` int(11) NOT NULL DEFAULT '0',
  `icon` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `con` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `wiz` int(11) NOT NULL DEFAULT '0',
  `memo` text,
  PRIMARY KEY (`dist`,`gid`),
  KEY `account` (`account`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_char_info`
--

LOCK TABLES `upgrade_char_info` WRITE;
/*!40000 ALTER TABLE `upgrade_char_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dl_tdb_1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dl_tdb_1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dl_tdb_1`;

--
-- Table structure for table `lottery`
--

DROP TABLE IF EXISTS `lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lottery` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `lottery_iid` varchar(32) NOT NULL DEFAULT '',
  `lottery_no` varchar(32) NOT NULL DEFAULT '',
  `lottery_info` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lottery`
--

LOCK TABLES `lottery` WRITE;
/*!40000 ALTER TABLE `lottery` DISABLE KEYS */;
/*!40000 ALTER TABLE `lottery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merge_treasure_ids`
--

DROP TABLE IF EXISTS `merge_treasure_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merge_treasure_ids` (
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merge_treasure_ids`
--

LOCK TABLES `merge_treasure_ids` WRITE;
/*!40000 ALTER TABLE `merge_treasure_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `merge_treasure_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_log`
--

DROP TABLE IF EXISTS `trading_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trading_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `para1` varchar(32) NOT NULL DEFAULT '',
  `para2` varchar(128) NOT NULL DEFAULT '',
  `para3` varchar(128) NOT NULL DEFAULT '',
  `memo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_log`
--

LOCK TABLES `trading_log` WRITE;
/*!40000 ALTER TABLE `trading_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `trading_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_platform_log`
--

DROP TABLE IF EXISTS `trading_platform_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trading_platform_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` varchar(14) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `account` varchar(32) NOT NULL DEFAULT '',
  `gid` varchar(16) NOT NULL DEFAULT '',
  `mac` varchar(16) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `insider` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lv` int(11) NOT NULL DEFAULT '0',
  `gold_coin` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `commodity_type` int(11) unsigned NOT NULL DEFAULT '0',
  `commodity_id` varchar(64) NOT NULL DEFAULT '',
  `commodity_iid` varchar(128) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `service_costs` float NOT NULL DEFAULT '0',
  `tax` int(11) NOT NULL DEFAULT '0',
  `para1` int(11) NOT NULL DEFAULT '0',
  `para2` varchar(32) NOT NULL DEFAULT '0',
  `para3` varchar(32) NOT NULL DEFAULT '0',
  `para4` varchar(128) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `commodity_id` (`commodity_id`),
  KEY `time_account` (`update_time`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_platform_log`
--

LOCK TABLES `trading_platform_log` WRITE;
/*!40000 ALTER TABLE `trading_platform_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `trading_platform_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_record`
--

DROP TABLE IF EXISTS `trading_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trading_record` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `seller` varchar(32) NOT NULL DEFAULT '',
  `seller_account` varchar(32) NOT NULL DEFAULT '',
  `seller_dist` varchar(32) NOT NULL DEFAULT '',
  `buyer` varchar(32) NOT NULL DEFAULT '',
  `buyer_account` varchar(32) NOT NULL DEFAULT '',
  `buyer_dist` varchar(32) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL DEFAULT '0',
  `service_charge` float NOT NULL DEFAULT '0',
  `item_order_id` varchar(255) NOT NULL DEFAULT '',
  `update_time` char(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_record`
--

LOCK TABLES `trading_record` WRITE;
/*!40000 ALTER TABLE `trading_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `trading_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_log`
--

DROP TABLE IF EXISTS `transaction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_log` (
  `transaction_id` varchar(32) NOT NULL DEFAULT '',
  `goods_id` varchar(255) NOT NULL DEFAULT '',
  `server` varchar(32) NOT NULL DEFAULT '',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `content` mediumtext,
  `module` varchar(32) DEFAULT NULL,
  `func` varchar(32) DEFAULT NULL,
  `para` varchar(255) DEFAULT NULL,
  `result` text,
  `http_got` tinyint(4) NOT NULL DEFAULT '0',
  `repeat_times` tinyint(4) NOT NULL DEFAULT '0',
  `update_time` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_log`
--

LOCK TABLES `transaction_log` WRITE;
/*!40000 ALTER TABLE `transaction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treasure_info`
--

DROP TABLE IF EXISTS `treasure_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treasure_info` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `sale_duration` int(11) NOT NULL DEFAULT '0',
  `org_price` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `org_upset_price` int(11) NOT NULL DEFAULT '0',
  `upset_price` int(11) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  `change_time` int(11) NOT NULL DEFAULT '0',
  `buyer` varchar(32) DEFAULT NULL,
  `buyer_account` varchar(32) DEFAULT NULL,
  `buyer_dist` varchar(32) NOT NULL DEFAULT '',
  `seller` varchar(32) NOT NULL DEFAULT '',
  `seller_account` varchar(32) NOT NULL DEFAULT '',
  `seller_dist` varchar(32) NOT NULL DEFAULT '',
  `simple_info` varchar(255) NOT NULL DEFAULT '',
  `particular_info` text,
  `snapshot` text,
  `xml` mediumtext NOT NULL,
  `unique_id` varchar(128) NOT NULL DEFAULT '',
  `issue_time` varchar(32) NOT NULL DEFAULT '',
  `appointer` varchar(32) NOT NULL DEFAULT '',
  `sale_method` tinyint(4) NOT NULL DEFAULT '0',
  `checksum` int(32) NOT NULL DEFAULT '0',
  `snapshot_upgrade` text,
  `snapshot_equip` text,
  `snapshot_upg_equip` text,
  `snapshot_item` text,
  `snapshot_pet` text,
  `snapshot_guard` text,
  `snapshot_child` text,
  PRIMARY KEY (`id`),
  KEY `seller` (`seller`),
  KEY `buyer` (`buyer`),
  KEY `appointer` (`appointer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treasure_info`
--

LOCK TABLES `treasure_info` WRITE;
/*!40000 ALTER TABLE `treasure_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `treasure_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-19 18:54:12
