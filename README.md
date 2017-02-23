# ShopSystem
javaweb课程设计----在线商城系统

学号：2014131219
姓名：李滔
班级：计算机二班

[TOC]
## 需求分析
根据需求，本系统本次主要完成以下功能
1.用户功能区 
用户注册，登录，注销；
添加购物车；
查看商品信息；
提交订单功能；
个人信息管理，对个人信息的增，删，改，查
2.管理员功能区
用户管理模块，对用户的增删改查；
分类信息处理模块，对商品分类进行增删改查；
商品模块，对商品进行增删改查
订单处理功能； 


## 目录说明
![image_1b5uv0lfjuoe37b1s6k1f8i1cjac.png-27.6kB][1]
其中build是编译后的工程文件。SQL中保存的是数据字典和建表的SQL语句
src是java的源代码，WebContent是存放jsp,js,css，img等的。
### src
包的统一前缀都是com.shop。其中dao包下放的是数据库访问层，用来对数据库操作。domain包下存放的是实体，一张表对应一个实体类。filter包下是过滤器，其中包括中文编码的过滤器和用于拦截管理员登录的过滤器。servlet包存放所有的Servlet，其中每一个子包着对应一个实体的Servlet。utils包下面放的是用于连接数据库，对数据库查询和修改的一个工具类DBUtil,连接数据库，设置数据库信息在这个类里面设置。
![image_1b5uvcscr11ucvq6fuui3717i1p.png-27.1kB][2]
### WebContent
admin文件夹下放的是后台管理的页面，css存放样式表，err下存放出错的jsp页面，如404.jsp和500.jsp,js存放js代码，font存放字体，image存放临时缓存图片，images存放页面背景，图标，跟页面布局有关的图片。img存放商品图片。剩下的jsp文件就是网站前台的页面了。
![image_1b5v09arhlt11bg73sb1nsqumv30.png-18kB][3]

