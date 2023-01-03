CREATE DATABASE  IF NOT EXISTS `lm5uipqfcp819dea` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lm5uipqfcp819dea`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bounce_investor_db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `founder_id` int NOT NULL,
  `sectors` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `founded_date` date DEFAULT NULL,
  `raising` tinyint(1) NOT NULL,
  `amount` int DEFAULT NULL,
  `pre` int DEFAULT NULL,
  `left_in_round` int DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_with` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checks_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introd_to` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_revenue` int DEFAULT NULL,
  `passed_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_raised` decimal(10,0) DEFAULT NULL,
  `total_revenue` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_name_key` (`name`),
  KEY `companies_founder_id_fkey` (`founder_id`),
  CONSTRAINT `companies_founder_id_fkey` FOREIGN KEY (`founder_id`) REFERENCES `founders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (47,47,'{healthcare,\"med device\"}','Incubator','2000-01-01',0,NULL,NULL,NULL,'3D Urologic','{}','{}','{}','{}',NULL,'{}',0,NULL),(49,49,'{software,healthcare,B2B}','Incubator (Remote)','2000-01-01',0,NULL,NULL,NULL,'BioflightVR','{}','{}','{}','{}',NULL,'{}',0,NULL),(50,50,'{edtech,software}','Accelerator','2000-01-01',0,NULL,NULL,NULL,'BrainZones LTD','{}','{}','{}','{\"Maccabee Ventures\",\"January Ventures\"}',NULL,'{\"Maccabee Ventures\"}',0,NULL),(51,51,'{healthcare,AI,ML,software}','Incubator (Remote)','2000-01-01',0,NULL,NULL,NULL,'BTechncl','{}','{}','{}','{}',NULL,'{}',0,NULL),(52,52,'{ecommerce,software}','Incubator','2000-01-01',0,NULL,NULL,NULL,'Consolidus','{}','{}','{}','{}',NULL,'{}',0,NULL),(53,53,'{}','Incubator','2000-01-01',0,NULL,NULL,NULL,'Data Command','{}','{}','{}','{}',NULL,'{}',0,NULL),(54,54,'{AI,\"natural language processing\",software,ML}','Incubator (Remote)','2000-01-01',0,NULL,NULL,NULL,'Drips','{}','{}','{}','{}',NULL,'{}',0,NULL),(56,56,'{}','Incubator','2000-01-01',0,NULL,NULL,NULL,'Embold','{}','{}','{}','{}',NULL,'{}',0,NULL),(58,58,'{\"data analytics\",software}','Accelerator','2000-01-01',0,NULL,NULL,NULL,'Eric Does Data','{}','{}','{}','{}',NULL,'{}',0,NULL),(60,60,'{water,software,AI,environment,climate}','Incubator','2000-01-01',0,NULL,NULL,NULL,'Fontus Blue','{}','{}','{}','{\"Urban Innovation Fund\"}',50,'{}',0,600),(62,62,'{healthcare,software,\"B2B SaaS\"}','Accelerator','2000-01-01',0,NULL,NULL,NULL,'Global Health Metrics','{}','{}','{}','{M25,\"Maccabee Ventures\",\"Newark Venture Partners\",\"Story Ventures\",\"January Ventures\"}',NULL,'{\"Maccabbe Ventures\"}',0,NULL),(63,63,'{Web3,software,blockchain,crypto}','Incubator','2000-01-01',0,NULL,NULL,NULL,'Graffle','{}','{}','{}','{M25}',NULL,'{}',0,NULL),(64,64,'{\"B2B SaaS\",SaaS,AI,manufacturing,software}','Accelerator','2000-01-01',0,NULL,NULL,NULL,'Lahmonator','{}','{}','{}','{\"Maccabee Ventures\",\"Newark Venture Partners\",\"Story Ventures\",\"January Ventures\",\"Elevate Ventures\"}',NULL,'{\"Maccabee Ventures\"}',0,NULL),(65,65,'{\"B2B SaaS\",SaaS,AI,ML,solar,climate,software,environment}','Accelerator','2000-01-01',0,NULL,NULL,NULL,'LEAF Solar Design Assistant','{M25}','{}','{}','{M25,\"Urban Innovation Fund\",\"Pathbreaker Ventures\",\"Newark Venture Partners\",\"Story Ventures\",Floodgate,\"First Round Capital\"}',NULL,'{Floodgate}',0,NULL),(66,66,'{}','Incubator','2000-01-01',0,NULL,NULL,NULL,'MedaSync','{}','{}','{}','{}',NULL,'{}',0,NULL),(67,67,'{}','Incubator','2000-01-01',0,NULL,NULL,NULL,'MIC Monitor','{}','{}','{}','{\"Unshackled Ventures\"}',NULL,'{}',0,NULL),(69,69,'{\"med device\",healthcare}','Incubator (Remote)','2000-01-01',1,750,5000,NULL,'Nelson Innovations','{\"Fusion Fund\"}','{}','{\"Fusion Fund\",25madison,\"Lakehouse Ventures\"}','{25madison,\"Fusion Fund\",\"Good News Ventures\",\"Ground Up Ventures\",\"Lakehouse Ventures\",LAUNCH,\"Maccabee Ventures\",\"First Round Capital\",Homebrew,TMV}',NULL,'{\"Maccabee Ventures\",\"Good News Ventures\",LAUNCH,25madison,Floodgate,\"Fusion Fund\",\"First Round Capital\"}',0,10),(74,74,'{}','Incubator','2000-01-01',0,NULL,NULL,NULL,'Public Insight Corporation','{}','{}','{}','{}',NULL,'{}',0,NULL),(75,75,'{sensors,\"software enabled hardware\",sports,\"sports tech\",hardware,wellbeing}','Incubator','2000-01-01',0,750,NULL,350,'SweatID','{25madison,\"Pathbreaker Ventures\"}','{}','{\"Pathbreaker Ventures\",25madison}','{\"Pathbreaker Ventures\",\"Maccabee Ventures\",\"Story Ventures\",25madison,\"Advantage Sports Fund\",\"Alpaca VC\",\"BBG Ventures\",\"Good News Ventures\",\"Pathbreaker Ventures\",\"twentytwo ventures\"}',NULL,'{\"Maccabee Ventures\",\"Alpaca VC\"}',0,NULL),(76,76,'{AI,gaming}','Accelerator','2000-01-01',0,NULL,NULL,NULL,'RustBit Studio','{}','{}','{}','{\"Maccabee Ventures\",\"January Ventures\"}',NULL,'{\"Maccabee Ventures\"}',0,NULL),(77,77,'{\"med device\",health}','Incubator (Remote)','2000-01-01',0,NULL,NULL,NULL,'S.C.O.P.E. Medical','{}','{}','{}','{Floodgate}',NULL,'{Floodgate}',0,NULL),(78,78,'{}','Incubator','2000-01-01',0,NULL,NULL,NULL,'S4 MOBILE LABORATORIES','{}','{}','{}','{}',NULL,'{}',0,NULL),(79,79,'{}','Incubator','2000-01-01',0,NULL,NULL,NULL,'Saberlogic','{}','{}','{}','{}',NULL,'{}',0,NULL),(80,80,'{SaaS,\"B2Bintrod_to SaaS\",software}','Accelerator','2000-01-01',0,1000,4000,1000,'TonDone','{\"Wonder Ventures\",M25,LAUNCH,\"Surface VC\",\"Mucker Capital\"}','{\"Wonder Ventures\"}','{\"Wonder Ventures\",M25,\"Surface VC\",LAUNCH,\"Plug and Play Ventures\",25madison,\"Mucker Capital\",\"Crosscut Ventures\"}','{\"Maccabee Ventures\",\"January Ventures\",\"Wonder Ventures\",M25,25madison,\"Surface VC\",\"Mucker Capital\",\"Betaworks Ventures\",\"Cofounders Capital\",\"Crosscut Ventures\",\"Good News Ventures\",\"Ground Up Ventures\",Homebrew,\"Hustle Fund\",\"Lakehouse Ventures\",LAUNCH,\"New Stack Ventures\",\"Plug and Play Ventures\",\"Right Side Capital Management\",\"twentytwo ventures\"}',10,'{\"Maccabee Ventures\",M25,\"New Stack Ventures\"}',550,NULL),(81,81,'{food,agtech}','Incubator','2000-01-01',0,NULL,NULL,NULL,'Vigeo','{}','{}','{}','{M25,\"Pathbreaker Ventures\",\"Urban Innovation Fund\"}',125,'{}',0,NULL),(82,82,'{radar,AI,ML,software}','Incubator','2000-01-01',0,50,NULL,NULL,'Xadite Perceptions','{}','{}','{}','{\"Pathbreaker Ventures\",\"Story Ventures\"}',NULL,'{\"Urban Us\"}',0,NULL),(88,88,'{\"e commerce\",ecommerce,software,logistics,marketplaces,\"supply chain logistics\",retail,b2c,b2b,\"consumer software\",consumer,\"consumer service\"}','Accelerator','2000-01-01',0,NULL,NULL,1000,'Afters','{\"Amplify LA\"}','{}','{\"Amplify LA\",IrishAngels,M25,Unshackled}','{\"Amplify LA\",\"New Stack Ventures\",\"Betaworks Ventures\",\"Crosscut Ventures\",M25,\"Maven Ventures\",\"Mucker Capital\",\"New Stack Ventures\",\"Right Side Capital Management\",TMV,\"twentytwo ventures\",IrishAngels,\"Darling Ventures\",Floodgate,\"Ovo Fund\",\"Elevate Capital\"}',NULL,'{\"New Stack Ventures\",Floodgate,\"Ovo Fund\",\"Right Side Capital Management\",Unshackled,\"Crosscut Ventures\",\"Maven Ventures\"}',0,50),(91,91,'{\"med device\"}','Incubator','2000-01-01',1,10000,30000,10000,'Sonostik','{}','{}','{}','{}',NULL,'{}',0,NULL),(92,92,'{healthcare,\"software enabled hardware\",\"senior health\",iot,\"internet of things\"}','NEOSVF','2000-01-01',1,1000,NULL,1000,'Carebloom','{}','{}','{}','{}',NULL,'{}',0,NULL),(105,105,'b2b,software','Accelerator','2022-09-27',1,2000,8000,2000,'Time2Talk','','','','',6,'',0,100);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firms`
--

DROP TABLE IF EXISTS `firms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `met_date` timestamp(6) NULL DEFAULT NULL,
  `min_check` int NOT NULL,
  `max_check` int NOT NULL,
  `prefers_lead` tinyint(1) DEFAULT NULL,
  `stages` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sectors` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blacklist` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_rev` tinyint(1) DEFAULT NULL,
  `prefers_early_intros` tinyint(1) DEFAULT NULL,
  `special_requirements` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ownership_target_low` int DEFAULT NULL,
  `ownership_target_high` int DEFAULT NULL,
  `investor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `firms_investor_id_fkey` (`investor_id`),
  CONSTRAINT `firms_investor_id_fkey` FOREIGN KEY (`investor_id`) REFERENCES `investors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firms`
--

LOCK TABLES `firms` WRITE;
/*!40000 ALTER TABLE `firms` DISABLE KEYS */;
INSERT INTO `firms` VALUES (1,'25madison','https://www.25madison.com/','New York, NY','Incubator too. Hand-build 3 to 4 companies a year, co-invest in more','met','2022-01-14 05:00:00.000000',250,2000,1,'{pre-seed,seed,A}','{agnostic,consumer,health}','{biotech,\"med device\",fintech}',0,0,NULL,NULL,NULL,1),(2,'Advantage Sports Fund','https://www.advantagesportsfund.com/','Global','John from 22ventures also a decision maker for advantage','met','2022-01-14 05:00:00.000000',1000,3000,1,'{A}','{sports,\"sports tech\",health,fitness}','{}',1,NULL,NULL,NULL,NULL,2),(3,'Alpaca VC','https://alpaca.vc/','New York, NY','2m-5m rounds, looking to lead or co lead, will be 2nd or 3rd check. Industry agnostic, have more background in proptech, consumer, mktplaces. Not the most technical team, not going for dev tools, B2B saas. More consumerized software. No med devices, med software is a go. Earlier is better for intros, like to be able to track progress for a bit. Ryan Freedman, partner, ryan@alpaca.vc','met','2021-12-02 05:00:00.000000',250,250,1,'{\"pre seed\",seed}','{agnostic,proptech,consumer,marketplaces}','{\"dev tools\",\"B2B SaaS\",\"med device\",hardware}',0,1,NULL,NULL,NULL,3),(4,'Amplify LA','http://amplify.la/','Los Angeles, CA','Willing to be first check. Will fund idea stage, beta, full product. 250k-1M checks, 500k-2.5M rounds, lead or co-lead. Mixture of product and tech background on team. Support portfolio cos with later raise connections, hiring, reviewing product, cust intros. Don’t do hardware, biotech, pharma, Anything with long run to product-market fit. Interested in ecomm enablement cos. Paul Bricault, MP, paul.bricault@amplify.la','met','2021-11-12 05:00:00.000000',250,1000,1,'{\"pre seed\",seed}','{\"e commerce\"}','{hardware,biotech,pharma}',0,NULL,NULL,NULL,NULL,4),(5,'Andav Capital','http://andavcapital.com/','New York, NY',NULL,'warm','2021-12-09 05:00:00.000000',10,100,NULL,'pre-seed','{agnostic}','{}',0,NULL,NULL,NULL,NULL,5),(6,'BAM Ventures','https://www.bam.vc/','Los Angeles, CA','Consumer focused, will look at B2B with consumer angle. 50MM fund, 300-750k checks, 500k average. Want to invest at inflection/hypergrowth point, need to raise to grow. Richard Jun, MP, richard@bam.vc','met','2021-11-18 05:00:00.000000',300,750,NULL,'{pre-seed,seed}','{consumer}','{}',0,NULL,NULL,NULL,NULL,6),(7,'Surface VC','https://surface.vc','New York, NY','50MM fund under a new name, investing in B2B SaaS with check sizes 250k-2MM','met','2021-11-10 05:00:00.000000',250,2000,NULL,'{pre-seed,seed}','{\"B2B SaaS\"}','{}',0,NULL,NULL,NULL,NULL,7),(8,'BBG Ventures','https://www.bbgventures.com/','New York, NY','Invest in startups with female founders. B2B/B2C (not D2C), Health and Wellbeing, Future of Education and Work, Climate Friendly Products and Platforms, Overlooked and Emerging Consumers. Somewhat hands on after investment: Hiring, marketing, fundraising. Nisha Dua, MP, nisha.dua@bbgventures.com','met','2022-01-12 05:00:00.000000',500,1000,1,'{pre-seed,seed}','{B2B,B2C,health,wellbeing,education,\"future of work\",climate,consumer}','{\"med tech\"}',0,1,NULL,NULL,NULL,8),(9,'Bee Partners','https://www.beepartners.vc/','San Francisco, CA','Forgot we existed, sent Afters team through their generic intake form','met','2021-12-09 05:00:00.000000',100,1000,NULL,'{pre-seed,seed}','{marketplaces,AI,robotics,\"synthetic bio\",enterprise,manufacturing,agritech}','{}',0,NULL,NULL,NULL,NULL,9),(10,'Betaworks Ventures','https://betaworksventures.com/','New York, NY','Typical check size: $100,000 - $500,000. Invest in augmented reality, computer vision, voice interfaces, conversational software. Rarely invest pre-product','met','2021-11-10 05:00:00.000000',100,500,NULL,'{pre-seed,seed}','{web3,\"no code\",AI,consumer,AR,\"computer vision\",\"voice interfaces\"}','{}',0,NULL,NULL,NULL,NULL,10),(11,'Boost VC','https://www.boost.vc/','San Mateo, CA','Adam Draper, MD, adam@boost.vc. Typically invest through SAFEs','met','2022-03-17 04:00:00.000000',500,500,0,'{pre-seed}','{crypto,AR,VR,\"deep tech\",hardware}','{}',0,NULL,NULL,NULL,NULL,11),(12,'BootstrapLabs','https://bootstraplabs.com/','San Francisco, CA','AI only. Target 20% ownership, and invest between seed and A, around $5-6M. No rev needed, just traction.','met','2022-01-11 05:00:00.000000',5000,6000,1,'{seed,A}','{AI}','{}',0,NULL,NULL,NULL,NULL,12),(13,'Cantos Ventures','http://cantos.vc/','San Francisco, CA',NULL,'met','2022-01-11 05:00:00.000000',400,1000,1,'{pre-seed,seed}','{climate,materials,chips,defense,robots,defense,\"next generation computing\"}','{}',0,NULL,NULL,NULL,NULL,13),(14,'Charge Ventures','http://www.charge.vc/','New York, NY',NULL,'warm','2021-11-10 05:00:00.000000',10,100,NULL,'pre-seed','{agnostic}','{}',0,NULL,NULL,NULL,NULL,14),(15,'Cofounders Capital','http://cofounderscapital.com/','Cary, NC','Active investors, B2B SaaS, prefer enterprise over SMB. 1/4-1/3 of investments are pre rev, rest around 50-100k ARR. 500k-1.5M initial check, 2-5M in reserve. NC focused due to locality of connections. David Gardner, partner, david@cofounderscapital.com','met','2021-11-16 05:00:00.000000',500,1500,1,'{pre-seed,seed}','{\"B2B SaaS\"}','{}',0,NULL,NULL,NULL,NULL,15),(16,'Crosscut Ventures','https://www.crosscut.vc/','Los Angeles, CA','LA based VC firm, tech focused','met','2022-01-26 05:00:00.000000',100,2500,1,'{pre-seed,seed}','{software}','{hardware}',1,1,NULL,NULL,NULL,16),(17,'Elevate Capital','https://elevate.vc/','Hillsboro, OR','They have three funds. Inclusive fund: $25 - $100k checks. Fund females, minorities, and veterans. (Oregon only) Capital Fund II: $100k to $2M. Underrepresented minoirity (women, veterans, BIPOC, LGBTQ) founders in tech and healthcare. Innovation Gap Fund $50k to $250k (Oregon companies only). Nitin Rai, MP, nitin@elevate.vc','met','2022-01-12 05:00:00.000000',500,2000,1,'{pre-seed,seed}','{tech,healthcare,\"healthcare software\",\"care delivery\",\"clean tech\",hospital}','{\"med device\"}',0,NULL,NULL,NULL,NULL,17),(18,'First Round Capital','https://firstround.com/','Philadelphia, PA','Will look at hardware, hit rate will be low','met','2022-02-21 05:00:00.000000',500,6000,1,'{seed}','{agnostic,enterprise,consumer,fintech,healthcare}','{alcohol,drugs}',0,0,NULL,12,15,18),(19,'Floodgate','https://floodgate.com/','San Francisco, CA','passed on leaf, scope, nelderm. Trying to get Bounce intro call set up','warm','2022-02-22 05:00:00.000000',10,100,NULL,'pre-seed','{consumer,crypto,enterprise,fintech,healthcare}','{}',0,NULL,NULL,NULL,NULL,19),(20,'Fusion Fund','https://www.fusionfund.com/','Palo Alto, CA','1-3M, 1:2 ratio. ','met','2021-12-03 05:00:00.000000',250,3000,1,'{pre-seed,seed,A}','{\"industrial automation\",healthcare}','{}',0,NULL,NULL,NULL,NULL,20),(21,'Good News Ventures','https://goodnewsventures.com/','Toronto, Ontario, Canada','100-500k checks, syndicate deals on angellist so checks can run larger. 90 LPs, try to connect LPs with startups to facilitate growth post investment (board seats, etc.). Mohan Markandaier, MP, mohan@goodnewsventures.com.','met','2022-01-05 05:00:00.000000',100,550,0,'{pre-seed,seed}','{agnostic}','{\"med device\",B2C}',0,1,NULL,NULL,NULL,21),(22,'Ground Up Ventures','https://www.groundup.vc/','New York, NY','$500k - 1.3M checks in pre-seed and seed. Focuses on proptech, fintech, ecommerce, will look at anything','met','2022-01-24 05:00:00.000000',500,1500,1,'{pre-seed,seed}','{agnostic,proptech,fintech,ecommerce}','{}',0,NULL,NULL,NULL,NULL,22),(23,'Homebrew','https://homebrew.co/','San Francisco, CA',NULL,'met','2021-12-01 05:00:00.000000',750,2000,1,'{seed}','{agnostic}','{}',0,1,NULL,NULL,NULL,23),(24,'Hustle Fund','https://www.hustlefund.vc/','San Carlos, CA','Shiyan Koh, MP, shiyan@hustlefundvc.com','met','2022-01-26 05:00:00.000000',25,25,0,'{pre-seed}','{software,services}','{}',0,1,NULL,NULL,NULL,24),(25,'January Ventures','https://www.january.ventures/','Boston, MA','Sent list of cos on 1/20/22. Unclear what sector focus, check size, investment criteria are','met','2022-02-07 05:00:00.000000',100,1000,NULL,'pre-seed','{agnostic}','{}',0,NULL,NULL,NULL,NULL,25),(26,'K50 Ventures','https://www.k50ventures.com/','New York, NY','Invest in health, finance, education, housing, future of work. $250k max checks in pre-seed/seed','warm','2021-12-31 05:00:00.000000',10,100,NULL,'pre-seed','{agnostic}','{}',0,NULL,NULL,NULL,NULL,26),(27,'Lakehouse Ventures','https://lakehouse.vc/','New York, NY','Pre seed VC in NY city, usually invest in concept phase. Focus on products, services, platforms that people use every day. Have done baby formula to hospice care.','met','2022-01-24 05:00:00.000000',500,1000,1,'{pre-seed}','{consumer,\"consumer product\",\"consumer service\",\"consumer software\",\"B2C software\",software}','{Crypto,cannabis,gaming,fashion,media}',0,1,NULL,NULL,NULL,27),(28,'LAUNCH','https://launch.co/','San Francisco, CA','Main syndicate: 50k MRR req. SaaS syndicate: 10k MRR req (less for high growth). Submit all referals through openscouting.com','met','2022-01-12 05:00:00.000000',250,2000,0,'{pre-seed,seed,A,B}','{agnostic,software}','{hardware,\"med device\"}',1,NULL,NULL,NULL,NULL,28),(29,'M25','https://m25vc.com/','Chicago, IL','No med device/biotech/anything touching FDA. 5-10% ownership stake,  8MM pre or lower. Victor Gutwein, MP, victor@m25vc.com. Will always ask for deck before taking an intro','met','2022-01-13 05:00:00.000000',200,500,1,'{pre-seed,seed}','{agnostic}','{\"life science\",biotech,\"med device\",vices}',0,1,NULL,NULL,NULL,29),(30,'Maccabee Ventures','https://www.maccabee.vc/','New York, NY',NULL,'met','2022-01-19 05:00:00.000000',50,150,0,'{pre-seed,seed}','{\"Senior health\",\"digital health\",wellness,cyber,proptech,saas,AI,fintech}','{\"med device\"}',0,1,NULL,NULL,NULL,30),(31,'Maven Ventures','https://mavenventures.com/','Palo Alto, CA','jim@mavenventures.com, MP','warm','2022-01-27 05:00:00.000000',100,1000,NULL,'{seed}','{\"consumer software\"}','{}',0,NULL,NULL,NULL,NULL,31),(32,'Mucker Capital','https://www.mucker.com/','Los Angeles, CA','Erik Rannala, MP, erik@mucker.com','met','2022-01-05 05:00:00.000000',200,1000,1,'{pre-seed,seed,A}','{software,marketplaces,fintech}','{pharma,\"med device\"}',0,NULL,NULL,NULL,NULL,32),(33,'New Stack Ventures','http://www.newstack.vc/','Chicago, IL','pre-seed to seed (0-500k arr) stage focus. 200k-2M checks, will lead and co lead, shoot for 15% ownership at entry. Revenue is a bonus, not a requirement. Software focused, will look at software-enabled hardtech. Nick Moran, partner, nick@newstack.com','met','2022-01-05 05:00:00.000000',200,2000,1,'{pre-seed,seed}','{software}','{}',0,NULL,NULL,NULL,15,33),(34,'Panache Ventures','https://www.panache.vc','Montreal, Quebec, Canada','$250k - $500k size checks\nOnly investing very selectively in US with fund II starting mid 2022','warm','2021-12-14 05:00:00.000000',10,100,NULL,'pre-seed','{agnostic}','{}',0,NULL,NULL,NULL,NULL,34),(35,'Pathbreaker Ventures','https://www.pathbreakervc.com','San Francisco, CA',NULL,'met','2022-01-19 05:00:00.000000',250,1000,1,'{pre-seed,seed,A,B,C}','{robotics,sensors,AI,ML,\"deep learning\",\"reinforcement learning\",\"computer vision\",\"natural language processing\",\"natural language understanding\",\"computational biology\",VR,AR}','{}',0,1,NULL,NULL,NULL,35),(36,'Plug and Play Ventures','https://www.plugandplaytechcenter.com/ventures/','Sunnyvale, CA','$108k average check size. Jennifer Thomas, MD, jennifer@plugandplaytechcenter.com. Progress requirements: MVP built, some user data, ideally a pilot in the works or completed.','met','2022-01-31 05:00:00.000000',25,100,0,'{pre-seed,seed}','{Fintech,Insurtech,\"Internet of Things\",iot,Mobility,Health,Retail,\"Supply Chain Logistics\",Food,Beverage,Travel,Hospitality,Energy,Sustainability,\"Materials Packaging\",\"Enterprise Tech\",software,B2B,SaaS,\"Real Estate\",\"Construction Tech\",\"Media Ad\",\"Smart Cities\",Sustainability,Agtech,Maritime,\"Animal Health\"}','{edtech,sports,entertainment,HR,\"med device\"}',0,0,NULL,NULL,NULL,36),(37,'Right Side Capital Management','http://rightsidecapital.com/','San Francisco, CA','Pre vc rounds, lower valuations to give teams runway to pre seed','met','2022-02-02 05:00:00.000000',150,300,1,'{pre-vc}','{software}','{hardware}',1,0,'{\"low valuations\"}',NULL,NULL,37),(38,'Story Ventures','https://storyventures.vc/','New York, NY','Reach out end of Feb once new acc analyst is hired. tend to invest in the commercialization of deep tech, versus the development. So we will be less likely to invest in a new sensor, and more likely to invest in companies leveraging new sensors to build a b2b/b2c application.','met','2022-02-07 05:00:00.000000',500,2000,1,'{pre-seed,seed}','{AI,sensors,data}','{}',0,1,NULL,NULL,NULL,38),(39,'Supernode Ventures','http://supernode.vc/','New York, NY','Laurel Touby, MP, laurel@supernode.vc','warm','2022-02-21 05:00:00.000000',50,100,NULL,'pre-seed','{agnostic}','{}',0,NULL,NULL,NULL,NULL,39),(40,'TMV','https://tmv.vc/','New York, NY','Soraya Darabi, founding partner, soraya@tmv.vc','met','2022-01-14 05:00:00.000000',1000,2000,1,'{seed,A}','{healthcare,finance,logistics,\"future of work\"}','{}',0,NULL,NULL,NULL,NULL,40),(41,'twentytwo ventures','https://22ltd.com/#angel','Columbus, OH',NULL,'met','2021-11-01 04:00:00.000000',10,200,1,'{pre-seed}','{agnostic}','{\"med device\",fintech}',0,NULL,NULL,NULL,NULL,41),(42,'Unshackled Ventures','https://www.unshackledvc.com/','San Francisco, CA','Fund immigrant founders - no matter their work authorization status. pre-revenue, pre-product, pre-incorporation','met','2022-02-02 05:00:00.000000',300,500,1,'{pre-seed,\"company formation\"}','{agnostic}','{}',0,1,'{\"International citizen founder\"}',NULL,NULL,42),(43,'Urban Innovation Fund','https://www.urbaninnovationfund.com/','San Francisco, CA','invest in startups that improve the livability, sustainability, and economic vitality of cities: transportation, RE tech, food tech. Julie Lein, MD, julie@urbaninnovationfund.com','met','2022-02-02 05:00:00.000000',300,1500,1,'{pre-seed,seed}','{transportation,sustainability,water,food,edtech,fintech,proptech,\"small business enablement\"}','{GPG,\"consumer packaged goods\"}',0,0,NULL,NULL,NULL,43),(44,'Urban Us','https://urban.us/','San Francisco, CA','Invest in startups that improve cities and prepare for climate change.','warm','2022-01-14 05:00:00.000000',10,100,NULL,'pre-seed','{agnostic}','{}',0,NULL,NULL,NULL,NULL,44),(45,'Village Global','https://www.villageglobal.vc/','San Francisco, CA',NULL,'warm','2022-01-31 05:00:00.000000',10,100,NULL,'{pre-seed,seed}','{agnostic}','{}',0,NULL,NULL,NULL,NULL,45),(46,'Wonder Ventures','https://wondervc.com/','Los Angeles, CA','$100k - $300k check size','met','2022-02-23 05:00:00.000000',50,1000,NULL,'{pre-seed}','{\"B2B saas\",software,\"consumer software\"}','{healthcare,\"med device\"}',0,1,NULL,5,10,46),(47,'IrishAngels','http://irishangels.com/','415 N. LaSalle Dr. Suite 504, Chicago, IL 60654','We invest in US-based software, consumer products, and medical devices. Caroline Gash, MD, caroline@irishangels.com','met','2022-05-05 04:00:00.000000',150,500,0,'{seed}','{agnostic,\"consumer products\",medtech,\"med device\",software}','{vices}',1,1,'{\"need to have someone committed (can be equity\",notes,\"or SAFEs)\"}',NULL,NULL,47),(48,'GoingVC Partners','https://www.goingvc.com/gvc-partners/','845 Market St Suite 450, San Francisco, CA 94103','angel syndicate, invest as one entity to preserve cap table. Arno Niazi, founding partner, arno@goingvc.com','met','2022-04-28 04:00:00.000000',50,300,0,'{pre-seed}','{agnostic}','{\"med device\",hardware}',1,0,NULL,NULL,NULL,48),(49,'Accelerate Venture Partners','https://www.avpict.com/','245 N. Waco, Ste# 230A Wichita, KS 67202 USA','We invest in early-stage, high growth companies in Wichita and the Midwest. We are a collaborative group of active investors from diverse professional and industry backgrounds. Providing more than just money, we bring connections, knowledge, mentoring and operational assistance to bold early-stage entrepreneurs with game-changing ideas.','met','2022-08-22 04:00:00.000000',100,300,0,'{seed}','{agnostic}','{\"med device\",biotech}',1,0,NULL,NULL,NULL,49),(50,'One Way Labs','http://www.onewaylabs.com/','3333 Piedmont Rd, Suite 2050, Atlanta, GA 30305','We invest in early stage startups and build software in exchange for equity. We look for non-technical founders who hold deep domain expertise, solving important problems without their own development team or technical co-founder.','warm',NULL,10,100,NULL,'pre-seed','{agnostic}','{}',0,NULL,NULL,NULL,NULL,50),(51,'XRC Labs','https://www.xrclabs.com/','68 5th Ave, Fl 3 New York, NY 10011','Have 3 funds. Acc/pre seed takes 4-8% equity via direct equity + SAFE, other two are traditional equity but later stage. Pano Anthos, MD, pano@xrclabs.com','met','2022-05-25 04:00:00.000000',500,2000,0,'{pre-seed,seed,A}','{consumer,\"consumer products\",\"med device\",software,\"supply chain\",logistics}','{}',0,1,NULL,4,20,51),(52,'Hyde Park Venture Partners','https://hydeparkvp.com/','415 N LaSalle St, Chicago, Illinois 60654, USA','We invest in B2B SaaS, marketplaces, tech-enabled services, and B2C software based in the US Midwest, Toronto, and Atlanta from idea stage through $2M+ in ARR.','met','2022-05-20 04:00:00.000000',500,3500,1,'{pre-seed,seed,A}','{software}','{}',0,1,NULL,NULL,NULL,52),(53,'Darling Ventures','https://www.darlingventures.com/','USA',NULL,'met',NULL,100,750,1,'{pre-seed,seed}','{software,data,automation}','{}',0,NULL,NULL,5,NULL,53),(54,'Hemisphere Venture','https://www.hemisphere.com','USA','Lisa Rich, MP, lisa.rich@hemisphere.com','met','2022-06-02 04:00:00.000000',500,1000,1,'{pre-seed,seed,A}','{software,\"deep tech\",ai,\"software enabled hardware\",drones,space,nanotech}','{}',0,1,NULL,NULL,NULL,54),(55,'LDV Capital','https://www.ldv.co/','111 East 14th Street, #102, New York, NY 10003, USA','We invest in visual technology startups in the very earliest of stages (we often invest pre-incorporation) across sectors and industries in North America, Europe, and Israel. brian@ldv.co, analyst. Prefer priced equity rounds','met','2022-05-04 04:00:00.000000',500,1200,1,'{pre-seed,seed}','{\"visual tech\",AR,VR,\"computer vision\",radar}','{}',0,1,NULL,NULL,NULL,55),(56,'Monochrome Capital','http://www.monochrome.vc/','San Francisco CA 94114, USA','We invest in early-stage software and AI-driven startups that are solving the toughest business challenges.','warm',NULL,10,100,NULL,'pre-seed','{\"cloud infrastructure\",\"machine learning platforms\",APIs,\"dev tools\",web3}','{}',0,NULL,NULL,NULL,NULL,56),(57,'Cultivian Sandbox Ventures','https://cultiviansbx.com','USA',NULL,'met','2022-08-22 04:00:00.000000',500,6000,1,'{seed,A}','{healthcare,insurance,sustainability,food,ag}','{}',0,NULL,NULL,NULL,NULL,57),(58,'Big Idea Ventures','https://bigideaventures.com/','USA','Find IP in universities (OSU is OH partner) and build a team around the new co along with strategics. More of a partnership than an investor connect','met','2022-08-04 04:00:00.000000',1000,1000,1,'pre-seed','{ag,food,protein}','{}',0,NULL,NULL,NULL,NULL,58),(59,'Altair Capital','https://altair.vc/','Israel',NULL,'warm','2022-08-15 04:00:00.000000',100,3000,1,'pre-seed','{fintech,\"e commerce\",productivity}','{}',1,NULL,'{\"5k MRR minimum\"}',NULL,NULL,59),(60,'Tenzing.vc','https://tenzing.vc','245 N. Waco, Ste# 230A Wichita, KS 67202 USA',NULL,'met','2022-08-08 04:00:00.000000',100,250,NULL,'pre-seed','{\"b2b saas\",software}','{}',1,NULL,NULL,NULL,NULL,60);
/*!40000 ALTER TABLE `firms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `founders`
--

