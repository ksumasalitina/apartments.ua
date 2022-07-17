CREATE DATABASE  IF NOT EXISTS `apartments` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `apartments`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: apartments
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `apartments`
--

DROP TABLE IF EXISTS `apartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `image_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cost` decimal(8,2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartments`
--

LOCK TABLES `apartments` WRITE;
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` VALUES (1,'Grand Hotel','Київ','19','Бассейна вулиця','01004','grandhotel@gmail.com','+380965423378',4.5,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/124536501.jpg?k=8d012cd00bc0edd3a57c84c9d02d45c3bf65494affe3f71a8718624c13ef1c91&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/256009437.jpg?k=4245d90cf35ba2dd6df304c0f2636a9793f1089cffb43ee39e620d13c26489d4&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/256008460.jpg?k=7c14899c492c698deb92cb428781d9bad9d2fb284b39ee9b7f56bc5c04890a47&o=&hp=1','Эти современные апартаменты, расположенные в центре города, оборудованы гидромассажной ванной, DVD-плеером и телевизором с плоским экраном. Гости могут пользоваться бесплатным беспроводным доступом в Интернет. Апартаменты находятся всего в 5 минутах ходьбы от станции метро \"Дворец спорта\" и Бессарабского рынка.',NULL,NULL,2000.00),(2,'Kharkovlux','Харків','115','Клочківська вулиця','61145','kharkivlux@yahoo.com','+380994390112',4.4,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/372281473.jpg?k=824693c093aef333818625c9d1bd450b19bfe07f5fbece378e0b8ba7c567635e&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/327081565.jpg?k=bf52dc7041dabecd9287cf1085dc85bfead33fd7e77085a322c43d3cc2a14407&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/327081567.jpg?k=e7480ec51da2a786320e2de1985802745a6a495436eb55d4e5a38de193162570&o=&hp=1','Этот отель находится всего в 2,4 км от центра Харькова и располагает номерами и люксами с кондиционером и бесплатным Wi-Fi. В современном кафе с уютным камином подают блюда украинской кухни.',NULL,NULL,1800.00),(3,'Lift Hotel Boutique','Одеса','12','Дерібасівська вулиця','65000','lifthotel_boutique@gmail.com','+380782345509',4.6,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/297458306.jpg?k=cccfebb75bdeebd1d5e83f3b5da6105eb14e4f4afeff2e14581339fb89382b4c&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/337173555.jpg?k=25bced2979aa56da8a0f47f36d807547a04c7d69a02a7a3d347cf318860ac85d&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/299349558.jpg?k=3aa14c4ca89854c84072c117ef2ed3c93270c17cc58c93c8366ab96191975bc4&o=&hp=1','Бутик-готель Lift розташований у Приморському районі Одеси. До послуг гостей номери з кондиціонером і телевізором із плоским екраном та кабельними каналами. Пляж Ланжерон розміщений за 2,1 км від помешкання, пляж Відрада – за 2,7 км, а Одеський порт – за 2,2 км. Стійка реєстрації працює цілодобово. На всій території помешкання надається безкоштовний Wi-Fi.',NULL,NULL,900.00),(4,'Blum Hotel','Львів','4','Дрогобиха вулиця','79000','hotel_blum@yahoo.com','+380996549822',5,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/202739110.jpg?k=f60f94bd4b0c71307c8324ad0a6deb3e1e50963adbd7a9dc838bf60f8563d989&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/139931112.jpg?k=2e0f27b386fdfdcf00db01e6925cff055fbb9b267953c71cb4746a17d63edc16&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/139931137.jpg?k=9688f6ede07d59e5f2792e175c46c738aae780b208b3d2e5c928e5436bdf186b&o=&hp=1','Готель Blum розташований у Львові, за 600 метрів від Львівського національного університету імені Івана Франка. До послуг гостей номери з кондиціонером і безкоштовним Wi-Fi. Відстань до костелу ордену єзуїтів становить 700 метрів. Латинський собор розміщений менш ніж за 1 км від помешкання.',NULL,NULL,1300.00),(5,'Korona Hotel','Бориспіль','5','Бориспільска вулиця','08321','korona_hotel@gmail.com','+380667803322',3.9,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/227134368.jpg?k=76f7eb15710c88bb26063f72ca4748ef2a28276b39a878cb1454325a652537fd&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/186709757.jpg?k=2b46e1c2334a37245792983809315ea769e9fe1aae997d4b4f425ad59f5aad04&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/227134374.jpg?k=5ca9482c45ee6c0a8aafc405cc8793379ffabfa4e0b1b54ff93e6208a9d1cf4b&o=&hp=1','Готель Korona розміщений за 5 хвилин їзди від терміналів D та F аеропорту \"Бориспіль\". До послуг гостей номери із сучасними зручностями. На всій території помешкання надається безкоштовний Wi-Fi.',NULL,NULL,1100.00),(6,'City Club','Харків','145','Проспект Гагаріна','61124','city_clubKharkiv@gmail.com','+380994568233',4,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/19585727.jpg?k=de0b85a5fc9da601a22020283ea075686e46a03df91d28de43e5ac2990405aee&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/5366640.jpg?k=fedff271910ae076a89f9751ff1a33f9852045136380370fa3649dacd57b0102&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/19584627.jpg?k=e8154f1063d5eb8f56eeadb60807f084457ff14ddbe9d1349ba2815e7a4f7cdf&o=&hp=1','Гостям готелю City Club пропонується розміщення в елегантних номерах із безкоштовним Wi-Fi і телевізорами з плоским екраном. До послуг гостей безплатна парковка.',NULL,NULL,1200.00),(7,'Maria Garden hotel & restaurant','Івано-Франківськ','39','Пасечна вулиця','76000','mariagarden_hotel@yahoo.com','+380765339025',4.7,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/333061006.jpg?k=f96b954ad2123fc0aa39903564467da2e05dfe34e6f1e49bb06f318c2c1876e6&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/235426335.jpg?k=ce92c2912b5e3c1dc34fff216d1cfd34fb08c597e8299298339d45eeea627fce&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/232969635.jpg?k=cd8dcfede3c053295b2690e3bdff79d45645aff2227440114779d3ae04b64b0f&o=&hp=1','Готель Maria Garden з рестораном розташований в Івано-Франківську. До послуг гостей бар, спільний лаунж і тераса. На території працюють ресторан і цілодобова стійка реєстрації, а також надається безкоштовний Wi-Fi. Здійснюється обслуговування номерів. У помешканні проводиться вечірня розважальна програма та працює дитячий клуб.',NULL,NULL,1100.00),(8,'Kasimir Resort Hotel','Буковель','230','Урочище Вишні','78593','kasimir_resort@gmail.com','+380998754327',4.2,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/299283133.jpg?k=3934e47bb03a81cb046a7e0510c05e7f94f7618fc0d610c7e8cae5492d381a86&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/276557253.jpg?k=14b8dd803510e0dff197680170e9a32375c1ee645848582fafb65e094963852d&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/276557917.jpg?k=12171edc7d5f44ae4d4b57a39214010c2eab6ae508d6de80ce617512cda3454a&o=&hp=1','Курортний готель Kasimir розташований на гірськолижному курорті Буковель, безпосередньо біля початку гірськолижних трас. До послуг гостей безкоштовний Wi-Fi, бар і приміщення для зберігання лиж. Відстань до гірськолижного підйомника \"Буковель 1R\" становить менш ніж 1 км, а до підйомника \"Буковель 3\" можна дійти пішки за 12 хвилин.',NULL,NULL,1650.00),(9,'Bon Hotel','Дніпро','26','Старокозацька вулиця','49000','bon_hotel@gmail.com','+380874530078',5,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/158643793.jpg?k=a3a1b78a14759ece5c26506c951a3605d4c8625f9d7728a6cc6778777b8f82f1&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/158644580.jpg?k=77bb8b2d2987092afe0d68159f8f4ab5019aaf3c7b7200b6ea585c65ac16316c&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/293752568.jpg?k=04396142127243ea9f97a2420761f9f96ea31de113e44d011d43c28df54ba895&o=&hp=1','Готель Bon розташований у Дніпропетровську. До послуг гостей безкоштовний Wi-Fi та цілодобова стійка реєстрації.',NULL,NULL,3200.00),(10,'Capsule Hotel Constellation 89','Львів','21','Шевченка вулиця','79000','capsule_hotellviv@yahoo.com','+380653419833',4.8,'https://cf.bstatic.com/xdata/images/hotel/max1280x900/363136561.jpg?k=04ba8b9bb514db4a91acb221525bb618a6531481000f3e08e81c96e6dc4bc64d&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/329484691.jpg?k=6e35f492a0461ae25c8d03b2ff50edbdf5228c71ed17d2879ee9f3e15bd545f8&o=&hp=1','https://cf.bstatic.com/xdata/images/hotel/max1280x900/368831593.jpg?k=a7be0a122c39b72e1e533f35b001811efb776c78604ffacc58d0024ed2f2e818&o=&hp=1','Капсульний готель для дорослих Constellation 89 розташований у Львові. До послуг гостей спільний лаунж і тераса. Стійка реєстрації працює цілодобово. Гості можуть відвідати ресторан або приготувати їжу самостійно на спільній кухні. На всій території надається безкоштовний Wi-Fi. Гості можуть замовити напої в снек-барі.\n\n',NULL,NULL,450.00);
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `firstName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_id` int NOT NULL,
  `apartment_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int NOT NULL,
  `arrival` date NOT NULL,
  `departure` date NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `people` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (10,1,'кк','кк',3,'кп',23,'2022-07-17','2022-07-20',0.00,1,NULL,NULL);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `user_id` int NOT NULL,
  `apartment_id` int NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`user_id`,`apartment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (4,2,'2022-07-16','2022-07-16');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2022_07_06_164502_create_users_table',1),(3,'2022_07_06_164613_create_password_resets_table',1),(4,'2022_07_06_164659_create_failed_jobs_table',1),(5,'2022_07_08_090759_create_apartments_table',2),(6,'2022_07_08_090819_create_rooms_table',2),(7,'2022_07_08_090848_create_cities_table',2),(8,'2022_07_08_090908_create_profiles_table',2),(9,'2022_07_08_090926_create_bookings_table',2),(10,'2022_07_08_090945_create_reviews_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dob` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (6,'',NULL,NULL,NULL,NULL,NULL,NULL),(7,'',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_id` int NOT NULL,
  `apartment_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars` int NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reviewscol` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `reviews_AFTER_INSERT` AFTER INSERT ON `reviews` FOR EACH ROW BEGIN
update apartments 
SET rate = (rate+NEW.stars)/2   
where id = NEW.apartment_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `reviews_BEFORE_DELETE` BEFORE DELETE ON `reviews` FOR EACH ROW BEGIN
Update apartments 
set rate = rate*2 - OLD.stars
where apartments.id = OLD.apartment_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `apartment_id` int NOT NULL,
  `people` int NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` int NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beds` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1,4,'101',1,1500.00,NULL,NULL,'Сучасні світлі апартаменти на першому поверсі з 1 спальнею','1 двоспальне ліжко і 1 диван-ліжко '),(2,1,2,'105',1,1080.00,NULL,NULL,'Покращений люкс','1 двоспальне ліжко'),(3,2,3,'220',2,1350.00,NULL,NULL,'Апартаменти-студіо','1 широке двоспальне ліжко'),(4,2,1,'110',1,1200.00,NULL,NULL,'Апартаменти з балконом','1 двоспальне ліжко'),(5,3,4,'203',2,1010.00,NULL,NULL,'Двомісний номер Делюкс\n','1 диван-ліжко і 1 широке двоспальне ліжко '),(6,3,2,'110',1,570.00,NULL,NULL,'Невеликий двомісний номер без вікна','1 широке двоспальне ліжко'),(7,3,3,'303',3,870.00,NULL,NULL,'Тримісний номер Делюкс','1 односпальне ліжко і 1 широке двоспальне ліжко'),(8,4,2,'220',2,1220.00,NULL,NULL,'Двомісний номер економ-класу','1 широке двоспальне ліжко '),(9,4,3,'404',4,1530.00,NULL,NULL,'Стандартний тримісний номер\n','1 односпальне ліжко і 1 широке двоспальне ліжко '),(10,4,1,'550',5,1060.00,NULL,NULL,'Стандартний одномісний номер','1 односпальне ліжко'),(11,4,2,'323',3,1405.00,NULL,NULL,'Стандартний двомісний номер з 2 односпальними ліжками','2 односпальні ліжка'),(12,5,4,'456',4,940.00,NULL,NULL,'Бюджетний номер з двома ліжками','2 двоспальні ліжка'),(13,5,3,'509',5,1380.00,NULL,NULL,'Люкс','2 спальні з двоспальним та односпальним ліжками'),(14,6,2,'408',4,1160.00,NULL,NULL,'Стандартинй двомісний номер','1 широке двоспальне ліжко'),(15,6,5,'570',5,1400.00,NULL,NULL,'Люкс','1 особливо широке двоспальне ліжко і 1 диван-ліжко'),(16,6,2,'329',4,1250.00,NULL,NULL,'Напівлюкс','1 широке двоспальне ліжко і 1 диван-ліжко'),(17,7,2,'107',1,940.00,NULL,NULL,'Стандартний двомісний номер','2 односпальні ліжка'),(18,7,2,'230',2,1300.00,NULL,NULL,'Напівлюкс','1 двоспальне ліжко'),(19,8,3,'458',4,1750.00,NULL,NULL,'Великий двомісний номер','1 двоспальне ліжко і 1 футон'),(20,8,4,'360',3,2200.00,NULL,NULL,'Стандартний тримісний номер','1 футон, 1 односпальне ліжко і 1 двоспальне ліжко'),(21,8,4,'678',6,2260.00,NULL,NULL,'Номер класу люкс з 2 спальнями','1 широке ліжко і 1 диван-ліжко'),(22,9,2,'349',3,2980.00,NULL,NULL,'Стандартний двомісний номер','1 широке двоспальне ліжка'),(23,9,3,'346',3,3700.00,NULL,NULL,'Люкс','1 особливо широке двоспальне ліжко'),(24,9,2,'450',4,3380.00,NULL,NULL,'Покращений двомісний номер','2 односпальні ліжка'),(25,10,2,'348',3,480.00,NULL,NULL,'Номер-капсула з двоспальним ліжком','1 двоспальне ліжко'),(26,10,1,'234',2,256.00,NULL,NULL,'Одномісний капсульний номер для жінок','1 односпальне ліжко'),(27,10,1,'187',1,256.00,NULL,NULL,'Одномісний капсульний номір для чоловіків','1 односпальне ліжко');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'Олена','name@example.com',NULL,'$2y$10$qGUMnYbP7NnjivbAaihMFO37tidS3tFqyR8kqmRlNbkq79qjHoLMG',NULL,'2022-07-17 19:31:24','2022-07-17 19:31:24'),(7,'сйвф','x@x.com',NULL,'$2y$10$SCUpAxk.IxfBkmp5K8T.GeWbi8puWnEmlX./Jc0wQ.1rHKYAg5.Xy',NULL,'2022-07-17 21:45:45','2022-07-17 21:45:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
INSERT INTO profiles (user_id) VALUES (NEW.id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-17 23:46:48
