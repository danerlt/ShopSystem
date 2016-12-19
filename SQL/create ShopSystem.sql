-- 建立customer表
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
`cust_id`  varchar(20)  NOT NULL ,
`cust_pwd`  char(32)  NOT NULL ,
`cust_name`  varchar(64) NOT NULL ,
`addr`  varchar(64)  NULL DEFAULT NULL ,
`email`  varchar(32)  NULL DEFAULT NULL ,
`zip`  char(6)  NULL DEFAULT NULL ,
`tel`  char(20)  NULL DEFAULT NULL ,
`sex`  char(2)  NULL DEFAULT NULL ,
`cust_level`  tinyint(4) NULL DEFAULT 1 ,
`cust_sco`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`cust_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT
;
-- 建立discount
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`
(
`cust_level` tinyint NOT NULL PRIMARY KEY,
`discount` numeric(7,2) NULL DEFAULT 1,
`score` varchar(64) NULL DEFAULT NULL 
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

-- 建立product表
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`
(
`prod_id` varchar(6)  NOT NULL PRIMARY KEY,
`prod_name` varchar(64)NULL,
`kind_no` varchar(6) NULL,
`sup_no` char(6) NULL,
`storage`	int	NULL,
`pro_date`  datetime NULL,
`keep_date` datetime NULL,
`unit_price` numeric(7,2) NULL,
`supply_count` int NULL
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

 -- 建立kind表
DROP TABLE IF EXISTS `kind`;
CREATE TABLE kind
(
`kind_no` varchar(8)  PRIMARY KEY,
`kind_name` varchar(16) 
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

-- 建立company表
DROP TABLE IF EXISTS `company`;
CREATE TABLE company
(
`sup_no` char(6) PRIMARY KEY,
`sup_name` varchar(40) NULL,
`sup_addr` varchar(60) NULL
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `sales`;
-- 建立sales表
CREATE TABLE sales
(
`order_no` bigint PRIMARY KEY,
`cust_id` varchar(32) NULL,
`tot_amt`	numeric(7,2) NULL,
`order_date` datetime NULL,
`invoice_no` char(15) NULL UNIQUE,
`order_status` char(2) NULL DEFAULT '0',
`deliv_date` datetime NULL
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `sale_item`;
-- 建立sale_item表
CREATE TABLE sale_item
(
`order_no` bigint	NOT NULL,
`prod_id`	char(6)	NOT NULL,
`unit_price` numeric(7,2) NULL,
`dis_price` numeric(7,2) NULL,
`qty`	int	NULL,
`order_date` datetime NULL,
PRIMARY KEY(`order_no`,`prod_id`)
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `shopcart`;
-- 建立shopcart表
CREATE TABLE shopcart
(
`shop_no`	char(5)	NOT NULL,
`cust_id`	varchar(20) NOT NULL,
`prod_id`	varchar(6) NOT NULL,
`unit_price` numeric(7,2) NULL ,
`dis_price` numeric(7,2) NULL DEFAULT 0,
`qty`	int NULL DEFAULT 0,
`buy`	char(4) NULL DEFAULT '是',
`pro_totamt`	numeric(7,2) NULL DEFAULT 0,
PRIMARY KEY(`shop_no`,`cust_id`,`prod_id`)
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `delivery`;
-- 建立delivery表
CREATE TABLE delivery
(
`deliv_no` char(10) NULL,
`cust_id`	 char(6) NULL,
`order_no` bigint	NULL,
`prod_id`	char(6)	NULL,
`qty`  int	NULL,
`unit_price` numeric(7,2) NULL,
`tot_amt`	numeric(9,2) NULL,
`zip`	char(6), 
`addr` char(60),
`tel_no` char(11) NULL,
`deliv_date` datetime NULL,
`cust_name` char(8) NULL
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `quit`;
-- 建立quit表
CREATE TABLE quit
(
`quit_no`	char(10) NOT  NULL,
`cust_id`	varchar(20)NOT 	NULL,
`order_no`   bigint NOT NULL,
`deliv_date` datetime NULL,
`quit_reason`	char(50) NULL,
`prod_id`	char(6) NULL,
`qty`	    int NULL,
`cust_name` char(8) NULL,
PRIMARY KEY(`quit_no`,`cust_id`,`order_no`)
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `warehouse`;
-- 建立warehouse表
CREATE TABLE warehouse
(
`wh_no` char(5) NOT NULL PRIMARY KEY,
`wh_name` char(64) NULL
)ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `admin`;
-- 建立warehouse表
CREATE TABLE admin
(
  `name` varchar(45) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=COMPACT;