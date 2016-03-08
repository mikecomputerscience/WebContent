
CREATE DATABASE IF NOT EXISTS db_Job DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE db_Job;

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin` varchar(50),
  `password` varchar(50),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `tb_admin` (`id`,`admin`,`password`) VALUES 
 (1,'admin','admin');


DROP TABLE IF EXISTS `tb_cjob`;
CREATE TABLE `tb_cjob` (
  `jobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(20),
  `specialty` varchar(50),
  `job` varchar(50),
  `emolument` varchar(50),
  `ptime` datetime,
  `atime` datetime,
  `other` varchar(200),
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
 
 
 DROP TABLE IF EXISTS `tb_company`;
CREATE TABLE `tb_company` (
  `cname` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50),
  `tel` varchar(20),
  `manage` varchar(20),
  `address` varchar(100),
  `resume` LONGTEXT,
  PRIMARY KEY (`cname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `tb_sjob`;
CREATE TABLE `tb_sjob` (
  `jobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sname` varchar(20),
  `specialty` varchar(50),
  `job` varchar(50),
  `emolument` varchar(50),
  `ptime` datetime,
  `atime` datetime ,
  `other` varchar(200),
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


 DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `sname` varchar(20) NOT NULL,
  `password` varchar(50),
  `name` varchar(20),
  `age` int(10),
  `sex` bit(10),
  `birthday` datetime,
  `school` varchar(50),
  `specialty` varchar(50),
  `knowledge` varchar(20),
  `email` varchar(50),
  `resume` LONGTEXT,
  PRIMARY KEY (`sname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
