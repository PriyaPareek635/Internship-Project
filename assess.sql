-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.22-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for movedb1
CREATE DATABASE IF NOT EXISTS `movedb1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `movedb1`;

-- Dumping structure for table movedb1.allocate
CREATE TABLE IF NOT EXISTS `allocate` (
  `VM` varchar(255) default NULL,
  `Memory` varchar(255) default NULL,
  `Threshold` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.allocate: 2 rows
DELETE FROM `allocate`;
/*!40000 ALTER TABLE `allocate` DISABLE KEYS */;
INSERT INTO `allocate` (`VM`, `Memory`, `Threshold`) VALUES
	('Localvm', '49948', '50'),
	('Remotevm', '291349', '200000');
/*!40000 ALTER TABLE `allocate` ENABLE KEYS */;

-- Dumping structure for table movedb1.attacker
CREATE TABLE IF NOT EXISTS `attacker` (
  `Uname` varchar(255) default NULL,
  `Virtual` varchar(255) default NULL,
  `Fname` varchar(255) default NULL,
  `sk` varchar(255) default NULL,
  `Dat` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.attacker: 1 rows
DELETE FROM `attacker`;
/*!40000 ALTER TABLE `attacker` DISABLE KEYS */;
/*!40000 ALTER TABLE `attacker` ENABLE KEYS */;

-- Dumping structure for table movedb1.bandwidth
CREATE TABLE IF NOT EXISTS `bandwidth` (
  `VName` varchar(255) default NULL,
  `Bandwidth` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.bandwidth: 2 rows
DELETE FROM `bandwidth`;
/*!40000 ALTER TABLE `bandwidth` DISABLE KEYS */;
INSERT INTO `bandwidth` (`VName`, `Bandwidth`) VALUES
	('Localvm', '3000000'),
	('Remotevm', '5678867');
/*!40000 ALTER TABLE `bandwidth` ENABLE KEYS */;

-- Dumping structure for table movedb1.localvm
CREATE TABLE IF NOT EXISTS `localvm` (
  `Fid` int(11) NOT NULL auto_increment,
  `Fname` varchar(255) default NULL,
  `Sk` varchar(255) default NULL,
  `dt` varchar(255) default NULL,
  KEY `Fid` (`Fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.localvm: 4 rows
DELETE FROM `localvm`;
/*!40000 ALTER TABLE `localvm` DISABLE KEYS */;
INSERT INTO `localvm` (`Fid`, `Fname`, `Sk`, `dt`) VALUES
	(28, 'RemoteUser.java', '842030', '14/12/2017   13:25:34'),
	(29, 'ViewFiles.java', '488658', '14/12/2017   13:28:38'),
	(30, 'LocalFiles.java', '511574', '14/12/2017   15:07:23'),
	(31, 'ViewFiles.java', '27307', '14/12/2017   15:07:53'),
	(32, 'test.txt', '834704', '07/06/2018   13:47:03'),
	(33, 'exception.txt', '455199', '07/06/2018   14:06:53'),
	(34, 'sample.txt', '716797', '07/06/2018   14:30:29'),
	(35, 'sample.txt', '716797', '07/06/2018   14:31:11');
/*!40000 ALTER TABLE `localvm` ENABLE KEYS */;

