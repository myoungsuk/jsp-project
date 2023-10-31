<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>제품 목록</title>
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
		<div class="col-md-12 mb-4">
			<div class="d-flex justify-content-between align-items-center">
				<h2>제품 목록</h2>
				<% if(session.getAttribute("id") != null ) { %>
				<div>
					<%= session.getAttribute("id") %>님 환영합니다.
					<a href="logout.jsp">
						<button class="btn btn-outline-danger">로그아웃</button>
					</a>
				</div>
				<% } %>
			</div>
		</div>

		<%
			ProductDAO dao = new ProductDAO();
			ArrayList<ProductDTO> list = dao.list();
		%>
		<div class="col-md-12">
			<p>전체 제품수: <%= list.size() %></p>
		</div>

		<% for(ProductDTO bag: list){ %>
		<div class="col-md-4 mb-4">
			<div class="card">
				<img src="../img/<%= bag.getImg() %>" class="card-img-top" alt="<%= bag.getTitle() %>">
				<div class="card-body">
					<h5 class="card-title">
						<a href="product2.jsp?id=<%= bag.getId() %>"><%= bag.getTitle() %></a>
					</h5>
					<p class="card-text">가격: <%= bag.getPrice() %>원</p>
				</div>
			</div>
		</div>
		<% } %>
	</div>
</div>
</body>
</html>
