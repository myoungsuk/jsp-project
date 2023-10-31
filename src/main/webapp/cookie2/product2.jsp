<%@page import="bean.ProductDTO"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<jsp:useBean id="bag" class="bean.ProductDTO"></jsp:useBean>
<jsp:setProperty property="id" name="bag"/>
<%
	ProductDAO dao = new ProductDAO();
	ProductDTO bag2 = dao.one(bag);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>제품 상세 정보</title>
	<link rel="stylesheet" type="text/css" href="css/project.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container mt-5">
	<!-- top.jsp 포함 위치 -->
	<div class="row mb-5">
		<div class="col-md-12">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
	</div>

	<!-- top2.jsp 포함 위치 -->
	<div class="row mb-5">
		<div class="col-md-12">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<img src="../img/<%= bag2.getImg()%>" class="img-fluid rounded mx-auto d-block" alt="<%= bag2.getTitle() %>">
		</div>
		<div class="col-md-6">
			<h2><%= bag2.getTitle()%></h2>
			<hr>
			<p><strong>상품아이디:</strong> <%= bag2.getId()%></p>
			<p><strong>상품내용:</strong> <%= bag2.getContent()%></p>
			<p><strong>상품가격:</strong> <%= bag2.getPrice()%>원</p>
			<p><strong>상품회사:</strong> <%= bag2.getCompany()%></p>
			<button class="btn btn-primary btn-lg btn-block mb-2">장바구니</button>
			<button class="btn btn-secondary btn-lg btn-block mb-2">주문하기</button>
		</div>
	</div>
</div>
</body>
</html>
