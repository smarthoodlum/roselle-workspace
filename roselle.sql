/*
SQLyog Ultimate v8.55 
MySQL - 5.6.15 : Database - restaurant
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restaurant` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `restaurant`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `categories` */

insert  into `categories`(`id`,`title`) values (1,'Appertizer'),(2,'Salad'),(3,'Soup'),(4,'Pasta'),(5,'Omelette'),(6,'Beverages'),(7,'Western'),(8,'Japanese'),(9,'Indonesian'),(10,'Dessert'),(12,'Cupop');

/*Table structure for table `dining_tables` */

DROP TABLE IF EXISTS `dining_tables`;

CREATE TABLE `dining_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `dining_tables` */

insert  into `dining_tables`(`id`,`name`) values (1,'01'),(2,'02'),(3,'03'),(4,'04'),(5,'05'),(6,'06'),(7,'07'),(8,'08'),(9,'09'),(10,'10'),(11,'11');

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `username` varchar(100) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  PRIMARY KEY (`username`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

/*Table structure for table `menu_images` */

DROP TABLE IF EXISTS `menu_images`;

CREATE TABLE `menu_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `url` text,
  `name` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_menu_image` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `menu_images` */

insert  into `menu_images`(`id`,`menu_id`,`url`,`name`,`sequence`) values (1,116,'/resources/images//116/violin-red-rose_tn2.jpg','violin-red-rose_tn2.jpg',NULL),(2,116,'/resources/images//116/184553_4494112148664_1948406770_n.jpg','184553_4494112148664_1948406770_n.jpg',NULL);

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  `description` text,
  `category_id` int(11) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT '1',
  `flags` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_url` text,
  PRIMARY KEY (`id`),
  KEY `FK_menus` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

/*Data for the table `menus` */

