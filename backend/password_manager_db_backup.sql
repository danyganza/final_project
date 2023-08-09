-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.10.17    Database: password_manager
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `passwords`
--

DROP TABLE IF EXISTS `passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwords` (
  `id` varchar(100) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `platform_name` varchar(100) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `passwords_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwords`
--

LOCK TABLES `passwords` WRITE;
/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
INSERT INTO `passwords` VALUES ('0a450edc-c8e1-4a73-a411-87c01022f5e2','e054acf3-c816-49a6-a953-faaa855a2409','Gmail','tsetuser2@gmail.com','12222222sr5678'),('13ffd8b3-f25c-48d2-8a7f-cfe78a3f4512','e054acf3-c816-49a6-a953-faaa855a2409','google','y6y6y8yb','88888888'),('253f8b1f-4de9-48c9-8287-a58ac8577f05','e054acf3-c816-49a6-a953-faaa855a2409','google','testtest@go.co','123456'),('2e889d0e-ebab-499c-9300-5c8b1590ccdb','e054acf3-c816-49a6-a953-faaa855a2409','apple','apple1@google.co','123456'),('32d77a8f-e780-41a8-b372-dc299e33a185','e054acf3-c816-49a6-a953-faaa855a2409','Instagram','insta','1234567'),('35a8e695-2709-47b1-a498-018a7b676871','21eca0b4-0180-4cc6-8bf2-dc36555abef1','google','test1@rd.com','123456'),('4644f4c2-a79e-4b21-a309-5050c817f33d','c933411c-ef9e-4e74-a18e-bda51d8c192a','Gmail','tsetuser2@gmail.com','12222222sr5678'),('4ca2d981-0ed7-4343-9b23-0534e00dd144','e054acf3-c816-49a6-a953-faaa855a2409','twitter','teha@sa.so','123456'),('54936baa-b0e0-4bfa-908a-f382bf50dca6','c933411c-ef9e-4e74-a18e-bda51d8c192a','Gmail','tsetuser2@gmail.com','12222222sr5678'),('5a04f512-86e4-4fe4-b295-2b53765a5728','c933411c-ef9e-4e74-a18e-bda51d8c192a','facebook','my account','000000'),('6826d744-ae47-4511-9094-d79aadf2004b','c933411c-ef9e-4e74-a18e-bda51d8c192a','Gmail','tsetuser@gmail.com','9999999999'),('7d6e8c63-8972-43ef-bda3-c6956af82018','e054acf3-c816-49a6-a953-faaa855a2409','12345','hjk232@as.com','123456'),('98ceee94-9ffa-49b6-b176-0c95d320abb0','e054acf3-c816-49a6-a953-faaa855a2409','instagram','as@gmail.com','`12345'),('bc53d656-2640-4d5d-b219-ea14eeff6966','e054acf3-c816-49a6-a953-faaa855a2409','3456700','asdf@ms.co','123456');
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('135c178b-9ff2-450c-8521-4379e8a97e1a','test4 test4','test4@gmail.com','123456'),('21eca0b4-0180-4cc6-8bf2-dc36555abef1','test 15','test15@gmail.com','123456'),('2423a344-4aea-47b2-bbed-3b4a9e5382ab','jsadakj jshdk','jjlyt6ajds@gmail.com','123456'),('31762ee1-ec3e-43f3-bff7-95e02698e193','test 16','test16@gmail.com','123456'),('37883e57-e0ce-40db-b3c9-6fc4e64f829b','tyyty hdakdhkjks','hahaksdka@gmail.com','123456'),('4a4cdcb7-530d-410e-9c48-2290d9f4a972','hkjsad khdkaj','testii@gmail.com','123456'),('4de61ea2-1ae0-498a-97f9-1798d7ce02b7','test test','testtest1@mail.co','123456'),('6112bff2-5d88-4b5a-993d-fc651a15d202','test44@gmail.com','okjhfd36@example.com','u8hy66778'),('665827a5-6101-4f04-81ef-f611cf34178e','test 101','test101@gmail.com','123456'),('7c303593-42cc-4d76-94f3-7fcccb8a40ab','user user','user@gmail.com','123456'),('8c4267c0-e148-494d-aa00-a27ca33d2850','hlkahsjkdf khakdhlsjk','jjla90jds@gmail.com','123456'),('93571c8f-3e45-43df-91a3-bb2364101917','hjhfs jfsjd;lkf','trtsg@gmail.com','123456'),('af93cc5a-9072-4f19-9c1c-7e341c05a5b7','test2 test2','test2@gmail.com','123456'),('ba2f166a-e640-4f85-85a6-ad29b5cb7795','syed shahzaib','syed@gmail.com','123456'),('c933411c-ef9e-4e74-a18e-bda51d8c192a','test user','testuser@gmail.com','12345678'),('e054acf3-c816-49a6-a953-faaa855a2409','test1 test1','test1@gmail.com','123456'),('e377f050-ab02-4eb4-a724-b8524ef1daff','jdlkjas jdlkas','jjlajds@gmail.com','123456'),('f88bc8d0-b36a-4dcc-9c5c-fb5f5639d898','kjhkjsf hsaldkj','jjlyt6789ajds@gmail.com','123456'),('ff4273f8-5fb1-40b3-9674-2567c2c6665d','test474@gmail.com','okj9hfd36@example.com','u8hy66778');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-26  4:28:00