DROP TABLE IF EXISTS `founders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `founders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `founders`
--

LOCK TABLES `founders` WRITE;
/*!40000 ALTER TABLE `founders` DISABLE KEYS */;
INSERT INTO `founders` VALUES (47,'Sam','Drager','sam.w.drager@gmail.com',NULL,47),(49,'Rik','Shorten','rik@bioflightvr.com',NULL,49),(50,'Debbie','Leonard','debbie@brainzones.org',NULL,50),(51,'Amanda','Bridenstine','amanda.bridenstine@recurrenthealth.com',NULL,51),(52,'Jeffrey','Jones','jeffrey.jones@consolidus.com',NULL,52),(53,'Glenn','King','gking@data-command.com',NULL,53),(54,'Aaron','Christopher','ac@drips.com',NULL,54),(56,'Joren','Rapini','joren@embold.com',NULL,56),(58,'Eric','Nichols','eric@ericdoesdata.com',NULL,58),(60,'Chris','Miller','chris@fontusblue.com',NULL,60),(62,'Eamon','Johnson','eamon.johnson@globalhealthmetrics.com',NULL,62),(63,'Ryan','Lambacher','ryan@graffle.io',NULL,63),(64,'John','Lahmon','flaminglahmons@yahoo.com',NULL,64),(65,'Evan','Haug','ehaug@leafsolardesign.com',NULL,65),(66,'Ryan','Edgerly','redgerly@medasync.com',NULL,66),(67,'Prasanna','Chinthala','sc184@zips.uakron.edu',NULL,67),(69,'Kevin','Nelson','knelson@nelderm.com',NULL,69),(74,'Dan','Quigg','dan.quigg@publicinsightdata.com',NULL,74),(75,'Chelsea','Monty-Bromer','cmontybromer@yoursweatid.com',NULL,75),(76,'Patrick','Howard','patrick@rustbit.com',NULL,76),(77,'Tosan','Ugbeye','tugbeye@gmail.com',NULL,77),(78,'Christopher','Matney','cmatney@s4laboratories.com',NULL,78),(79,'Brian','Ellis','bellis@bezl.io',NULL,79),(80,'Matt','Crowley','matt@tondone.com',NULL,80),(81,'Vinny','Peterson','vincent@vigeogardens.com',NULL,81),(82,'Nate','Hawk','nhawk@xadite.com',NULL,82),(88,'Lukas','Minkov','office@afters.io',NULL,88),(91,'Gary','Wakeford','wakefordgary@gmail.com',NULL,91),(92,'Matt','Goldberg','matt@jafriedman.com',NULL,92),(105,'Marina','Jackman','marina@time2talk.app',NULL,105),(106,'Michael','Cole','myhousecall1@gmail.com',NULL,NULL),(107,'Isaiah ','Kaiser','ijk9@uakron.edu',NULL,NULL),(108,'Daniel','Messeloff','dmess1@yahoo.com',NULL,NULL),(109,'Gaofeng','Sha','gsha@4irshm.com',NULL,NULL),(110,'Joe','James','jjquad@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `founders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investors`
--

DROP TABLE IF EXISTS `investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firm_id` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `investors_email_key` (`email`),
  UNIQUE KEY `investors_linkedin_key` (`linkedin`),
  KEY `investors_firm_id_fkey` (`firm_id`),
  CONSTRAINT `investors_firm_id_fkey` FOREIGN KEY (`firm_id`) REFERENCES `firms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investors`
--

LOCK TABLES `investors` WRITE;
/*!40000 ALTER TABLE `investors` DISABLE KEYS */;
INSERT INTO `investors` VALUES (1,'John','Daly','john@25madison.com','https://www.linkedin.com/in/john-stephen-daly-66100611/',1,'Founding Partner'),(2,'Zach','Yosher','zach@advantagesportsfund.com','https://www.linkedin.com/in/john-weaver-18138a3b/',2,'Partner'),(3,'Eric','Schoenbach','eric@alpaca.vc','https://www.linkedin.com/in/ryanfreedman1/',3,'Partner'),(4,'Clara','Chan','clara@amplify.la','https://www.linkedin.com/in/paulbricault/',4,'Partner'),(5,'Nisha','Desai','ndesai@andavcapital.com','https://www.linkedin.com/in/nishahdesai/',5,'Managing Partner'),(6,'Maurice','Maschmeyer','mmaschmeyer@bam.vc','https://www.linkedin.com/in/richard-jun-04517954/',6,'Managing Partner'),(7,'Gyan','Kapur','gyan@surface.vc','https://www.linkedin.com/in/gyankapur/',7,'Managing Director'),(8,'Claire','Biernacki','claire.biernacki@bbgventures.com','https://www.linkedin.com/in/nisha-dua-5aa87914/',8,'Partner'),(9,'Garrett','Goldberg','garrett@beepartners.vc','https://www.linkedin.com/in/garrettgoldberg/',9,'Partner'),(10,'Matt','Hartman','matt@betaworks.com','https://www.linkedin.com/in/matthewforresthartman/',10,'Partner'),(11,'Gus','Domel','gus@boost.vc','https://www.linkedin.com/in/adraper/',11,'Partner'),(12,'Luigi','Congedo','luigi@bootstraplabs.com','https://www.linkedin.com/in/nicolaiwadstrom/',12,'Partner'),(13,'Ian','Rountree','ian@cantos.vc','https://www.linkedin.com/in/ianrountree/',13,'Partner'),(14,'Brett','Martin','brett@charge.vc','https://www.linkedin.com/in/brettlucasmartin/',14,'Partner'),(15,'Tobi','Walters','tobi@cofounderscapital.com','https://www.linkedin.com/in/davidgardner4/',15,'Partner'),(16,'Rick','Smith','rick@crosscut.vc','https://www.linkedin.com/in/ricksmithvc/',16,'Managing Partner'),(17,'Ben','Nahir','ben@elevate.vc','https://www.linkedin.com/in/nitinrai1/',17,'Partner'),(18,'Meka','Asonye','meka@firstround.com','https://www.linkedin.com/in/mekaasonye/',18,'Partner'),(19,'Ann','Miura','ann@floodgate.com','https://www.linkedin.com/in/amiura/',19,'Partner'),(20,'Homan','Yuen','homan@fusionfund.com','https://www.linkedin.com/in/homanyuen/',20,'Founding Partner'),(21,'Brent','Matterson','brent@goodnewsventures.com','https://www.linkedin.com/in/mohan-markandaier-2075584/',21,'Partner'),(22,'David','Stark','david@groundup.vc','https://www.linkedin.com/in/david-stark-36bb1938/',22,'Founding Partner'),(23,'Hunter','Walk','hunter@homebrew.co','https://www.linkedin.com/in/hunterwalk/',23,'Partner'),(24,'Will','Bricker','will@hustlefundvc.com','https://www.linkedin.com/in/shiyankoh/?originalSubdomain=sg',24,'Principal'),(25,'Jennifer','Keiser','jennifer@january.ventures','https://www.linkedin.com/in/jkneundorfer/',25,'Founding Partner'),(26,'Ryan','Bloomer','ryan@k50ventures.com','https://www.linkedin.com/in/ryan-bloomer-b3925a4/',26,'Managing Partner'),(27,'John','Neamonitis','john@lakehouse.vc','https://www.linkedin.com/in/john-neamonitis-b8b505/',27,'Founding Partner'),(28,'Kelly','Schricker','kelly@launch.co','https://www.linkedin.com/in/jasoncalacanis/',28,'Founding Partner'),(29,'Leandro','Bedolla','leandro@m25vc.com','https://www.linkedin.com/in/victor-gutwein/',29,'Partner'),(30,'Moshe','Bellows','mbellows@maccabee.vc','https://www.linkedin.com/in/moshebellows/',30,'Managing Partner'),(31,'Robert','Ravanshenas','robert@mavenventures.com','https://www.linkedin.com/in/jscheinman/',31,'Partner'),(32,'Jon','Broscious','jon@mucker.com','https://www.linkedin.com/in/erikr/',32,'Partner'),(33,'Nate','Pierotti','nate@newstack.vc','https://www.linkedin.com/in/nick-moran-a738503/',33,'Partner'),(34,'Mike','Cegelski','mike@panache.vc','https://www.linkedin.com/in/mike-cegelski/',34,'Managing Partner'),(35,'Ryan','Gembala','ryan@pathbreakervc.com','https://www.linkedin.com/in/ryangembala/',35,'Managing Partner'),(36,'Julianne','Roseman','julianne@pnptc.com','https://www.linkedin.com/in/jenniferthomas5/',36,'Partner'),(37,'Dave','Lambert','dave@rightsidecapital.com','https://www.linkedin.com/in/davidlambert55/',37,'Managing Director'),(38,'Jake','Yormak','jake@storyventures.vc','https://www.linkedin.com/in/jake-yormak-b8232756/',38,'Partner'),(39,'Gaelen','Hendrickson','gaelen@supernode.vc','https://www.linkedin.com/in/laureltouby/',39,'Analyst'),(40,'Evan','Wray','evan@tmv.vc','https://www.linkedin.com/in/SorayaDarabi/',40,'Partner'),(42,'Manan','Mehta','manan@unshackledvc.com','https://www.linkedin.com/in/mananm/',42,'Founding Partner'),(43,'Jenieri','Cyrus','jenieri@urbaninnovationfund.com','https://www.linkedin.com/in/julie-lein-76a0679/',43,'Partner'),(44,'Shaun','Abrahamson','shaun@urban.us','https://www.linkedin.com/in/shaunabe/',44,'Managing Director'),(45,'Anne','Dwane','anne@villageglobal.vc','https://www.linkedin.com/in/dwane/',45,'Founding Partner'),(46,'Dustin','Rosen','dustin@wondervc.com','https://www.linkedin.com/in/dustinrosen/',46,'Managing Partner'),(47,'Craig','Chval','craig@irishangels.com','https://www.linkedin.com/in/carolinegash/',47,'Partner'),(48,'Simona','Bali','simona@goingvc.com','https://www.linkedin.com/in/arnoniazi/',48,'Founding Partner'),(49,'Quinn','Robertson','quinn@nxtus.io','https://www.linkedin.com/in/joshoeding/',49,'Managing Director'),(51,'Ashwin','Puri','ashwin@xrclabs.com','https://www.linkedin.com/in/panoanthos/',51,'Analyst'),(52,'Greg ','Barnes','greg@hydeparkvp.com','https://www.linkedin.com/in/gregorycbarnes/',52,'Managing Director'),(53,'Daniel','Darling','daniel@darlingventures.com','https://www.linkedin.com/in/danieldarling/',53,'Managing Partner'),(54,'Joe','Turner','joe.turner@hemisphere.com','https://www.linkedin.com/in/lisarich/',54,'Partner'),(55,'Evan','Nisselson','enisselson@ldv.co','https://www.linkedin.com/in/nisselson/',55,'Partner'),(56,'Ben','Metcalfe','ben@monochrome.vc','',56,'Managing Partner');
/*!40000 ALTER TABLE `investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('I9IJaz-29lXVUySxRk59Imy-3_R-ul1x',1666032803,'{\"cookie\":{\"originalMaxAge\":3599999,\"expires\":\"2022-10-17T18:53:23.145Z\",\"secure\":false,\"httpOnly\":false,\"path\":\"/\",\"sameSite\":\"lax\"},\"authenticated\":true,\"user\":{\"userId\":4,\"admin\":true}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_key` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'bcollison@bouncehub.org','$2b$10$hTqLUi4k683LQlvXU5/e6.8Itg.pbo7.s1Fv/wVve5EvDjt8fD50S',1),(24,'akettner@bouncehub.org','$2b$10$3obD..vhO7oUeMJpN4RKG.UTOrhkOnWMeSOaF8Oze1EiTrU7SN/N2',1);
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

-- Dump completed on 2022-10-17 15:41:33
