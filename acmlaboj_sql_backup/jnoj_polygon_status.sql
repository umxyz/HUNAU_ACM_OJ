CREATE DATABASE  IF NOT EXISTS `jnoj` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jnoj`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 172.28.210.177    Database: jnoj
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `polygon_status`
--

DROP TABLE IF EXISTS `polygon_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polygon_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) DEFAULT NULL,
  `result` smallint(6) NOT NULL DEFAULT '0',
  `time` int(11) DEFAULT NULL,
  `memory` int(11) DEFAULT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `language` smallint(6) DEFAULT NULL,
  `source` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_problem_id` (`problem_id`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polygon_status`
--

LOCK TABLES `polygon_status` WRITE;
/*!40000 ALTER TABLE `polygon_status` DISABLE KEYS */;
INSERT INTO `polygon_status` VALUES (68,24,6,0,268,'------Input------<br>\n13\n130100198506020019\n130100198506020035\n130100198506020051\n130100198506020094\n130100198506020115\n130100198506020131\n13010019850602065X\n130100198506020676\n440184198901010021\n440184198901010048\n440184198901010064\n440184198901010080\n440184198901010101\n<br>------Answer-----<br>\nAll passed\n<br>------Your output-----<br>\nALL passed\n','2019-11-05 22:17:26',5,1,'#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nint sz[] = {7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2};\r\nstring m = \"10X98765432\";\r\n\r\nint main()\r\n{\r\n//    freopen(\"Data.txt\",\"r\",stdin);\r\n    int n, flag = 0;\r\n	cin >> n;\r\n	getchar();\r\n	while(n--)\r\n	{\r\n		string str;\r\n		getline(cin, str);\r\n		int sum = 0;\r\n		for(int i = 0; i < 17; i++)\r\n            sum += (str[i] - \'0\') * sz[i];\r\n        if(m[sum % 11] != str[17])\r\n        {\r\n            cout << str << endl;\r\n            flag = 1;\r\n        }\r\n	}\r\n    if(flag == 0)\r\n        cout << \"ALL passed\" << endl;\r\n    return 0;\r\n}\r\n'),(69,24,6,0,260,'------Input------<br>\n13\n130100198506020019\n130100198506020035\n130100198506020051\n130100198506020094\n130100198506020115\n130100198506020131\n13010019850602065X\n130100198506020676\n440184198901010021\n440184198901010048\n440184198901010064\n440184198901010080\n440184198901010101\n<br>------Answer-----<br>\nAll passed\n<br>------Your output-----<br>\nALL passed\n','2019-11-05 22:27:43',5,1,'#include <bits/stdc++.h>\r\nusing namespace std;\r\nint sz[] = {7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2};\r\nstring m = \"10X98765432\";\r\nint main()\r\n{\r\n//    freopen(\"Data.txt\",\"r\",stdin);\r\n    int n, flag = 0;\r\n	cin >> n;\r\n	getchar();\r\n	while(n--)\r\n	{\r\n		string str;\r\n		getline(cin, str);\r\n		int sum = 0;\r\n		for(int i = 0; i < 17; i++)\r\n            sum += (str[i] - \'0\') * sz[i];\r\n        if(m[sum % 11] != str[17])\r\n        {\r\n            cout << str << endl;\r\n            flag = 1;\r\n        }\r\n	}\r\n    if(flag == 0)\r\n        cout << \"ALL passed\" << endl;\r\n    return 0;\r\n}'),(70,24,4,0,260,NULL,'2019-11-05 22:28:48',5,1,'#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nint sz[] = {7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2};\r\nstring m = \"10X98765432\";\r\n\r\nint main()\r\n{\r\n//    freopen(\"Data.txt\",\"r\",stdin);\r\n    int n, flag = 0;\r\n	cin >> n;\r\n	getchar();\r\n	while(n--)\r\n	{\r\n		string str;\r\n		getline(cin, str);\r\n		int sum = 0;\r\n		for(int i = 0; i < 17; i++)\r\n            sum += (str[i] - \'0\') * sz[i];\r\n        if(m[sum % 11] != str[17])\r\n        {\r\n            cout << str << endl;\r\n            flag = 1;\r\n        }\r\n	}\r\n    if(flag == 0)\r\n        cout << \"All passed\" << endl;\r\n    return 0;\r\n}'),(71,21,10,0,256,'Runtime Error:[ERROR] A not allowed system call.\nCall ID:257\n','2019-11-10 09:41:41',6,1,'#include <iostream>\r\n#include <cstring>\r\n\r\nusing namespace std;\r\nstring s;\r\n\r\nint main ( ) {\r\n    freopen(\"data.in\", \"r\", stdin);\r\n    freopen(\"data.out\", \"w\", stdout);\r\n    int n;\r\n    cin >> n;\r\n    getchar();\r\n    while ( n -- )\r\n    {\r\n        cin >> s;\r\n        if ( s . length ( ) == 14 )\r\n        {\r\n            cout << \"dxx才是最dl\\n\";\r\n        }\r\n    }\r\n}'),(72,21,10,0,252,'Runtime Error:[ERROR] A not allowed system call.\nCall ID:257\n','2019-11-10 09:44:47',6,1,'#include <iostream>\r\n#include <cstring>\r\n\r\nusing namespace std;\r\nstring s;\r\n\r\nint main ( ) {\r\n    freopen(\"data.in\", \"r\", stdin);\r\n    freopen(\"data.out\", \"w\", stdout);\r\n    int n;\r\n    cin >> n;\r\n    getchar();\r\n    while ( n -- )\r\n    {\r\n        getline(cin,s);\r\n        if (s == \"谁才是最dl\")\r\n        {\r\n            cout << \"dxx才是最dl\\n\";\r\n        }\r\n    }\r\n}'),(73,21,2,0,0,NULL,'2019-11-10 09:45:14',6,NULL,'#include <iostream>\r\n#include <cstring>\r\n\r\nusing namespace std;\r\nstring s;\r\n\r\nint main ( ) {\r\n   \r\n    int n;\r\n    cin >> n;\r\n    getchar();\r\n    while ( n -- )\r\n    {\r\n        getline(cin,s);\r\n        if (s == \"谁才是最dl\")\r\n        {\r\n            cout << \"dxx才是最dl\\n\";\r\n        }\r\n    }\r\n}'),(74,21,4,2,256,NULL,'2019-11-10 09:45:23',6,1,'#include <iostream>\r\n#include <cstring>\r\n\r\nusing namespace std;\r\nstring s;\r\n\r\nint main ( ) {\r\n   \r\n    int n;\r\n    cin >> n;\r\n    getchar();\r\n    while ( n -- )\r\n    {\r\n        getline(cin,s);\r\n        if (s == \"谁才是最dl\")\r\n        {\r\n            cout << \"dxx才是最dl\\n\";\r\n        }\r\n    }\r\n}');
/*!40000 ALTER TABLE `polygon_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
