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
-- Table structure for table `contest_print`
--

DROP TABLE IF EXISTS `contest_print`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contest_print` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `contest_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_contest_id` (`contest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_print`
--

LOCK TABLES `contest_print` WRITE;
/*!40000 ALTER TABLE `contest_print` DISABLE KEYS */;
INSERT INTO `contest_print` VALUES (1,147,'#include <stdio.h>\r\nstruct stu {\r\n	char name;\r\n	int num;\r\n	double b;\r\n	double c;\r\n	double d;\r\n	double e;\r\n	double sum;\r\n};\r\nvoid show(struct stu *a,int n){\r\n	int i;\r\n	for(i=0;i<n;i++){\r\n		printf(\"NO.%d %s %lf\\n\",i+1,a[i].name,a[i].sum);\r\n	}\r\n}\r\nvoid select(struct stu *a,int n) {\r\n	int i,j,max;\r\n	struct stu t;\r\n	for(i=0; i<n-1; i++) {\r\n		max = i;\r\n		for(j=i+1; j<n; j++) {\r\n			if(a[max].sum<a[j].sum) {\r\n				t = a[max];\r\n				a[max] = a[j];\r\n				a[j] = t;\r\n			}\r\n			if(a[max].sum==a[j].sum) {\r\n				if(a[max].b<a[j].b) {\r\n					t = a[max];\r\n					a[max] = a[j];\r\n					a[j] = t;\r\n				}\r\n				if(a[max].b==a[j].b) {\r\n					if(a[max].c<a[j].c) {\r\n						t = a[max];\r\n						a[max] = a[j];\r\n						a[j] = t;\r\n					}\r\n					if(a[max].c==a[j].c) {\r\n						if(a[max].e<a[j].e) {\r\n							t = a[max];\r\n							a[max] = a[j];\r\n							a[j] = t;\r\n						}\r\n						if(a[max].e==a[j].e) {\r\n							if(a[max].num>a[j].num) {\r\n								t = a[max];\r\n								a[max] = a[j];\r\n								a[j] = t;\r\n							}\r\n						}\r\n					}\r\n				}\r\n			}\r\n\r\n\r\n		}\r\n	}\r\n\r\n}\r\nint main() {\r\n	struct stu a[200];\r\n	int n,m,i;\r\n	scanf(\"%d\",&n);\r\n	while(n--) {\r\n		scanf(\"%d\",&m);\r\n		for(i=0; i<m; i++) {\r\n			scanf(\"%s %lf %lf %lf %lf\",a[i].name,&a[i].b,&a[i].c,&a[i].d,&a[i].e);\r\n			a[i].sum = a[i].b+a[i].c+a[i].d+a[i].e;\r\n			a[i].num = i+1;\r\n		}\r\n		select(a,m);\r\n		show(a,m);\r\n	}\r\n\r\n	return 0;\r\n}\r\n','2019-12-22 13:50:49',0,4);
/*!40000 ALTER TABLE `contest_print` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-30  1:58:45
