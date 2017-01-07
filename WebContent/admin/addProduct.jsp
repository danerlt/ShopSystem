<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="cmn-Hans-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>添加商品</h3>
	<form action="AddProductServlet" method="post">
		<table>
			<tr>
				<td>商品名称</td>
				<td><input name="pName" type="text" /></td>
			</tr>
			<tr>
				<td>商品描述</td>
				<td><textarea name="pDesc" id="" cols="30" rows="10"></textarea></td>
			</tr>
			<tr>
				<td>商品库存</td>
				<td><input name="pNum" type="number" /></td>
			</tr>
			<tr>
				<td>商品生产日期</td>
				<td><input name="pubTime" type="date" /></td>
			</tr>
			<tr>
				<td>商品保质期(天)</td>
				<td><input name="pKeepTime" type="number" /></td>
			</tr>
			<tr>
				<td>商品图片</td>
				<td><input name="pImage" type="file" /></td>
			</tr>
			<tr>
				<td>商品类别</td>
				<td><select>
						<option value="">Volvo</option>
						<option value="saab">Saab</option>
						<option value="opel">Opel</option>
						<option value="audi">Audi</option>
				</select></td>
			</tr>
			<tr>
				<td>网站价格</td>
				<td><input name="iPrice" type="text" /></td>
			</tr>
			<tr>
				<td>市场价格</td>
				<td><input name="mPrice" type="text" /></td>
			</tr>
			<tr>
				<td>是否是热图</td>
				<td><input type="radio" name="isHot" value="是">是 <input
					type="radio" name="isHot" value="否">否</td>
			</tr>
			<tr>
				<td>是否在首页显示</td>
				<td><input type="radio" name="isShow" value="是">是 <input
					type="radio" name="isShow" value="否">否</td>
			</tr>
			<tr>
			    <td rowspan="2"><input type="submit" value="添加"/></td>
			</tr>
		</table>
	</form>
</body>
</html>