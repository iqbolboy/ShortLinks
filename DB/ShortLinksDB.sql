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

insert  into `__migrationhistory`(`MigrationId`,`ContextKey`,`Model`,`ProductVersion`) values ('201911251110298_AddShotLinksTable','ShortLinks.Migrations.Configuration','�\0\0\0\0\0\0�W�n�8}_�� �9����\"+\'c�$������!J�*I��������C�M9�c�\"`��3Μ���W�u�q��fR���`�{ �2���Y|������*�V޷F����M����1�!:y��� c��Z.L�Ȍ�T����OrzJ\0!|����eP.pI�@n\n�g2��}<�KT�f�s��؏��27L|�A%�{��Q4$��=*�4Ԡ�O\Zb��X�9nP�����k�Ϳ���dtf=!��*)���O�����Q���a�0�fm�.؋���.\"���\0�Ή���ـIc�N���P0PE��w_�9K�����b,\n����x���[�J�����Ӊ�M\0�\"���]�<�\ns~�{�h�sh3���H�\0E\r���P���ʘ�p��`�=)�(�,�z�]݀X�籏?} mvj#����KF�OO�����R� 1������P�����\Z�n�.$]RSy�P��V�BPj�`e�d<�C���¦�f��$��Ί�w�^im�����6Rq[Á�g4��Q{�X�xqň����\\�U$�[(���Մ�@����j���)ml��ԾV�f��;��F� �.=t�o����u�8]�ѳ˺tZ��l9�[v&ʩ�E6��E&�R�.��G�X���8O�z#�C}8��pL�����5$�C�C)�7	wկ+�jo�ةװ����͠�*��p����l���=ʟg`c�H̨`Ц�����3�>�\n�:凎+����l���o�Μ�qY5��1�X��]�t�]z|�kS��Q�>%F���\r������W���%:S���l�CjI��(��f��~(	|\\��L�B6π�-jD�W����&�R������.\'�o�(r��!����䅹�\Z�9ߘ~C�[9�l���v���4�ٴ������[��2uI�U8A#�r�\"�Jq P�	� ,!<B�s�w\"�/p�m8����&��_���a\'�.�t��ݷ���~��#0\n�!\0\0','6.2.0-61023');

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
