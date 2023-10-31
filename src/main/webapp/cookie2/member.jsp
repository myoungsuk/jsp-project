<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Redesigned Page</title>
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<style>
		body {
			background-color: #f5f5f5;
			padding: 50px;
		}
		.center-content {
			max-width: 600px;
			margin: 0 auto;
			padding: 20px;
			background-color: #fff;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
	</style>
</head>
<body>
<div class="center-content">
	<div class="mb-4">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div class="mb-4">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>

	<% if (session.getAttribute("id") == null) { %>
	<!-- Login Form -->
	<div class="mb-4">
		<h2 class="text-center">Login</h2>
		<form action="login.jsp">
			<div class="mb-3">
				<label for="id" class="form-label">아이디</label>
				<input type="text" name="id" id="id" class="form-control">
			</div>
			<div class="mb-3">
				<label for="pw" class="form-label">패스워드</label>
				<input type="password" name="pw" id="pw" class="form-control">
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary w-100">로그인처리</button>
			</div>
		</form>
	</div>

	<!-- Registration Form -->
	<hr>
	<div>
		<h2 class="text-center">회원가입</h2>
		<form action="member2.jsp">
			<!-- ... [Rest of the Registration Form] ... -->
			<table border="1" bordercolor='red' class="table table-dark">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" class="form-control"></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="text" name="pw" class="form-control"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" class="form-control"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="tel" class="form-control"></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" style="width: 250px;"
								class="btn btn-warning">회원가입처리</button>
					</td>
				</tr>
			</table>
		</form>
	</div>

	<% } else { %>
	<div class="text-center">
		<p><%= session.getAttribute("id") %>님 로그인되었습니다.</p>
		<a href="logout.jsp" class="btn btn-danger">로그아웃</a>
	</div>
	<% } %>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