-- Dumping structure for table movedb1.pending
CREATE TABLE IF NOT EXISTS `pending` (
  `Uname` varchar(255) default NULL,
  `Fname` varchar(255) default NULL,
  `Sk` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.pending: 0 rows
DELETE FROM `pending`;
/*!40000 ALTER TABLE `pending` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending` ENABLE KEYS */;

-- Dumping structure for table movedb1.rejected
CREATE TABLE IF NOT EXISTS `rejected` (
  `Reason` varchar(255) default NULL,
  `VM` varchar(255) default NULL,
  `Fname` varchar(255) default NULL,
  `Dt` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.rejected: 5 rows
DELETE FROM `rejected`;
/*!40000 ALTER TABLE `rejected` DISABLE KEYS */;
INSERT INTO `rejected` (`Reason`, `VM`, `Fname`, `Dt`) VALUES
	('Bandwidth', 'LocalVm', 'ViewVirtual.java', '14/12/2017   13:31:07'),
	('Bandwidth', 'LocalVm', 'End_User.java', '14/12/2017   13:32:24'),
	('Threshold', 'LocalVm', 'End_User.java', '14/12/2017   13:32:53'),
	('Bandwidth', 'RemoteVm', 'LocalFiles.java', '14/12/2017   15:09:30'),
	('Threshold', 'LocalVm', 'LocalUser.java', '14/12/2017   15:11:50'),
	('Threshold', 'LocalVm', 'ins.txt', '07/06/2018   14:24:12'),
	('Threshold', 'LocalVm', 'ins.txt', '07/06/2018   14:24:46'),
	('Threshold', 'LocalVm', 'ins.txt', '07/06/2018   14:25:51'),
	('Threshold', 'LocalVm', 'ins.txt', '07/06/2018   14:26:39'),
	('Threshold', 'LocalVm', 'test.txt', '07/06/2018   14:27:07'),
	('Threshold', 'LocalVm', 'sample.txt', '07/06/2018   14:29:23');
/*!40000 ALTER TABLE `rejected` ENABLE KEYS */;

-- Dumping structure for table movedb1.remotevm
CREATE TABLE IF NOT EXISTS `remotevm` (
  `Fid` int(11) NOT NULL auto_increment,
  `Fname` varchar(255) default NULL,
  `Sk` varchar(255) default NULL,
  `dt` varchar(255) default NULL,
  KEY `Fid` (`Fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.remotevm: 6 rows
DELETE FROM `remotevm`;
/*!40000 ALTER TABLE `remotevm` DISABLE KEYS */;
INSERT INTO `remotevm` (`Fid`, `Fname`, `Sk`, `dt`) VALUES
	(75, 'KeyGenerator.java', '214904', '14/12/2017   13:26:24'),
	(76, 'MemoryAlloc.java', '140332', '14/12/2017   13:27:40'),
	(77, 'ViewAttackers.java', '483104', '14/12/2017   13:29:25'),
	(78, 'ViewAttackers.java', '483104', '14/12/2017   13:34:02'),
	(79, 'LocalFiles.java', '383428', '14/12/2017   15:08:55'),
	(80, 'MemoryAlloc.java', '688824', '14/12/2017   15:11:04'),
	(81, 'sample.txt', '', '07/06/2018   14:35:42');
/*!40000 ALTER TABLE `remotevm` ENABLE KEYS */;

-- Dumping structure for table movedb1.restrict
CREATE TABLE IF NOT EXISTS `restrict` (
  `Uname` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.restrict: 3 rows
DELETE FROM `restrict`;
/*!40000 ALTER TABLE `restrict` DISABLE KEYS */;
INSERT INTO `restrict` (`Uname`) VALUES
	('ravi'),
	('ravi1'),
	('Manjunath');
/*!40000 ALTER TABLE `restrict` ENABLE KEYS */;

-- Dumping structure for table movedb1.server
CREATE TABLE IF NOT EXISTS `server` (
  `Vmachine` varchar(255) default NULL,
  `Fname` varchar(255) default NULL,
  `Secret` varchar(255) default NULL,
  `Dt` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table movedb1.server: 10 rows
DELETE FROM `server`;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` (`Vmachine`, `Fname`, `Secret`, `Dt`) VALUES
	('LocalVm', 'RemoteUser.java', '842030', '14/12/2017   13:25:34'),
	('RemoteVm', 'KeyGenerator.java', '214904', '14/12/2017   13:26:26'),
	('RemoteVm', 'MemoryAlloc.java', '140332', '14/12/2017   13:27:43'),
	('LocalVm', 'ViewFiles.java', '488658', '14/12/2017   13:28:38'),
	('RemoteVm', 'ViewAttackers.java', '483104', '14/12/2017   13:29:27'),
	('RemoteVm', 'ViewAttackers.java', '483104', '14/12/2017   13:34:04'),
	('LocalVm', 'LocalFiles.java', '511574', '14/12/2017   15:07:23'),
	('LocalVm', 'ViewFiles.java', '27307', '14/12/2017   15:07:53'),
	('RemoteVm', 'LocalFiles.java', '383428', '14/12/2017   15:08:57'),
	('RemoteVm', 'MemoryAlloc.java', '688824', '14/12/2017   15:11:07'),
	('LocalVm', 'test.txt', '834704', '07/06/2018   13:47:03'),
	('LocalVm', 'exception.txt', '455199', '07/06/2018   14:06:53'),
	('LocalVm', 'sample.txt', '716797', '07/06/2018   14:30:29'),
	('LocalVm', 'sample.txt', '716797', '07/06/2018   14:31:11'),
	('RemoteVm', 'sample.txt', '', '07/06/2018   14:35:45');
/*!40000 ALTER TABLE `server` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
