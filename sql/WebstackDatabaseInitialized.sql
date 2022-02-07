-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: webstack
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
                            `id` int unsigned NOT NULL AUTO_INCREMENT,
                            `parent_id` int NOT NULL DEFAULT '0',
                            `sort` int NOT NULL DEFAULT '0',
                            `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                            `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                            `levels` int DEFAULT NULL,
                            `create_time` timestamp NULL DEFAULT NULL,
                            `update_time` timestamp NULL DEFAULT NULL,
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='站分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,0,1,'辅助站点','fa-wrench',1,'2019-01-21 04:48:58','2022-02-06 07:24:46'),(3,0,5,'交易所','fa-area-chart',1,'2019-01-21 05:53:10','2022-02-06 07:10:08'),(5,0,5,'浏览器','fa-chain',1,'2019-01-21 05:53:49','2022-02-06 07:11:36'),(41,0,22,'入门','fa-book',1,'2022-02-06 09:25:51',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code_dbinfo`
--

DROP TABLE IF EXISTS `code_dbinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code_dbinfo` (
                               `id` int unsigned NOT NULL AUTO_INCREMENT,
                               `name` varchar(20) DEFAULT NULL COMMENT '别名',
                               `db_driver` varchar(100) NOT NULL COMMENT '数据库驱动',
                               `db_url` varchar(200) NOT NULL COMMENT '数据库地址',
                               `db_user_name` varchar(100) NOT NULL COMMENT '数据库账户',
                               `db_password` varchar(100) NOT NULL COMMENT '连接密码',
                               `db_type` varchar(10) DEFAULT NULL COMMENT '数据库类型',
                               `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                               `update_time` datetime DEFAULT NULL COMMENT '修改时间',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='数据库链接信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code_dbinfo`
--

LOCK TABLES `code_dbinfo` WRITE;
/*!40000 ALTER TABLE `code_dbinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `code_dbinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site` (
                        `id` int unsigned NOT NULL AUTO_INCREMENT,
                        `category_id` int DEFAULT NULL,
                        `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        `thumb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        `update_time` timestamp NULL DEFAULT NULL,
                        PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='网站信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES (1,1,'电脑、手机通用网络加速','b24cc2dc-a0b3-4025-9ac2-c8aa85163d6e.png','付费包月，代理点多，首次配置稍复杂，站点有教程','https://agneo.co/?rc=3ai2v9zu','2019-01-21 17:18:31','2022-02-06 07:33:31'),(2,1,'手机专用网络加速器','f12ce18a-881c-45b9-9404-60a2a827cff7.png','苹果、安卓都支持，一键开启，有免费永久使用方式','https://www.atriasa.com/user/5VPAY3','2019-01-21 17:19:35','2022-02-06 07:32:56'),(3,1,'火币免加速域名查询','2091d8ad-2b28-475b-bc19-399f6e63a9bb.png','官方提供的查询地址，提供即时免加速访问域名','https://www.huobi.iq','2019-01-21 17:21:05','2022-02-06 07:35:12'),(4,1,'亚马逊aws虚拟主机','962fe09d-3c51-4faa-bce6-fc609e665d21.png','支持日本、香港等多个地区，新用户可申请到12月的免费主机','https://aws.amazon.com/','2022-02-06 07:51:43',NULL),(5,3,'火币','f3465c40-4879-4721-8f5b-458858170b50.png','Huobi Global，前身火币网，成立于2013年','https://www.huobi.cg/zh-cn/topic/double-reward/?invite_code=hz724223','2022-02-06 08:18:30','2022-02-06 08:18:44'),(6,3,'币安','caeb4b44-4790-47d9-8e73-fea6cefbad72.png','Binance交易所，成立于2017年','https://accounts.binance.com/zh-CN/register?ref=XCZG5Y9I','2022-02-06 08:19:24',NULL),(7,3,'欧易','8d36916b-38c7-4024-b5b5-b965435405a5.png','原OKEx交易所，前身OKCoin，成立于2013年','https://www.ouyicn.click/join/3237801','2022-02-06 08:19:57',NULL),(8,3,'抹茶','6b6a34f7-f7a7-4111-801b-5dd6f2250f92.png','MEXC交易所，上新币眼光独到，2018年成立','https://www.mexc.com/zh-CN/register?inviteCode=157Hw','2022-02-06 08:20:43',NULL),(9,3,'芝麻开门','22f6f1b4-8ef7-4368-b6b8-6c897d707eff.png','Gate交易所，前身比特儿（Bter），成立于2013年','https://www.gate.info/signup/10019003','2022-02-06 08:21:26',NULL),(10,3,'Pexpay','b14acd2a-da85-4160-a809-d66f81a2ae5d.png','币安合作的OTC交易市场，支持大陆OTC','https://www.pexpay.com/cn','2022-02-06 08:22:01',NULL),(11,3,'可盈可乐','1aa50133-cc51-4514-a075-0e980cba4272.png','CoinCola，暂不支持中国大陆，老牌的OTC交易市场，成立于2017年','https://coinco.la/mobile/signup?lang=zh-CN&utm_campaign=invite5.0&ref=GbMKpmtB&utm_content=link','2022-02-06 08:22:47',NULL),(12,3,'华通证券','a0d56261-be9a-4bb7-8862-18f7e8c40125.png','AEX旗下持牌券商，支持USDT出入金交易美港股','https://www.hhtzq.com/','2022-02-06 08:23:27',NULL),(13,3,'安银','e3a93a6b-b69b-4b4a-a297-89464154a37c.png','AEX交易所，前身比特时代（Btc38），成立于2013年','https://www.aex.cash/','2022-02-06 08:24:07',NULL),(14,3,'FTX','5e48649a-4592-4e82-964b-1738c8ef4449.png','知名的加密货币交易所，成立于2019年','https://ftx.com/','2022-02-06 08:24:46',NULL),(15,3,'Coinbase','20a777d1-d527-4239-b191-56927a5b99bc.png','美国的老牌加密货币交易所，纳斯达克上市企业','https://www.coinbase.com/','2022-02-06 11:08:34',NULL),(16,3,'Bakkt','c76b390c-1997-4269-b0e2-f08f0d1dc8e7.png','合规的比特币期货交易所','https://www.bakkt.com/','2022-02-06 11:09:26',NULL),(17,5,'BTC.COM','bfbdd1bc-6243-4f46-aad0-401d60d4ef3f.png','比特币区块链浏览器','https://btc.com/','2022-02-06 08:32:14',NULL),(18,5,'Etherscan','b1d0c573-9a2f-4d35-8b2a-e3fb083bb780.png','以太坊区块链浏览器','https://etherscan.io/','2022-02-06 08:32:55',NULL),(19,5,'欧科云链','6025d33e-e803-4a6a-80ac-12d03b7f61ac.png','多币种区块链浏览器','https://www.oklink.com/','2022-02-06 08:33:30',NULL),(20,5,'Solscan','b798607b-c567-4b1f-b44f-fe5a300b8522.png','Solana区块链浏览器','https://solscan.io/','2022-02-06 08:37:47',NULL),(21,5,'EosFlare','7514122b-757a-46c8-8966-b3b90b9f846a.png','EOS区块链浏览器','https://eosflare.io/','2022-02-06 11:20:34',NULL),(22,5,'Tronscan','fb86834a-e51a-440e-b503-ba32979e2d0c.png','波场区块链浏览器','https://nile.tronscan.org/','2022-02-06 11:21:07',NULL),(23,41,'比特币入门','77573b55-8bcc-496f-96f3-e241d89f9b25.png','为什么比特币对你的自由、财务和未来至关重要','https://xiongxiaoer.gitbook.io/the-little-bitcoin-book/','2022-02-06 09:28:19',NULL),(24,41,'精通比特币','613d1cc4-3d49-4589-872e-b0cc768dec51.png','Mastering Bitcoin（第二版）','https://lusuzi.gitbook.io/bitcoinbook/','2022-02-06 09:29:18',NULL),(25,41,'Ethereum.org','80da390a-83f2-4895-923f-25a07e79f52e.png','以太坊社区共建开源网站','https://ethereum.org/zh/','2022-02-06 09:32:10',NULL),(26,41,'精通以太坊','56b313a5-7ae7-4479-bb1e-345a47f1b116.png','Mastering Ethereum（繁中版）','https://cypherpunks-core.github.io/ethereumbook_zh/','2022-02-06 09:32:43',NULL),(27,41,'DeFi进阶','8f6ea39b-2e72-40a7-ac62-60a8fa56be70.png','How to DeFi（高级版）','https://nigdaemon.gitbook.io/how-to-defi-advanced-zhogn-wen-b/','2022-02-06 09:34:07',NULL);
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
                            `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
                            `num` int DEFAULT NULL COMMENT '排序',
                            `pid` int DEFAULT NULL COMMENT '父部门id',
                            `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
                            `simplename` varchar(45) DEFAULT NULL COMMENT '简称',
                            `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
                            `tips` varchar(255) DEFAULT NULL COMMENT '提示',
                            `version` int DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (24,1,0,'[0],','总公司','总公司','',NULL),(33,2,24,'[0],[24],','技术部','技术支持服务部门','',NULL),(34,6,33,'[0],[24],[33],','网站维护','站点日常维护','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict` (
                            `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
                            `num` int DEFAULT NULL COMMENT '排序',
                            `pid` int DEFAULT NULL COMMENT '父级字典',
                            `name` varchar(255) DEFAULT NULL COMMENT '名称',
                            `tips` varchar(255) DEFAULT NULL COMMENT '提示',
                            `code` varchar(255) DEFAULT NULL COMMENT '值',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES (50,0,0,'性别',NULL,'sys_sex'),(51,1,50,'男',NULL,'1'),(52,2,50,'女',NULL,'2'),(53,0,0,'状态',NULL,'sys_state'),(54,1,53,'启用',NULL,'1'),(55,2,53,'禁用',NULL,'2'),(56,0,0,'账号状态',NULL,'account_state'),(57,1,56,'启用',NULL,'1'),(58,2,56,'冻结',NULL,'2'),(59,3,56,'已删除',NULL,'3');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_expense`
--

DROP TABLE IF EXISTS `sys_expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_expense` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `money` decimal(20,2) DEFAULT NULL COMMENT '报销金额',
                               `desc` varchar(255) DEFAULT '' COMMENT '描述',
                               `createtime` datetime DEFAULT NULL COMMENT '创建时间',
                               `state` int DEFAULT NULL COMMENT '状态: 1.待提交  2:待审核   3.审核通过 4:驳回',
                               `userid` int DEFAULT NULL COMMENT '用户id',
                               `processId` varchar(255) DEFAULT NULL COMMENT '流程定义id',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='报销表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_expense`
--

LOCK TABLES `sys_expense` WRITE;
/*!40000 ALTER TABLE `sys_expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_login_log`
--

DROP TABLE IF EXISTS `sys_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_login_log` (
                                 `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
                                 `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
                                 `userid` int DEFAULT NULL COMMENT '管理员id',
                                 `createtime` datetime DEFAULT NULL COMMENT '创建时间',
                                 `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
                                 `message` text COMMENT '具体消息',
                                 `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='登录记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_login_log`
--

LOCK TABLES `sys_login_log` WRITE;
/*!40000 ALTER TABLE `sys_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
                            `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
                            `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
                            `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
                            `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
                            `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
                            `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
                            `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
                            `num` int DEFAULT NULL COMMENT '菜单排序号',
                            `levels` int DEFAULT NULL COMMENT '菜单层级',
                            `ismenu` int DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
                            `tips` varchar(255) DEFAULT NULL COMMENT '备注',
                            `status` int DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
                            `isopen` int DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (105,'system','0','[0],','系统管理','fa-user','#',8,1,1,NULL,1,1),(106,'mgr','system','[0],[system],','用户管理','','/mgr',1,2,1,NULL,1,0),(107,'mgr_add','mgr','[0],[system],[mgr],','添加用户',NULL,'/mgr/add',1,3,0,NULL,1,0),(108,'mgr_edit','mgr','[0],[system],[mgr],','修改用户',NULL,'/mgr/edit',2,3,0,NULL,1,0),(109,'mgr_delete','mgr','[0],[system],[mgr],','删除用户',NULL,'/mgr/delete',3,3,0,NULL,1,0),(110,'mgr_reset','mgr','[0],[system],[mgr],','重置密码',NULL,'/mgr/reset',4,3,0,NULL,1,0),(111,'mgr_freeze','mgr','[0],[system],[mgr],','冻结用户',NULL,'/mgr/freeze',5,3,0,NULL,1,0),(112,'mgr_unfreeze','mgr','[0],[system],[mgr],','解除冻结用户',NULL,'/mgr/unfreeze',6,3,0,NULL,1,0),(113,'mgr_setRole','mgr','[0],[system],[mgr],','分配角色',NULL,'/mgr/setRole',7,3,0,NULL,1,0),(114,'role','system','[0],[system],','角色管理',NULL,'/role',2,2,1,NULL,1,0),(115,'role_add','role','[0],[system],[role],','添加角色',NULL,'/role/add',1,3,0,NULL,1,0),(116,'role_edit','role','[0],[system],[role],','修改角色',NULL,'/role/edit',2,3,0,NULL,1,0),(117,'role_remove','role','[0],[system],[role],','删除角色',NULL,'/role/remove',3,3,0,NULL,1,0),(118,'role_setAuthority','role','[0],[system],[role],','配置权限',NULL,'/role/setAuthority',4,3,0,NULL,1,0),(119,'menu','system','[0],[system],','菜单管理',NULL,'/menu',4,2,1,NULL,1,0),(120,'menu_add','menu','[0],[system],[menu],','添加菜单',NULL,'/menu/add',1,3,0,NULL,1,0),(121,'menu_edit','menu','[0],[system],[menu],','修改菜单',NULL,'/menu/edit',2,3,0,NULL,1,0),(122,'menu_remove','menu','[0],[system],[menu],','删除菜单',NULL,'/menu/remove',3,3,0,NULL,1,0),(128,'log','system','[0],[system],','业务日志',NULL,'/log',6,2,1,NULL,1,0),(130,'druid','system','[0],[system],','监控管理',NULL,'/druid',7,2,1,NULL,1,NULL),(131,'dept','system','[0],[system],','部门管理',NULL,'/dept',3,2,1,NULL,1,NULL),(132,'dict','system','[0],[system],','字典管理',NULL,'/dict',4,2,1,NULL,1,NULL),(133,'loginLog','system','[0],[system],','登录日志',NULL,'/loginLog',6,2,1,NULL,1,NULL),(134,'log_clean','log','[0],[system],[log],','清空日志',NULL,'/log/delLog',3,3,0,NULL,1,NULL),(135,'dept_add','dept','[0],[system],[dept],','添加部门',NULL,'/dept/add',1,3,0,NULL,1,NULL),(136,'dept_update','dept','[0],[system],[dept],','修改部门',NULL,'/dept/update',1,3,0,NULL,1,NULL),(137,'dept_delete','dept','[0],[system],[dept],','删除部门',NULL,'/dept/delete',1,3,0,NULL,1,NULL),(138,'dict_add','dict','[0],[system],[dict],','添加字典',NULL,'/dict/add',1,3,0,NULL,1,NULL),(139,'dict_update','dict','[0],[system],[dict],','修改字典',NULL,'/dict/update',1,3,0,NULL,1,NULL),(140,'dict_delete','dict','[0],[system],[dict],','删除字典',NULL,'/dict/delete',1,3,0,NULL,1,NULL),(141,'notice','system','[0],[system],','通知管理',NULL,'/notice',9,2,1,NULL,1,NULL),(142,'notice_add','notice','[0],[system],[notice],','添加通知',NULL,'/notice/add',1,3,0,NULL,1,NULL),(143,'notice_update','notice','[0],[system],[notice],','修改通知',NULL,'/notice/update',2,3,0,NULL,1,NULL),(144,'notice_delete','notice','[0],[system],[notice],','删除通知',NULL,'/notice/delete',3,3,0,NULL,1,NULL),(145,'hello','0','[0],','通知','fa-rocket','/notice/hello',3,1,1,NULL,1,NULL),(148,'code','0','[0],','代码生成','fa-code','/code',7,1,1,NULL,1,NULL),(149,'api_mgr','0','[0],','接口文档','fa-leaf','/swagger-ui.html',6,1,0,NULL,1,NULL),(150,'to_menu_edit','menu','[0],[system],[menu],','菜单编辑跳转','','/menu/menu_edit',4,3,0,NULL,1,NULL),(151,'menu_list','menu','[0],[system],[menu],','菜单列表','','/menu/list',5,3,0,NULL,1,NULL),(152,'to_dept_update','dept','[0],[system],[dept],','修改部门跳转','','/dept/dept_update',4,3,0,NULL,1,NULL),(153,'dept_list','dept','[0],[system],[dept],','部门列表','','/dept/list',5,3,0,NULL,1,NULL),(154,'dept_detail','dept','[0],[system],[dept],','部门详情','','/dept/detail',6,3,0,NULL,1,NULL),(155,'to_dict_edit','dict','[0],[system],[dict],','修改菜单跳转','','/dict/dict_edit',4,3,0,NULL,1,NULL),(156,'dict_list','dict','[0],[system],[dict],','字典列表','','/dict/list',5,3,0,NULL,1,NULL),(157,'dict_detail','dict','[0],[system],[dict],','字典详情','','/dict/detail',6,3,0,NULL,1,NULL),(158,'log_list','log','[0],[system],[log],','日志列表','','/log/list',2,3,0,NULL,1,NULL),(159,'log_detail','log','[0],[system],[log],','日志详情','','/log/detail',3,3,0,NULL,1,NULL),(160,'del_login_log','loginLog','[0],[system],[loginLog],','清空登录日志','','/loginLog/delLoginLog',1,3,0,NULL,1,NULL),(161,'login_log_list','loginLog','[0],[system],[loginLog],','登录日志列表','','/loginLog/list',2,3,0,NULL,1,NULL),(162,'to_role_edit','role','[0],[system],[role],','修改角色跳转','','/role/role_edit',5,3,0,NULL,1,NULL),(163,'to_role_assign','role','[0],[system],[role],','角色分配跳转','','/role/role_assign',6,3,0,NULL,1,NULL),(164,'role_list','role','[0],[system],[role],','角色列表','','/role/list',7,3,0,NULL,1,NULL),(165,'to_assign_role','mgr','[0],[system],[mgr],','分配角色跳转','','/mgr/role_assign',8,3,0,NULL,1,NULL),(166,'to_user_edit','mgr','[0],[system],[mgr],','编辑用户跳转','','/mgr/user_edit',9,3,0,NULL,1,NULL),(167,'mgr_list','mgr','[0],[system],[mgr],','用户列表','','/mgr/list',10,3,0,NULL,1,NULL),(171,'category','0','[0],','分类管理','fa-archive','/category',0,1,1,NULL,1,NULL),(173,'site','0','[0],','网站管理','fa-internet-explorer','/site',1,1,1,NULL,1,NULL);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
                              `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
                              `title` varchar(255) DEFAULT NULL COMMENT '标题',
                              `type` int DEFAULT NULL COMMENT '类型',
                              `content` text COMMENT '内容',
                              `createtime` datetime DEFAULT NULL COMMENT '创建时间',
                              `creater` int DEFAULT NULL COMMENT '创建人',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='通知表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (6,'世界',10,'欢迎使用Guns管理系统','2017-01-11 08:53:20',1),(8,'你好',NULL,'你好','2017-05-10 19:28:57',1),(10,'你好',NULL,'这是一个开源的网址导航网站项目，您可以拿来制作自己的网址导航，也可以做与导航无关的网站。如果对本项目有任何建议都可以发起 issue。','2019-07-26 18:23:52',1);
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_operation_log`
--

DROP TABLE IF EXISTS `sys_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_operation_log` (
                                     `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
                                     `logtype` varchar(255) DEFAULT NULL COMMENT '日志类型',
                                     `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
                                     `userid` int DEFAULT NULL COMMENT '用户id',
                                     `classname` varchar(255) DEFAULT NULL COMMENT '类名称',
                                     `method` text COMMENT '方法名称',
                                     `createtime` datetime DEFAULT NULL COMMENT '创建时间',
                                     `succeed` varchar(255) DEFAULT NULL COMMENT '是否成功',
                                     `message` text COMMENT '备注',
                                     PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=726 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_operation_log`
--

LOCK TABLES `sys_operation_log` WRITE;
/*!40000 ALTER TABLE `sys_operation_log` DISABLE KEYS */;
INSERT INTO `sys_operation_log` VALUES (724,'业务日志','清空业务日志',1,'com.wwt.manage.modular.system.controller.LogController','delLog','2022-02-07 03:24:48','成功','主键id=null'),(725,'业务日志','清空登录日志',1,'com.wwt.manage.modular.system.controller.LoginLogController','delLog','2022-02-07 03:24:56','成功','主键id=null');
/*!40000 ALTER TABLE `sys_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_relation`
--

DROP TABLE IF EXISTS `sys_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_relation` (
                                `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
                                `menuid` bigint DEFAULT NULL COMMENT '菜单id',
                                `roleid` int DEFAULT NULL COMMENT '角色id',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3907 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_relation`
--

LOCK TABLES `sys_relation` WRITE;
/*!40000 ALTER TABLE `sys_relation` DISABLE KEYS */;
INSERT INTO `sys_relation` VALUES (3848,105,1),(3849,106,1),(3850,107,1),(3851,108,1),(3852,109,1),(3853,110,1),(3854,111,1),(3855,112,1),(3856,113,1),(3857,165,1),(3858,166,1),(3859,167,1),(3860,114,1),(3861,115,1),(3862,116,1),(3863,117,1),(3864,118,1),(3865,162,1),(3866,163,1),(3867,164,1),(3868,119,1),(3869,120,1),(3870,121,1),(3871,122,1),(3872,150,1),(3873,151,1),(3874,128,1),(3875,134,1),(3876,158,1),(3877,159,1),(3878,130,1),(3879,131,1),(3880,135,1),(3881,136,1),(3882,137,1),(3883,152,1),(3884,153,1),(3885,154,1),(3886,132,1),(3887,138,1),(3888,139,1),(3889,140,1),(3890,155,1),(3891,156,1),(3892,157,1),(3893,133,1),(3894,160,1),(3895,161,1),(3896,141,1),(3897,142,1),(3898,143,1),(3899,144,1),(3900,145,1),(3901,148,1),(3902,149,1),(3903,171,1),(3904,173,1),(3905,171,5),(3906,173,5);
/*!40000 ALTER TABLE `sys_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
                            `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
                            `num` int DEFAULT NULL COMMENT '序号',
                            `pid` int DEFAULT NULL COMMENT '父角色id',
                            `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
                            `deptid` int DEFAULT NULL COMMENT '部门名称',
                            `tips` varchar(255) DEFAULT NULL COMMENT '提示',
                            `version` int DEFAULT NULL COMMENT '保留字段(暂时没用）',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,1,0,'超级管理员',24,'administrator',1),(5,2,1,'运营维护',26,'WebSiteManager',NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
                            `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
                            `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
                            `account` varchar(45) DEFAULT NULL COMMENT '账号',
                            `password` varchar(45) DEFAULT NULL COMMENT '密码',
                            `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
                            `name` varchar(45) DEFAULT NULL COMMENT '名字',
                            `birthday` datetime DEFAULT NULL COMMENT '生日',
                            `sex` int DEFAULT NULL COMMENT '性别（1：男 2：女）',
                            `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
                            `phone` varchar(45) DEFAULT NULL COMMENT '电话',
                            `roleid` varchar(255) DEFAULT NULL COMMENT '角色id',
                            `deptid` int DEFAULT NULL COMMENT '部门id',
                            `status` int DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
                            `createtime` datetime DEFAULT NULL COMMENT '创建时间',
                            `version` int DEFAULT NULL COMMENT '保留字段',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'0c8d1d57-5464-49bd-becb-9025a28e5a72.jpg','admin','1d439dfeeb45cda8c4656105ccde2d60','ba5te','管理员','2000-01-01 00:00:00',1,'88664422@qq.com','13888888888','1',24,1,'2022-02-06 18:22:39',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'webstack'
--

--
-- Dumping routines for database 'webstack'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-07  3:25:30
