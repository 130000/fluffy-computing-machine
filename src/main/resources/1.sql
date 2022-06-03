-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: 20220516
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `english`
--

DROP TABLE IF EXISTS `english`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `english` (
  `word` varchar(255) DEFAULT NULL,
  `count` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `mean` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_2` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `english`
--

LOCK TABLES `english` WRITE;
/*!40000 ALTER TABLE `english` DISABLE KEYS */;
INSERT INTO `english` VALUES ('fierce',0,1,'猛烈的'),('eventually',0,2,'最终的'),('bid',0,3,'投标'),('deplore',2,4,'谴责；悲叹'),
('ritual',0,5,'例行公事；老规矩'),('upward',0,6,'向上的'),('embarrass',0,7,'使尴尬'),('vicinity',0,8,'周围地区'),('rouse',0,9,'惊醒；唤醒'),
('academic',1,10,'学术的'),('remainder',2,11,'剩余物'),('graze',3,12,'放牧；吃草；擦伤（皮肤）'),('optimistic',0,13,'乐观的'),
('manifest',0,14,'表明；明显的'),('weather',0,15,'天气'),('clarify',1,16,'澄清；阐明'),('plain',0,17,'平原'),
('else',0,19,'另外的'),('cigar',0,20,'雪茄烟'),('faulty',0,21,'错误的'),('fever',0,22,'发烧'),('snobbish',0,23,'势力的'),
('overall',0,24,'全面的；总体的'),('equator',0,25,'赤道'),('herb',0,28,'药草'),('fleet',0,29,'舰队，船队'),('oak',0,36,'橡树'),
('aggressive',0,38,'好胜的'),('aftermath',0,39,'（造成不好影响的）后果'),('typhoon',0,40,'台风'),('insert',0,43,'插入'),
('succession',0,44,'接替者'),('philosopher',0,45,'哲学家'),('majority',0,46,'大多数的'),('plus',0,47,'加；加上'),('shrub',0,48,'灌木'),
('remove',0,49,'删除'),('repository',1,50,'存储库'),('bloody',0,51,'流血的'),('contemplate',0,52,'思考；考虑；'),
('publication',0,53,'出版物；出版；公布'),('violate',1,55,'违反（命令）'),('archive',0,57,'存档；档案'),('bacteria',3,58,'细菌'),
('orchard',0,59,'果园'),('appetizers',0,60,'开胃菜'),('spoil',0,61,'溺爱'),('swelling',0,62,'肿胀的'),('atom',0,63,'原子'),
('heroic',1,64,'英雄的'),('pursuit',0,65,'追赶；追捕'),('surgeon',0,66,'外科医生'),('legacy',0,67,'遗产'),('cloth',0,68,'布料'),
('predominant',0,69,'占主导地位的；显著的'),('instinct',0,70,'直觉'),('tentative',0,71,'敏感的'),('combat',0,72,'格斗'),('panel',0,73,'面板'),
('disrupt',0,74,'使破裂'),('classify',0,75,'分类'),('overcoat',0,76,'长大衣'),('allocate',0,77,'分配'),('coal',0,78,'焦炭'),
('shatter',0,79,'打碎；粉碎'),('stagger',0,80,'蹒跚；踉跄'),('sober',0,81,'清醒的'),('foam',0,83,'泡沫'),('prudent',0,84,'谨慎的'),
('enthusiastic',0,85,'热情的'),('primitive',3,86,'原始的；早期的'),('elbow',0,87,'肘；用肘推'),('tray',1,88,'盘子'),('tilt',2,89,'倾斜'),
('neat',0,90,'整洁的'),('perfume',0,91,'香水'),('confer',3,93,'授予（头衔，学位）'),('abolish',3,94,'废止'),('levy',2,95,'税；征税'),
('correspondence',0,96,'通信联系；相关'),('lavatory',2,97,'盥洗室'),('antique',0,98,'古老的；古董'),('chimney',0,99,'烟囱'),
('principal',0,100,'校长；负责人；首要的；主要的'),('hire',0,101,'租'),('voyage',2,102,'航行'),('revise',2,103,'更正；订正'),
('indifferent',2,104,'不感兴趣的；冷淡的'),('nowhere',0,105,'没有任何地方'),('ballot',2,106,'投票总数；选票；使投票选举'),
('loan',0,107,'贷款；借出'),('reciprocal',0,108,'互惠的'),('denounce',2,109,'谴责；指责'),('militant',0,110,'好战的；激进分子'),
('weep',2,111,'为。。。哭泣；哀悼'),('satellite',0,112,'卫星'),('turnover',0,113,'翻转；人员更替率；营业额'),('biology',0,114,'生物学；生物特征'),
('entry',2,116,'进入；出厂；通道'),('infectious',0,117,'感染的'),('insist',2,118,'坚持'),('applaud',2,119,'鼓掌；强烈赞同'),
('meet',0,120,'运动会；遇见；适合的'),('propel',4,121,'推进'),('cohesive',0,122,'凝固的'),('rehearse',0,123,'演练'),
('provoke',3,124,'激怒；挑衅；激励'),('guidance',2,125,'引导'),('cling',2,126,'抓紧；（情感上）依恋'),('pot',0,127,'锅；种盆栽；击球入袋'),
('slight',0,128,'少量的'),('hesitate',2,129,'犹豫'),('sound',0,131,'声音；健康的；合理的；正确的；可靠的'),('suppose',0,132,'假设；推断；认为'),
('furthermore',2,133,'而且'),('satisfy',0,134,'使满意'),('doctor',0,135,'医生；博士；篡改；阉割（动物）'),('foreign',0,136,'外国的'),
('observe',0,137,'注意到；观察；庆祝；评论'),('expectation',0,138,'期望'),('habit',0,139,'习惯；（烟酒）瘾'),('greeting',0,140,'问候'),
('inward',0,141,'在内的；内心的'),('crane',1,142,'伸长脖子看；鹤；起重机；吊车'),('panorama',2,143,'全景'),('consequently',0,144,'因此'),
('obscure',0,145,'难懂的；模糊的；无名的；隐藏；'),('edition',1,147,'版本'),('naked',0,148,'裸体的；'),('accustom',0,150,'习惯于'),
('successor',0,151,'接替者'),('conceal',0,152,'隐藏'),('scarce',0,153,'缺少的'),('enroll',0,154,'征募；加入；注册'),
('current',0,155,'水流；电流；趋势；现在的'),('pledge',0,156,'誓言；保证；声明'),('hurl',2,157,'用力投掷；大声责骂；呕吐'),
('carriage',0,158,'马车；车厢'),('reform',5,159,'改革；修订'),('furnish',0,160,'供应；装备'),('contempt',0,161,'轻视；蔑视'),
('hypocrisy',2,162,'虚伪'),('gauge',2,163,'估计；厚度；测量'),('dome',0,164,'穹顶'),('jury',0,165,'陪审团'),('resent',2,166,'愤恨；怨恨'),
('screw',0,167,'螺丝钉；拧'),('motion',0,168,'运动'),('jaw',0,169,'下巴'),('slaughter',1,170,'屠宰；屠杀'),('fiction',0,171,'小说'),
('outline',0,172,'大纲；概述'),('exceptional',0,173,'杰出的'),('enquire',0,174,'询问；调查'),('overhear',0,175,'偶然听到'),
('sacred',0,176,'神圣的'),('lag',0,177,'落在后面；赶不上；间隔'),('exquisite',0,178,'精致的'),('impact',0,179,'影响'),('decrease',0,180,'减少'),
('wipe',0,181,'清除；擦'),('radiant',0,182,'喜气洋洋的；辐射的'),('axis',0,183,'轴；对称轴'),('prescription',0,184,'处方'),
('comprehensive',0,185,'全面的；综合的'),('spirit',0,186,'心灵；灵魂'),('lawn',0,187,'草坪'),('unite',0,188,'联合'),('lawsuit',0,189,'诉讼'),
('democracy',0,194,'民主');
/*!40000 ALTER TABLE `english` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-03  9:39:45
