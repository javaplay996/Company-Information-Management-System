/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xinxiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinxiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xinxiguanlixitong`;

/*Table structure for table `chuqin` */

DROP TABLE IF EXISTS `chuqin`;

CREATE TABLE `chuqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `today` varchar(200) DEFAULT NULL COMMENT '打卡日期',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '上班打卡时间',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '下班打卡时间',
  `chuqin_types` int(11) DEFAULT NULL COMMENT '打卡类型    ',
  `overtimeNumber` int(11) DEFAULT NULL COMMENT '加班时间(小时)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `chuqin` */

insert  into `chuqin`(`id`,`yonghu_id`,`today`,`on_time`,`down_time`,`chuqin_types`,`overtimeNumber`,`create_time`) values (1,1,'2021-03-12','2021-03-12 17:45:20','2021-03-12 17:45:53',6,NULL,'2021-03-12 17:45:20'),(2,2,'2021-03-12','2021-03-12 08:46:11',NULL,3,NULL,'2021-03-12 17:46:11'),(3,3,'2021-03-12','2021-03-12 19:02:46',NULL,6,NULL,'2021-03-12 19:02:46');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-12 17:19:44'),(2,'sex_types','性别',2,'女',NULL,'2021-03-12 17:19:44'),(3,'bumen_types','部门类型',1,'销售部',NULL,'2021-03-12 17:19:44'),(4,'bumen_types','部门类型',2,'市场部',NULL,'2021-03-12 17:19:44'),(5,'bumen_types','部门类型',3,'财务部',NULL,'2021-03-12 17:19:44'),(6,'zhiwei_types','职位类型',1,'普通成员',NULL,'2021-03-12 17:19:44'),(7,'zhiwei_types','职位类型',2,'小组长',NULL,'2021-03-12 17:19:44'),(8,'zhiwei_types','职位类型',3,'大组长',NULL,'2021-03-12 17:19:44'),(9,'politics_types','政治面貌',1,'群众',NULL,'2021-03-12 17:19:44'),(10,'politics_types','政治面貌',2,'党员',NULL,'2021-03-12 17:19:44'),(11,'chuqin_types','打卡类型',1,'正常打卡',NULL,'2021-03-12 17:19:44'),(12,'chuqin_types','打卡类型',2,'未打上班卡',NULL,'2021-03-12 17:19:44'),(13,'chuqin_types','打卡类型',3,'未打下班卡',NULL,'2021-03-12 17:19:44'),(14,'chuqin_types','打卡类型',4,'缺勤',NULL,'2021-03-12 17:19:44'),(15,'chuqin_types','打卡类型',5,'加班',NULL,'2021-03-12 17:19:44'),(16,'chuqin_types','打卡类型',6,'迟到',NULL,'2021-03-12 17:19:44'),(17,'chuqin_types','打卡类型',7,'早退',NULL,'2021-03-12 17:19:44'),(18,'zhishi_types','知识类型',1,'陈述性知识',NULL,'2021-03-12 17:19:44'),(19,'zhishi_types','知识类型',2,'程序性知识',NULL,'2021-03-12 17:19:44'),(20,'zhishi_types','知识类型',3,'策略性知识',NULL,'2021-03-12 17:19:44'),(21,'xiangmu_types','项目类型',1,'扩建项目',NULL,'2021-03-12 17:19:44'),(22,'xiangmu_types','项目类型',2,'改建项目',NULL,'2021-03-12 17:19:44'),(23,'xiangmu_types','项目类型',3,'恢复项目',NULL,'2021-03-12 17:19:44'),(24,'xiangmujindu_types','项目进度类型',1,'新建',NULL,'2021-03-12 17:19:45'),(25,'xiangmujindu_types','项目进度类型',2,'进行中',NULL,'2021-03-12 17:19:45'),(26,'xiangmujindu_types','项目进度类型',3,'已废弃',NULL,'2021-03-12 17:19:45'),(27,'xiangmujindu_types','项目进度类型',4,'已完成',NULL,'2021-03-12 17:19:45'),(28,'zhishi_types','知识类型',77,'知识库类型77',NULL,'2021-03-12 18:59:18');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (32,6,'admin','users','管理员','hgm6a4wl5swajyrdwvgv478i1ai9qrtr','2021-03-12 16:58:13','2021-03-12 20:07:35'),(33,1,'a1','yonghu','用户','j77h7xitbd9jllei4iby2glpksu36qyd','2021-03-12 17:45:16','2021-03-12 20:01:13'),(34,2,'a2','yonghu','用户','dzoox36oblqbuyzjm0bi0tei04f8v4xw','2021-03-12 17:46:06','2021-03-12 20:02:32'),(35,4,'a5','yonghu','用户','xjtmdvwl9tx71hd7mvclf7vqxhl8epwc','2021-03-12 18:53:11','2021-03-12 19:53:35'),(36,3,'a3','yonghu','用户','6ltzcl9fobefalur6vvgvkwptsjf9uf0','2021-03-12 19:02:42','2021-03-12 20:02:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '项目负责人',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名  ',
  `xiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型   ',
  `xiangmujindu_types` int(11) DEFAULT NULL COMMENT '项目进度   ',
  `xiangmu_content` varchar(200) DEFAULT NULL COMMENT '项目详情',
  `xiangmu_file` varchar(200) DEFAULT NULL COMMENT '项目文件',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '项目开始时间  ',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '项目结束时间  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='项目';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`yonghu_id`,`xiangmu_name`,`xiangmu_types`,`xiangmujindu_types`,`xiangmu_content`,`xiangmu_file`,`insert_time`,`update_time`,`create_time`) values (1,3,'项目1',2,1,'项目1的详情\r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542751287.jpg','2021-03-12 17:52:33',NULL,'2021-03-12 17:52:33'),(2,3,'项目2',2,1,'项目2的详情\r\n项目人员:   张三 李四  王五   赵六 胡七\r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542816090.jpg','2021-03-12 17:53:37',NULL,'2021-03-12 17:53:37'),(3,1,'项目3',2,2,'项目3的详情\r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542843984.jpg','2021-03-12 17:54:05',NULL,'2021-03-12 17:54:05'),(4,2,'项目4',2,4,'项目4的项目详情\r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542893299.mp3','2021-03-12 17:54:54','2021-03-12 17:55:23','2021-03-12 17:54:54'),(5,4,'先买个999',1,4,'先买个的扩建项目详情 参与人员有  张三  里斯  王五 准备好了\r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615546573703.mp3','2021-03-12 18:56:40','2021-03-12 18:57:06','2021-03-12 18:56:40');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-12 17:19:43','日常公告','日常公告','公告信息','2021-03-12 17:19:43'),(2,'2021-03-12 17:19:43','紧急公告','紧急公告','公告信息','2021-03-12 17:19:43'),(3,'2021-03-12 17:19:43','其他公告','其他公告','公告信息','2021-03-12 17:19:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别   ',
  `age` int(11) DEFAULT NULL COMMENT '年龄   ',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门   ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位   ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`age`,`bumen_types`,`zhiwei_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a1','123456','张1','17703789991','410224199610232011',2,19,2,1,'http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615546936811.jpg','汉',2,'浙江杭州','2021-03-12 17:43:15'),(2,'a2','123456','张2','17703789992','410224199610232012',2,55,2,3,'http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542232171.jpg','维吾尔族',2,'浙江温州','2021-03-12 17:43:57'),(3,'a3','123456','张三','17703789993','410224199610232013',2,65,3,3,'http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542300709.jpg','9',2,'9','2021-03-12 17:45:02'),(4,'a5','123456','张5','17703789995','410224199610232015',2,40,3,2,'http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615546328817.jpg','汉',2,'审犯罪','2021-03-12 18:52:55');

