/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.33 : Database - elis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`elis` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `elis`;

/*Table structure for table `chrng_chargingdetail` */

DROP TABLE IF EXISTS `chrng_chargingdetail`;

CREATE TABLE `chrng_chargingdetail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HEADERID` bigint(20) DEFAULT NULL,
  `TESTID` bigint(20) DEFAULT NULL,
  `TESTAMNT` decimal(15,2) DEFAULT NULL,
  `TESTCODE` char(20) DEFAULT NULL,
  `PRICEID` bigint(20) DEFAULT NULL,
  `QTY` bigint(20) DEFAULT NULL,
  `OC_PERCENT` tinyint(1) DEFAULT NULL,
  `OC_AMOUNT` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chrng_chargingdetail` */

/*Table structure for table `chrng_chargingheader` */

DROP TABLE IF EXISTS `chrng_chargingheader`;

CREATE TABLE `chrng_chargingheader` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PID` char(20) DEFAULT NULL,
  `PATNAME` char(30) DEFAULT NULL,
  `AMNT` decimal(15,2) DEFAULT NULL,
  `CANCELLED` char(1) DEFAULT NULL,
  `CANCELLEDBY` bigint(20) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `PAID` char(1) DEFAULT NULL,
  `REFID` bigint(20) DEFAULT NULL,
  `REFERREDBY` int(11) DEFAULT NULL,
  `DISC_PERCENT` double DEFAULT NULL,
  `DISC_AMNT` decimal(15,2) DEFAULT NULL,
  `OC_AMNT` decimal(15,2) DEFAULT NULL,
  `NETAMNT` decimal(15,2) DEFAULT NULL,
  `RCVDAMNT` decimal(15,2) DEFAULT NULL,
  `CHANGE` decimal(15,2) DEFAULT NULL,
  `SCPERCENT` decimal(15,2) DEFAULT NULL,
  `SCDISCOUNT` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chrng_chargingheader` */

/*Table structure for table `lis_bank` */

DROP TABLE IF EXISTS `lis_bank`;

CREATE TABLE `lis_bank` (
  `ID` bigint(20) NOT NULL,
  `BANKNAME` varchar(150) DEFAULT NULL,
  `DELETED` char(1) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEDBY` bigint(20) DEFAULT NULL,
  `UPDATEDDATETIME` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_bank` */

/*Table structure for table `lis_department` */

DROP TABLE IF EXISTS `lis_department`;

CREATE TABLE `lis_department` (
  `ID` bigint(20) NOT NULL,
  `DEPTNAME` varchar(30) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEDBY` bigint(20) DEFAULT NULL,
  `UPDATEDDATETIME` datetime(6) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `DELETED` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_department` */

/*Table structure for table `lis_ir` */

DROP TABLE IF EXISTS `lis_ir`;

CREATE TABLE `lis_ir` (
  `ID` bigint(20) NOT NULL,
  `POID` int(11) DEFAULT NULL,
  `VENDORID` int(11) DEFAULT NULL,
  `VENDORNAME` varchar(50) DEFAULT NULL,
  `VENDORVAT` char(1) DEFAULT NULL,
  `DISCOUNT` decimal(10,2) DEFAULT NULL,
  `TOTALAMOUNT` decimal(10,2) DEFAULT NULL,
  `CREATEDBY` int(11) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `EDITEDBY` int(11) DEFAULT NULL,
  `EDITEDDATETIME` datetime(6) DEFAULT NULL,
  `CANCELLED` tinyint(1) DEFAULT NULL,
  `CANCELLEDBY` int(11) DEFAULT NULL,
  `CANCELLEDDATETIME` datetime(6) DEFAULT NULL,
  `POSTED` tinyint(1) DEFAULT NULL,
  `POSTEDDATETIME` datetime(6) DEFAULT NULL,
  `NOTES` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_ir` */

/*Table structure for table `lis_irdetail` */

DROP TABLE IF EXISTS `lis_irdetail`;

