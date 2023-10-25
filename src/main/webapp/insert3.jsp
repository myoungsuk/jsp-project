<%@page import="bean.ProductVO"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String content = request.getParameter("content");
String price = request.getParameter("price");
String company = request.getParameter("company");
String img = request.getParameter("img");

ProductDAO dao = new ProductDAO();
ProductVO bag = new ProductVO();
bag.setId(id);
bag.setName(name);
bag.setContent(content);
bag.setPrice(Integer.parseInt(price));
bag.setCompany(company);
bag.setImg(img);

dao.insert(bag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">상품등록이 완료되었습니다.!
</body>
</html>