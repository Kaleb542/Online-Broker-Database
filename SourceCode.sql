CREATE DATABASE  IF NOT EXISTS `newschema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `newschema`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 35.222.162.222    Database: crypto_and_stock_db
-- ------------------------------------------------------
-- Server version	5.7.36-google-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @SESSION.SQL_LOG_BIN;
SET @SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @GLOBAL.GTID_PURGED=/*!80000 '+'*/ '0aa79c84-1022-11ec-9ee7-42010a800002:1-24828';

--
-- Table structure for table `crypto_market_data`
--

DROP TABLE IF EXISTS `crypto_market_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crypto_market_data` (
  `Rank` int(11) unsigned NOT NULL,
  `Name` text NOT NULL,
  `Symbol` varchar(5) NOT NULL,
  `Market Cap` double unsigned NOT NULL,
  `Price` double unsigned NOT NULL,
  `Circulating Supply` text NOT NULL,
  `Volume (24h)` bigint(20) unsigned DEFAULT NULL,
  `% 1h` text,
  `% 24h` text,
  `% 7d` text,
  PRIMARY KEY (`Symbol`),
  UNIQUE KEY `Symbol_UNIQUE` (`Symbol`),
  UNIQUE KEY `Rank_UNIQUE` (`Rank`),
  UNIQUE KEY `Market Cap_UNIQUE` (`Market Cap`),
  KEY `Price_INDEX` (`Price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crypto_market_data`
--

/*!40000 ALTER TABLE `crypto_market_data` DISABLE KEYS */;
INSERT INTO `crypto_market_data` (`Rank`, `Name`, `Symbol`, `Market Cap`, `Price`, `Circulating Supply`, `Volume (24h)`, `% 1h`, `% 24h`, `% 7d`) VALUES (5,'Cardano','ADA',65378981995,1.97,'33,271,310,416',2446176744,'-0.29%','0.39%','-7.46%'),(20,'Algorand','ALGO',11326966160,1.83,'6,194,033,655',291738506,'-0.37%','0.50%','0.66%'),(25,'Cosmos','ATOM',8340085701,37.26,'223,815,498',496362895,'-0.40%','-0.02%','8.65%'),(14,'Avalanche','AVAX',14161740162,64.29,'220,286,577',385833917,'0.59%','3.00%','-0.36%'),(24,'Axie Infinity','AXS',8423030495,138.29,'60,907,500',846906133,'-0.59%','-6.11%','12.41%'),(21,'Bitcoin Cash','BCH',11261546531,596.24,'18,887,650',1330055653,'-0.33%','1.95%','-3.50%'),(3,'Binance Coin','BNB',87464591883,524.36,'166,801,148',2076289915,'-0.20%','-0.67%','10.01%'),(1,'Bitcoin','BTC',1160000000000,61318.96,'18,860,168',32241199927,'-0.18%','-0.92%','0.64%'),(34,'Bitcoin BEP2','BTCB',6442221564,61297.73,'105,097',50773664,'-0.23%','-0.47%','0.40%'),(17,'Binance USD','BUSD',13615664432,1,'13,619,701,327',7708964576,'-0.04%','-0.02%','-0.06%'),(40,'Crypto.com Coin','CRO',5323855118,0.21,'25,263,013,692',463739716,'0.10%','-1.88%','9.63%'),(33,'Dai','DAI',6474310632,1,'6,474,951,714',860683891,'0.00%','-0.06%','0.00%'),(10,'Dogecoin','DOGE',36972572650,0.28,'131,929,723,836',4224104205,'0.76%','4.43%','1.15%'),(8,'Polkadot','DOT',42211209862,42.74,'987,579,315',1250223353,'-0.52%','-0.01%','0.84%'),(38,'Elrond','EGLD',5329252388,270.94,'19,669,188',105013996,'-0.52%','4.36%','-4.53%'),(32,'Ethereum Classic','ETC',7093849244,54.33,'130,580,588',1780458503,'0.33%','2.86%','-1.31%'),(2,'Ethereum','ETH',507000000000,4288.07,'118,156,446',17498160238,'-0.21%','-0.87%','4.90%'),(27,'Filecoin','FIL',7654848299,64.41,'118,845,023',1370697316,'-0.09%','6.04%','2.80%'),(28,'Fantom','FTM',7293466953,2.87,'2,545,006,273',654363618,'1.89%','7.44%','5.86%'),(31,'FTX Token','FTT',7134166403,59.38,'120,148,849',190438801,'-0.14%','-0.33%','-4.10%'),(35,'Hedera','HBAR',6113176368,0.41,'15,018,941,582',388084582,'-1.27%','-2.86%','10.73%'),(26,'Internet Computer','ICP',7855251748,45.03,'174,431,259',485365099,'-0.22%','4.08%','3.75%'),(16,'Chainlink','LINK',13868352160,29.99,'462,509,554',879077591,'-0.14%','0.68%','0.72%'),(18,'Litecoin','LTC',13211081241,191.82,'68,873,583',2072793808,'-0.13%','0.70%','0.48%'),(12,'Terra','LUNA',17185456899,42.89,'400,688,919',533866227,'-0.66%','-1.03%','3.39%'),(39,'Decentraland','MANA',5255062400,2.89,'1,816,939,591',14350759420,'4.84%','-18.86%','271.45%'),(19,'Polygon','MATIC',13126444169,1.94,'6,783,681,381',1537180900,'-0.09%','3.58%','22.96%'),(37,'NEAR Protocol','NEAR',5381570712,10.16,'529,643,442',250571416,'-0.38%','-3.10%','5.59%'),(9,'SHIBA INU','SHIB',36919669979,0,'549,095,509,738,353',7990702699,'0.74%','3.34%','87.71%'),(6,'Solana','SOL',61003141450,202.42,'301,367,632',2577364486,'0.04%','3.58%','0.03%'),(30,'THETA','THETA',7187647073,7.19,'1,000,000,000',674404782,'-0.18%','-11.95%','11.41%'),(29,'TRON','TRX',7275355637,0.1,'71,659,657,369',2663826401,'0.12%','0.39%','2.31%'),(13,'Uniswap','UNI',15685350733,24.99,'627,596,089',218835107,'-0.28%','0.34%','-3.27%'),(11,'USD Coin','USDC',33171892682,1,'33,181,046,821',3903073032,'-0.03%','-0.04%','-0.06%'),(4,'Tether','USDT',70286558908,1,'70,260,109,912',91561112863,'-0.04%','-0.01%','0.02%'),(23,'VeChain','VET',8536648430,0.13,'64,315,576,989',501490302,'-0.67%','1.67%','-0.01%'),(15,'Wrapped Bitcoin','WBTC',14041557835,61380.59,'228,762',317705879,'-0.19%','-0.69%','0.68%'),(22,'Stellar','XLM',9017563593,0.37,'24,185,449,483',1141283804,'-0.26%','3.97%','0.00%'),(7,'XRP','XRP',52339587880,1.11,'47,015,237,181',4607785327,'0.13%','2.70%','2.67%'),(36,'Tezos','XTZ',5470400929,6.32,'865,215,780',282462823,'-0.23%','0.46%','-2.52%');
/*!40000 ALTER TABLE `crypto_market_data` ENABLE KEYS */;

--
-- Temporary view structure for view `crypto_price_ascending_view`
--

DROP TABLE IF EXISTS `crypto_price_ascending_view`;
/*!50001 DROP VIEW IF EXISTS `crypto_price_ascending_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `crypto_price_ascending_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Market Cap`,
 1 AS `Price`,
 1 AS `Circulating Supply`,
 1 AS `Volume (24h)`,
 1 AS `% 1h`,
 1 AS `% 24h`,
 1 AS `% 7d`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `crypto_price_descending_view`