insert  into `menus`(`id`,`name`,`price`,`description`,`category_id`,`availability`,`flags`,`created_at`,`updated_at`,`deleted_at`,`image_url`) values (1,'Chicken Mayo','19500','Deep fried chicken finger with spicy mayonaise',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(2,'Chicken Wrap','23500','Deep friedn chicken ala thai wrapped in pandan leaf',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(3,'Fried Champignon','17500','Deep fried breaded fresh champignon',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(4,'Bitter Ballen','18500','Deep fried hollandaise snack balls',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(5,'Calamari','25500','Deep fried squid ring served with tar-tar dressing',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(6,'Chicken Wing Drum Stick','19500','Deep fried chicken wing',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(7,'Tower Onion Ring','16500','Deep fried breaded slice onion',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(8,'Shrimp Pocket','25500','Deep friend minced shrimp wrapped in spring roll skin',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(9,'Salmon Crouquete','19500','Deep fried of salmon snack',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(10,'Fruit Salad','15500','Lettuce, apple, pinapple, melon, tomtoes with sweet mayonaise',2,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(11,'Shrimp Salad','19500','Shrimps, lettuce with cocktail dressing',2,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(12,'Chicken Sesame Seed Salad','19500','Lettuce, tomatoes, onion, cucumber and deep fried crispy chicken in sesame seed with honey mustard',2,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(13,'Tuna Fish Salad','19500','Tuna chunk, lettuce, tomatoes, cucumber, sliced celery stick, onion with cocktail dressing',2,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(14,'Mixed Salad/Garden','15500','Lettuce, tomatoes, cucumber, paprika, onion and corn kernel with cocktail dressing',2,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(15,'Great Caesar Salad','19500','Romaine, sliced chicken, sliced smoked beef, cheedar cheese, crouton with caesar dressing',1,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(16,'Cream of Chicken Soup','15500','With garlic bread and diced chicken',3,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(17,'Cream of Corn Soup','15500','With garlic bread and sweet corn kernel',3,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(18,'Goulash Soup','19500','Hungarian beef soup in hard roll',3,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(19,'Tomodachi Beef Soup','19500','Cream soup with smoked beef, corn kernel and baked puff pastry on top',3,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(20,'Spaghetti Bolognaise','35500','Served with meat sauce, garlic bread and parmesan cheese on top',4,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(21,'Spaghetti Tomodachi','39500','Served with sliced mushroom, ssmoked beef, onion, garlic bread and special tomodachi sauce',4,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(22,'Fettuccini Tiroline','35500','Served with seafood and cream sauce',4,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(23,'Fettuccini Napolitan','32500','Vegetarian pasta, served with sliced mushroom, paprika, corn kernel, garlic bread and napolitan sauce',4,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(24,'Spaghetti Aglio E Olio At Tuno','39500','Served with tuna fish chunk, garlic, chilly padi and garlic bread',4,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(25,'Omellete','27500','Choice of sliced mushroom/smoked beef/cheese served with tomatoes cherry and french fries',5,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(26,'Mixed Omelette','29500','Smoked beef, cheese and slice mushroom served with tomatoes cherry and french fries',5,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(27,'Ice Coffee Tomodachi','17500','Blended coffee mix with ice cream',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(28,'Black Forest','20500','Blended coffee with chocolate & cherry',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(29,'Strawberry Juice','17500','Blended strawberry',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(30,'Strawberry Float','20500','Blended strawberry with ice cream vanilla on top',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(31,'Strawberry Punch','17500','Blended fresh strawberry & lychee',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(32,'Tomodachi Orange','16500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(33,'Orange Juice','16500','Blended orange with ice',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(34,'Orange Lychee','17500','Blended orange and lychee',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(35,'Orange Sirsak','17500','Blended orange and soursop',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(36,'Orange Florida','17500','Blended orange with vanilla ice cream on top',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(37,'Sirsak Juice','17500','Blended sourcop',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(38,'Blueberry','25500','Blended blueberry frist',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(39,'Lychee Juice','17500','Blended canned lychee fruit with ice',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(40,'Lemon Juice','15500','Blended lemon',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(41,'Lemon Squash','17500','Squeeze lemon with water soda',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(42,'Healthy Green','15500','Blended pock coy, pinapple fruit and lemon',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(43,'Fruit Punch','17500','Blended mix fruits with ice',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(44,'Pinacolada','17500','Blended pinapple fruit with ice cream on top',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(45,'Pinapple Float','17500','Blended pinapple fruit with ice cream on top',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(46,'Shirley Temple','17500','Mix pouring grenadine syrup and sprite',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(47,'Fruit Soda','20500','Fruit cocktail and ice cream with soda water',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(48,'Milk Shake','17500','Blended milk and ice cream vanilla/strawberry/chocolate',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(49,'Banana Surprise','16500','Blended banana mix with almond peanut on top',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(50,'Hot/Ice Tea','12500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(51,'Hot/Ice Lemon Tea','13500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(52,'Black Coffee','7500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(53,'Coffee Latte','15500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(54,'Capucinno','17500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(55,'Hot Chocolate','15500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(56,'Mineral Water','10000','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(57,'Soft Drink (Coca Cola/Fanta/Sprite)','12500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(58,'Cola Float','14500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(59,'Beer','35500','',6,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(60,'Tomodachi Beef Steak','65500','Grilled tenderloin of beef with mushroom sauce served with broccoli, vichy carrot, cream of corn kernel, grattin dauphinoise potatoes and sauteed slice fresh champignon on top',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(61,'Tomodachi Beef Steak (Import)','89500','Grilled tenderloin of beef with mushroom sauce served with broccoli, vichy carrot, cream of corn kernel, grattin dauphinoise potatoes and sauteed slice fresh champignon on top',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(62,'Black Pepper Steak','59500','Grilled tenderloin of beef with pepper sauce served with carrot, string bean, baby corn and clover potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(63,'Black Pepper Steak (Import)','87500','Grilled tenderloin of beef with pepper sauce served with carrot, string bean, baby corn and clover potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(64,'Beef Tenderloin Steak','59500','Grilled tenderloin of beef with mushroom sauce served with carrot, string bean, baby corn and clover potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(65,'Beef Tenderloin Steak (Import)','87500','Grilled tenderloin of beef with mushroom sauce served with carrot, string bean, baby corn and clover potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(66,'Western Sirloin Steak','59500','Grilled sirloin of beef with mushroom sauce, served with carrot, string bean, baby corn and clover potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(67,'Western Sirloin Steak (Import)','87500','Grilled sirloin of beef with mushroom sauce, served with carrot, string bean, baby corn and clover potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(68,'Entrecote Casablanca','65500','Grilled sirloin of beef with espagnola sauce, served with broccoli, vichy carrot, gratin dauphinoise and sauted sliced fresh champignon',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(69,'Entrecote Casablanca (Import)','89500','Grilled sirloin of beef with espagnola sauce, served with broccoli, vichy carrot, gratin dauphinoise and sauted sliced fresh champignon',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(70,'Jack Wonder Steak','65500','Grilled tenderloin of beef with copa cabana sauce served with broccoli, vichy carrot, cream of corn kernel sauteed herb baby potatoes and fried egg on top',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(71,'Jack Wonder Steak (Import)','89500','Grilled tenderloin of beef with copa cabana sauce served with broccoli, vichy carrot, cream of corn kernel sauteed herb baby potatoes and fried egg on top',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(72,'Tomodachi Beef Wellington Style','65500','Grilled tenderloin of beef on crispy baked puff pastry and sauteed spinach, served with baby carrot, baby string bean, tomatoes cherry, gratin dauphinoise potatoes and espagnola sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(73,'Tomodachi Beef Wellington Style (Import)','89500','Grilled tenderloin of beef on crispy baked puff pastry and sauteed spinach, served with baby carrot, baby string bean, tomatoes cherry, gratin dauphinoise potatoes and espagnola sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(74,'Tbone Steak','110500','Grilled Australian tbone steak served with creamy broccoli, vichy carrot, sauteed herb baby potatoes, corn on the cob and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(75,'American Mix Grill','65500','Grilled tenderloin of beef, chicken breast, lamb chop beef sausages and smoked beef served with creamy broccoli, vichy carrot, sauteed herb baby potatoes, corn on the cob and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(76,'Beef Cordon Bleu','65500','Breaded and stuffed fillet of tenderloin with smoked beef, mozarella cheese served with carrot, string bean, baby corn, french fries and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(77,'Grill Tenderloin with Norwegian Salmon','72500','Grilled of tenderloin and norwegian salmon served with potatoes wrapped, sauteed baby vegetables, cream spinach with mushroom sauce and teriyaki sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(78,'Beef Sausages','37500','Served with carrot, string bean, baby corn, french fries and white snow sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(79,'Beef Stroganoff','52500','Sauteed strips tenderloin of beef, fresh mushroom paprika with brown sauce and mashed potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(80,'Beef Zurich Style','52500','Sauteed sliced tenderloin of beef, fresh mushroom with light brown sauce and mashed potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(81,'Schaslik','57500','Marinated cube tenderloin of beef, beef sausages, onion, tomatoes, paprika in skewer serverd with carrot, string bean baby corn, french fries and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(82,'Mexican Ribs','59500','Braising spare ribs of beef with barbeque sauce served with sauteed baby vegetables, spinach, mexican rice and rainbow vegetables',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(83,'Lamb Ribs Ala Milanese','59500','Braising of lamb rack with milanese sauce served with sauteed baby vegetables, bavarian potatoes and corn on the cob',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(84,'Chicken Steak','45500','Panseared breaded of chicken breast served with carrot, string bean, baby corn, french fries and white sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(85,'Chicken Ala Tomodachi','47500','Broiled breast of chicken with fresh sliced champignon and mozzarella cheese, served with carrot, string bean, baby corn, french fries and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(86,'Russian Chicken Mostovoy','45500','Grilled breast of chicken served with spinach, vichy carrot sauteed fettucini, cream corn and copa cabana sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(87,'Chicken Picata','45500','Panfried of chicken breast with parmesan cheese, egg and flour, served with carrot, string bean, baby corn, gratin dauphinoise potatoes and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(88,'Chicken Cordon Belu','49500','Panfried breaded and stuffed breast of chicken with smoked beef and mozarella cheese, served with carrot, string bean, baby corn, french fries and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(89,'Chicken Roll Fung Hi','47500','Breaded and stuffed fillet of chicken breast with fresh mushroom, mozzarella cheese and cream cheese sauce, served with carrot, string bean, baby corn and turning potatoes',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(90,'Chicken Mimosa','47500','Coating and stuffed fillet of chicken breast with white toast and mozzarella cheese, served with carrot, string bean, baby corn, sauteed fetucinni and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(91,'Kakap Steak','47500','Panfried breaded marinated fillet of akakp, served with jullienne vegetables, turning potatoes and cream cheese sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(92,'Boneless Fillet Kakap Meuniere','47500','Panfried breaded marinated fillet of kakap, served with julienne vegetables, turning potatoes and cream cheese sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(93,'Fillet Kakap Ala Romana','47500','Panfried fillet of kakap with mixed parmesan cheese egg and flour, served with julienne vegetables, turning potatoes and barbeque sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(94,'Grilled Norwegian Salmon','69500','Grilled norwegian salmon, served with julienne vegetables, turning potatoes and cream paprika sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(95,'Crispy Sesame Seed Norwegian Salmon','69500','Coating norwegian salmon with flour and sesame seed, served with sauteed baby vegetables, cream spinach, wrapped potatoes and cream cheese sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(96,'Paupietes Salmon','69500','Panseared roll salmon served with spring roll spinach, tomatoes, cherry, bavarian potatoes and cream cheese sauce',7,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(97,'Chicken Yakiniku','39500','Sauteed sliced leg of chicken with yakiniku sauce, served with fresh salad and steamed rice',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(98,'Beef Yakiniku','45500','Sauted sliced of beef with yakiniku sauce, served with fresh salad and steamed rice',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(99,'Chicken Teriyaki','39500','Sauteed sliced leg of chicken with teriyaki sauce, served with fresh salad and steamed rice',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(100,'Beef Teriyaki','45500','Sauteed sliced of beef with teriyaki sauce, served with fresh salad and steamed rice',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(101,'Salmon Teriyaki','69500','Grilled of norwegian salmon with teriyaki sauce, served with fresh salad and steamed rice',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(102,'Beef Amiyaki','59500','Grilled sirloin of beef with teriyaki sauce, served with fresh salad and steamed rice',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(103,'Beef Amiyaki (Import)','87500','Grilled sirloin of beef with teriyaki sauce, served with fresh salad and steamed rice',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(104,'Chicken Katsu','45500','Deep fried breaded leg of chicken served with fresh salad, steamed rice and katsu sauce',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(105,'Ayam Betutu','45500','Half chicken grilled with traditional balinese spice, served with steamed rice, sambal matah and plecing kacang panjang',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(106,'Nasi Campur Bali','45500','Steamed rice, with satay lilit, pindang telur, plecing kacang panjang, sapi besisit, crispy chicken skin, kacang teri and sambal matah',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(107,'Nasi Campur Uluwatu','45500','Steamed rice, with fried shrimp, pindang telur, rendang bali, chicken pelalah, sambal matah and plecing kacang panjang',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(108,'Bebek Bakar Raos','49500','1/2 ekor bebek bakar dihidangkan dengan nasi putih, lalapan dan sambal',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(109,'Ayam Bakar Bumbu Kemangi','45500','Dihidangkan dengan nasi putih dan kerupuk kampung',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(110,'Iga Bakar Jimbaran','59500','Iga bakar bumbu kecap dihidangkan dengan nasi putih dan sambal kecap',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(111,'Bebek Bengil','45500','Deep fried duck, served with steamed rice, plecing kacang panjang and sambal matah',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(112,'Sate Campur Jimbaran','45500','Balinese mix satay served with steamed rice, sambal matah and plecing kacang panjang',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(113,'Soup Buntut','49500','Special of Indonesian oxtail soup, served with steamed rice and melinjo cracker. Choice: Oxtail bakar, Oxtail goreng manis and Oxtail kuah',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(114,'Banana Flambe','19500','Scoop of vanilla ice cream, bananas in waffle bowl',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(115,'Italian Tiramisu','21000','',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(116,'Ice Cream','17500','A scoop of vanilla/strawberry/chocolate ice cream',8,1,'','2014-10-11 14:07:20','2014-10-11 14:07:20',NULL,NULL),(118,'Es Teh Panassss','20000','Teh enak',NULL,1,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `order_lines` */

DROP TABLE IF EXISTS `order_lines`;

CREATE TABLE `order_lines` (
  `order_id` bigint(20) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` text,
  KEY `FK_order_menu_order_id` (`order_id`),
  KEY `FK_order_menu_menu_id` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_lines` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) DEFAULT NULL,
  `no_person` varchar(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `order_time` timestamp NULL DEFAULT NULL,
  `ready_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_orders` (`server_id`),
  KEY `FK_orders_transactions` (`transaction_id`),
  CONSTRAINT `FK_orders_users` FOREIGN KEY (`server_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`transaction_id`,`no_person`,`server_id`,`order_time`,`ready_time`) values (1,1,'1',6,'2013-06-19 08:30:50',NULL),(2,2,'2',13,'2013-06-27 08:52:16',NULL),(3,3,'1',6,'2013-06-30 14:25:49',NULL),(4,4,'1',6,'2013-06-30 14:31:17',NULL);

/*Table structure for table `rechtspersoon` */

DROP TABLE IF EXISTS `rechtspersoon`;

CREATE TABLE `rechtspersoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` text,
  `city` varchar(100) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `rechtspersoon` */

insert  into `rechtspersoon`(`id`,`name`,`address`,`city`,`postal_code`,`website`,`email`,`phone`,`fax`,`note`) values (1,'Merqurion','Jl. Kebon Sirih Jakarta','Jakarta, DKI Jakarta',40117,'www.merqurion.com','','(123) 456-7890','(123) 456-7891','');

/*Table structure for table `reservations` */

DROP TABLE IF EXISTS `reservations`;

CREATE TABLE `reservations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) DEFAULT NULL,
  `booking_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `reservations` */

insert  into `reservations`(`id`,`customer_name`,`booking_time`) values (2,'Richky','2013-04-04 11:40:16'),(5,'Cupop','2013-04-10 17:12:03'),(6,'Ucok','2013-05-22 22:43:10'),(8,'Uprit','2013-05-28 23:07:20');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`) values (1,'CASHIER'),(2,'WAITER'),(3,'ADMIN'),(4,'CHEF'),(5,'SUPER ADMIN');

/*Table structure for table `schema_migrations` */

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `schema_migrations` */

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) DEFAULT NULL,
  `cashier_id` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `cash` double DEFAULT NULL,
  `change_due` double DEFAULT NULL,
  `settled` tinyint(4) DEFAULT '0',
  `note` text,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_transactions_rtables` (`table_name`),
  KEY `FK_transactions_users` (`cashier_id`),
  CONSTRAINT `FK_transactions_users` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`table_name`,`cashier_id`,`subtotal`,`total`,`cash`,`change_due`,`settled`,`note`,`time`) values (1,'01',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(2,'03',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(3,'none',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(4,'04',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);

/*Table structure for table `user_groups` */

DROP TABLE IF EXISTS `user_groups`;

CREATE TABLE `user_groups` (
  `user_id` int(11) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  CONSTRAINT `FK_user_groups` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_groups` */

insert  into `user_groups`(`user_id`,`group_id`) values (1,'ADMIN');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `phone` varchar(50) DEFAULT NULL,
  `photo_url` text,
  `note` text,
  `enabled` tinyint(1) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_users` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`first_name`,`last_name`,`gender`,`username`,`password`,`address`,`phone`,`photo_url`,`note`,`enabled`,`role_id`) values (1,'Orang','Itu',0,'youknowwho','12345',NULL,NULL,NULL,'',1,3),(2,'Terrorblade','',0,'terrorblade','12345','Scourge',NULL,NULL,'',1,5),(3,'Magina','',0,'magina','5994471abb1112afcc18159f6cc74b4f511b9986da59b3caf5a9c173cacfc5',NULL,NULL,NULL,NULL,1,4),(4,'Purist','Thunderwrath',0,'purist','8cb2237d0679ca88db6464eac60da96345513964',NULL,NULL,NULL,NULL,1,4),(5,'Alleria','',1,'alleria','8cb2237d0679ca88db6464eac60da96345513964',NULL,NULL,NULL,NULL,1,1),(6,'Ricky Hizkia','Ferdianto',0,'crocodile_R','8cb2237d0679ca88db6464eac60da96345513964','Cimahi',NULL,NULL,'Orangnya tengil kali',1,2),(7,'Lina','Inverse',1,'lina','8cb2237d0679ca88db6464eac60da96345513964',NULL,NULL,NULL,NULL,1,2),(8,'Mercurial','',0,'mercurial','8cb2237d0679ca88db6464eac60da96345513964',NULL,NULL,NULL,NULL,1,2),(9,'Gorgon','',1,'gorgon','8cb2237d0679ca88db6464eac60da96345513964',NULL,NULL,NULL,NULL,1,2),(10,'Luna','Moonfang',1,'luna','8cb2237d0679ca88db6464eac60da96345513964',NULL,NULL,NULL,NULL,1,2),(11,'Ulfsaar','',0,'ulfsaar','8cb2237d0679ca88db6464eac60da96345513964',NULL,NULL,NULL,NULL,1,2),(12,'Traxex','',0,'traxex','8cb2237d0679ca88db6464eac60da96345513964','Sentinel',NULL,NULL,'',1,2),(13,'Nortrom','',0,'nortrom','8cb2237d0679ca88db6464eac60da96345513964','Sentinels','0',NULL,'',1,2);

/*Table structure for table `usertable` */

DROP TABLE IF EXISTS `usertable`;

CREATE TABLE `usertable` (
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usertable` */

insert  into `usertable`(`username`,`password`) values ('crocodile_R','12345'),('magina','12345'),('terrorblade','12345'),('youknowwho','12345');

/*Table structure for table `v_user_groups` */

DROP TABLE IF EXISTS `v_user_groups`;

/*!50001 DROP VIEW IF EXISTS `v_user_groups` */;
/*!50001 DROP TABLE IF EXISTS `v_user_groups` */;

/*!50001 CREATE TABLE  `v_user_groups`(
 `username` varchar(100) ,
 `group_name` varchar(100) 
)*/;

/*View structure for view v_user_groups */

/*!50001 DROP TABLE IF EXISTS `v_user_groups` */;
/*!50001 DROP VIEW IF EXISTS `v_user_groups` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_groups` AS (select `u`.`username` AS `username`,`r`.`name` AS `group_name` from (`users` `u` join `roles` `r` on((`r`.`id` = `u`.`role_id`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