CREATE TABLE `lis_irdetail` (
  `ID` bigint(20) NOT NULL,
  `HEADERID` int(11) DEFAULT NULL,
  `ITEMID` int(11) DEFAULT NULL,
  `QTYPO` int(11) DEFAULT NULL,
  `QTYRCV` int(11) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL,
  `TOTALAMOUNT` decimal(10,2) DEFAULT NULL,
  `EXPIRYDATE` date DEFAULT NULL,
  `CANCELLED` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_irdetail` */

/*Table structure for table `lis_itemlist` */

DROP TABLE IF EXISTS `lis_itemlist`;

CREATE TABLE `lis_itemlist` (
  `ID` bigint(20) NOT NULL,
  `CODE` char(50) DEFAULT NULL,
  `ITEMDESCRIPTION` char(100) DEFAULT NULL,
  `ITEMTYPE` char(10) DEFAULT NULL,
  `TESTDEFID` int(11) DEFAULT NULL,
  `AMNT` decimal(15,2) DEFAULT NULL,
  `FIRSTCOST` decimal(15,2) DEFAULT NULL,
  `MIDCOST` decimal(15,2) DEFAULT NULL,
  `LASTCOST` decimal(15,2) DEFAULT NULL,
  `CANCELLEDBY` bigint(20) DEFAULT NULL,
  `CANCELLEDDATETIME` datetime(6) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `EDITEDBY` bigint(20) DEFAULT NULL,
  `EDITEDDATETIME` datetime(6) DEFAULT NULL,
  `ACTIVE` tinyint(1) DEFAULT NULL,
  `CANCELLED` tinyint(1) DEFAULT NULL,
  `OC_PERCENT` tinyint(1) DEFAULT NULL,
  `OC_AMOUNT` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_itemlist` */

/*Table structure for table `lis_labinfo` */

DROP TABLE IF EXISTS `lis_labinfo`;

CREATE TABLE `lis_labinfo` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `ADDRESS` longtext,
  `TELNO` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_labinfo` */

/*Table structure for table `lis_machine` */

DROP TABLE IF EXISTS `lis_machine`;

CREATE TABLE `lis_machine` (
  `ID` bigint(20) NOT NULL,
  `MACHINECODE` varchar(10) DEFAULT NULL,
  `MACHINENAME` varchar(30) DEFAULT NULL,
  `PORT` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_machine` */

/*Table structure for table `lis_nationality` */

DROP TABLE IF EXISTS `lis_nationality`;

CREATE TABLE `lis_nationality` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_nationality` */

/*Table structure for table `lis_orderd` */

DROP TABLE IF EXISTS `lis_orderd`;

CREATE TABLE `lis_orderd` (
  `ID` bigint(20) NOT NULL,
  `ORDERHEADERID` bigint(20) DEFAULT NULL,
  `TESTDEFID` bigint(20) DEFAULT NULL,
  `TESTDEFCODE` varchar(10) DEFAULT NULL,
  `TESTDEFDESCRIPTION` varchar(50) DEFAULT NULL,
  `ACTIVE` char(10) DEFAULT NULL,
  `DEPTID` int(11) DEFAULT NULL,
  `RESULTFLAG` char(1) DEFAULT NULL,
  `SELECT` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_orderd` */

/*Table structure for table `lis_orderh` */

DROP TABLE IF EXISTS `lis_orderh`;

CREATE TABLE `lis_orderh` (
  `ID` bigint(20) NOT NULL,
  `DATEORDERED` date DEFAULT NULL,
  `DATEORDEREDDATETIME` datetime(6) DEFAULT NULL,
  `PATINFOID` bigint(20) DEFAULT NULL,
  `PATID` varchar(20) DEFAULT NULL,
  `PATNAME` varchar(50) DEFAULT NULL,
  `PATLNAME` varchar(50) DEFAULT NULL,
  `PATFNAME` varchar(50) DEFAULT NULL,
  `PATMNAME` varchar(50) DEFAULT NULL,
  `PATSUFFIX` varchar(50) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `DATEBIRTH` date DEFAULT NULL,
  `AGEYEAR` int(11) DEFAULT NULL,
  `AGEMONTH` int(11) DEFAULT NULL,
  `AGEDAY` int(11) DEFAULT NULL,
  `CIVILSTATUS` varchar(1) DEFAULT NULL,
  `SOURCETYPE` int(11) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEDBY` bigint(20) DEFAULT NULL,
  `UPDATEDDATETIME` datetime(6) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `RCPTNO` int(11) DEFAULT NULL,
  `DELETED` tinyint(1) DEFAULT NULL,
  `SPECINDATETIME` datetime(6) DEFAULT NULL,
  `SPECINBY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_orderh` */

/*Table structure for table `lis_pathologist` */

DROP TABLE IF EXISTS `lis_pathologist`;

CREATE TABLE `lis_pathologist` (
  `ID` bigint(20) NOT NULL,
  `LICNO` varchar(20) DEFAULT NULL,
  `LASTNAME` varchar(50) DEFAULT NULL,
  `FIRSTNAME` varchar(50) DEFAULT NULL,
  `MIDDLENAME` varchar(50) DEFAULT NULL,
  `SUFFIX` varchar(10) DEFAULT NULL,
  `CANCELLED` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_pathologist` */

/*Table structure for table `lis_patientinfo` */

DROP TABLE IF EXISTS `lis_patientinfo`;

CREATE TABLE `lis_patientinfo` (
  `ID` bigint(20) NOT NULL,
  `TABLEID` bigint(20) DEFAULT NULL,
  `PATID` varchar(20) DEFAULT NULL,
  `PATLNAME` varchar(50) DEFAULT NULL,
  `PATFNAME` varchar(50) DEFAULT NULL,
  `PATMNAME` varchar(50) DEFAULT NULL,
  `PATSUFFIX` varchar(50) DEFAULT NULL,
  `PATDATEBIRTH` date DEFAULT NULL,
  `PATGENDER` varchar(1) DEFAULT NULL,
  `PATNATIONALITY` int(11) DEFAULT NULL,
  `PATHOUSENO` varchar(50) DEFAULT NULL,
  `PATSTREET` varchar(50) DEFAULT NULL,
  `PATBARANGAY` varchar(50) DEFAULT NULL,
  `PATCITY` varchar(50) DEFAULT NULL,
  `PATPROVINCE` varchar(50) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEBY` bigint(20) DEFAULT NULL,
  `UPDATEDATETIME` datetime(6) DEFAULT NULL,
  `CIVILSTATUS` varchar(1) DEFAULT NULL,
  `PATCELLNO` char(20) DEFAULT NULL,
  `DELETED` tinyint(1) DEFAULT NULL,
  `PATAGE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_patientinfo` */

/*Table structure for table `lis_po` */

DROP TABLE IF EXISTS `lis_po`;

CREATE TABLE `lis_po` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VENDORID` bigint(20) NOT NULL,
  `VENDOR` varchar(50) NOT NULL,
  `TOTALAMOUNT` decimal(10,2) NOT NULL,
  `NOTES` varchar(100) DEFAULT NULL,
  `CREATEDBY` int(11) NOT NULL,
  `CREATEDDATETIME` datetime(6) NOT NULL,
  `EDITEDBY` int(11) DEFAULT NULL,
  `EDITEDDATETIME` datetime(6) DEFAULT NULL,
  `CANCELLED` tinyint(1) NOT NULL,
  `CANCELLEDBY` int(11) DEFAULT NULL,
  `CANCELLEDDATETIME` datetime(6) DEFAULT NULL,
  `POSTED` tinyint(1) NOT NULL,
  `POSTEDDATETIME` datetime(6) DEFAULT NULL,
  `PODATE` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `lis_po` */

insert  into `lis_po`(`ID`,`VENDORID`,`VENDOR`,`TOTALAMOUNT`,`NOTES`,`CREATEDBY`,`CREATEDDATETIME`,`EDITEDBY`,`EDITEDDATETIME`,`CANCELLED`,`CANCELLEDBY`,`CANCELLEDDATETIME`,`POSTED`,`POSTEDDATETIME`,`PODATE`) values (1,1,'TEST','100.00','SDSDAS',1,'2023-01-10 23:16:16.000000',NULL,NULL,0,NULL,NULL,0,NULL,'2023-01-10');

/*Table structure for table `lis_podetail` */

DROP TABLE IF EXISTS `lis_podetail`;

CREATE TABLE `lis_podetail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HEADERID` int(11) NOT NULL,
  `ITEMID` int(11) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `UNIT` varchar(20) NOT NULL,
  `ONHAND` float NOT NULL,
  `QTY` float NOT NULL,
  `COST` decimal(15,2) NOT NULL,
  `AMOUNT` decimal(15,2) NOT NULL,
  `CANCELLED` tinyint(1) NOT NULL,
  `CANCELLEDBYID` int(11) DEFAULT NULL,
  `CANCELLEDDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_podetail` */

/*Table structure for table `lis_profile` */

DROP TABLE IF EXISTS `lis_profile`;

CREATE TABLE `lis_profile` (
  `ID` bigint(20) NOT NULL,
  `HEADERID` bigint(20) DEFAULT NULL,
  `SEQNO` int(11) DEFAULT NULL,
  `TESTDEFID` bigint(20) DEFAULT NULL,
  `DELETED` char(1) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_profile` */

/*Table structure for table `lis_refdoctor` */

DROP TABLE IF EXISTS `lis_refdoctor`;

CREATE TABLE `lis_refdoctor` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LNAME` varchar(50) DEFAULT NULL,
  `FNAME` varchar(50) DEFAULT NULL,
  `MNAME` varchar(50) DEFAULT NULL,
  `SUFFIX` char(5) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DELETED` tinyint(1) DEFAULT NULL,
  `DELETEDBY` int(11) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `CREATEDBY` int(11) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `EDITEDBY` int(11) DEFAULT NULL,
  `EDITEDDATETIME` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_refdoctor` */

/*Table structure for table `lis_resultd` */

DROP TABLE IF EXISTS `lis_resultd`;

CREATE TABLE `lis_resultd` (
  `ID` bigint(20) NOT NULL,
  `RESULTHEADERID` bigint(20) DEFAULT NULL,
  `DEPTID` bigint(20) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `TESTDEFID` bigint(20) DEFAULT NULL,
  `TESTDEFCODE` varchar(10) DEFAULT NULL,
  `TESTDEFFESCRIPTION` varchar(50) DEFAULT NULL,
  `TESTDEFUNIT` varchar(50) DEFAULT NULL,
  `TESTDEFDATATYPE` varchar(1) DEFAULT NULL,
  `TESTDEFDECIMALPLACES` int(11) DEFAULT NULL,
  `TESTDEFORDER` int(11) DEFAULT NULL,
  `RESULT` varchar(15) DEFAULT NULL,
  `RESULTNORMALVAL` varchar(15) DEFAULT NULL,
  `RESULTNORMALVALLOW` varchar(15) DEFAULT NULL,
  `RESULTNORMALUPPER` varchar(15) DEFAULT NULL,
  `RESULTPANICLOW` varchar(15) DEFAULT NULL,
  `RESULTPANICUPPER` varchar(15) DEFAULT NULL,
  `RESULTPREVIOUS` varchar(15) DEFAULT NULL,
  `RESULTPRINT` varchar(1) DEFAULT NULL,
  `MACHINERESULT` varchar(15) DEFAULT NULL,
  `RESULTUPPERVAL` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_resultd` */

/*Table structure for table `lis_resulth` */

DROP TABLE IF EXISTS `lis_resulth`;

CREATE TABLE `lis_resulth` (
  `ID` bigint(20) NOT NULL,
  `TABLEID` bigint(20) DEFAULT NULL,
  `ORDERREFID` bigint(20) DEFAULT NULL,
  `ORDERDATETIME` datetime(6) DEFAULT NULL,
  `RUNDATETIME` datetime(6) DEFAULT NULL,
  `RELEASEDDATETIME` datetime(6) DEFAULT NULL,
  `CHECKINDATETIME` datetime(6) DEFAULT NULL,
  `CHECKINBY` bigint(20) DEFAULT NULL,
  `PATINFOID` bigint(20) DEFAULT NULL,
  `PATNAME` varchar(50) DEFAULT NULL,
  `PATLNAME` varchar(50) DEFAULT NULL,
  `PATFNAME` varchar(50) DEFAULT NULL,
  `PATMNAME` varchar(50) DEFAULT NULL,
  `PATSUFFIX` varchar(50) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `PATDATEBIRTH` date DEFAULT NULL,
  `AGEYEAR` int(11) DEFAULT NULL,
  `AGEMONTH` int(11) DEFAULT NULL,
  `AGEDAY` int(11) DEFAULT NULL,
  `SOURCETYPE` int(11) DEFAULT NULL,
  `CIVILSTATUS` varchar(1) DEFAULT NULL,
  `PHYSICIANNAME` varchar(100) DEFAULT NULL,
  `PHYSICIANID` bigint(20) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEDBY` bigint(20) DEFAULT NULL,
  `UPDATEDDATETIME` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_resulth` */

/*Table structure for table `lis_sampletype` */

DROP TABLE IF EXISTS `lis_sampletype`;

CREATE TABLE `lis_sampletype` (
  `ID` int(11) NOT NULL,
  `SAMPLENAME` varchar(50) DEFAULT NULL,
  `ACTIVE` char(1) DEFAULT NULL,
  `DELETED` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_sampletype` */

/*Table structure for table `lis_sourcetype` */

DROP TABLE IF EXISTS `lis_sourcetype`;

CREATE TABLE `lis_sourcetype` (
  `ID` bigint(20) NOT NULL,
  `SOURCENAME` varchar(20) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_sourcetype` */

/*Table structure for table `lis_testdefinition` */

DROP TABLE IF EXISTS `lis_testdefinition`;

CREATE TABLE `lis_testdefinition` (
  `ID` bigint(20) NOT NULL,
  `TABLEID` bigint(20) DEFAULT NULL,
  `TESTDEFCODE` varchar(10) DEFAULT NULL,
  `TESTDEFNAME` varchar(50) DEFAULT NULL,
  `TESTDEFORDERNAME` varchar(50) DEFAULT NULL,
  `TESTDEFORDER` int(11) DEFAULT NULL,
  `TESTDEFPROFILE` varchar(1) DEFAULT NULL,
  `TESTDEFUNIT` int(11) DEFAULT NULL,
  `TESTDEFSAMPLETYPE` int(11) DEFAULT NULL,
  `TESTDEFDATATYPE` char(10) DEFAULT NULL,
  `TESTDEFDECIMALPLACE` int(11) DEFAULT NULL,
  `SUSPENDED` varchar(1) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEDBY` bigint(20) DEFAULT NULL,
  `UPDATEDDATETIME` datetime(6) DEFAULT NULL,
  `ACTIVE` char(10) DEFAULT NULL,
  `TESTDEFDEPARTMENT` int(11) DEFAULT NULL,
  `DELETED` char(1) DEFAULT NULL,
  `MINRANGE` varchar(20) DEFAULT NULL,
  `MAXRANGE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_testdefinition` */

/*Table structure for table `lis_testreference` */

DROP TABLE IF EXISTS `lis_testreference`;

CREATE TABLE `lis_testreference` (
  `ID` bigint(20) NOT NULL,
  `TESTID` bigint(20) DEFAULT NULL,
  `AGEF` int(11) DEFAULT NULL,
  `AGET` int(11) DEFAULT NULL,
  `AGETYPE` char(1) DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `MINRANGE` varchar(20) DEFAULT NULL,
  `MAXRANGE` varchar(20) DEFAULT NULL,
  `OPERATOR` varchar(50) DEFAULT NULL,
  `CONVALUE` double DEFAULT NULL,
  `CONUNITID` int(11) DEFAULT NULL,
  `DELETED` char(1) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_testreference` */

/*Table structure for table `lis_testunit` */

DROP TABLE IF EXISTS `lis_testunit`;

CREATE TABLE `lis_testunit` (
  `ID` int(11) NOT NULL,
  `UNITNAME` varchar(30) DEFAULT NULL,
  `DELETED` char(1) DEFAULT NULL,
  `DELETEDBY` int(11) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEDBY` int(11) DEFAULT NULL,
  `UPDATEDDATETIME` datetime(6) DEFAULT NULL,
  `CREATEDBY` int(11) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `ACTIVE` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_testunit` */

/*Table structure for table `lis_vendor` */

DROP TABLE IF EXISTS `lis_vendor`;

CREATE TABLE `lis_vendor` (
  `ID` bigint(20) NOT NULL,
  `VENDORNAME` varchar(150) DEFAULT NULL,
  `ADDRESS` varchar(250) DEFAULT NULL,
  `TIN` varchar(30) DEFAULT NULL,
  `VAT` char(1) DEFAULT NULL,
  `CANCELLED` char(1) DEFAULT NULL,
  `CANCELLEDBY` bigint(20) DEFAULT NULL,
  `CANCELLEDDATETIME` datetime(6) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEDBY` bigint(20) DEFAULT NULL,
  `UPDATEDDATETIME` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lis_vendor` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `ID` bigint(20) NOT NULL,
  `TABLEID` bigint(20) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `USERPASS` varchar(50) DEFAULT NULL,
  `USERFULLNAME` varchar(50) DEFAULT NULL,
  `ACTIVE` varchar(1) DEFAULT NULL,
  `CREATEDDATETIME` datetime(6) DEFAULT NULL,
  `CREATEDBY` bigint(20) DEFAULT NULL,
  `DELETEDBY` bigint(20) DEFAULT NULL,
  `DELETEDDATETIME` datetime(6) DEFAULT NULL,
  `UPDATEDBY` bigint(20) DEFAULT NULL,
  `UPDATEDDATETIME` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