--

DROP TABLE IF EXISTS `crypto_price_descending_view`;
/*!50001 DROP VIEW IF EXISTS `crypto_price_descending_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `crypto_price_descending_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Market Cap`,
 1 AS `Price`,
 1 AS `Circulating Supply`,
 1 AS `Volume (24h)`,
 1 AS `% 1h`,
 1 AS `% 24h`,
 1 AS `% 7d`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `crypto_rank_ascending_view`
--

DROP TABLE IF EXISTS `crypto_rank_ascending_view`;
/*!50001 DROP VIEW IF EXISTS `crypto_rank_ascending_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `crypto_rank_ascending_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Market Cap`,
 1 AS `Price`,
 1 AS `Circulating Supply`,
 1 AS `Volume (24h)`,
 1 AS `% 1h`,
 1 AS `% 24h`,
 1 AS `% 7d`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `crypto_rank_descending_view`
--

DROP TABLE IF EXISTS `crypto_rank_descending_view`;
/*!50001 DROP VIEW IF EXISTS `crypto_rank_descending_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `crypto_rank_descending_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Market Cap`,
 1 AS `Price`,
 1 AS `Circulating Supply`,
 1 AS `Volume (24h)`,
 1 AS `% 1h`,
 1 AS `% 24h`,
 1 AS `% 7d`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `crypto_symbol_alphabetical_view`
--

DROP TABLE IF EXISTS `crypto_symbol_alphabetical_view`;
/*!50001 DROP VIEW IF EXISTS `crypto_symbol_alphabetical_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `crypto_symbol_alphabetical_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Market Cap`,
 1 AS `Price`,
 1 AS `Circulating Supply`,
 1 AS `Volume (24h)`,
 1 AS `% 1h`,
 1 AS `% 24h`,
 1 AS `% 7d`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `crypto_symbol_reverse_alphabetical_view`
--

DROP TABLE IF EXISTS `crypto_symbol_reverse_alphabetical_view`;
/*!50001 DROP VIEW IF EXISTS `crypto_symbol_reverse_alphabetical_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `crypto_symbol_reverse_alphabetical_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Market Cap`,
 1 AS `Price`,
 1 AS `Circulating Supply`,
 1 AS `Volume (24h)`,
 1 AS `% 1h`,
 1 AS `% 24h`,
 1 AS `% 7d`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stock_EPS_descending_view`
--

DROP TABLE IF EXISTS `stock_EPS_descending_view`;
/*!50001 DROP VIEW IF EXISTS `stock_EPS_descending_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock_EPS_descending_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Revenue`,
 1 AS `Revenue Growth`,
 1 AS `Gross Profit`,
 1 AS `Operating Expenses`,
 1 AS `Earnings before Tax`,
 1 AS `Net Income`,
 1 AS `EPS`,
 1 AS `Net Income Growth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stock_grossprofit_descending_view`
--

DROP TABLE IF EXISTS `stock_grossprofit_descending_view`;
/*!50001 DROP VIEW IF EXISTS `stock_grossprofit_descending_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock_grossprofit_descending_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Revenue`,
 1 AS `Revenue Growth`,
 1 AS `Gross Profit`,
 1 AS `Operating Expenses`,
 1 AS `Earnings before Tax`,
 1 AS `Net Income`,
 1 AS `EPS`,
 1 AS `Net Income Growth`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stock_market_data`
--

DROP TABLE IF EXISTS `stock_market_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_market_data` (
  `Rank` int(11) unsigned NOT NULL,
  `Name` text NOT NULL,
  `Symbol` varchar(5) NOT NULL,
  `Price` double unsigned DEFAULT NULL,
  `Revenue` double NOT NULL,
  `Revenue Growth` double NOT NULL,
  `Gross Profit` double NOT NULL,
  `Operating Expenses` double NOT NULL,
  `Earnings before Tax` double NOT NULL,
  `Net Income` double NOT NULL,
  `EPS` double NOT NULL,
  `Net Income Growth` double NOT NULL,
  PRIMARY KEY (`Symbol`),
  UNIQUE KEY `Symbol_UNIQUE` (`Symbol`),
  UNIQUE KEY `Rank_UNIQUE` (`Rank`),
  UNIQUE KEY `Revenue_UNIQUE` (`Revenue`),
  UNIQUE KEY `Price_UNIQUE` (`Price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_market_data`
--

/*!40000 ALTER TABLE `stock_market_data` DISABLE KEYS */;
INSERT INTO `stock_market_data` (`Rank`, `Name`, `Symbol`, `Price`, `Revenue`, `Revenue Growth`, `Gross Profit`, `Operating Expenses`, `Earnings before Tax`, `Net Income`, `EPS`, `Net Income Growth`) VALUES (1,'Apple','AAPL',169.85,265595000000,0.16,101839000000,30941000000,72903000000,59531000000,12.01,0.2917),(9,'Accenture Plc','ACN',370.89,40992534000,0.13,12493364000,6594585000,5653406000,4059907000,6.46,0.0272),(34,'Autodesk, Inc.','ADSK',274.91,2056600000,0.01,1753200000,2262300000,-557300000,-566900000,-2.58,-0.0223),(19,'Applied Materials, Inc.','AMAT',157.57,17253000000,0.19,7817000000,3021000000,4694000000,3313000000,3.27,1.0826),(26,'Advanced Micro Devices, Inc.','AMD',144.1,6475000000,0.23,2447000000,1996000000,328000000,337000000,0.34,0.8511),(2,'Amazon.com, Inc.','AMZN',3541.5,232887000000,0.31,93731000000,81310000000,11270000000,10073000000,20.68,1.5552),(25,'Activision Blizzard, Inc.','ATVI',59.1,7500000000,0.07,4983000000,2995000000,1877000000,1813000000,2.38,0.6598),(17,'Broadcom Inc','AVGO',592.07,20848000000,0.18,10733000000,5598000000,4175000000,12259000000,29.33,0.0281),(40,'Horse Table Inc','BABE',39.71,9910000000,0.4,7665000000,4388000000,1985000000,652000000,4.88,0.4127),(39,'Box Inc','BOX',26.09,506142000,0.27,370894000,524915000,-154245000,-154960000,-1.16,0.26),(22,'salesforce.com, inc.','CRM',268.7,10540000000,0.25,7767000000,7313000000,420000000,360000000,0.5,-0.0358),(8,'Cisco Systems Inc','CSCO',58.03,49330000000,0.03,30606000000,18297000000,13039000000,110000000,0.02,0.2331),(38,'CommVault Systems, Inc.','CVLT',65.84,699393000,0.08,601241000,602187000,-3500000,-61900000,-1.37,0.3144),(35,'Entegris Inc','ENTG',153.47,1550497000,0.15,719831000,427142000,254432000,240755000,1.71,2.0251),(7,'Meta Platforms Inc','FB',324.56,55838000000,0.37,46483000000,21570000000,25361000000,22112000000,7.65,0.6361),(14,'Flex Ltd','FLEX',17.81,25441131000,0.07,1595882000,1121885000,520893000,428534000,0.81,0.2399),(31,'Godaddy Inc','GDDY',72.35,2660100000,0.19,1766200000,1293500000,68100000,77100000,0.5,1.4),(32,'Groupon Inc Common Stock','GRPN',21.95,2636746000,-0.07,1320601000,1266562000,-12036000,-11079000,-0.02,0.1036),(11,'Hewlett Packard Enterprise Co','HPE',15.59,30852000000,0.07,9570000000,7434000000,164000000,1908000000,1.25,-0.4284),(6,'HP Inc','HPQ',22.93,58472000000,0.12,10669000000,6605000000,3013000000,5327000000,3.3,2.5512),(21,'Infosys Ltd ADR','INFY',22.9,10939000000,0.07,3938000000,1279000000,3143000000,2486000000,0.55,0.3245),(4,'Intel Corporation','INTC',52.83,70848000000,0.13,43737000000,20421000000,23317000000,21053000000,4.57,0.2079),(16,'Jabil Inc','JBL',62.62,22095416000,0.16,1706792000,1202202000,372190000,86330000,0.5,-0.7594),(5,'JD.Com Inc','JD',78.48,66862483213,0.22,9544664689,9923699566,-298807670,-360583646.9,-0.25,0.1549),(29,'Micro Focus International PLC -ADR','MFGP',4.73,3170000000,1.3,2374000000,1209286229,23000000,538703540.8,1.62,0.5601),(33,'Marvell Technology Inc','MRVL',91.63,2409170000,0.05,1461940000,1032245000,538893000,520831000,1.05,0.316),(3,'Microsoft','MSFT',334.1,110360000000,0.14,72007000000,36949000000,36474000000,16571000000,2.15,0.1557),(12,'Micron Technology, Inc.','MU',86.52,30391000000,0.5,17891000000,2897000000,14303000000,14135000000,12.27,10.7017),(13,'Nokia Oyj','NOK',5.97,25934482759,-0.07,9708045977,9290804598,-419540229.9,-636781609.2,-0.07,1.1548),(24,'Nvidia Corporation','NVDA',321.26,9714000000,0.41,5822000000,2612000000,3196000000,3047000000,5.09,0.2383),(27,'ON Semiconductor Corp','ON',65.54,5878300000,0.06,2238700000,1391500000,752500000,627400000,1.48,0.243),(10,'Oracle Corporation','ORCL',90.14,39383000000,0.04,31323000000,18059000000,12424000000,3587000000,0.87,-2.0015),(15,'QUALCOMM, Inc.','QCOM',184.39,22611000000,0.02,12367000000,11746000000,392000000,-4964000000,-3.39,-0.7371),(36,'Snapchat Inc.','SNAP',50.93,1180446000,0.43,381581000,1650031000,-1253364000,-1255911000,-0.97,0.2104),(28,'Square Inc','SQ',191.26,3298177000,0.49,1303700000,1340314000,-36127000,-38453000,-0.09,0.0552),(30,'Twitter Inc','TWTR',45.22,3042359000,0.25,2077362000,1624037000,423544000,1205596000,1.6,2.295),(20,'Texas Instruments Incorporated','TXN',199.98,15784000000,0.06,10277000000,3564000000,6686000000,5580000000,5.71,0.5187),(18,'Western Digital Corp','WDC',59.31,20647000000,0.08,7705000000,4088000000,2085000000,675000000,2.27,0.8359),(23,'Xerox Holdings Corp','XRX',20.78,9830000000,-0.04,3927000000,3329000000,618000000,361000000,1.4,0.0491),(37,'Zynga Inc','ZNGA',6.35,907208000,0.05,602550000,595788000,26463000,15457000,0.02,-1.3669);
/*!40000 ALTER TABLE `stock_market_data` ENABLE KEYS */;

