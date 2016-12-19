use ShopSystem
--insert_cust	插入新的客户信息	当客户成功注册后，自动在客户表中
--添加该客户的注册信息
use ShopSystem
go
create procedure insert_cust
(@cust_id varchar(20),@cust_pwd char(32),@email varchar(30))
as
declare @num int
select @num=count(cust_id) from customer where cust_id=@cust_id
if @num=0
	insert into customer(cust_id,cust_pwd,email) values(@cust_id,@cust_pwd,@email)
else 
	print'此ID已注册'
go
--上面存储过程的验证
--select * from customer
--insert into customer(cust_id,cust_pwd,email) values('U10000','123456','test@shop.com')
--exec insert_cust 'U110000','123456','test@shop.com'

--select_cust	查询客户个人信息	登录系统后，客户可以查询个人信息
go
create procedure select_cust @cust_id varchar(20)
as
select * from customer where @cust_id=cust_id
go
--验证
select * from customer 
exec select_cust 'U10000'

--update_cust	修改客户个人信息	登录系统后，客户可以修改个人信息
drop procedure update_cust
go
create procedure update_cust 
(
@cust_id varchar(20),
@cust_pwd char(32),
@cust_name varchar(16) ,
@addr varchar(60),
@email varchar(30),
@zip char(6),
@tel char(11),
@sex char(2) ,
@cust_sco int
)
as
update customer 
set cust_id=@cust_id,
cust_pwd=@cust_pwd,
cust_name=@cust_name,
email=@email,
addr=@addr,
tel=@tel,
zip=@zip,
sex=@sex,
cust_sco=@cust_sco
 where (cust_id=@cust_id)
go
select * from customer
exec update_cust 'U10000','12345','TTest','重庆市南岸区','TTest@shop.cn','101010','男','18723937311','0'

--chan_level	修改客户等级	当客户积分达到一定要求，自动修改客户等级
drop trigger cust_level
go
create trigger cust_level
on customer
for insert,update
as 
update customer set cust_level=1 where (0<=cust_sco and cust_sco <500)
update customer set cust_level=2 where (500<=cust_sco and cust_sco <1000)
update customer set cust_level=3 where (1000<=cust_sco )
go

update customer set cust_sco=1000 where cust_id='U10000'
select * from customer
--add_score	增加客户积分	生成订单后，则根据订单金额自动增加积分
--code_detect	检测客户的注册密码是否符合要求	当客户输入密码时，自动检测密码是否在6-12位之间，否则将提示其重新输入
--select_sales	查询订单	当客户查询时，只能查询其个人订单信息 
--insert_product	添加新的商品信息	在存储过程中用insert语句添加新的商品信息
--insert_kind	添加新的商品类别信息	添加新的商品信息时，若其属于新的类别，则应先在类别表中添加该商品类别
--insert_sup	添加新的生产厂家信息	添加新的商品信息时，若其为新的厂家生产，则应先在生产厂家表中添加该生产厂家名
--delete_sup	删除生产厂家	用delete操作删除某个生产厂家，此时商品应做级联删除操作
--delete_product	删除商品信息	当商品不再销售时，删除商品信息
--add_prod	提示添加商品信息	当商品库存量小于100时，提示要添加商品
--chan_price	修改商品价格	当商品接近保质期（用有效日期减去系统时间后，所得的值小于3个月），则把商品设为特价商品（根据商品类别修改商品价格）
--kind_select	按商品类别名查询商品信息	客户可以输入商品类别名查询自己想要的商品
--sup_select	按生产厂家名查询商品信息	客户可以输入生产厂家名查询自己想要的商品
--prod_name_select	按商品名称查询商品信息	客户可以输入商品名称查询自己想要的商品
--add_shopcart	生成商品暂存表（即往购物车中放入商品）	客户点击“购买”商品时，自动生成一张商品暂存表
--delete_shopcart 	删除商品暂存表（即清空购物车）	当客户提交购物清单后，自动把购物车中的商品信息清除
--calculate_shop_amt	计算暂存表中的商品总额	根据商品暂存表中的商品数量和折后价计算客户购买的商品总额
--update_buy	决定是否购买商品	通过update操作客户可以确认自己是否想购买该商品
--update_qty	修改购物车中的商品数量	在商品暂存表中客户可以通过自己update操作决定自己购买多少数量的商品
--delete_shop_prod	删除客户不想购买的商品	若商品暂存表中的“是否购买”字段为“否”，则删除该商品
--calculate_price	计算商品折后价	根据客户等级计算商品暂存表和订单明细表的当客户提交购物清单后，商品折后价
--add_deli	生成商品配送单	当客户提交购物清单后，自动生成一张商品配送单
--update_deli	修改配送单中的客户信息	对配送单中的客户信息，客户自己可以修改
--insert_item	生成订单明细表和订单总表	当客户付款后，根据商品暂存表自动生成一张订单明细表同时生成一张订单总表
--calculate_tot	计算订单总表中的tot_amt值	根据订单明细表中的商品数量和单价计算订单总表中的tot_amt值
--status_tri	修改订单状态	当商家发出配送单时，订单状态自动修改为‘1’，表示货物已发送
--insert_return	生成退货单	为客户办理退货业务时，生成一张退货单
--update_tri	修改订单	当退货单生成后，同时修改相应的订单明细表和订单总表，即级联更新
--totamount	统计在某一地区的销售总额	根据客户地址统计在某一地区的销售总额
--cal_cust	统计每个客户年订单总额	根据订单总表统计每个客户年订单总额
--sum_tot	统计商城所有订单总额	统计所有订单总表的订单金额
--cust_tri	仅允许dbo用户删除客户信息	当删除客户信息时,如果为客户,他没有删除的权限,若为管理员,则可以删除
--detect_qty	检测客户输入的商品数量是否超过库存量	当客户输入商品数量时，检测其是否超过库存量，若是，则提示“您所购买的数量超过库存量,请重新输入!”，否则在商品表中库存量应做相应的减少
--prod_date_detect	检测商品生产日期	添加新的商品信息时，检测其生产日期是否在系统日期之前，否则提示“生产日期不可能大于系统日期，请重新输入！”
--deliv_date_detect	检测配送日期	生成订单时，检测其订货日期是否在配送日期之前，否则提示“订货日期不可能大于配送日期，请重新输入！”
--update_sale_item	更新订单总表	当修改订单明细表的数量或单价时，订单总表的tot_amt值应做相应地修改

