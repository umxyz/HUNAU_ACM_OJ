CREATE DATABASE  IF NOT EXISTS `jnoj` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jnoj`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 172.28.210.177    Database: jnoj
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `discuss`
--

DROP TABLE IF EXISTS `discuss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `entity` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_entity_id` (`entity_id`),
  KEY `idx_entity` (`entity`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discuss`
--

LOCK TABLES `discuss` WRITE;
/*!40000 ALTER TABLE `discuss` DISABLE KEYS */;
INSERT INTO `discuss` VALUES (1,0,'OJ简介 使用问题私聊QQ：229781766',1,'<p>HUNAU ACM在线评测系统（HUNAU ACM Online Judge），是一个在线的判题系统。 用户可以在线提交程序多种程序（如C、C++、Java、Python3）源代码，系统对源代码进行编译和执行，并通过预先设计的测试数据来检验程序源代码的正确性。</p><h2><code><strong>在线体验</strong></code></h2><blockquote><p>学校公网服务器申请中</p><p>校园网体验 <a href=\"http://172.28.210.177\">OJ Demo</a></p></blockquote><h2><code><strong>功能特性</strong></code></h2><ul><li>OI 模式 - 支持 OI 模式判题，子任务判题</li><li>滚榜 - 在比赛结束后，提供滚动榜单的功能</li><li>VIP用户机制 - 可以将题目设为仅 VIP 用户可见</li><li>小组功能 - 用户可以创建小组，并在小组内举办比赛</li><li>Testlib 特判 - 支持使用 testlib.h 来写特判程序</li><li>线上线下赛场景 - 为线下举办的比赛增加限制：如限制参加比赛的账户，参加比赛的账户不能自己修改个人信息</li><li>线下赛打印功能 - 为线下赛提供打印代码的功能</li><li>题目打印功能 - 创建比赛后，可以将题目信息一键导出为 PDF，以供打印。</li><li>公告弹窗提示 - 在比赛过程中，发布公告时可以给所有在线用户发布弹窗提示有新公告</li><li>作业 - 可以用于教学练习</li><li>记录出错数据 - 可以查看提交方案的出错数据</li><li>新闻门户首页 - 首页显示新闻，各种公告等</li><li>支持多语言 - 现支持 C、C++、Java、Python3</li><li>支持(Katex)数学公式</li><li>题目描述多组样例 - 在一道题目的样例描述中，可以提供多组样例</li><li>对比赛发布题解</li><li>问题标签 - 给问题添加标签，方便查询</li><li>基于 MVC 框架开发 - 开发便于上手</li><li>多边形出题系统 - 一个功能完善的出题系统。出题目，生成数据，验题等。</li><li>Web 在线管理题目数据 - 在线对题目测试数据进行增删改查</li><li>排行榜 - 对用户解题数量等进行排行</li><li>积分榜 - 对参加比赛的用户进行积分结算，并进行排名</li></ul><h2><code><strong>开发计划</strong></code></h2><p>以下列举了一些今后版本可能会添加的功能，如果你有新的功能需求，可以提 issues。</p><ul><li>Polygon 权限管理 - 题目创建人、验题人权限</li><li>删除某道题的提交记录 - 可用于在比赛后发现某道题不合理，删除该题的提交记录</li><li>代码查重</li></ul>','2019-05-28 21:47:49','2020-01-06 00:11:20',1,'news',NULL),(3,0,'非校园网访问地址',3,'<p>Tips : &nbsp;免费服务器很慢</p><p>跳转链接 : &nbsp;<a href=\"http://acmoj.free.idcfengye.com\">点击查看</a></p><p>原始地址 : &nbsp;http://acmoj.free.idcfengye.com/</p>','2019-05-30 11:28:14','2019-11-07 01:20:16',0,'news',NULL),(4,0,'湖南农业大学ACM官方交流群：730840532',3,'<p>欢迎加入湖南农业大学 官方交流群 730840532</p><p>一键加群 : &nbsp;<a href=\"https://jq.qq.com/?_wv=1027&amp;k=5aEVTaY\">点击链接加入群聊【HUNAU-ACM&nbsp;2019】</a></p>','2019-05-30 11:31:59','2019-12-29 01:39:31',0,'news',NULL),(5,0,'此OJ已开放注册功能，但不保证你是永久用户',5,'<p>&nbsp;</p>','2019-06-04 15:46:21','2020-01-06 00:13:15',1,'news',NULL),(6,0,'使用Python等其他语言提交方法',5,'<p>搭建本OJ初衷只是为了实验室布置作业以及校赛和内部赛使用，所以新生只能使用C/C++进行提交。</p><p>现只支持Java，Python3 &nbsp;需要其他语言 请联系实验室负责人</p><p>Java，Python3提交方法：</p><ol><li><strong>F12</strong> 或 <strong>抓包（</strong>因为网页客户端隐藏了所有可用语言显示<strong>）</strong></li><li>根据数组修改提交语言的值</li></ol><pre><p>$arr = [ \'\' =&gt; \'All\', \'0\' =&gt; \'C\',  \'1\' =&gt; \'C++\', \'2\' =&gt; \'Java\', \'3\' =&gt; \'Python3\' ];</p></pre><p>Python3提交效果图：</p><figure class=\"image\"><img src=\"/uploads/20190913/15683754947303.png\"></figure>','2019-09-13 19:17:37','2019-09-18 13:40:36',0,'news',NULL),(7,0,'test',5,'<p>123</p>','2019-11-17 06:20:13','2019-11-17 06:20:13',1,'contest',1);
/*!40000 ALTER TABLE `discuss` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-06  0:15:54
