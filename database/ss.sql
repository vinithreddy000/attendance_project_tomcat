/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - attendence_project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`attendence_project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `attendence_project`;

/*Table structure for table `avg_presenty` */

DROP TABLE IF EXISTS `avg_presenty`;

CREATE TABLE `avg_presenty` (
  `roll_no` varchar(20) DEFAULT NULL,
  `avg_presenty` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `avg_presenty` */

insert  into `avg_presenty`(`roll_no`,`avg_presenty`) values ('CT14024','100'),('CT14022','100'),('CT14021','100'),('CT14021','100');

/*Table structure for table `faculty_registration` */

DROP TABLE IF EXISTS `faculty_registration`;

CREATE TABLE `faculty_registration` (
  `faculty_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `cnfrm_password` varchar(20) DEFAULT NULL,
  `faculty_id` varchar(20) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculty_registration` */

insert  into `faculty_registration`(`faculty_name`,`email`,`password`,`cnfrm_password`,`faculty_id`,`department`,`mobile_no`) values ('shailaja','shailaja@gmail.com','1234','1234','1','Computer Technology','9876543210'),('laxmi','laxmi@gamil.com','1234','1234','2','Computer Technology','9876543210'),('srikanth','srikanth@gmail.com','1234','1234','3','Computer Technology','9876543210'),('dsr','sdr@gmail.com','1234','1234','4','Computer Technology','9876543210'),('mln','mln@gmail.com','1234','1234','5','Computer Technology','9876543210'),('ashok','ashok@gmail.com','1234','1234','6','Computer Technology','987654');

/*Table structure for table `hod_registration` */

DROP TABLE IF EXISTS `hod_registration`;

CREATE TABLE `hod_registration` (
  `hod_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `cnfrm_password` varchar(20) DEFAULT NULL,
  `hod_id` varchar(20) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hod_registration` */

insert  into `hod_registration`(`hod_name`,`email`,`password`,`cnfrm_password`,`hod_id`,`department`,`mobile_no`) values ('kiran','kiran@gmail.com','1234','1234','1','Computer Technology','9876543210');

/*Table structure for table `presenty_by_subject` */

DROP TABLE IF EXISTS `presenty_by_subject`;

CREATE TABLE `presenty_by_subject` (
  `date` varchar(20) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `roll_no` varchar(10) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `presenty` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `presenty_by_subject` */

insert  into `presenty_by_subject`(`date`,`year`,`semester`,`roll_no`,`subject`,`presenty`) values ('2019-02-10','3','6','1','c7','0'),('2019-02-10','3','6','2','c7','0'),('2019-02-10','3','6','3','c7','1'),('2019-02-10','3','6','4','c7','0'),('2019-02-10','3','6','5','c7','1'),('2019-02-10','3','6','6','c7','0'),('2019-02-10','3','6','7','c7','1'),('2019-02-10','3','6','1','c8','1'),('2019-02-10','3','6','3','c8','1'),('2019-02-10','3','6','4','c8','0'),('2019-02-10','3','6','5','c8','1'),('2019-02-10','3','6','6','c8','1'),('2019-02-10','3','6','7','c8','0'),('2019-02-10','3','6','1','m1','1'),('2019-02-10','3','6','2','m1','1'),('2019-02-10','3','6','3','m1','1'),('2019-02-10','3','6','4','m1','0'),('2019-02-10','3','6','5','m1','1'),('2019-02-10','3','6','6','m1','0'),('2019-02-10','3','6','7','m1','1'),('2019-02-10','3','6','1','m4','1'),('2019-02-10','3','6','2','m4','0'),('2019-02-10','3','6','3','m4','1'),('2019-02-10','3','6','4','m4','1'),('2019-02-10','3','6','5','m4','0'),('2019-02-10','3','6','6','m4','1'),('2019-02-10','3','6','7','m4','0');

/*Table structure for table `student_registration` */

DROP TABLE IF EXISTS `student_registration`;

CREATE TABLE `student_registration` (
  `name` varchar(50) DEFAULT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `cnfrm_password` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_registration` */

insert  into `student_registration`(`name`,`roll_no`,`email`,`password`,`cnfrm_password`,`branch`,`year`,`semester`,`dob`,`mobile_no`) values ('VINITH','1','vinithsingareddy000@gmail.com','1234','1234','Computer Technology','3','6','2005-05-03','9876543210'),('GEETHA','2','GEETHA@GMAIL.COM','1234','1234','Computer Technology','3','6','2019-01-30','9876543210'),('sham','3','shailaja@gmail.com','1234','1234','Computer Technology','3','6','2019-12-31','9876543210'),('sunder','4','DFGD@GDFH.BHG','1234','1234','Computer Technology','3','6','2019-12-31','9876543210'),('sdaf','5','shailaja@gmail.com','1234','1234','Computer Technology','3','6','2019-12-31','9876543210'),('SADA','6','shailaja@gmail.com','1234','1234','Computer Technology','3','6','2019-12-31','9876543210'),('SAFA','7','shailaja@gmail.com','1234','1234','Computer Technology','3','6','2019-12-31','9876543210');

/*Table structure for table `year_subject` */

DROP TABLE IF EXISTS `year_subject`;

CREATE TABLE `year_subject` (
  `branch` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `sub1` varchar(20) DEFAULT NULL,
  `sub2` varchar(20) DEFAULT NULL,
  `sub3` varchar(20) DEFAULT NULL,
  `sub4` varchar(20) DEFAULT NULL,
  `sub5` varchar(20) DEFAULT NULL,
  `sub6` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `year_subject` */

insert  into `year_subject`(`branch`,`year`,`semester`,`sub1`,`sub2`,`sub3`,`sub4`,`sub5`,`sub6`) values ('Computer Technology','2','4','m4','c4','e4','english','telugu','nill'),('Information Technology','3','6','1','2','3','4','5','6'),('Computer Technology','1','1','m1','c1','e1','english','telugu','nill'),('Computer Technology','1','2','m2','c2','e2','english','telugu','nill'),('Computer Technology','2','3','m3','c3','e3','english','telugu','nill'),('Computer Technology','3','5','m5','m6','c5','c6','e5','e6'),('Computer Technology','3','6','m7','m8','e8','e7','c7','c8');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
