-- MySQL dump 10.13  Distrib 8.0.28, for Linux (aarch64)
--
-- Host: localhost    Database: forecasts
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `Freehold`
--

LOCK TABLES `Freehold` WRITE;
/*!40000 ALTER TABLE `Freehold` DISABLE KEYS */;
INSERT INTO `Freehold` VALUES (0,'Tonight','Low: 35 °F','Partly Cloudy','Tonight: Partly cloudy, with a low around 35. Northwest wind around 15 mph, with gusts as high as 30 mph. '),(1,'Thursday','High: 55 °F','Sunny and Breezy','Thursday: Sunny, with a high near 55. Breezy, with a northwest wind 15 to 20 mph, with gusts as high as 35 mph. '),(2,'Thursday Night','Low: 37 °F','Clear','Thursday Night: Clear, with a low around 37. Northwest wind 10 to 15 mph. '),(3,'Friday','High: 60 °F','Sunny','Friday: Sunny, with a high near 60. Northwest wind 10 to 15 mph, with gusts as high as 25 mph. '),(4,'Friday Night','Low: 39 °F','Mostly Clear','Friday Night: Mostly clear, with a low around 39. Northwest wind 5 to 10 mph, with gusts as high as 20 mph. '),(5,'Saturday','High: 63 °F','Sunny','Saturday: Sunny, with a high near 63.'),(6,'Saturday Night','Low: 41 °F','Mostly Clear','Saturday Night: Mostly clear, with a low around 41.'),(7,'Sunday','High: 66 °F','Mostly Sunny','Sunday: Mostly sunny, with a high near 66.'),(8,'Sunday Night','Low: 47 °F','Chance Showers','Sunday Night: A chance of showers.  Mostly cloudy, with a low around 47. Chance of precipitation is 50%.');
/*!40000 ALTER TABLE `Freehold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Hoboken`
--

LOCK TABLES `Hoboken` WRITE;
/*!40000 ALTER TABLE `Hoboken` DISABLE KEYS */;
INSERT INTO `Hoboken` VALUES (0,'Tonight','Low: 40 °F','Decreasing Clouds','Tonight: Mostly cloudy, then gradually becoming mostly clear, with a low around 40. Northwest wind 14 to 17 mph. '),(1,'Thursday','High: 58 °F','Sunny and Breezy','Thursday: Sunny, with a high near 58. Breezy, with a northwest wind 18 to 22 mph, with gusts as high as 32 mph. '),(2,'Thursday Night','Low: 40 °F','Mostly Clear','Thursday Night: Mostly clear, with a low around 40. Northwest wind 13 to 18 mph. '),(3,'Friday','High: 62 °F','Sunny','Friday: Sunny, with a high near 62. Northwest wind 15 to 18 mph, with gusts as high as 30 mph. '),(4,'Friday Night','Low: 43 °F','Mostly Clear','Friday Night: Mostly clear, with a low around 43. Northwest wind 8 to 15 mph. '),(5,'Saturday','High: 65 °F','Sunny','Saturday: Sunny, with a high near 65.'),(6,'Saturday Night','Low: 46 °F','Mostly Clear','Saturday Night: Mostly clear, with a low around 46.'),(7,'Sunday','High: 67 °F','Mostly Sunny','Sunday: Mostly sunny, with a high near 67.'),(8,'Sunday Night','Low: 51 °F','Chance Showers','Sunday Night: A 50 percent chance of showers.  Mostly cloudy, with a low around 51.');
/*!40000 ALTER TABLE `Hoboken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Leonia`
--

LOCK TABLES `Leonia` WRITE;
/*!40000 ALTER TABLE `Leonia` DISABLE KEYS */;
INSERT INTO `Leonia` VALUES (0,'Tonight','Low: 38 °F','Decreasing Clouds','Tonight: Mostly cloudy, then gradually becoming mostly clear, with a low around 38. Northwest wind 14 to 17 mph, with gusts as high as 29 mph. '),(1,'Thursday','High: 55 °F','Sunny and Breezy','Thursday: Sunny, with a high near 55. Breezy, with a northwest wind 16 to 21 mph, with gusts as high as 31 mph. '),(2,'Thursday Night','Low: 39 °F','Mostly Clear','Thursday Night: Mostly clear, with a low around 39. Northwest wind 14 to 18 mph, with gusts as high as 29 mph. '),(3,'Friday','High: 61 °F','Sunny','Friday: Sunny, with a high near 61. Northwest wind 14 to 16 mph, with gusts as high as 28 mph. '),(4,'Friday Night','Low: 41 °F','Clear','Friday Night: Clear, with a low around 41. Northwest wind 9 to 14 mph, with gusts as high as 25 mph. '),(5,'Saturday','High: 64 °F','Sunny','Saturday: Sunny, with a high near 64.'),(6,'Saturday Night','Low: 44 °F','Mostly Clear','Saturday Night: Mostly clear, with a low around 44.'),(7,'Sunday','High: 67 °F','Mostly Sunny','Sunday: Mostly sunny, with a high near 67.'),(8,'Sunday Night','Low: 50 °F','Chance Showers','Sunday Night: A 50 percent chance of showers after 9pm.  Mostly cloudy, with a low around 50.');
/*!40000 ALTER TABLE `Leonia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Newark`
--

LOCK TABLES `Newark` WRITE;
/*!40000 ALTER TABLE `Newark` DISABLE KEYS */;
INSERT INTO `Newark` VALUES (0,'Tonight','Low: 38 °F','Decreasing Clouds','Tonight: Mostly cloudy, then gradually becoming mostly clear, with a low around 38. Northwest wind 11 to 16 mph, with gusts as high as 29 mph. '),(1,'Thursday','High: 58 °F','Mostly Sunny then Sunny and Breezy','Thursday: Sunny, with a high near 58. Breezy, with a northwest wind 15 to 21 mph, with gusts as high as 32 mph. '),(2,'Thursday Night','Low: 39 °F','Mostly Clear','Thursday Night: Mostly clear, with a low around 39. Northwest wind 13 to 17 mph, with gusts as high as 28 mph. '),(3,'Friday','High: 62 °F','Sunny','Friday: Sunny, with a high near 62. Northwest wind 13 to 17 mph, with gusts as high as 29 mph. '),(4,'Friday Night','Low: 41 °F','Mostly Clear','Friday Night: Mostly clear, with a low around 41. Northwest wind 8 to 13 mph, with gusts as high as 24 mph. '),(5,'Saturday','High: 65 °F','Sunny','Saturday: Sunny, with a high near 65.'),(6,'Saturday Night','Low: 44 °F','Mostly Clear','Saturday Night: Mostly clear, with a low around 44.'),(7,'Sunday','High: 67 °F','Mostly Sunny','Sunday: Mostly sunny, with a high near 67.'),(8,'Sunday Night','Low: 50 °F','Chance Showers','Sunday Night: A 50 percent chance of showers after 9pm.  Mostly cloudy, with a low around 50.');
/*!40000 ALTER TABLE `Newark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Personalization`
--

LOCK TABLES `Personalization` WRITE;
/*!40000 ALTER TABLE `Personalization` DISABLE KEYS */;
INSERT INTO `Personalization` VALUES ('127.0.0.1','leonia.php');
/*!40000 ALTER TABLE `Personalization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Wildwood`
--

LOCK TABLES `Wildwood` WRITE;
/*!40000 ALTER TABLE `Wildwood` DISABLE KEYS */;
INSERT INTO `Wildwood` VALUES (0,'Tonight','Low: 38 °F','Partly Cloudy and Breezy','Tonight: Partly cloudy, with a low around 38. Breezy, with a northwest wind around 20 mph, with gusts as high as 35 mph. '),(1,'Thursday','High: 60 °F','Sunny and Breezy','Thursday: Sunny, with a high near 60. Breezy, with a northwest wind 15 to 20 mph, with gusts as high as 30 mph. '),(2,'Thursday Night','Low: 41 °F','Clear','Thursday Night: Clear, with a low around 41. Northwest wind around 15 mph, with gusts as high as 25 mph. '),(3,'Friday','High: 63 °F','Sunny','Friday: Sunny, with a high near 63. Northwest wind around 15 mph, with gusts as high as 25 mph. '),(4,'Friday Night','Low: 43 °F','Mostly Clear','Friday Night: Mostly clear, with a low around 43. Northwest wind 10 to 15 mph. '),(5,'Saturday','High: 62 °F','Sunny','Saturday: Sunny, with a high near 62.'),(6,'Saturday Night','Low: 46 °F','Mostly Clear','Saturday Night: Mostly clear, with a low around 46.'),(7,'Sunday','High: 63 °F','Mostly Sunny','Sunday: Mostly sunny, with a high near 63.'),(8,'Sunday Night','Low: 50 °F','Chance Showers','Sunday Night: A chance of showers after 9pm.  Mostly cloudy, with a low around 50. Chance of precipitation is 50%.');
/*!40000 ALTER TABLE `Wildwood` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02  3:51:55
