USE shopsystem;

-- 建立customer表 客户表
DROP TABLE
IF EXISTS `customer`;

CREATE TABLE `customer` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`username` VARCHAR (64) NOT NULL,
	`password` VARCHAR (32) NOT NULL,
	`email` VARCHAR (32) NULL DEFAULT NULL,
	`tel` CHAR (20) NULL DEFAULT NULL,
	`sex` enum ('男', '女', '保密') NOT NULL DEFAULT '保密',
	`level` TINYINT (4) NULL DEFAULT 1,
	`score` INT (11) NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY `username` (`username`)
) ENGINE = INNODB AUTO_INCREMENT = 10000 DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- customer表的测试数据
INSERT INTO `customer`
VALUES
	(
		10000,
		'李滔',
		'litao',
		'litao@shop.com',
		'15959787657',
		'男',
		1,
		50
	),
	(
		10002,
		'test',
		'test',
		'litao@shop.com',
		'15959787657',
		'男',
		1,
		50
	),
	(
		10003,
		'haha',
		'haha',
		'litao@shop.com',
		'15959787657',
		'男',
		1,
		50
	);

-- 建立kind表 商品类别表
DROP TABLE
IF EXISTS `kind`;

CREATE TABLE kind (
	`id` INT AUTO_INCREMENT NOT NULL,
	`kName` VARCHAR (16),
	PRIMARY KEY (`id`),
	UNIQUE KEY `kname` (`kname`)
) ENGINE = INNODB AUTO_INCREMENT = 1 DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

INSERT INTO `kind`
VALUES
	(1, '手机数码'),
	(2, '电脑办公'),
	(3, '图书音频'),
	(4, '服装');

-- 建立product表
DROP TABLE
IF EXISTS `product`;

CREATE TABLE `product` (
	`id` INT AUTO_INCREMENT NOT NULL,
	`pName` VARCHAR (64) NULL,
	`pDesc` text,
	`pNum` INT NULL,
	`pubTime` datetime NULL,
	`pKeepTime` datetime NULL,
	`pImage` VARCHAR (255) NULL,
	`kId` INT NOT NULL,
	`iPrice` NUMERIC (7, 2) NULL,
	`mPrice` NUMERIC (7, 2) NULL,
	`isHot` enum ('是', '否') NOT NULL DEFAULT '否',
	`isShow` enum ('是', '否') NOT NULL DEFAULT '否',
	PRIMARY KEY (`id`),
	CONSTRAINT `fk_kid` FOREIGN KEY (`kId`) REFERENCES `kind` (`id`),
	UNIQUE KEY `pName` (`pName`),
	ON UPDATE CASCADE,
	ON DELETE CASCADE
) ENGINE = INNODB AUTO_INCREMENT = 10000 DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- product表的测试数据
INSERT INTO `product`
VALUES
	(
		10000,
		'小米note3',
		'小米note3全网通',
		1000,
		'2015-12-11 00:00:00',
		360,
		'/image/**.img',
		1,
		999,
		1199,
		'是',
		'否'
	);

DROP TABLE
IF EXISTS `sales`;

-- 建立sales表
CREATE TABLE sales (
	`id` BIGINT AUTO_INCREMENT,
	`cId` INT NOT NULL,
	`pId` INT NOT NULL,
	`count` INT NULL,
	`totalPrice` NUMERIC (7, 2) NULL UNIQUE,
	`orderDate` DATETIME NULL,
	`invoiceNo` CHAR (15) NULL,
	`orderStatus` VARCHAR (10) NULL,
	`delivDate` DATETIME NULL,
	PRIMARY KEY (`id`),
	CONSTRAINT `fk_cid` FOREIGN KEY (`cId`) REFERENCES `customer` (`id`),
	CONSTRAINT `fk_pid` FOREIGN KEY (`pId`) REFERENCES `product` (`id`),
	ON UPDATE CASCADE,
	ON DELETE CASCADE
) ENGINE = INNODB AUTO_INCREMENT = 1000000000 DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- sales测试数据
INSERT INTO sales
VALUES
	(
		1000000000,
		10000,
		10000,
		2,
		1998,
		'2015-12-21 00:00:00',
		'987657898787897',
		'已发货',
		'2015-12-22 00:00:00'
	);

DROP TABLE
IF EXISTS `shopcart`;

-- 建立shopcart表
CREATE TABLE shopcart (
	`id` INT NOT NULL AUTO_INCREMENT,
	`cId` INT NOT NULL,
	`pId` INT NOT NULL,
	`count` INT NULL,
	`isBuy` enum ('是', '否') NOT NULL DEFAULT '否',
	`totalPrice` NUMERIC (7, 2) NULL,
	PRIMARY KEY (`id`),
	CONSTRAINT `fk_cid` FOREIGN KEY (`cId`) REFERENCES `customer` (`id`),
	CONSTRAINT `fk_pid` FOREIGN KEY (`pId`) REFERENCES `product` (`id`),
	ON UPDATE CASCADE,
	ON DELETE CASCADE
) ENGINE = INNODB AUTO_INCREMENT = 1 DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- 建立admin表 客户表
DROP TABLE
IF EXISTS `admin`;

CREATE TABLE `admin` (
	`username` VARCHAR (64) NOT NULL,
	`password` VARCHAR (32) NOT NULL,
	`email` VARCHAR (32) NULL DEFAULT NULL,
	`level` TINYINT (4) NULL DEFAULT 1,
	PRIMARY KEY (`username`)
) ENGINE = INNODB DEFAULT CHARACTER
SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- customer表的测试数据
INSERT INTO `admin`
VALUES
	(
		'root',
		'root',
		'root@shop.com',
		1
	),
	(
		'admin',
		'admin',
		'admin@shop.com',
		2
	);