--
-- Temporary view structure for view `stock_rank_ascending_view`
--

DROP TABLE IF EXISTS `stock_rank_ascending_view`;
/*!50001 DROP VIEW IF EXISTS `stock_rank_ascending_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock_rank_ascending_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Revenue`,
 1 AS `Revenue Growth`,
 1 AS `Gross Profit`,
 1 AS `Operating Expenses`,
 1 AS `Earnings before Tax`,
 1 AS `Net Income`,
 1 AS `EPS`,
 1 AS `Net Income Growth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stock_rank_descending_view`
--

DROP TABLE IF EXISTS `stock_rank_descending_view`;
/*!50001 DROP VIEW IF EXISTS `stock_rank_descending_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock_rank_descending_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Revenue`,
 1 AS `Revenue Growth`,
 1 AS `Gross Profit`,
 1 AS `Operating Expenses`,
 1 AS `Earnings before Tax`,
 1 AS `Net Income`,
 1 AS `EPS`,
 1 AS `Net Income Growth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stock_symbol_alphabetical_view`
--

DROP TABLE IF EXISTS `stock_symbol_alphabetical_view`;
/*!50001 DROP VIEW IF EXISTS `stock_symbol_alphabetical_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock_symbol_alphabetical_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Revenue`,
 1 AS `Revenue Growth`,
 1 AS `Gross Profit`,
 1 AS `Operating Expenses`,
 1 AS `Earnings before Tax`,
 1 AS `Net Income`,
 1 AS `EPS`,
 1 AS `Net Income Growth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stock_symbol_reverse_alphabetical_view`
--

DROP TABLE IF EXISTS `stock_symbol_reverse_alphabetical_view`;
/*!50001 DROP VIEW IF EXISTS `stock_symbol_reverse_alphabetical_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock_symbol_reverse_alphabetical_view` AS SELECT 
 1 AS `Rank`,
 1 AS `Name`,
 1 AS `Symbol`,
 1 AS `Revenue`,
 1 AS `Revenue Growth`,
 1 AS `Gross Profit`,
 1 AS `Operating Expenses`,
 1 AS `Earnings before Tax`,
 1 AS `Net Income`,
 1 AS `EPS`,
 1 AS `Net Income Growth`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` int(11) unsigned NOT NULL,
  `last_name` text NOT NULL,
  `first_name` text NOT NULL,
  `email_address` text NOT NULL,
  `phone_number` text NOT NULL,
  `active` text NOT NULL,
  `last_update_date` text NOT NULL,
  `last_update_time` text NOT NULL,
  `total#_crypto_owned` int(10) unsigned NOT NULL DEFAULT '0',
  `total#_stock_owned` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`user_id`, `last_name`, `first_name`, `email_address`, `phone_number`, `active`, `last_update_date`, `last_update_time`, `total#_crypto_owned`, `total#_stock_owned`) VALUES (11000,'Curry','Darren','matthijs@yahoo.ca','(396) 897-7680','y','5/22/2021','10:35 AM',70,0),(11020,'Bond','Marlon','mglee@comcast.net','(877) 771-2717','y','5/14/2021','2:25 PM',0,0),(11030,'Sosa','Odin','blixem@optonline.net','(298) 838-3372','y','11/15/2020','11:25 AM',0,0),(11040,'Spence','Jakob','leocharre@sbcglobal.net','(988) 939-7298','n','3/30/2020','12:30 PM',0,0),(11050,'Wu','Leonardo','gator@live.com','(729) 271-3976','y','11/3/2020','12:47 PM',0,0),(11060,'Fitzgerald','Dalton','jesse@icloud.com','(861) 553-5508','n','1/20/2020','1:10 PM',0,0),(11070,'Roberts','Brycen','miyop@outlook.com','(208) 602-0344','y','3/10/2021','1:35 PM',0,0),(11080,'Savage','Troy','gospodin@live.com','(367) 694-9794','y','8/26/2021','8:34 AM',0,0),(11090,'Turner','Stanley','curly@hotmail.com','(848) 217-4622','y','9/24/2020','2:40 PM',0,0),(11100,'Bowers','Kelvin','dunstan@verizon.net','(615) 374-4180','n','3/1/2020','2:33 PM',0,0),(11110,'Edwards','Dale','pplinux@sbcglobal.net','(837) 335-8818','n','12/1/2021','1:57 PM',0,0),(11120,'Wade','Griffin','presoff@verizon.net','(553) 523-2244','y','5/29/2020','1:56 PM',0,0),(11130,'Anderson','Jovanny','frode@aol.com','(309) 602-7254','n','9/19/2020','11:50 AM',0,0),(11140,'Salazar','Jerry','rogerspl@mac.com','(419) 408-6981','n','4/1/2021','9:18 AM',0,0),(11150,'Mcneil','Tyree','hermes@gmail.com','(507) 874-3837','n','12/23/2020','12:24 PM',0,0),(11160,'Weeks','Vincent','garland@gmail.com','(521) 610-4648','y','5/28/2021','1:16 PM',0,0),(11170,'Branch','Ronnie','smallpaul@yahoo.com','(754) 254-0065','y','11/19/2021','8:44 AM',0,0),(11180,'Strong','Kaiden','ilikered@hotmail.com','(735) 440-1426','y','1/15/2020','12:31 PM',0,0),(11190,'Fletcher','Sammy','pplinux@aol.com','(266) 697-6045','y','7/16/2020','9:21 AM',0,0),(11200,'Mckee','Izaiah','jgmyers@verizon.net','(291) 889-1711','n','5/10/2021','11:01 AM',0,0),(11210,'Lopez','Brody','pmint@me.com','(889) 583-1826','n','10/13/2021','10:15 AM',0,0),(11220,'Richards','Bentley','thowell@hotmail.com','(944) 382-9284','y','3/23/2020','12:51 PM',0,0),(11230,'Erickson','Nathanael','treit@yahoo.com','(790) 714-1874','y','2/1/2021','12:46 PM',0,0),(11240,'Velez','Colt','eurohack@comcast.net','(326) 879-5181','n','3/17/2020','10:43 AM',0,0),(11250,'Rush','Peyton','alfred@yahoo.com','(826) 673-0580','y','5/7/2020','12:11 PM',0,0),(11260,'Stevens','Andres','amaranth@me.com','(701) 395-7727','n','2/25/2020','11:39 AM',0,0),(11270,'Levy','Melvin','monopole@hotmail.com','(554) 491-2021','n','8/29/2021','8:32 AM',0,0),(11280,'Oconnor','Kason','neuffer@msn.com','(533) 802-2598','y','9/1/2020','1:24 PM',0,0),(11290,'Odom','Bryant','ehood@verizon.net','(927) 611-7281','n','8/1/2020','11:04 AM',0,0),(11300,'Delacruz','Jabari','sinkou@gmail.com','(843) 511-1192','n','6/21/2021','9:13 AM',0,0),(11310,'York','Roman','wiseb@sbcglobal.net','(463) 886-2195','n','12/13/2020','12:23 PM',0,0),(11320,'Cabrera','Ryland','bahwi@sbcglobal.net','(937) 230-6492','y','6/28/2021','9:43 AM',0,0),(11330,'Warner','Jamari','nelson@att.net','(968) 476-6311','n','1/16/2021','1:09 PM',0,0),(11340,'Dickerson','Malcolm','jschauma@icloud.com','(680) 698-1270','n','4/20/2020','12:29 PM',0,0);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

--
-- Dumping events for database 'crypto_and_stock_db'
--

--
-- Dumping routines for database 'crypto_and_stock_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `11000_add_crypto_watchlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE  `11000_add_crypto_watchlist`()
BEGIN

#Checks if table exsists. Creates the unique watchlist if one does not exist.
CREATE TABLE IF NOT EXISTS `11000_crypto_watchlist` (
  `11000_cryptowatchlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crypto_symbol` varchar(5) DEFAULT NULL,
  `crypto_price` double unsigned DEFAULT NULL,
  `purchased` tinyint(4) NOT NULL DEFAULT '0',
  `quantity_owned` int(11) NOT NULL DEFAULT '0',
  `total_$_amount` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`11000_cryptowatchlist_id`),
  UNIQUE KEY `crypto_symbol_UNIQUE` (`crypto_symbol`),
  UNIQUE KEY `crypto_price_UNIQUE` (`crypto_price`),
  KEY `11000_crypto_price_idx` (`crypto_price`),
  CONSTRAINT `11000_crypto_price` FOREIGN KEY (`crypto_price`) REFERENCES `crypto_market_data` (`Price`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `11000_crypto_symbol` FOREIGN KEY (`crypto_symbol`) REFERENCES `crypto_market_data` (`Symbol`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

#Inserts values if symbol is unique to the watchlist
INSERT IGNORE INTO `11000_crypto_watchlist` (`crypto_symbol`, `crypto_price`)
VALUES ('WBTC', '61380.59'),
('BTC', '61318.96'),
('BTCB', '61297.73'),
('ETH', '4288.07'),
('BCH', '596.24');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `11000_add_stock_watchlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE  `11000_add_stock_watchlist`()
BEGIN

#Checks if table exsists. Creates the unique watchlist if one does not exist.
CREATE TABLE IF NOT EXISTS `11000_stock_watchlist`(
  `11000_stockwatchlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stock_symbol` varchar(5) DEFAULT NULL,
  `stock_price` double unsigned DEFAULT NULL,
  `purchased` tinyint(4) NOT NULL DEFAULT '0',
  `quantity_owned` int(11) NOT NULL DEFAULT '0',
  `total_$_amount` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`11000_stockwatchlist_id`),
  UNIQUE KEY `stock_symbol_UNIQUE` (`stock_symbol`),
  KEY `11000_stock_price` (`stock_price`),
  CONSTRAINT `11000_stock_price` FOREIGN KEY (`stock_price`) REFERENCES `stock_market_data` (`Price`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `11000_stock_symbol` FOREIGN KEY (`stock_symbol`) REFERENCES `stock_market_data` (`Symbol`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

#Inserts values if symbol is unique to the watchlist
INSERT IGNORE INTO `11000_stock_watchlist` (`stock_symbol`, `stock_price`)
VALUES ('AAPL', '169.85'),
('AMZN', '3541.5'),
('MSFT', '334.1'),
('FB', '324.56');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `11000_purchase_crypto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE  `11000_purchase_crypto`()
BEGIN

#Checks if table exsists. Creates the unique watchlist if one does not exist.
CREATE TABLE IF NOT EXISTS `11000_crypto_watchlist` (
  `11000_cryptowatchlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crypto_symbol` varchar(5) DEFAULT NULL,
  `crypto_price` double unsigned DEFAULT NULL,
  `purchased` tinyint(4) NOT NULL DEFAULT '0',
  `quantity_owned` int(11) NOT NULL DEFAULT '0',
  `total_$_amount` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`11000_cryptowatchlist_id`),
  UNIQUE KEY `crypto_symbol_UNIQUE` (`crypto_symbol`),
  UNIQUE KEY `crypto_price_UNIQUE` (`crypto_price`),
  KEY `11000_crypto_price_idx` (`crypto_price`),
  CONSTRAINT `11000_crypto_price` FOREIGN KEY (`crypto_price`) REFERENCES `crypto_market_data` (`Price`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `11000_crypto_symbol` FOREIGN KEY (`crypto_symbol`) REFERENCES `crypto_market_data` (`Symbol`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


#Checks if BTC is owned, if it is owned then 21 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'BTC';
IF EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'BTC' and `purchased` = 1)
THEN
UPDATE `11000_crypto_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 21
WHERE
    `crypto_symbol` = 'BTC';
END IF;


#Checks if WBTC is owned, if it is owned then 3 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'WBTC';
IF EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'WBTC' and `purchased` = 1)
THEN
UPDATE `11000_crypto_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 3
WHERE
    `crypto_symbol` = 'WBTC';
END IF;


#Checks if SOL is owned, if it is owned then 11 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'SOL';
IF EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'SOL' and `purchased` = 1)
THEN
UPDATE `11000_crypto_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 11
WHERE
    `crypto_symbol` = 'SOL';
END IF;


#Checks if BTC is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'BTC' and `purchased` = 0)
THEN
UPDATE `11000_crypto_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=21
WHERE
    `crypto_symbol` = 'BTC';
END IF;


#Checks if WBTC is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'WBTC' and `purchased` = 0)
THEN
UPDATE `11000_crypto_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=3
WHERE
    `crypto_symbol` = 'WBTC';
END IF;


#Checks if SOL is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'SOL' and `purchased` = 0)
THEN
UPDATE `11000_crypto_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=21
WHERE
    `crypto_symbol` = 'SOL';
END IF;


#Checks if BTC is on the watchlist, if it is not then a new entry is inserted into the crypto watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'BTC')
THEN
INSERT IGNORE INTO `11000_crypto_watchlist` (`crypto_symbol`, `crypto_price`, `purchased`, `quantity_owned`)
VALUES ('BTC', '61318.96', '1', '21');
END IF;


#Checks if WBTC is on the watchlist, if it is not then a new entry is inserted into the crypto watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'WBTC')
THEN
INSERT IGNORE INTO `11000_crypto_watchlist` (`crypto_symbol`, `crypto_price`, `purchased`, `quantity_owned`)
VALUES ('WBTC', '61380.59', '1', '3');
END IF;


#Checks if SOL is on the watchlist, if it is not then a new entry is inserted into the crypto watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11000_crypto_watchlist WHERE `crypto_symbol` = 'SOL')
THEN
INSERT IGNORE INTO `11000_crypto_watchlist` (`crypto_symbol`, `crypto_price`, `purchased`, `quantity_owned`)
VALUES ('SOL', '202.42', '1', '11');
END IF;


#Calculates total quantity of owned crypto and updates the `total#_crypto_owned` field in the user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_crypto_owned` = (SELECT SUM(`quantity_owned`)  FROM 11000_crypto_watchlist WHERE `purchased` = 1)
WHERE `user_id` = 11000;


#Updates the total dollar amount of each owned asset
set @i = 0;
set @n = (SELECT COUNT(*) FROM `11000_crypto_watchlist`);
WHILE @i<@n+1 DO 
SELECT `quantity_owned` INTO @current_quantity FROM `11000_crypto_watchlist` WHERE `11000_cryptowatchlist_id` = @i ;
SELECT `crypto_symbol` INTO @current_symbol FROM `11000_crypto_watchlist` WHERE `11000_cryptowatchlist_id` = @i ;
SELECT `price` INTO @crypto_price FROM `crypto_market_data` WHERE `Symbol` LIKE @current_symbol;

UPDATE `crypto_and_stock_db`.`11000_crypto_watchlist`
SET `total_$_amount` = ROUND(@current_quantity * @crypto_price, 2)
WHERE `11000_cryptowatchlist_id` = @i ;
  SET @i = @i + 1;
END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `11000_purchase_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE  `11000_purchase_stock`()
BEGIN

#Checks if table exsists. Creates the unique watchlist if one does not exist.
CREATE TABLE IF NOT EXISTS `11000_stock_watchlist`(
  `11000_stockwatchlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stock_symbol` varchar(5) DEFAULT NULL,
  `stock_price` double unsigned DEFAULT NULL,
  `purchased` tinyint(4) NOT NULL DEFAULT '0',
  `quantity_owned` int(11) NOT NULL DEFAULT '0',
  `total_$_amount` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`11000_stockwatchlist_id`),
  UNIQUE KEY `stock_symbol_UNIQUE` (`stock_symbol`),
  KEY `11000_stock_price` (`stock_price`),
  CONSTRAINT `11000_stock_price` FOREIGN KEY (`stock_price`) REFERENCES `stock_market_data` (`Price`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `11000_stock_symbol` FOREIGN KEY (`stock_symbol`) REFERENCES `stock_market_data` (`Symbol`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


#Checks if AAPL is owned, if it is owned then 4 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11000_stock_watchlist WHERE `stock_symbol` = 'AAPL';
IF EXISTS ( SELECT 1 FROM 11000_stock_watchlist WHERE `stock_symbol` = 'AAPL' and `purchased` = 1)
THEN
UPDATE `11000_stock_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 4
WHERE
    `stock_symbol` = 'AAPL';
END IF;


#Checks if FB is owned, if it is owned then 16 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11000_stock_watchlist WHERE `stock_symbol` = 'FB';
IF EXISTS ( SELECT 1 FROM 11000_stock_watchlist WHERE `stock_symbol` = 'FB' and `purchased` = 1)
THEN
UPDATE `11000_stock_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 16
WHERE
    `stock_symbol` = 'FB';
END IF;


#Checks if AAPL is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11000_stock_watchlist WHERE `stock_symbol` = 'AAPL' and `purchased` = 0)
THEN
UPDATE `11000_stock_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=4
WHERE
    `stock_symbol` = 'AAPL';
END IF;


#Checks if FB is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11000_stock_watchlist WHERE `stock_symbol` = 'FB' and `purchased` = 0)
THEN
UPDATE `11000_stock_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=16
WHERE
    `stock_symbol` = 'FB';
END IF;


#Checks if AAPL is on the watchlist, if it is not then a new entry is inserted into the stock watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11000_stock_watchlist WHERE `stock_symbol` = 'AAPL')
THEN
INSERT IGNORE INTO `11000_stock_watchlist` (`stock_symbol`, `stock_price`, `purchased`, `quantity_owned`)
VALUES ('AAPL', '169.85', '1', '4');
END IF;


#Checks if FB is on the watchlist, if it is not then a new entry is inserted into the stock watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11000_stock_watchlist WHERE `stock_symbol` = 'FB')
THEN
INSERT IGNORE INTO `11000_stock_watchlist` (`stock_symbol`, `stock_price`, `purchased`, `quantity_owned`)
VALUES ('FB', '324.56', '1', '16');
END IF;


#Calculates total quantity of owned stocks and updates the `total#_stock_owned` field in the user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_stock_owned` = (SELECT SUM(`quantity_owned`)  FROM 11000_stock_watchlist WHERE `purchased` = 1)
WHERE `user_id` = 11000;


#Updates the total dollar amount of each owned asset
set @i = 0;
set @n = (SELECT COUNT(*) FROM `11000_stock_watchlist`);
WHILE @i<@n+1 DO 
SELECT `quantity_owned` INTO @current_quantity FROM `11000_stock_watchlist` WHERE `11000_stockwatchlist_id` = @i ;
SELECT `stock_symbol` INTO @current_symbol FROM `11000_stock_watchlist` WHERE `11000_stockwatchlist_id` = @i ;
SELECT `Price` INTO @crypto_price FROM `stock_market_data` WHERE `Symbol` LIKE @current_symbol;

UPDATE `crypto_and_stock_db`.`11000_stock_watchlist`
SET `total_$_amount` = ROUND(@current_quantity * @crypto_price, 2)
WHERE `11000_stockwatchlist_id` = @i ;
  SET @i = @i + 1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `11020_add_crypto_watchlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE  `11020_add_crypto_watchlist`()
BEGIN

#Checks if table exsists. Creates the unique watchlist if one does not exist.
CREATE TABLE IF NOT EXISTS `11020_crypto_watchlist` (
  `11020_cryptowatchlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crypto_symbol` varchar(5) DEFAULT NULL,
  `crypto_price` double unsigned DEFAULT NULL,
  `purchased` tinyint(4) NOT NULL DEFAULT '0',
  `quantity_owned` int(11) NOT NULL DEFAULT '0',
  `total_$_amount` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`11020_cryptowatchlist_id`),
  UNIQUE KEY `crypto_symbol_UNIQUE` (`crypto_symbol`),
  UNIQUE KEY `crypto_price_UNIQUE` (`crypto_price`),
  KEY `11020_crypto_price_idx` (`crypto_price`),
  CONSTRAINT `11020_crypto_price` FOREIGN KEY (`crypto_price`) REFERENCES `crypto_market_data` (`Price`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `11020_crypto_symbol` FOREIGN KEY (`crypto_symbol`) REFERENCES `crypto_market_data` (`Symbol`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

#Insert Values 
INSERT IGNORE INTO `11020_crypto_watchlist` (`crypto_symbol`, `crypto_price`)
VALUES ('CRO','0.21'),
('MANA', '2.89'),
('EGLD', '270.94'),
('NEAR', '10.16'),
('XTZ', '6.32'),
('HBAR', '0.41'),
('BTCB', '61297.73'),
('DAI',  '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `11020_purchase_crypto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE  `11020_purchase_crypto`()
BEGIN

#Checks if table exsists. Creates the unique watchlist if one does not exist.
CREATE TABLE IF NOT EXISTS `11020_crypto_watchlist` (
  `11020_cryptowatchlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `crypto_symbol` varchar(5) DEFAULT NULL,
  `crypto_price` double unsigned DEFAULT NULL,
  `purchased` tinyint(4) NOT NULL DEFAULT '0',
  `quantity_owned` int(11) NOT NULL DEFAULT '0',
  `total_$_amount` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`11020_cryptowatchlist_id`),
  UNIQUE KEY `crypto_symbol_UNIQUE` (`crypto_symbol`),
  UNIQUE KEY `crypto_price_UNIQUE` (`crypto_price`),
  KEY `11020_crypto_price_idx` (`crypto_price`),
  CONSTRAINT `11020_crypto_price` FOREIGN KEY (`crypto_price`) REFERENCES `crypto_market_data` (`Price`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `11020_crypto_symbol` FOREIGN KEY (`crypto_symbol`) REFERENCES `crypto_market_data` (`Symbol`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

#Checks if MANA is owned, if it is owned then 7 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'MANA';
IF EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'MANA' and `purchased` = 1)
THEN
UPDATE `11020_crypto_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 7
WHERE
    `crypto_symbol` = 'MANA';
END IF;


#Checks if NEAR is owned, if it is owned then 3 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'NEAR';
IF EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'NEAR' and `purchased` = 1)
THEN
UPDATE `11020_crypto_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 3
WHERE
    `crypto_symbol` = 'NEAR';
END IF;


#Checks if HBAR is owned, if it is owned then 39 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'HBAR';
IF EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'HBAR' and `purchased` = 1)
THEN
UPDATE `11020_crypto_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 39
WHERE
    `crypto_symbol` = 'HBAR';
END IF;


#Checks if MANA is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'MANA' and `purchased` = 0)
THEN
UPDATE `11020_crypto_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=7
WHERE
    `crypto_symbol` = 'MANA';
END IF;


#Checks if NEAR is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'NEAR' and `purchased` = 0)
THEN
UPDATE `11020_crypto_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=3
WHERE
    `crypto_symbol` = 'NEAR';
END IF;


#Checks if SOL is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'HBAR' and `purchased` = 0)
THEN
UPDATE `11020_crypto_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=39
WHERE
    `crypto_symbol` = 'HBAR';
END IF;


#Checks if MANA is on the watchlist, if it is not then a new entry is inserted into the crypto watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'BTC')
THEN
INSERT IGNORE INTO `11020_crypto_watchlist` (`crypto_symbol`, `crypto_price`, `purchased`, `quantity_owned`)
VALUES ('MANA', '2.89', '1', '7');
END IF;


#Checks if NEAR is on the watchlist, if it is not then a new entry is inserted into the crypto watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'WBTC')
THEN
INSERT IGNORE INTO `11020_crypto_watchlist` (`crypto_symbol`, `crypto_price`, `purchased`, `quantity_owned`)
VALUES ('NEAR', '10.16', '1', '3');
END IF;


#Checks if HBAR is on the watchlist, if it is not then a new entry is inserted into the crypto watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11020_crypto_watchlist WHERE `crypto_symbol` = 'SOL')
THEN
INSERT IGNORE INTO `11020_crypto_watchlist` (`crypto_symbol`, `crypto_price`, `purchased`, `quantity_owned`)
VALUES ('HBAR', '.41', '1', '39');
END IF;


#Calculates total quantity of owned crypto and updates the `total#_crypto_owned` field in the user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_crypto_owned` = (SELECT SUM(`quantity_owned`)  FROM 11020_crypto_watchlist WHERE `purchased` = 1)
WHERE `user_id` = 11020;


#Updates the total dollar amount of each owned asset
set @i = 0;
set @n = (SELECT COUNT(*) FROM `11020_crypto_watchlist`);
WHILE @i<@n+1 DO 
SELECT `quantity_owned` INTO @current_quantity FROM `11020_crypto_watchlist` WHERE `11020_cryptowatchlist_id` = @i ;
SELECT `crypto_symbol` INTO @current_symbol FROM `11020_crypto_watchlist` WHERE `11020_cryptowatchlist_id` = @i ;
SELECT `price` INTO @crypto_price FROM `crypto_market_data` WHERE `Symbol` LIKE @current_symbol;

UPDATE `crypto_and_stock_db`.`11020_crypto_watchlist`
SET `total_$_amount` = ROUND(@current_quantity * @crypto_price, 2)
WHERE `11020_cryptowatchlist_id` = @i ;
  SET @i = @i + 1;
END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `11030_purchase_stock_` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE  `11030_purchase_stock_`()
BEGIN

#Checks if table exsists. Creates the unique watchlist if one does not exist.
CREATE TABLE IF NOT EXISTS `11030_stock_watchlist` (
  `11030_stockwatchlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stock_symbol` varchar(5) DEFAULT NULL,
  `stock_price` double unsigned DEFAULT NULL,
  `purchased` tinyint(4) NOT NULL DEFAULT '0',
  `quantity_owned` int(11) NOT NULL DEFAULT '0',
  `total_$_amount` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`11030_stockwatchlist_id`),
  UNIQUE KEY `stock_symbol_UNIQUE` (`stock_symbol`),
  KEY `11030_stock_price` (`stock_price`),
  CONSTRAINT `11030_stock_price` FOREIGN KEY (`stock_price`) REFERENCES `stock_market_data` (`Price`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `11030_stock_symbol` FOREIGN KEY (`stock_symbol`) REFERENCES `stock_market_data` (`Symbol`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


#Checks if AVGO is owned, if it is owned then 2 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11030_stock_watchlist WHERE `stock_symbol` = 'AVGO';
IF EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'AVGO' and `purchased` = 1)
THEN
UPDATE `11030_stock_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 2
WHERE
    `stock_symbol` = 'AVGO';
END IF;


#Checks if AMZN is owned, if it is owned then 17 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11030_stock_watchlist WHERE `stock_symbol` = 'AMZN';
IF EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'AMZN' and `purchased` = 1)
THEN
UPDATE `11030_stock_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 17
WHERE
    `stock_symbol` = 'AMZN';
END IF;

#Checks if MU is owned, if it is owned then 9 is added to current owned quantity
SELECT `quantity_owned` INTO @current_quantity FROM 11030_stock_watchlist WHERE `stock_symbol` = 'MU';
IF EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'MU' and `purchased` = 1)
THEN
UPDATE `11030_stock_watchlist` 
SET 
  `quantity_owned`= @current_quantity + 9
WHERE
    `stock_symbol` = 'MU';
END IF;


#Checks if AVGO is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'AVGO' and `purchased` = 0)
THEN
UPDATE `11030_stock_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=2
WHERE
    `stock_symbol` = 'AAPL';
END IF;


#Checks if AMZN is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'AMZN' and `purchased` = 0)
THEN
UPDATE `11030_stock_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=17
WHERE
    `stock_symbol` = 'FB';
END IF;

#Checks if MU is already on the watchlist, if it is then the current entry is updated
IF EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'MU' and `purchased` = 0)
THEN
UPDATE `11030_stock_watchlist` 
SET 
  `purchased` = 1,
  `quantity_owned`=9
WHERE
    `stock_symbol` = 'MU';
END IF;


#Checks if AVGO is on the watchlist, if it is not then a new entry is inserted into the stock watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'AVGO')
THEN
INSERT IGNORE INTO `11030_stock_watchlist` (`stock_symbol`, `stock_price`, `purchased`, `quantity_owned`)
VALUES ('AVGO', '592.07', '1', '2');
END IF;


#Checks if AMZN is on the watchlist, if it is not then a new entry is inserted into the stock watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'AMZN')
THEN
INSERT IGNORE INTO `11030_stock_watchlist` (`stock_symbol`, `stock_price`, `purchased`, `quantity_owned`)
VALUES ('AMZN', '3541.5', '1', '17');
END IF;


#Checks if MU is on the watchlist, if it is not then a new entry is inserted into the stock watchlist table
IF NOT EXISTS ( SELECT 1 FROM 11030_stock_watchlist WHERE `stock_symbol` = 'MU')
THEN
INSERT IGNORE INTO `11030_stock_watchlist` (`stock_symbol`, `stock_price`, `purchased`, `quantity_owned`)
VALUES ('MU', '86.52', '1', '9');
END IF;


#Calculates total quantity of owned stocks and updates the `total#_stock_owned` field in the user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_stock_owned` = (SELECT SUM(`quantity_owned`)  FROM 11030_stock_watchlist WHERE `purchased` = 1)
WHERE `user_id` = 11030;

#Updates the total dollar amount of each owned asset
set @i = 0;
set @n = (SELECT COUNT(*) FROM `11030_stock_watchlist`);
WHILE @i<@n+1 DO 
SELECT `quantity_owned` INTO @current_quantity FROM `11030_stock_watchlist` WHERE `11030_stockwatchlist_id` = @i ;
SELECT `stock_symbol` INTO @current_symbol FROM `11030_stock_watchlist` WHERE `11030_stockwatchlist_id` = @i ;
SELECT `Price` INTO @crypto_price FROM `stock_market_data` WHERE `Symbol` LIKE @current_symbol;

UPDATE `crypto_and_stock_db`.`11030_stock_watchlist`
SET `total_$_amount` = ROUND(@current_quantity * @crypto_price, 2)
WHERE `11030_stockwatchlist_id` = @i ;
  SET @i = @i + 1;
END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Reset_DB_For_Demo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE  `Reset_DB_For_Demo`()
BEGIN
/* 
Resets crypto_and_stock_db to better demonstrate the functionalities of our project
*/

