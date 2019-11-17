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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `role` smallint(6) NOT NULL DEFAULT '10',
  `language` smallint(6) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx-user-username-unique` (`username`),
  UNIQUE KEY `idx-user-email-unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','root','sFzmrz4wToKycLmLWhmIGCe6dGFMF3hy','$2y$13$hzH6BfKELr1enNmknFMko.9lk9jJYw4laKQwivXkcNqbpFSoluVyC',NULL,'湖南农业大学ACM实验室',10,30,3,'2019-05-28 13:00:11','2019-08-12 17:01:18',NULL),(2,'sitakerchen','sitakerchen','L2CvFK8-6VEksiCFxARt7IpwjpqQ4RbZ','$2y$13$uiSNN7Hspat9LJ5bHFfqkeiRzWfq8hVSEg2EPaw4zW4CPn4QWud8O',NULL,'1731152132@qq.com',10,10,1,'2019-05-28 21:45:57','2019-08-12 13:16:40',NULL),(3,'ZengChenyu','ZengChenyu','lBbWUK_K45IW76z4EsNn02c0lziQz_ST','$2y$13$08vbndXUnzYKBSqm6050/uefW3HoLbHZwMwcBL6JWqCyCedXkbu72',NULL,'',10,30,1,'2019-05-28 22:07:32','2019-09-11 00:23:37',NULL),(4,'HUNAU_ACM','HUNAU_ACM','rpBEbmWAvAtJt_OZrFsM4szvhF1O5UGm','$2y$13$7gJMpxu2g2mMTzNz5dLbdevFxy2uAZ4Eb91E1/R7fWlhIxXAgfr5q',NULL,'ACM实验室',10,20,1,'2019-09-11 00:15:02','2019-11-11 21:54:03',NULL),(5,'admin','admin','nixMkgPaTc_qEbWwgIe_ckL1JUuQ2vMj','$2y$13$nQpKVu9Bl5Nief3UscLBW.svbDTn3.ozHvGDBrtcrJEklPlBkpacm',NULL,'ACMLAB',10,30,1,'2019-05-29 23:12:41','2019-09-04 01:32:25',NULL),(6,'debug','debug','gQ8Z-Yfc9PahD0y37XecsI_fqJioWu31','$2y$13$/R0f3r6NOKN3Wj3WY/3kF.gEa35UBQVXmgcNiKXg9OlGMviAMqdqq',NULL,'HUNAU_ACM',10,10,1,'2019-08-12 16:09:59','2019-11-05 17:07:39',NULL),(7,'Hebefans','Hebefans','Bqgun9o-J6U3yV98IrFwetYj0dI3zYax','$2y$13$/FIZP9Amb9r9v7rAxnHtn.GcCDMgsGuuDiy/CwNORb/asoS1peOTO',NULL,'hebesfan@163.com',10,20,1,'2019-10-23 21:17:55','2019-10-23 21:17:55',NULL),(10,'user11','34\r','-K9qAuhZKeWyzWXBkYgMf14cy3yhgOcd','$2y$13$YQ1W.fXMkO5PjMmSg4lOjuetEJJht6ymb3d2LlprtGzJsrb.gueUa',NULL,'user11@jnoj.org',10,0,1,'2019-11-07 00:19:14','2019-11-07 00:19:14',NULL),(11,'user12','45\r','81d2nuVEE_n2SQnEnd3Ri2x8-CB5cnLp','$2y$13$1ooSWSsTHNsH8x/WUc.7LODXQm1fpFklhoHAdiVfOeUsz5ZPBiWqW',NULL,'user12@jnoj.org',10,0,1,'2019-11-07 00:19:14','2019-11-07 00:19:14',NULL),(12,'user13','56\r','MGvgZ0UBPqd636kU6gTR9w2bSEaC7YY9','$2y$13$S9g2B8aD09iD4gYSqkyeZO3b0L3huxDLNvbCXpo4IarIyc8FNw10y',NULL,'user13@jnoj.org',10,0,1,'2019-11-07 00:19:15','2019-11-07 00:19:15',NULL),(13,'user263','龚拯','xNhsuRzwcOWUO-72nFX6J7cQz_ZmpfQR','$2y$13$HJ0n4EnfotoyNhGXldGH4O5pHh4I7KT8KiQKSSUzcZ37ufuEYBgMm',NULL,'user264@jnoj.org',10,0,1,'2019-11-07 00:32:37','2019-11-07 00:32:37',NULL),(14,'user21','李伟\r','Za5lKIEHuTdB_AEQoUBMGEdo49sGvqy-','$2y$13$7vUZJHb5zsBVZu.B.XsuLuCavKvKl01O1qWwKV7b89rodjK/oYQu6',NULL,'user21@jnoj.org',10,0,0,'2019-11-07 00:32:37','2019-11-07 00:32:37',NULL),(15,'user22','刘欣欣\r','47XeQnxEZFNnyvRBOTcTuefeFaJnWorr','$2y$13$7098FkUvZucRd22sF.ca.OL2rnaCg536RC3lH/oycuLRios4DaFFC',NULL,'user22@jnoj.org',10,0,0,'2019-11-07 00:32:38','2019-11-07 00:32:38',NULL),(16,'user23','余俊杰\r','ygei6yvMiUtNtyowD5AJqHFJFUjYCBEj','$2y$13$rv8cCaQOoinHkwyzWj7oH.O.sIBNtlkdtyptEds26C0rMDKjHXeUW',NULL,'user23@jnoj.org',10,0,0,'2019-11-07 00:32:39','2019-11-07 00:32:39',NULL),(17,'user24','阎瑶琳\r','dWbaTvjzrrMOGqbm6sWlOasW6qRyLQi6','$2y$13$wNjMtYWlbwue4n6tfQsqa.FD9wsP6ZE3iC2a5B0h4NH24U4HGkZCy',NULL,'user24@jnoj.org',10,0,0,'2019-11-07 00:32:39','2019-11-07 00:32:39',NULL),(18,'user25','张丹慧\r','acyxq3vexfbeS3RYDWg6SszNeycJ0iD6','$2y$13$IrI/gHfbkYFOVWwo8PmJw.tSzErxdAOmDBgVzLDruW4LbZDRinhZO',NULL,'user25@jnoj.org',10,0,0,'2019-11-07 00:32:40','2019-11-07 00:32:40',NULL),(19,'user26','俞越\r','CwGIdJ75eliNOBaZd16Ss4cFXV5jtmOx','$2y$13$tF6lxt2ESmALjsjN4oI4K.tJ0eM5RzTmNveMTgwoAIAjBkezMP9C6',NULL,'user26@jnoj.org',10,0,1,'2019-11-07 00:32:41','2019-11-07 00:32:41',NULL),(20,'user27','谢定根\r','DLsGJLBigZqMfs5bX9CmrK8W9xPrES-r','$2y$13$KLHjmdPKAx.dx05ErTKwbuToWLjmkX691AyrXv6.4e1BEMPiU68Uq',NULL,'user27@jnoj.org',10,0,1,'2019-11-07 00:32:41','2019-11-07 00:32:41',NULL),(21,'user28','李承宇\r','2GAhhnFJdwwrQRMpYqSf8I8qTnnIfoIq','$2y$13$kSjsVFUNycdMvjmNF5rrne55fniDI6Vpb0wlZoYM5n4lSbzzh4wt6',NULL,'user28@jnoj.org',10,0,0,'2019-11-07 00:32:42','2019-11-07 00:32:42',NULL),(22,'user29','黄睿雯\r','vsGjWFPCUcmnRD0Kl2fMNYAKeAp4ItMM','$2y$13$3CBjJYuP.vcgm4Mv16ASFOmzWtv6669vDuaUQFmSWRY8kKNysBQV6',NULL,'user29@jnoj.org',10,0,1,'2019-11-07 00:32:43','2019-11-07 00:32:43',NULL),(23,'user210','黄思奇\r','JEfPdOp-gzlkaI_dO-ekouLq9taBJ05f','$2y$13$/Pq78KMwn8w.JAGkLtEmzOZyLpJEvYuBFe60dgop3u3M0bDnGs9H2',NULL,'user210@jnoj.org',10,0,0,'2019-11-07 00:32:43','2019-11-07 00:32:43',NULL),(24,'user211','吴鹏\r','9uLGAt79qGHE14UpDSCK5xU6xqD5jHEi','$2y$13$hQYqYaiUr24DppM7gdKaOev9EdbSQxZgbXa3otIoSAWjZXvRARoIO',NULL,'user211@jnoj.org',10,0,1,'2019-11-07 00:32:44','2019-11-07 00:32:44',NULL),(25,'user212','贺小龙\r','n0ArC0WAfyogD8BoMrbIDNMetHG5pEAI','$2y$13$HD1luzE5yoSLB/jg7k9Hw.inzjdfNfL.iq.ybIXdxSC9RBr33OWQi',NULL,'user212@jnoj.org',10,0,0,'2019-11-07 00:32:45','2019-11-07 00:32:45',NULL),(26,'user213','魏思勉\r','qs9-lW1BDBNBbawh3LeM5FfA5JtAlprW','$2y$13$otByKB8oNj7gZSnOZjcX3.xMmiF8WSPBYv.rhmU8WUOMEU.rVtcq6',NULL,'user213@jnoj.org',10,0,0,'2019-11-07 00:32:45','2019-11-07 00:32:45',NULL),(27,'user214','何阳霸\r','y1OZqmYGxEf7lSYGhEJU2n3z_vcjn-m8','$2y$13$aH4fhCzxUElKA0k2QPVg4uZXxMYZX2LIIi8..0lTjR1TAKgB6i50W',NULL,'user214@jnoj.org',10,0,0,'2019-11-07 00:32:46','2019-11-07 00:32:46',NULL),(28,'user215','廖牛语\r','8Qx_fN8dWm6B1Oa9PVF5epjX2oL2zHqS','$2y$13$MZ9G6zTGVh4qwL2lfZ4wkevzwajrjS8QIBMVPYOko/Ll7VPgJ24D6',NULL,'user215@jnoj.org',10,0,0,'2019-11-07 00:32:46','2019-11-07 00:32:46',NULL),(29,'user216','胡忠祥\r','IUjDeNgPfBqkbgP2o0NXorfw08rUtTuX','$2y$13$2UWXLb8X038bHR2evWl3A.yHEKeoCXUWhAp4PG0oKyf3Z2wVPYGc6',NULL,'user216@jnoj.org',10,0,0,'2019-11-07 00:32:47','2019-11-07 00:32:47',NULL),(30,'user217','刘鹏辉\r','4JnHmx5x7DJ-cmcdJse41hRn0yAtdFYF','$2y$13$/tStuuyyWx0R5a0EEFGDWuxQtONiKcvpfo76Rrpc9sUOiupn571Bm',NULL,'user217@jnoj.org',10,0,0,'2019-11-07 00:32:48','2019-11-07 00:32:48',NULL),(31,'user218','刁祥潇\r','aJ9YlJixE_ecNa8mMTnAhtr2EafPelxS','$2y$13$EPHEPOJ3kBfDMrzkYSGD2u1dbuudTBMArCFBbKC.UMEVRz0i3UB8e',NULL,'user218@jnoj.org',10,0,0,'2019-11-07 00:32:48','2019-11-07 00:32:48',NULL),(32,'user219','闫星辰\r','LqPLZJizdhnhjrQgI6GuA8yQPCvgRb7_','$2y$13$vISx32eQb4df6MYxQvtoYeqWsDiYd9ZzpQgL7HxBOQoUbRwMxPkg6',NULL,'user219@jnoj.org',10,0,0,'2019-11-07 00:32:49','2019-11-07 00:32:49',NULL),(33,'user220','周裕权\r','eBGXQABkU-n7BNXbQbN1IYITsODEFiwB','$2y$13$piDi6PRK0GEshM33MGW4p.fzheD92c8fBIqHyFdBtvM0hHYypbhKi',NULL,'user220@jnoj.org',10,0,0,'2019-11-07 00:32:50','2019-11-07 00:32:50',NULL),(34,'user221','阳爱强\r','cw_RoQn-nwpErASjuPmO6oaQ9LU4auGB','$2y$13$KedRda22gKZe71XXJQCjfuppOzZ0JHzLeZ9P6GVyRi9CdydHCrEWS',NULL,'user221@jnoj.org',10,0,0,'2019-11-07 00:32:50','2019-11-07 00:32:50',NULL),(35,'user222','乔子科\r','dqd7_wS0Ryquo-4KLj0j71d0xqi8sZOU','$2y$13$sRLoL3XPV0LRNpgqrTLFVe3IINaP3l5hD6umbQ5pGf9o9Lt4V86ea',NULL,'user222@jnoj.org',10,0,0,'2019-11-07 00:32:51','2019-11-07 00:32:51',NULL),(36,'user223','丁宪\r','ttviaTYQHnrhvHKordlPWu4PTUUr9Bbw','$2y$13$paAb7mpcfpXAIqfLEtLZJuqmn6SciC7bBnJXMi1xevKWTEDeEQ5Fu',NULL,'user223@jnoj.org',10,0,0,'2019-11-07 00:32:51','2019-11-07 00:32:51',NULL),(37,'user224','徐凌翔\r','obFU37B2-Ynr1x8F9oDKU7zx0i4WCob2','$2y$13$j0bI36fDk8qmaDWeMi1Qleil64M/qf1p3ZeymrcV0eiQDD7ewFny6',NULL,'user224@jnoj.org',10,0,1,'2019-11-07 00:32:52','2019-11-07 00:32:52',NULL),(38,'user225','全家坤\r','nP0dPiGjJ2XBrPPoipBVi7eIP19ec3_T','$2y$13$vF8MFDCUufr4iovXuJ2mH.zEyN1R2Jm9lei6/D2YqLVHXeV9aYZYG',NULL,'user225@jnoj.org',10,0,0,'2019-11-07 00:32:53','2019-11-07 00:32:53',NULL),(39,'user226','罗少伟\r','_egvZb8Glw8AlLHbT7mIyzGJecnwHlvd','$2y$13$/w/ONkWvArqCLYT3.Kds0uToZ9jcUo43xZEG/c4UN1xLkwYuijJdC',NULL,'user226@jnoj.org',10,0,0,'2019-11-07 00:32:53','2019-11-07 00:32:53',NULL),(40,'user227','曾一涓\r','Eoz5hGVy3k5dKUfEaKGuBQLAXGbhduKh','$2y$13$2hsnuAvuncH.NOgaFfHN1.5uVL8dmdsyWjZ3O.7ycO6HScQG2BdtG',NULL,'user227@jnoj.org',10,0,0,'2019-11-07 00:32:54','2019-11-07 00:32:54',NULL),(41,'user228','贺宇阳\r','_Z_S0BO0jju51Yd0-fYXflJlidIUfWFE','$2y$13$r1AlKJGrYKVhryxvVJOZ3OX6xHf3Zm2aVKPebFBRROW2GYHKjid/O',NULL,'user228@jnoj.org',10,0,1,'2019-11-07 00:32:55','2019-11-07 00:32:55',NULL),(42,'user229','张梦昕\r','BZgdeEb2rbHtnILmDKzvWnVayIFxyg1v','$2y$13$ciWegMo8ATLk6tACO7fTF.aNjZpwfAnyMYr.DoIS7FoAKMuXz7c4W',NULL,'user229@jnoj.org',10,0,1,'2019-11-07 00:32:55','2019-11-07 00:32:55',NULL),(43,'user230','刘攸彬\r','8Zet8vN6aSlrRr5kCNiyAf-P-EO60O7i','$2y$13$Hz/1XUzfsB6hLbZG3nTsauU2rdorop6Zt74oBQeJcmpPan9VKKSlG',NULL,'user230@jnoj.org',10,0,0,'2019-11-07 00:32:56','2019-11-07 00:32:56',NULL),(44,'user231','杜雨\r','RsD98LhHnvMpyWuBrPWMQ9wGY3I39QJY','$2y$13$pcn/0MjMnU8TMvlAmjQ8fOL8Y9VtA7uWLXXByiqRPZIDWtsBqFa6m',NULL,'user231@jnoj.org',10,0,1,'2019-11-07 00:32:57','2019-11-07 00:32:57',NULL),(45,'user232','沈书鹏\r','3OCJj01BHHslVvhomjLluDJW1DauMeP7','$2y$13$t4BZibAYHVyEwtWFNHMwheVcV.FdYn6KEzeAaUPz8YmMFtSY2IT7G',NULL,'user232@jnoj.org',10,0,0,'2019-11-07 00:32:57','2019-11-07 00:32:57',NULL),(46,'user233','谢定根\r','ldS8FBVww41shXMjb5rgFlpRYbzA_mgo','$2y$13$10YUbwD7pGSmUEQc0iG43OQBFrWsOL2qVaHySbu0AoBfuaxhn4KgO',NULL,'user233@jnoj.org',10,0,1,'2019-11-07 00:32:58','2019-11-07 00:32:58',NULL),(47,'user234','郝俊杰\r','7h0o5KZ1ONb30rRk33awq8FKmZmV927a','$2y$13$YbisGtFeAp9AqOYmIVG28OC8wGbr0XUeIlRGwL8oKTtl2cRMS4EgO',NULL,'user234@jnoj.org',10,0,0,'2019-11-07 00:32:59','2019-11-07 00:32:59',NULL),(48,'user235','张帆\r','4VoAFds5EClpj6s27v9XSu7RY4WNBLqY','$2y$13$Sxnv7B.2fYTX7t.5t3O1V.PjUO0ffzvfBGVpRdl7PCKDtHTbPndMu',NULL,'user235@jnoj.org',10,0,1,'2019-11-07 00:32:59','2019-11-07 00:32:59',NULL),(49,'user236','周喻哲\r','v2Nk7wff-CRaUWqY_2srlIMU7m6bfj84','$2y$13$NUBUIxjcND2IvzjnAQTx0OLhBN4IFy6qQ4cA5STC9iJdbZx97l5vS',NULL,'user236@jnoj.org',10,0,0,'2019-11-07 00:33:00','2019-11-07 00:33:00',NULL),(50,'user237','黎绿林\r','WEZ9rTzEzY9fER6DuPRzKw4wn7L_OdoH','$2y$13$w4QXnm/4fu67nXt1YvGIyeO4qEtD/9EJ87TCQsJe2c2ejUC4wktz2',NULL,'user237@jnoj.org',10,0,1,'2019-11-07 00:33:00','2019-11-07 00:33:00',NULL),(51,'user238','吴俊\r','KtK4UpozHRwG7fIXRdV8u_EDttIMnOYM','$2y$13$HM2quNc/AbrHBXBAXyuCtOb9ko0KLxFolAOocLmtqgkfn0SqgjC.G',NULL,'user238@jnoj.org',10,0,0,'2019-11-07 00:33:01','2019-11-07 00:33:01',NULL),(52,'user239','黎凡\r','dX_CgOuzJifHXRVUNO-f-VEorD1eX0Uw','$2y$13$joaL0IQe1htNiUbtbEOVQuibIORRCzeeMneBY36B5K/Ttu4KeqVie',NULL,'user239@jnoj.org',10,0,0,'2019-11-07 00:33:02','2019-11-07 00:33:02',NULL),(53,'user240','王伟\r','j-Lm_yACL4zt2RU1ggrsAD9rXOED9lDM','$2y$13$x9ablMSWkFWdkRWleXCmle6VuSEVSoqBlQA.iNMRqrlm4AaY2xfw.',NULL,'user240@jnoj.org',10,0,0,'2019-11-07 00:33:02','2019-11-07 00:33:02',NULL),(54,'user241','陈佳音\r','f0aAVLS7UKRIAfdrH-KItlpuiNGnBpyD','$2y$13$gjwzzW.7FAfuSVbQH5DjIe.CcPRAi75Ry.2ejeBEylw7S3KQeQuU.',NULL,'user241@jnoj.org',10,0,0,'2019-11-07 00:33:03','2019-11-07 00:33:03',NULL),(55,'user242','孙运宏\r','ZSm5UuGW8Ym17QK5q1fIfNlXCKUdc4yt','$2y$13$h2cGXQ02qSDPHkZ83zGj4exof69K8SHbzsZUrt2JWBPHYJJrzOhRi',NULL,'user242@jnoj.org',10,0,1,'2019-11-07 00:33:04','2019-11-07 00:33:04',NULL),(56,'user243','周珍婷\r','CSn2oYqvcTVvy7etMSvAW_g_Aap8_8H1','$2y$13$kwWtow11u622uSjq4IH7z.MJbiPzfC15n3xsEulqUxvG5fET.L81S',NULL,'user243@jnoj.org',10,0,0,'2019-11-07 00:33:04','2019-11-07 00:33:04',NULL),(57,'user244','王婷婷\r','6Wt3QZcKH9QKpGyLv0XWcZDb1IM8bh8K','$2y$13$.E5Kq9.z4vy0BjGvVRQL7ejrps2BoRwY.2Mmjg5T8ZgDOL4cnfWgG',NULL,'user244@jnoj.org',10,0,1,'2019-11-07 00:33:05','2019-11-07 00:33:05',NULL),(58,'user245','徐云鹤\r','62nboG3fTSwnKWy0V9agXNuYZBqS5yxa','$2y$13$ok1ij04fofBBb4xSB8hP6O/XjsxZ/OLaBT5aZkSUEGwfHWeWsbWci',NULL,'user245@jnoj.org',10,0,1,'2019-11-07 00:33:05','2019-11-07 00:33:05',NULL),(59,'user246','谷累累\r','E7gBLEf4ZAKUmls9xyEi5ZhyOh9Ur1ja','$2y$13$64bjPBy1R7AXtbe9SKZWvOGVg9nsAXyK4vugvZj8ZgQJHSu2tEPNa',NULL,'user246@jnoj.org',10,0,0,'2019-11-07 00:33:06','2019-11-07 00:33:06',NULL),(60,'user247','尹宣威\r','6b8A6tbA8rcVtoXMdg_dJN4uqiTLF-VS','$2y$13$8gW5cPD.SN/6g.AGOHv1qOT.qi5JiBxtBXPk2Jr1bzd/h/rbIDlg6',NULL,'user247@jnoj.org',10,0,1,'2019-11-07 00:33:07','2019-11-07 00:33:07',NULL),(61,'user248','金红美\r','bq-gDj66uvHY-fw1yFW4F2X3Tg1_lDN0','$2y$13$hWdV2YV1LSe27Lcj/Qg1yOiTa2u2m2pPRyLDlONPy2/hLqoiJEfUG',NULL,'user248@jnoj.org',10,0,1,'2019-11-07 00:33:07','2019-11-07 00:33:07',NULL),(62,'user249','李彦德\r','LtnNNZYxWZz3Psey5-7WEr3Isy9Gdg6k','$2y$13$y4MjMqgddBqSZr/NfAqI5usyAGFhCPW72eN0BAuFjDM1RoQopi/fK',NULL,'user249@jnoj.org',10,0,1,'2019-11-07 00:33:08','2019-11-07 00:33:08',NULL),(63,'user250','黄德星\r','EO7XmG7ORkunGmc0mw3OoYzFhItIQVsL','$2y$13$JNOlqwlDPJXViehoxB.GX.4SrnRubvNJdKFDOA/43Bj8bIoO4OUB6',NULL,'user250@jnoj.org',10,0,1,'2019-11-07 00:33:09','2019-11-07 00:33:09',NULL),(64,'user251','杨亚坤\r','NjtWW5RqxQYHlF0a9XVr7g1Pkx5V883n','$2y$13$5RScEbm.EthZ81.sM5y2ueN.fbPgS./QUypJn4DNG6J7HSnSAVTvO',NULL,'user251@jnoj.org',10,0,1,'2019-11-07 00:33:09','2019-11-07 00:33:09',NULL),(65,'user252','王伟洁\r','Tz7FmsbOeynz-RiwFY1mUzVEW9nZJXIh','$2y$13$FnEv2g4AubceUX0VzutLWeiPO0kocvTQmkBNIgrmubvCZ/VdxStqa',NULL,'user252@jnoj.org',10,0,0,'2019-11-07 00:33:10','2019-11-07 00:33:10',NULL),(66,'user253','刘铭钰\r','kXXhYF5OtSxnomg4Yma8wq1JmbDuFw9K','$2y$13$mgs5f0b1Z7wKwEJPCImaSum2P2Bru41aT/YFVj5aYMyckPSaTmeRW',NULL,'user253@jnoj.org',10,0,1,'2019-11-07 00:33:11','2019-11-07 00:33:11',NULL),(67,'user254','宋志雄\r','pIlC1OXuFiZwxc1Vb7Tk2bhenjJBvJc9','$2y$13$stnjYkCSauvyRfzX5KB3EOSFiQbr/OG5VDgeqM/cIuf9ZWFyl5bPa',NULL,'user254@jnoj.org',10,0,0,'2019-11-07 00:33:11','2019-11-07 00:33:11',NULL),(68,'user255','谭淖文\r','68ZAbetZAX01_qvxG5zRsIkcee5daSq2','$2y$13$G28xf.STM41s8ngA2lRJdevx1JIyPPoeV1fCqrej4feRgCjDQ8rKy',NULL,'user255@jnoj.org',10,0,0,'2019-11-07 00:33:12','2019-11-07 00:33:12',NULL),(69,'user256','邝龙静\r','zF2srFEovzxmspTHw1l3fk31-7BJT125','$2y$13$KA4BkhsC57yrqYs/5GIpSuW4JNPkx8oNmeczmX0NqA24odDZzptc2',NULL,'user256@jnoj.org',10,0,0,'2019-11-07 00:33:13','2019-11-07 00:33:13',NULL),(70,'user257','李树添','0gI0utaaG-izMNMDyuzDPimZPOKYaaiB','$2y$13$IsbEdmxcWjJ8SXuFvtFFKeTjuCfA1THewDAYxKttBiLzY/.RatsHq',NULL,'user257@jnoj.org',10,0,0,'2019-11-07 00:33:13','2019-11-07 00:33:13',NULL),(71,'user258','蒋智涛\r','ya1F2O7kMnAGtbgKRjSQntR9zXrWZrfw','$2y$13$w.VeCznvj/iZ8.vzMG.Pmu9rU1Zdzrz..Gqqm2d8rK/XCiODY/K4q',NULL,'user258@jnoj.org',10,0,0,'2019-11-07 00:33:14','2019-11-07 00:33:14',NULL),(72,'user259','邓涛\r','FORDw82S_vDYGWQMJQ2A6vmRAWF_p2Um','$2y$13$Ynr71HpJ3krpiEZV2sXlXO3I9HZQ/Cx6uga0GFiD02528Ls5JBtdu',NULL,'user259@jnoj.org',10,0,0,'2019-11-07 00:33:14','2019-11-07 00:33:14',NULL),(73,'user260','钱文浩\r','QE7cXr5P74oMTbbghYUf00OViIiyF3Yp','$2y$13$Zq5l9K0fOTjEantxq5/T8eQKg56Rm5XXD8Wbg/ZZrJtFzllF7uRmS',NULL,'user260@jnoj.org',10,0,0,'2019-11-07 00:33:15','2019-11-07 00:33:15',NULL),(74,'user261','周俊财\r','3Sdo2O_sogRn5tsA51AmrwFx0w-Jepg3','$2y$13$m/9wQGVniZ29.i/8FDH2Jeetn2GGHSrorhzBf1Umaec2sNsAPH.WW',NULL,'user261@jnoj.org',10,0,0,'2019-11-07 00:33:16','2019-11-07 00:33:16',NULL),(75,'user262','杨名','MhuFON3E98RT4EQYuMmIM9MrfdROLi20','$2y$13$Qyq.QVGQivJ9gUNg1glXUeQPxohI2JfXUJSj1Ny7YLQK1wg1Ke6FK',NULL,'user262@jnoj.org',10,0,1,'2019-11-07 00:33:16','2019-11-07 00:33:16',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
