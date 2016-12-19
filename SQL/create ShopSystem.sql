--建立数据库
CREATE DATABASE ShopSystem
USE ShopSystem
--建立customer表
CREATE TABLE customer
(
cust_id varchar(20) PRIMARY KEY,
cust_pwd char(32)　NULL,
cust_name varchar(16) ,
addr varchar(60) NULL,
email varchar(30) NULL,
zip char(6) ,
tel char(11) ,
sex char(2) ,
cust_level tinyint DEFAULT 1 ,
cust_sco int DEFAULT 0 
)
--建立discount
CREATE TABLE discount
(
cust_level tinyint PRIMARY KEY,
discount numeric(7,2) NULL DEFAULT 1,
score varchar(20) ,
)
--建立product表
CREATE TABLE product
(
prod_id varchar(6)  PRIMARY KEY,
prod_name varchar(60)NULL,
kind_no varchar(6) NULL,
sup_no char(6) NULL,
storage	int	NULL,
pro_date datetime NULL,
keep_date datetime NULL,
unit_price numeric(7,2) NULL,
supply_count int NULL,
)
--建立kind表
CREATE TABLE kind
(
kind_no varchar(6)  PRIMARY KEY,
kind_name varchar(16) 
)
--建立company表
CREATE TABLE company
(
sup_no char(6) PRIMARY KEY,
sup_name varchar(40) NULL,
sup_addr varchar(60) NULL
)
--建立sales表
CREATE TABLE sales
(
order_no bigint PRIMARY KEY,
cust_id varchar(20) NULL,
tot_amt	numeric(7,2) NULL,
order_date datetime NULL,
invoice_no char(15) NULL UNIQUE,
order_status char(2) NULL DEFAULT '0',
deliv_date datetime NULL
)
--建立sale_item表
CREATE TABLE sale_item
(
order_no bigint	NOT NULL,
prod_id	char(6)	NOT NULL,
unit_price numeric(7,2) NULL,
dis_price numeric(7,2) NULL,
qty	int	NULL,
order_date datetime NULL,
PRIMARY KEY(order_no,prod_id)
)
--建立shopcart表
CREATE TABLE shopcart
(
shop_no	char(5)	NOT NULL,
cust_id	varchar(20) NOT NULL,
prod_id	varchar(6) NOT NULL,
unit_price numeric(7,2) NULL ,
dis_price numeric(7,2) NULL DEFAULT 0,
qty	int NULL DEFAULT 0,
buy	char(4) NULL DEFAULT '是',
pro_totamt	numeric(7,2) NULL DEFAULT 0,
PRIMARY KEY(shop_no,cust_id,prod_id)
)
--建立delivery表
CREATE TABLE delivery
(
deliv_no char(10) NULL,
cust_id	char(6) NULL,
order_no bigint	NULL,
prod_id	char(6)	NULL,
qty	int	NULL,
unit_price numeric(7,2) NULL,
tot_amt	numeric(9,2) NULL,
zip	char(6), 
addr char(60),
tel_no char(11) NULL,
deliv_date datetime NULL,
cust_name char(8) NULL
)
--建立quit表
CREATE TABLE quit
(
quit_no	char(10) NOT  NULL,
cust_id	varchar(20)NOT 	NULL,
order_no bigint NOT NULL,
deliv_date datetime NULL,
quit_reason	char(50) NULL,
prod_id	char(6) NULL,
qty	int NULL,
cust_name char(8) NULL
PRIMARY KEY(quit_no,cust_id,order_no)
)
--建立warehouse表
CREATE TABLE warehouse
(
wh_no char(5) NOT NULL PRIMARY KEY,
wh_name char(20) NULL
)
--drop table sale_item
--drop table sales
--drop table company 
--drop table customer
--drop table delivery
--drop table discount
--drop table kind
--drop table product 
--drop table quit
--drop table shopcart
--drop table warehouse  

