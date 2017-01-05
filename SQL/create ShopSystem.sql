CREATE DATABASE shopsystem
IF NOT EXISTS USE shopsystem;

-- 建立customer表
DROP TABLE
IF EXISTS `customer`;

CREATE TABLE `customer` (
	`cust_id` VARCHAR (20) NOT NULL,
	`cust_pwd` CHAR (32) NOT NULL,
	`cust_name` VARCHAR (64) NOT NULL,
	`addr` VARCHAR (64) NULL DEFAULT NULL,
	`email` VARCHAR (32) NULL DEFAULT NULL,
	`zip` CHAR (6) NULL DEFAULT NULL,
	`tel` CHAR (20) NULL DEFAULT NULL,
	`sex` CHAR (2) NULL DEFAULT NULL,
	`cust_level` TINYINT (4) NULL DEFAULT 1,
	`cust_sco` INT (11) NULL DEFAULT 0,
	PRIMARY KEY (`cust_id`)
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- 建立discount
DROP TABLE
IF EXISTS `discount`;

CREATE TABLE `discount` (
	`cust_level` TINYINT NOT NULL PRIMARY KEY,
	`discount` NUMERIC (7, 2) NULL DEFAULT 1,
	`score` VARCHAR (64) NULL DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- 建立product表
DROP TABLE
IF EXISTS `product`;

CREATE TABLE `product` (
	`prod_id` VARCHAR (6) NOT NULL PRIMARY KEY,
	`prod_name` VARCHAR (64) NULL,
	`kind_no` VARCHAR (6) NULL,
	`sup_no` CHAR (6) NULL,
	`storage` INT NULL,
	`pro_date` datetime NULL,
	`keep_date` datetime NULL,
	`unit_price` NUMERIC (7, 2) NULL,
	`supply_count` INT NULL
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- 建立kind表
DROP TABLE
IF EXISTS `kind`;

CREATE TABLE kind (
	`kind_no` VARCHAR (8) PRIMARY KEY,
	`kind_name` VARCHAR (16)
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- 建立company表
DROP TABLE
IF EXISTS `company`;

CREATE TABLE company (
	`sup_no` CHAR (6) PRIMARY KEY,
	`sup_name` VARCHAR (40) NULL,
	`sup_addr` VARCHAR (60) NULL
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

DROP TABLE
IF EXISTS `sales`;

-- 建立sales表
CREATE TABLE sales (
	`order_no` BIGINT PRIMARY KEY,
	`cust_id` VARCHAR (32) NULL,
	`tot_amt` NUMERIC (7, 2) NULL,
	`order_date` datetime NULL,
	`invoice_no` CHAR (15) NULL UNIQUE,
	`order_status` CHAR (2) NULL DEFAULT '0',
	`deliv_date` datetime NULL
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

DROP TABLE
IF EXISTS `sale_item`;

-- 建立sale_item表
CREATE TABLE sale_item (
	`order_no` BIGINT NOT NULL,
	`prod_id` CHAR (6) NOT NULL,
	`unit_price` NUMERIC (7, 2) NULL,
	`dis_price` NUMERIC (7, 2) NULL,
	`qty` INT NULL,
	`order_date` datetime NULL,
	PRIMARY KEY (`order_no`, `prod_id`)
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

DROP TABLE
IF EXISTS `shopcart`;

-- 建立shopcart表
CREATE TABLE shopcart (
	`shop_no` CHAR (5) NOT NULL,
	`cust_id` VARCHAR (20) NOT NULL,
	`prod_id` VARCHAR (6) NOT NULL,
	`unit_price` NUMERIC (7, 2) NULL,
	`dis_price` NUMERIC (7, 2) NULL DEFAULT 0,
	`qty` INT NULL DEFAULT 0,
	`buy` CHAR (4) NULL DEFAULT '是',
	`pro_totamt` NUMERIC (7, 2) NULL DEFAULT 0,
	PRIMARY KEY (
		`shop_no`,
		`cust_id`,
		`prod_id`
	)
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

DROP TABLE
IF EXISTS `delivery`;

-- 建立delivery表
CREATE TABLE delivery (
	`deliv_no` CHAR (10) NULL,
	`cust_id` CHAR (6) NULL,
	`order_no` BIGINT NULL,
	`prod_id` CHAR (6) NULL,
	`qty` INT NULL,
	`unit_price` NUMERIC (7, 2) NULL,
	`tot_amt` NUMERIC (9, 2) NULL,
	`zip` CHAR (6),
	`addr` CHAR (60),
	`tel_no` CHAR (11) NULL,
	`deliv_date` datetime NULL,
	`cust_name` CHAR (8) NULL
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

DROP TABLE
IF EXISTS `quit`;

-- 建立quit表
CREATE TABLE quit (
	`quit_no` CHAR (10) NOT NULL,
	`cust_id` VARCHAR (20) NOT NULL,
	`order_no` BIGINT NOT NULL,
	`deliv_date` datetime NULL,
	`quit_reason` CHAR (50) NULL,
	`prod_id` CHAR (6) NULL,
	`qty` INT NULL,
	`cust_name` CHAR (8) NULL,
	PRIMARY KEY (
		`quit_no`,
		`cust_id`,
		`order_no`
	)
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

DROP TABLE
IF EXISTS `warehouse`;

-- 建立warehouse表
CREATE TABLE warehouse (
	`wh_no` CHAR (5) NOT NULL PRIMARY KEY,
	`wh_name` CHAR (64) NULL
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

DROP TABLE
IF EXISTS `admin`;

-- 建立warehouse表
CREATE TABLE admin (
	`name` VARCHAR (45) NOT NULL,
	`notes` VARCHAR (255) DEFAULT NULL,
	`password` VARCHAR (32) NOT NULL,
	PRIMARY KEY (`name`)
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;