/*Table structure for table `zhishiku` */

DROP TABLE IF EXISTS `zhishiku`;

CREATE TABLE `zhishiku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhishi_name` varchar(200) DEFAULT NULL COMMENT '知识文件名     ',
  `zhishi_types` int(11) DEFAULT NULL COMMENT '知识类型  ',
  `zhishi_content` varchar(200) DEFAULT NULL COMMENT '文件简介',
  `zhishi_file` varchar(200) DEFAULT NULL COMMENT '知识文件',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='知识库';

/*Data for the table `zhishiku` */

insert  into `zhishiku`(`id`,`zhishi_name`,`zhishi_types`,`zhishi_content`,`zhishi_file`,`insert_time`,`create_time`) values (1,'知识文件1',3,'文件1的简介\r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542533093.jpg','2021-03-12 17:48:54','2021-03-12 17:48:54'),(2,'知识文件按2',2,'文件2的简介\r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542554244.jpg','2021-03-12 17:49:15','2021-03-12 17:49:15'),(3,'知识文件3',1,'文件3的简介\r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615542577444.jpg','2021-03-12 17:49:38','2021-03-12 17:49:38'),(4,'知识8111',2,'撒大苏打 \r\n','http://localhost:8080/xinxiguanlixitong/file/download?fileName=1615546718871.mp3','2021-03-12 18:58:40','2021-03-12 18:58:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
