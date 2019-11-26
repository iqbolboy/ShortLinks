/*
SQLyog Ultimate v8.5 
MySQL - 5.5.5-10.3.11-MariaDB : Database - shortlinksdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shortlinksdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shortlinksdb`;

/*Table structure for table `__migrationhistory` */

DROP TABLE IF EXISTS `__migrationhistory`;

CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ContextKey` varchar(300) NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `__migrationhistory` */

insert  into `__migrationhistory`(`MigrationId`,`ContextKey`,`Model`,`ProductVersion`) values ('201911251110298_AddShotLinksTable','ShortLinks.Migrations.Configuration','‹\0\0\0\0\0\0ÍWÛnÛ8}_ ÿ è9ºÜ\"+\'cã$ˆ’¾ÓÒØ!J‘*Iö·õ¡Ÿ´¿°CİM9¶c‹\"`’Ã3ÎœıûóWøu•qï”fRŒıÓ`ä{ ™2±û…Y|üìıòáğ*ÍVŞ·FîÜÊáM¡Çş³1ù!:y†Œê c‰’Z.LÈŒĞT’³ÑèOrzJ\0!|Äò¼ğ¡†eP.pI‘@n\nÊg2®ë}<‰KTï–f sšÀØŸ¥27L|×A%ì{—œQ4$¾ğ=*„4Ô ™O\Zb£¤XÆ9nPş¸Îå”k¨Í¿èÄõdtf=!İÅ*)´‘ÙOÏëĞ÷úQöÛĞağ®0Èfm½.Ø‹ï¹Ú.\"®¬ä–\0íÎ‰×´Ù€IcÿN¼¨à¦P0PEù‰w_Ì9Kşõ£üb,\nÎû¢‰x¶±[÷Jæ Ìú®ÙÓ‰ï‘M\0â\"´÷·]®<œ\ns~æ{·hsh3¢ØHƒ\0E\r¤÷ÔPø ÓÊ˜Ìp”Ş`Ò=)Ş(Ä,Äzò½]İ€Xšç±?}ïš­ mvj#ÃòÃKF°OOéÜÿ¡èR¦ 1‘ÄÊİÇİP‘Œéÿ‘\Z¬n½.$]RSyÄP†V«BPj÷`e¶d<ÒCôºÂ¦İfÆÍ$¤œÎŠŠw‚^im³·µ¬£6Rq[Ãäg4ÏñQ{¤XïxqÅˆÑÇøí\\‘U$Ñ[(£µ¶Õ„å@—àœ¢j´ôš)ml¤çÔ¾V”f±ş;¼ãFÓ Ô.=t‘o®Øßîµu¹8]¯Ñ³ËºtZƒúl9¸[v&Ê©ÚE6‘äE&öRØ.¼–GúXíæá8OŒz#’C}8çèpL—ú îÙ5$ÎCºC)ã´7	wÕ¯+ÒjoëØ©×°®ı“Í ˜*ßÃp½°ÔÒlÿà=ÊŸg`cİHÌ¨`Ğ¦ê·ş§à“3ı>“\nÑ:å‡+¿ÁĞÀlœ÷oì…ÎœÀqY5«ç˜1àXœ­]¾tü]z|ŠkS®ïQ«>%FïÚñ‡\réÀ¾»¥W•ˆÌ%:SÙÚlùCjIÿÓ(œ€fËÂ~(	|\\ÚÈLÅB6Ï€ö-jDœWš¡ø&ôR¶ ‰Áã´.\'Èo”(r•Í!Š»Âä…¹Ô\Z²9ß˜~C²[9×lÚŞåv¥ßÃ4“Ù´ºŒ§­İ×[é›2uI£U8A#Ürİ\"İJq P¾	ä ,!<B–sÓw\"¦/pŒm8¢ŞÀ’&ë†à_Ùÿ›a\'Œ.ÍtÑİ·ŸûÄ~ïù#0\n®!\0\0','6.2.0-61023');

/*Table structure for table `shortlinks` */

DROP TABLE IF EXISTS `shortlinks`;

CREATE TABLE `shortlinks` (
  `ShortLinkID` int(11) NOT NULL AUTO_INCREMENT,
  `LongUrl` longtext DEFAULT NULL,
  `ShortUrl` longtext DEFAULT NULL,
  `RedirectCount` int(11) NOT NULL,
  `CreateDateTime` datetime NOT NULL,
  PRIMARY KEY (`ShortLinkID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `shortlinks` */

insert  into `shortlinks`(`ShortLinkID`,`LongUrl`,`ShortUrl`,`RedirectCount`,`CreateDateTime`) values (1,'https://somon.tj/','4Zq2ty',2,'2019-11-25 18:51:52'),(2,'https://forums.asp.net/t/2014163.aspx?Asp+NET+MVC+REST+API+How+to+get+Client+Domain+Name','FnC2fm',1,'2019-11-25 20:45:11'),(4,'http://orums.asp.net/t/2014163.aspx?Asp+NET+MVC+REST+API+How+to+get+Client+Domain+Name','9sArf1',2,'2019-11-25 20:45:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