#Blank handler block to skip over nonexistent tables
DECLARE CONTINUE HANDLER FOR 1051 BEGIN END;

#Sets number of cryptos owned to 0 in user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_crypto_owned` = 0
WHERE `user_id` = 11000;

#Sets number of stocks owned to 0 in user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_stock_owned` = 0
WHERE `user_id` = 11000;

#Sets number of cryptos owned to 0 in user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_crypto_owned` = 0
WHERE `user_id` = 11020;

#Sets number of stocks owned to 0 in user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_stock_owned` = 0
WHERE `user_id` = 11020;

#Sets number of cryptos owned to 0 in user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_crypto_owned` = 0
WHERE `user_id` = 11030;

#Sets number of stocks owned to 0 in user_info table
UPDATE `crypto_and_stock_db`.`user_info`
SET `total#_stock_owned` = 0
WHERE `user_id` = 11030;

#Drops 11000 Crypto Table
DROP TABLE `crypto_and_stock_db`.`11000_crypto_watchlist`;

#Drops 11000 Stock Table
DROP TABLE `crypto_and_stock_db`.`11000_stock_watchlist`;

#Drops 11020 Crypto Table
DROP TABLE `crypto_and_stock_db`.`11020_crypto_watchlist`;

#Drops 11030 Stock Table
DROP TABLE `crypto_and_stock_db`.`11030_stock_watchlist`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `crypto_price_ascending_view`
--

