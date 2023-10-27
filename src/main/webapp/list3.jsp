<%@page import="bean.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    	1. db처리(DAO)
		2. db처리한 결과를 html로 만드는 부분(jsp  <— list —  DAO)
     -->
     <%
     	ProductDAO dao = new ProductDAO();
     	ArrayList<ProductVO> list = dao.list(); //{bag, bag, bag, ....}
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.top { /* 클래스로 지정한 것 중에서 top선택해라. */
	background: white;
	color: red;
	text-align: center;
}
.data {
	background: yellow;
	color: blue;
	text-align: center;
}
</style>
</head>
<body bgcolor="red">
<h3>상품목록입니다.</h3>
<table border="1" align="center">
	<tr>
		<td class="top">상품번호</td>
		<td class="top">상품이름</td>
		<td class="top">상품가격</td>
		<td class="top">상품이미지</td>
	</tr>
<% for(ProductVO bag : list) {  //{bag, bag, bag, ....} ==> 10 %>	
	<tr>
		<td class="data"><%= bag.getId() %></td> <!-- 출력, 표현식, 익스프레션  -->
		<td class="data">
			<a href="one3.jsp?id=<%= bag.getId() %>"><%= bag.getName() %></a>
		</td>
		<td class="data"><%= bag.getPrice() %></td>
		<td class="data">
			<img src="img/<%= bag.getImg() %>" width="100" height="100">
		</td>
	</tr>
<% } %>	
</table>

</body>
</html>