#### 前台
*  index.jsp 主页  
![image_1b5v0ms7o1do313ae112b108q1ecg3d.png-969.3kB][4]
*  register.jsp 注册
![image_1b5v0qv9h11715b91qi11nbl1b954n.png-108.1kB][5]
*  login.jsp 登录
这里验证码可以输入可以不输入，后台并没有实现验证。
![image_1b5v0ob3591u1hu3ce1192g1jjt3q.png-308.2kB][6]
*  product_info.jsp 商品详情信息
![image_1b5v0sd6arlu1r0q1t0g1hi1vs154.png-168.1kB][7]
*  product_list.jsp 所有商品类别
![image_1b5v0uu3q1l3m19cf1fii19pl1kcf5u.png-384.2kB][8]
*  product_list_by_kind.jsp 按照分类显示商品信息
![image_1b5v0tes41f131gov118k1n251rlf5h.png-623.1kB][9]
*  cart.jsp 购物车
![image_1b5v116pg68e1ggr1k3tfsagl87r.png-81.2kB][10]
*  order_list.jsp 订单列表
![image_1b5v13qbo14ljenp15aq1m741ubr8o.png-122.4kB][11]
*  order_info.jsp 订单详情信息
![image_1b5v152941on1io51m4g1i7gu929l.png-85.1kB][12]
#### 后台
后台登陆必须手动在地址栏输入[http://localhost:9090/ShopSystem/admin/login.jsp](http://localhost:9090/ShopSystem/admin/login.jsp),默认帐号为root,密码为root.
* index.jsp 主页
![image_1b5v1jc1a1akmoce1rfh116h1ftiav.png-558.1kB][13]
* login.jsp 管理员登录
![image_1b5v1huu010otsd1gte1i061rsvai.png-510.4kB][14]
* addAdmin.jsp 添加管理员
![image_1b5v1kkjvhpep0m689kr71p5bc.png-526.1kB][15]
* listAdmin.jsp 所有管理员
![image_1b5v1mu8k117m1s06ccm153s2aqc9.png-285.7kB][16]
* editAdmin.jsp 修改管理员
![image_1b5v1olla1njmep52s8d5mrb0d3.png-270.1kB][17]
* queryAdmin.jsp 查询管理员
![image_1b5v1ns9i1vm51e4r1ulgk6n1iqpcm.png-267.5kB][18]
* addKind.jsp 添加商品分类信息
![image_1b5v23cjcpvd108ivii79c1ct8fn.png-263.7kB][19]
* listKind.jsp 所有商品分类信息
![image_1b5v22jhp14k1l911gjr145il3afa.png-279.5kB][20]
* editKind.jsp 修改商品分类信息
![image_1b5v243hi4m71eh8e68i97a31g4.png-266.1kB][21]
* queryKind.jsp 查询分类
![image_1b5v260301q9ab4c8ujq6gcnjh.png-266.1kB][22]
* addProduct.jsp 添加商品
![image_1b5v1qm2n164s162o1thp1kmk6a3dg.png-278.5kB][23]
* listProduct.jsp 所有商品
![image_1b5v1s9neqv71a2a1abq18p51b7jed.png-626.7kB][24]

## 任务list
### 已完成

- [x]  用户注册，登录，注销
- [x] 添加购物车（用户必须登录后才能添加购物车，否则不能添加）
- [x] 查看商品信息，可以查看所有商品信息，可以安装分类查看商品信息，可以查看商品详细信息。
- [x] 管理员信息的增删改查
- [x] 商品分类信息的增删改查

### 未完成

- [ ] 提交订单功能,订单管理功能，只写好了jsp页面，功能尚未实现。
- [ ] 商品的添加，修改功能（上次图片和日期的转换调试没调试出来）。

## 总结
从开始写这个课程设计，断断续续写了近两周，但是真正写代码的时间有四天，最开始的构想功能还是比较多比较完善的。写到一半的时候发现可能完不成这么多功能，于是在1月5号的时候开始重构，将原来的14个表，缩减到6个表，将功能也减少了很多。大体上能够运行，但是还有些功能不够完善。记录下写课设遇到的一下问题和解决办法和总结。
1.ajax的使用
开始再注册登录的时候使用到了ajax，实现了ajax异步加载的功能，后来重构时，出现了很多错误，遂将ajax去掉了。
```js
var url = "Register?username="+username;
	var req;
	if(window.XMLHttpRequest){
		req = new XMLHttpRequest();
	}else{
		req = new ActiveXObject(Microsoft.XMLHTTP);
	}
	req.onreadystatechange = function(){
		if(req.readyState==4 && req.status==200){
			var text = req.responseText;
			if(text == "PASS"){
				alert("该用户名以被注册，换一个昵称吧！");
				name.onfacus();
				return false;
			}
		}
	};
	req.open("GET",url,true);
	req.send();
```
2.mysql数据库中保存图片
mysql并不保存图片源文件，而是保持图片路径。
3.dbutils
将连接数据库,查询，更新数据库封装到DBUtil中，传入sql和Object数据对数据库进行更新。mysql 用户名为root,密码为myroot!!!,数据库名为shopsystem
```
package com.shop.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBUtil {

	private static String driver;
	private static String url;
	private static String username;
	private static String password;
	public Connection conn = null;
	public PreparedStatement pstmt = null;
	public ResultSet rs = null;
    public Statement stmt = null;
	// 通过配置文件设置driver,username,username,password
	static {
		driver = "com.mysql.jdbc.Driver";
		url = "jdbc:mysql://127.0.0.1:3306/shopsystem?useUnicode=true&characterEncoding=utf-8";
	    username = "root";
		password = "myroot!!!";

	}

	public DBUtil() {
	}

	/**
	 * 连接数据库
	 * 
	 * @return 数据库连接对象
	 */
	public static Connection getConnection() {
		try {
			Class.forName(driver);
			// 返回连接
			return DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 数据库查询
	 * 
	 * @param sql
	 *            预处理的SQL语句
	 * @param params
	 *            预处理中的SQL语句中的参数
	 * @return 查询后的结果集
	 */
	public ResultSet doQuery(String sql, Object[] params) {
		try {
			conn = DBUtil.getConnection();
			// 获取PreparedStatement对象
			pstmt = conn.prepareStatement(sql);
			// 设置pstmt的参数
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			// 执行查询
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
    
	/**
	 * 数据库查询
	 * 
	 * @param sql
	 *             处理的SQL语句
	 * @return 查询后的结果集
	 */
	public ResultSet doQuery(String sql) {
		try {
			conn = DBUtil.getConnection();
			// 获取PreparedStatement对象
			stmt = conn.createStatement();
			// 执行查询
			rs = stmt.executeQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	/**
	 * 执行数据库更新操作(DDL和DML)
	 * 
	 * @param sql
	 *            预处理的SQL语句
	 * @param params
	 *            预处理中的SQL语句中的参数
	 * @return 受影响的行数
	 */
	public int doUpdate(String sql, Object[] params) {
		int n = 0;

		// 取消Connection的自动提交
		try {
			conn = DBUtil.getConnection();
			conn.setAutoCommit(false);
			// 获取PreparedStatement对象
			pstmt = conn.prepareStatement(sql);
			// 设置pstmt的参数
			// 设置pstmt的参数
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			// 执行更新
			n = pstmt.executeUpdate();
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			e.printStackTrace();
		}
		return n;
	}

	/**
	 * 执行数据库更新操作(DDL和DML)
	 * 
	 * @param sql
	 *            预处理的SQL语句
	 * @return 受影响的行数
	 */
	public int doUpdate(String sql) {
		int n = 0;//受影响的行数
		// 取消Connection的自动提交
		try {
			conn = DBUtil.getConnection();
			conn.setAutoCommit(false);
			// 获取Statement对象
			stmt = conn.createStatement();
			// 执行更新
			n = stmt.executeUpdate(sql);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			e.printStackTrace();
		}
		return n;
	}
	
	/**
	 * 关闭数据库的连接，释放资源
	 * @param stmt Steatemet对象
	 * @param conn 数据库连接对象
	 * @throws Exception 
	 */
	public void close() {
		if(rs != null){
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			stmt = null;
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			conn = null;
		}

	}
	
}
```
4.错误:the servlets named [x] and [y] are both mapped to the url-pattern [/XXXServlet] which is not permitted.

解决办法，删掉Servlet中@WebServlet("/XXXServlet")这行代码

6.mysql和java数据类型的转换
![image_1b5v41jid188l9b6q4iark104sp.png-55.6kB][25]
7.jstl 判断对象是否为空 用${not empty ObjectName} 或者${empty ObjectName}

8.应用程序路径：${pageContext.servletContext.contextPath}

9.c:forEace
```
<c:forEach var="kind" items="${sessionScope.listKind}">				   内容
</c:forEach>

<c:forEach var="indx" begin="1" end="20" step ="1">				   内容
</c:forEach>
```

10.jstl中list的长度${fn:length(listHotProduct)-1}
11.mysql中查看constarints
```sql
SELECT
    constraint_name,
    table_name
FROM
    information_schema.table_constraints
WHERE
    constraint_type = 'FOREIGN KEY'
AND table_schema = DATABASE()
ORDER BY
    constraint_name;
```

  [1]: http://static.zybuluo.com/danerlt/jamscme18voozvkufbke0s89/image_1b5uv0lfjuoe37b1s6k1f8i1cjac.png
  [2]: http://static.zybuluo.com/danerlt/x9triytszm2e5l6sken5vb77/image_1b5uvcscr11ucvq6fuui3717i1p.png
  [3]: http://static.zybuluo.com/danerlt/shzxzswtvtsw0j5ay9takbb7/image_1b5v09arhlt11bg73sb1nsqumv30.png
  [4]: http://static.zybuluo.com/danerlt/3itvznzng9u1l42xg1b5nnl5/image_1b5v0ms7o1do313ae112b108q1ecg3d.png
  [5]: http://static.zybuluo.com/danerlt/27fmwkz2uprequbkbfh0h5mt/image_1b5v0qv9h11715b91qi11nbl1b954n.png
  [6]: http://static.zybuluo.com/danerlt/dybknsjv6owmoqwp4n30z3ci/image_1b5v0ob3591u1hu3ce1192g1jjt3q.png
  [7]: http://static.zybuluo.com/danerlt/yrz239bwnspxi3yfuh6nsv8b/image_1b5v0sd6arlu1r0q1t0g1hi1vs154.png
  [8]: http://static.zybuluo.com/danerlt/yt8jhavrcw0exbl1bdarnco0/image_1b5v0uu3q1l3m19cf1fii19pl1kcf5u.png
  [9]: http://static.zybuluo.com/danerlt/rzos56a6d3qaoxc57sk86e3f/image_1b5v0tes41f131gov118k1n251rlf5h.png
  [10]: http://static.zybuluo.com/danerlt/owyf3homrt23fbhti77ubsd8/image_1b5v116pg68e1ggr1k3tfsagl87r.png
  [11]: http://static.zybuluo.com/danerlt/i29z298jaxjwdcqxn2f3cyci/image_1b5v13qbo14ljenp15aq1m741ubr8o.png
  [12]: http://static.zybuluo.com/danerlt/rj862thyohq8b0xrxjwzmenm/image_1b5v152941on1io51m4g1i7gu929l.png
  [13]: http://static.zybuluo.com/danerlt/vetwd6vlunposfc7lvk7bysu/image_1b5v1jc1a1akmoce1rfh116h1ftiav.png
  [14]: http://static.zybuluo.com/danerlt/qz6484gs3ulm5xy9twngtr3r/image_1b5v1huu010otsd1gte1i061rsvai.png
  [15]: http://static.zybuluo.com/danerlt/jmp67vb6cwh5j7kwuwxamn77/image_1b5v1kkjvhpep0m689kr71p5bc.png
  [16]: http://static.zybuluo.com/danerlt/uetzqmlt1b1wo6ruihndsges/image_1b5v1mu8k117m1s06ccm153s2aqc9.png
  [17]: http://static.zybuluo.com/danerlt/rzpilwryg8ua25lv6k0yj15p/image_1b5v1olla1njmep52s8d5mrb0d3.png
  [18]: http://static.zybuluo.com/danerlt/gu0pl94e6638mhcqvml3crpn/image_1b5v1ns9i1vm51e4r1ulgk6n1iqpcm.png
  [19]: http://static.zybuluo.com/danerlt/02gyqcjgnumk2jzrlxx93l8k/image_1b5v23cjcpvd108ivii79c1ct8fn.png
  [20]: http://static.zybuluo.com/danerlt/e8xwey6lnwnk5cpgqerxbxlw/image_1b5v22jhp14k1l911gjr145il3afa.png
  [21]: http://static.zybuluo.com/danerlt/zvrfo97lmspd4tg5sxoah0gj/image_1b5v243hi4m71eh8e68i97a31g4.png
  [22]: http://static.zybuluo.com/danerlt/6dl8nrq80d1spj4s7z64z970/image_1b5v260301q9ab4c8ujq6gcnjh.png
  [23]: http://static.zybuluo.com/danerlt/d3mm4qpm8f6252b4h1fvfxqc/image_1b5v1qm2n164s162o1thp1kmk6a3dg.png
  [24]: http://static.zybuluo.com/danerlt/tya67k72ra0lirckzzzwwqfe/image_1b5v1s9neqv71a2a1abq18p51b7jed.png
  [25]: http://static.zybuluo.com/danerlt/flj1e6d8r3gqa9x6za4n468c/image_1b5v41jid188l9b6q4iark104sp.png