/*!50001 DROP VIEW IF EXISTS `crypto_price_ascending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `crypto_price_ascending_view` AS select `crypto_market_data`.`Rank` AS `Rank`,`crypto_market_data`.`Name` AS `Name`,`crypto_market_data`.`Symbol` AS `Symbol`,`crypto_market_data`.`Market Cap` AS `Market Cap`,`crypto_market_data`.`Price` AS `Price`,`crypto_market_data`.`Circulating Supply` AS `Circulating Supply`,`crypto_market_data`.`Volume (24h)` AS `Volume (24h)`,`crypto_market_data`.`% 1h` AS `% 1h`,`crypto_market_data`.`% 24h` AS `% 24h`,`crypto_market_data`.`% 7d` AS `% 7d` from `crypto_market_data` order by `crypto_market_data`.`Price` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `crypto_price_descending_view`
--

/*!50001 DROP VIEW IF EXISTS `crypto_price_descending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `crypto_price_descending_view` AS select `crypto_market_data`.`Rank` AS `Rank`,`crypto_market_data`.`Name` AS `Name`,`crypto_market_data`.`Symbol` AS `Symbol`,`crypto_market_data`.`Market Cap` AS `Market Cap`,`crypto_market_data`.`Price` AS `Price`,`crypto_market_data`.`Circulating Supply` AS `Circulating Supply`,`crypto_market_data`.`Volume (24h)` AS `Volume (24h)`,`crypto_market_data`.`% 1h` AS `% 1h`,`crypto_market_data`.`% 24h` AS `% 24h`,`crypto_market_data`.`% 7d` AS `% 7d` from `crypto_market_data` order by `crypto_market_data`.`Price` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `crypto_rank_ascending_view`
--

/*!50001 DROP VIEW IF EXISTS `crypto_rank_ascending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `crypto_rank_ascending_view` AS select `crypto_market_data`.`Rank` AS `Rank`,`crypto_market_data`.`Name` AS `Name`,`crypto_market_data`.`Symbol` AS `Symbol`,`crypto_market_data`.`Market Cap` AS `Market Cap`,`crypto_market_data`.`Price` AS `Price`,`crypto_market_data`.`Circulating Supply` AS `Circulating Supply`,`crypto_market_data`.`Volume (24h)` AS `Volume (24h)`,`crypto_market_data`.`% 1h` AS `% 1h`,`crypto_market_data`.`% 24h` AS `% 24h`,`crypto_market_data`.`% 7d` AS `% 7d` from `crypto_market_data` order by `crypto_market_data`.`Rank` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `crypto_rank_descending_view`
--

/*!50001 DROP VIEW IF EXISTS `crypto_rank_descending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `crypto_rank_descending_view` AS select `crypto_market_data`.`Rank` AS `Rank`,`crypto_market_data`.`Name` AS `Name`,`crypto_market_data`.`Symbol` AS `Symbol`,`crypto_market_data`.`Market Cap` AS `Market Cap`,`crypto_market_data`.`Price` AS `Price`,`crypto_market_data`.`Circulating Supply` AS `Circulating Supply`,`crypto_market_data`.`Volume (24h)` AS `Volume (24h)`,`crypto_market_data`.`% 1h` AS `% 1h`,`crypto_market_data`.`% 24h` AS `% 24h`,`crypto_market_data`.`% 7d` AS `% 7d` from `crypto_market_data` order by `crypto_market_data`.`Rank` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `crypto_symbol_alphabetical_view`
--

/*!50001 DROP VIEW IF EXISTS `crypto_symbol_alphabetical_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `crypto_symbol_alphabetical_view` AS select `crypto_market_data`.`Rank` AS `Rank`,`crypto_market_data`.`Name` AS `Name`,`crypto_market_data`.`Symbol` AS `Symbol`,`crypto_market_data`.`Market Cap` AS `Market Cap`,`crypto_market_data`.`Price` AS `Price`,`crypto_market_data`.`Circulating Supply` AS `Circulating Supply`,`crypto_market_data`.`Volume (24h)` AS `Volume (24h)`,`crypto_market_data`.`% 1h` AS `% 1h`,`crypto_market_data`.`% 24h` AS `% 24h`,`crypto_market_data`.`% 7d` AS `% 7d` from `crypto_market_data` order by `crypto_market_data`.`Symbol` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `crypto_symbol_reverse_alphabetical_view`
--

/*!50001 DROP VIEW IF EXISTS `crypto_symbol_reverse_alphabetical_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `crypto_symbol_reverse_alphabetical_view` AS select `crypto_market_data`.`Rank` AS `Rank`,`crypto_market_data`.`Name` AS `Name`,`crypto_market_data`.`Symbol` AS `Symbol`,`crypto_market_data`.`Market Cap` AS `Market Cap`,`crypto_market_data`.`Price` AS `Price`,`crypto_market_data`.`Circulating Supply` AS `Circulating Supply`,`crypto_market_data`.`Volume (24h)` AS `Volume (24h)`,`crypto_market_data`.`% 1h` AS `% 1h`,`crypto_market_data`.`% 24h` AS `% 24h`,`crypto_market_data`.`% 7d` AS `% 7d` from `crypto_market_data` order by `crypto_market_data`.`Symbol` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_EPS_descending_view`
--

/*!50001 DROP VIEW IF EXISTS `stock_EPS_descending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `stock_EPS_descending_view` AS select `stock_market_data`.`Rank` AS `Rank`,`stock_market_data`.`Name` AS `Name`,`stock_market_data`.`Symbol` AS `Symbol`,`stock_market_data`.`Revenue` AS `Revenue`,`stock_market_data`.`Revenue Growth` AS `Revenue Growth`,`stock_market_data`.`Gross Profit` AS `Gross Profit`,`stock_market_data`.`Operating Expenses` AS `Operating Expenses`,`stock_market_data`.`Earnings before Tax` AS `Earnings before Tax`,`stock_market_data`.`Net Income` AS `Net Income`,`stock_market_data`.`EPS` AS `EPS`,`stock_market_data`.`Net Income Growth` AS `Net Income Growth` from `stock_market_data` order by `stock_market_data`.`EPS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_grossprofit_descending_view`
--

/*!50001 DROP VIEW IF EXISTS `stock_grossprofit_descending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `stock_grossprofit_descending_view` AS select `stock_market_data`.`Rank` AS `Rank`,`stock_market_data`.`Name` AS `Name`,`stock_market_data`.`Symbol` AS `Symbol`,`stock_market_data`.`Revenue` AS `Revenue`,`stock_market_data`.`Revenue Growth` AS `Revenue Growth`,`stock_market_data`.`Gross Profit` AS `Gross Profit`,`stock_market_data`.`Operating Expenses` AS `Operating Expenses`,`stock_market_data`.`Earnings before Tax` AS `Earnings before Tax`,`stock_market_data`.`Net Income` AS `Net Income`,`stock_market_data`.`EPS` AS `EPS`,`stock_market_data`.`Net Income Growth` AS `Net Income Growth` from `stock_market_data` order by `stock_market_data`.`Gross Profit` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_rank_ascending_view`
--

/*!50001 DROP VIEW IF EXISTS `stock_rank_ascending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `stock_rank_ascending_view` AS select `stock_market_data`.`Rank` AS `Rank`,`stock_market_data`.`Name` AS `Name`,`stock_market_data`.`Symbol` AS `Symbol`,`stock_market_data`.`Revenue` AS `Revenue`,`stock_market_data`.`Revenue Growth` AS `Revenue Growth`,`stock_market_data`.`Gross Profit` AS `Gross Profit`,`stock_market_data`.`Operating Expenses` AS `Operating Expenses`,`stock_market_data`.`Earnings before Tax` AS `Earnings before Tax`,`stock_market_data`.`Net Income` AS `Net Income`,`stock_market_data`.`EPS` AS `EPS`,`stock_market_data`.`Net Income Growth` AS `Net Income Growth` from `stock_market_data` order by `stock_market_data`.`Rank` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_rank_descending_view`
--

/*!50001 DROP VIEW IF EXISTS `stock_rank_descending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `stock_rank_descending_view` AS select `stock_market_data`.`Rank` AS `Rank`,`stock_market_data`.`Name` AS `Name`,`stock_market_data`.`Symbol` AS `Symbol`,`stock_market_data`.`Revenue` AS `Revenue`,`stock_market_data`.`Revenue Growth` AS `Revenue Growth`,`stock_market_data`.`Gross Profit` AS `Gross Profit`,`stock_market_data`.`Operating Expenses` AS `Operating Expenses`,`stock_market_data`.`Earnings before Tax` AS `Earnings before Tax`,`stock_market_data`.`Net Income` AS `Net Income`,`stock_market_data`.`EPS` AS `EPS`,`stock_market_data`.`Net Income Growth` AS `Net Income Growth` from `stock_market_data` order by `stock_market_data`.`Rank` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_symbol_alphabetical_view`
--

/*!50001 DROP VIEW IF EXISTS `stock_symbol_alphabetical_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `stock_symbol_alphabetical_view` AS select `stock_market_data`.`Rank` AS `Rank`,`stock_market_data`.`Name` AS `Name`,`stock_market_data`.`Symbol` AS `Symbol`,`stock_market_data`.`Revenue` AS `Revenue`,`stock_market_data`.`Revenue Growth` AS `Revenue Growth`,`stock_market_data`.`Gross Profit` AS `Gross Profit`,`stock_market_data`.`Operating Expenses` AS `Operating Expenses`,`stock_market_data`.`Earnings before Tax` AS `Earnings before Tax`,`stock_market_data`.`Net Income` AS `Net Income`,`stock_market_data`.`EPS` AS `EPS`,`stock_market_data`.`Net Income Growth` AS `Net Income Growth` from `stock_market_data` order by `stock_market_data`.`Symbol` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stock_symbol_reverse_alphabetical_view`
--

/*!50001 DROP VIEW IF EXISTS `stock_symbol_reverse_alphabetical_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `stock_symbol_reverse_alphabetical_view` AS select `stock_market_data`.`Rank` AS `Rank`,`stock_market_data`.`Name` AS `Name`,`stock_market_data`.`Symbol` AS `Symbol`,`stock_market_data`.`Revenue` AS `Revenue`,`stock_market_data`.`Revenue Growth` AS `Revenue Growth`,`stock_market_data`.`Gross Profit` AS `Gross Profit`,`stock_market_data`.`Operating Expenses` AS `Operating Expenses`,`stock_market_data`.`Earnings before Tax` AS `Earnings before Tax`,`stock_market_data`.`Net Income` AS `Net Income`,`stock_market_data`.`EPS` AS `EPS`,`stock_market_data`.`Net Income Growth` AS `Net Income Growth` from `stock_market_data` order by `stock_market_data`.`Symbol` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-09 16:42:07
