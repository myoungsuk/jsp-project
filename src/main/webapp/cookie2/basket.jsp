<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>장바구니 확인</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">
<div class="container mt-5">
	<div class="row mb-4">
		<div class="col-md-12">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
	</div>

	<div class="row mb-4">
		<div class="col-md-12">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12 mb-3">
			<% if(session.getAttribute("id") != null ) { %>
			<div class="alert alert-info d-flex align-items-center">
				<strong><%=session.getAttribute("id")%></strong>님 환영합니다.
				<div class="ms-auto">
					<a href="logout.jsp" class="btn btn-outline-danger btn-sm">로그아웃</a>
				</div>
			</div>
			<% } %>
		</div>

		<div class="col-md-12">
			<div class="card">
				<div class="card-header bg-primary text-white">
					<h5 class="mb-0">장바구니 목록</h5>
				</div>
				<div class="card-body">
					<!-- 장바구니 항목 시작 -->
					<!-- 예시로 아래와 같이 항목을 추가해 보았습니다. -->
					<ul class="list-group">
						<li class="list-group-item d-flex justify-content-between align-items-center">
							제품명1
							<span class="badge bg-primary rounded-pill">수량: 1</span>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
							제품명2
							<span class="badge bg-primary rounded-pill">수량: 3</span>
						</li>
					</ul>
					<!-- 장바구니 항목 끝 -->
					<div class="text-center mt-4">
						<button class="btn btn-success">구매하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
