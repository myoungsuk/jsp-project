<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Menu List</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
	<style>
		body {
			font-family: 'Arial', sans-serif;
			background-color: #f8f9fa;
			padding: 40px;
		}
		.menu-link {
			padding: 10px 15px;
			border-radius: 5px;
			text-decoration: none;
			color: #333;
			background-color: #e9ecef;
			transition: background-color 0.2s;
		}
		.menu-link:hover {
			background-color: #ced4da;
			text-decoration: none;
			color: #333;
		}
		.menu-icon {
			margin-right: 10px;
		}
	</style>
</head>
<body>

<div class="menu-container">
	<a href="member.jsp" class="menu-link">
		<i class="fas fa-user-plus menu-icon"></i>회원가입
	</a>
	<a href="product.jsp" class="menu-link">
		<i class="fas fa-box-open menu-icon"></i>제품정보
	</a>
	<a href="bbs.jsp" class="menu-link">
		<i class="fas fa-comments menu-icon"></i>게시판
	</a>
	<a href="basket.jsp" class="menu-link">
		<i class="fas fa-shopping-basket menu-icon"></i>장바구니
	</a>
</div>

</body>
</html>
