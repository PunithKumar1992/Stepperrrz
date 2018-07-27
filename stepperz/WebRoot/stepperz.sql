/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.36-community : Database - stepperzs_stepper
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stepperzs_stepper` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `stepperzs_stepper`;

/*Table structure for table `stepadminregistration` */

DROP TABLE IF EXISTS `stepadminregistration`;

CREATE TABLE `stepadminregistration` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `admin_phone` varchar(255) DEFAULT NULL,
  `admin_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `stepadminregistration` */

insert  into `stepadminregistration`(`admin_id`,`admin_name`,`admin_email`,`admin_phone`,`admin_password`) values (1,'punith','punithkumar325@gmail.com','9738562088','123456'),(2,'Stepperz','stepperzstudio1234@gmail.com','9741111933','stepperzadmin1234');

/*Table structure for table `stepadvertisement` */

DROP TABLE IF EXISTS `stepadvertisement`;

CREATE TABLE `stepadvertisement` (
  `ads_id` int(50) NOT NULL AUTO_INCREMENT,
  `ads_type` varchar(50) DEFAULT NULL,
  `ads_images` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ads_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `stepadvertisement` */

insert  into `stepadvertisement`(`ads_id`,`ads_type`,`ads_images`) values (1,'promo','bumperdiwali.jpg'),(2,'promo','diwali.jpg'),(3,'promo','newyear.jpg'),(4,'hire','hire2.jpg'),(5,'hire','hire3.jpg');

/*Table structure for table `stepbanner` */

DROP TABLE IF EXISTS `stepbanner`;

CREATE TABLE `stepbanner` (
  `banner_id` int(50) NOT NULL AUTO_INCREMENT,
  `banner_title` varchar(1000) DEFAULT NULL,
  `banner_desc` varchar(1000) DEFAULT NULL,
  `banner_img` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `stepbanner` */

insert  into `stepbanner`(`banner_id`,`banner_title`,`banner_desc`,`banner_img`) values (1,'YOGA','When You Own Your Breath Nobody Can Steal Your Peace..','yoga.jpg'),(2,'AEROBICS','Everything You Need Is Already Inside You..','aerobics.jpg'),(3,'DANCE','Dance Is The Most Fundmental Of All Art Forms..','dance1.png');

/*Table structure for table `stepcareer` */

DROP TABLE IF EXISTS `stepcareer`;

CREATE TABLE `stepcareer` (
  `career_id` int(50) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `post_applyfor` varchar(50) DEFAULT NULL,
  `salary_req` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `last_company` varchar(50) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`career_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `stepcareer` */

insert  into `stepcareer`(`career_id`,`first_name`,`last_name`,`email`,`post_applyfor`,`salary_req`,`joining_date`,`phone`,`last_company`,`message`) values (1,'punith','Kumar','punithkumar325@gmail.com','dbhvdgdcg','1545454','bdhhdv','9738562088','bdchvd','bhvdgcgdc`');

/*Table structure for table `stepfeedback` */

DROP TABLE IF EXISTS `stepfeedback`;

CREATE TABLE `stepfeedback` (
  `feedback_id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `stepfeedback` */

insert  into `stepfeedback`(`feedback_id`,`name`,`email`,`phone_number`,`message`) values (1,'punith Kumar','punithkumar325@gmail.com','9738562088','hiiiiiii');

/*Table structure for table `stepkalyannagarimages` */

DROP TABLE IF EXISTS `stepkalyannagarimages`;

CREATE TABLE `stepkalyannagarimages` (
  `image_id` int(6) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `stepkalyannagarimages` */

insert  into `stepkalyannagarimages`(`image_id`,`image_name`) values (1,'1.jpg'),(2,'2.jpg'),(3,'3.jpg'),(4,'4.jpg'),(5,'5.jpg'),(6,'6.jpg'),(7,'7.jpg'),(8,'8.jpg'),(9,'9.jpg'),(10,'10.jpg'),(11,'11.jpg'),(12,'12.jpg'),(13,'13.jpg'),(14,'14.jpg'),(15,'15.jpg'),(16,'16.jpg'),(17,'17.jpg'),(18,'18.jpg'),(19,'19.jpg'),(20,'20.jpg'),(21,'21.jpg'),(22,'22.jpg'),(23,'23.jpg'),(24,'24.jpg'),(25,'25.jpg'),(26,'26.jpg'),(27,'27.jpg'),(28,'28.jpg');

/*Table structure for table `stepkalyannagarvideo` */

DROP TABLE IF EXISTS `stepkalyannagarvideo`;

CREATE TABLE `stepkalyannagarvideo` (
  `video_id` int(6) NOT NULL AUTO_INCREMENT,
  `video_link` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `stepkalyannagarvideo` */

insert  into `stepkalyannagarvideo`(`video_id`,`video_link`) values (1,'https://www.youtube.com/embed/UMwMtPnOtDQ'),(2,'https://www.youtube.com/embed/DO0C0q7kx8g'),(3,'https://www.youtube.com/embed/NTA1t0XH4BQ'),(4,'https://www.youtube.com/embed/vkKl6ZiLp3g');

/*Table structure for table `stepmalleshwaramimages` */

DROP TABLE IF EXISTS `stepmalleshwaramimages`;

CREATE TABLE `stepmalleshwaramimages` (
  `image_id` int(6) DEFAULT NULL,
  `image_name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stepmalleshwaramimages` */

insert  into `stepmalleshwaramimages`(`image_id`,`image_name`) values (1,'1.jpg'),(2,'2.jpg'),(3,'3.jpg'),(4,'4.jpg'),(5,'5.jpg'),(6,'6.jpg'),(7,'7.jpg'),(8,'8.jpg'),(9,'9.jpg'),(10,'10.jpg'),(11,'11.jpg'),(12,'12.jpg'),(13,'13.jpg'),(14,'14.jpg'),(15,'15.jpg'),(16,'16.jpg'),(17,'17.jpg'),(18,'18.jpg');

/*Table structure for table `stepmalleshwaramvideo` */

DROP TABLE IF EXISTS `stepmalleshwaramvideo`;

CREATE TABLE `stepmalleshwaramvideo` (
  `video_id` int(6) NOT NULL AUTO_INCREMENT,
  `video_link` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `stepmalleshwaramvideo` */

insert  into `stepmalleshwaramvideo`(`video_id`,`video_link`) values (1,'https://www.youtube.com/embed/UMwMtPnOtDQ'),(2,'https://www.youtube.com/embed/DO0C0q7kx8g'),(3,'https://www.youtube.com/embed/NTA1t0XH4BQ'),(4,'https://www.youtube.com/embed/vkKl6ZiLp3g');

/*Table structure for table `stepregistration` */

DROP TABLE IF EXISTS `stepregistration`;

CREATE TABLE `stepregistration` (
  `reg_id` int(50) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `stepregistration` */

insert  into `stepregistration`(`reg_id`,`first_name`,`last_name`,`course`,`email`,`address`,`contact_no`) values (1,'punith','Kumar','Aerobics','punithkumar325@gmail.com','Rajajinagar\r\nbangalore','919738562088');

/*Table structure for table `stepsadashivnagarimages` */

DROP TABLE IF EXISTS `stepsadashivnagarimages`;

CREATE TABLE `stepsadashivnagarimages` (
  `image_id` int(6) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `stepsadashivnagarimages` */

insert  into `stepsadashivnagarimages`(`image_id`,`image_name`) values (1,'new1.jpg'),(2,'new2.jpg'),(3,'new3.jpg'),(4,'new4.jpg'),(5,'new5.jpg'),(6,'new6.jpg'),(7,'new7.jpg'),(8,'new8.jpg'),(9,'new9.jpg'),(10,'new10.jpg'),(11,'new11.jpg'),(12,'new12.jpg'),(13,'new13.jpg'),(14,'new14.jpg'),(15,'new15.jpg');

/*Table structure for table `stepsadashivnagarvideo` */

DROP TABLE IF EXISTS `stepsadashivnagarvideo`;

CREATE TABLE `stepsadashivnagarvideo` (
  `video_id` int(6) NOT NULL AUTO_INCREMENT,
  `video_link` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `stepsadashivnagarvideo` */

insert  into `stepsadashivnagarvideo`(`video_id`,`video_link`) values (1,'https://www.youtube.com/embed/UMwMtPnOtDQ'),(2,'https://www.youtube.com/embed/DO0C0q7kx8g'),(3,'https://www.youtube.com/embed/NTA1t0XH4BQ'),(4,'https://www.youtube.com/embed/vkKl6ZiLp3g');

/*Table structure for table `steptestimonials` */

DROP TABLE IF EXISTS `steptestimonials`;

CREATE TABLE `steptestimonials` (
  `test_id` int(50) NOT NULL AUTO_INCREMENT,
  `message` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `steptestimonials` */

insert  into `steptestimonials`(`test_id`,`message`,`name`) values (1,'Stepperz in Sadashivnagar offers a complete training experience with premium weight loss training with experienced certified trainers to help you meet your fitness goals.','PAVAN SUTHA'),(2,'An Amazing Studio where you get to enjoy working out 5-6 days a week, everyday being different. Great workouts with my like minded friends whose energy make it even more special.','PREETHAM P.S.'),(3,'Stepperz is one of the best Fitness Studio i have seen in BANGALORE.They have best Trainers and very well maintained. I am very happy to be associated with Stepperz.','MAHADEV BK'),(4,'Best place ever in dis locality in terms of trained instructors n cleanliness.... My day starts here coz i enjoy my morning workouts as v hv different workouts everyday....','BHHAVYA R NAIDU'),(5,'It was a amazing experience and one off the best studio in bangalore I came from Hassan to learn I enjoyed lot all the trainers are well trained in stepperz\r\n\r\n','SAMARTH SHETTY'),(6,'Stepperz is a great place to workout. It has everything... from dance to yoga to aerobics and even taekwondo for martial arts aspirants.','CHANDAN C'),(7,'The dance sessions are really interesting, unique and we do new steps everyday... It doesn\'t get boring and it inspires us to never quit.','GOVIND MISTRY');

/*Table structure for table `steptimetable_kalyannagar` */

DROP TABLE IF EXISTS `steptimetable_kalyannagar`;

CREATE TABLE `steptimetable_kalyannagar` (
  `tb_id` int(50) NOT NULL AUTO_INCREMENT,
  `timetable_caption` varchar(100) DEFAULT NULL,
  `timetable_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `steptimetable_kalyannagar` */

insert  into `steptimetable_kalyannagar`(`tb_id`,`timetable_caption`,`timetable_image`) values (1,'Group Exercise','k1.png'),(2,'Dance','k2.png'),(3,'Yoga','k3.png');

/*Table structure for table `steptimetable_malleshwaram` */

DROP TABLE IF EXISTS `steptimetable_malleshwaram`;

CREATE TABLE `steptimetable_malleshwaram` (
  `tb_id` int(50) NOT NULL AUTO_INCREMENT,
  `timetable_caption` varchar(100) DEFAULT NULL,
  `timetable_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `steptimetable_malleshwaram` */

insert  into `steptimetable_malleshwaram`(`tb_id`,`timetable_caption`,`timetable_image`) values (1,'Dance','m1.png');

/*Table structure for table `steptimetable_sadashivnagr` */

DROP TABLE IF EXISTS `steptimetable_sadashivnagr`;

CREATE TABLE `steptimetable_sadashivnagr` (
  `tb_id` int(50) NOT NULL AUTO_INCREMENT,
  `timetable_caption` varchar(100) DEFAULT NULL,
  `timetable_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `steptimetable_sadashivnagr` */

insert  into `steptimetable_sadashivnagr`(`tb_id`,`timetable_caption`,`timetable_image`) values (1,'Aerobics(Group Exercise)','s1.png'),(2,'Dance','s2.png'),(3,'Yoga','s3.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
