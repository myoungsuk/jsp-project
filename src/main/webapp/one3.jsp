<%@page import="bean.ProductVO"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	ProductDAO dao = new ProductDAO();
	
	ProductVO bag = dao.one(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	text-align: center
}

table {
	text-align: center;
	font-size: 20px;
}

.right {
	width: 200px;
	background: cyan;
}

.left {
	width: 200px;
	background: violet;
}

img {
	width: 100px;
	height: 100px;
}
</style>
</head>
<body bgcolor="orange">

	<h2>검색 결과</h2>
	<hr color="purple" size="10">
	<a href="index.html">
		<button style="background: lightblue">첫페이지로</button>
	</a>
	<a href="product.html">
		<button style="background: lightblue">상품정보 페이지로</button>
	</a>
	<table border="1" align=center>
		<tr>
			<td class="left">상품 번호</td>
			<td class="right"><%=bag.getId()%></td>
		</tr>
		<tr>
			<td class="left">상품명</td>
			<td class="right"><%=bag.getName()%></td>
		</tr>
		<tr>
			<td class="left">상품설명</td>
			<td class="right"><textarea rows="4" cols="22"
					style="background: cyan; font-size: 20px"><%=bag.getContent()%></textarea></td>
		</tr>
		<tr>
			<td class="left">상품가격</td>
			<td class="right"><%=bag.getPrice()%></td>
		</tr>
		<tr>
			<td class="left">제조회사</td>
			<td class="right"><%=bag.getCompany()%></td>
		</tr>
		<tr>
			<td class="left">이미지</td>
			<td class="right"><img src="img/<%=bag.getImg()%>"></td>
		</tr>
	</table>
</body>
</html>