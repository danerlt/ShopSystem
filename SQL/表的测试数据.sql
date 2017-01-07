
use ShopSystem



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