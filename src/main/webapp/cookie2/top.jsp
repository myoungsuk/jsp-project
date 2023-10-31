<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>메뉴 목록</title>
	<style>
		ul {
			list-style-type: none;
			padding: 0;
			margin: 0;
			font-family: 'Noto Sans KR', sans-serif;
			text-align: center;
		}

		li {
			margin: 15px 0;
			padding: 10px 20px;
			border: 2px solid #e0e0e0;
			border-radius: 10px;
			transition: background-color 0.3s, transform 0.3s;
		}

		li:hover {
			background-color: #007BFF;
			transform: scale(1.05);
		}

		a {
			text-decoration: none;
			color: #333;
			font-weight: bold;
			transition: color 0.3s;
		}

		a:hover {
			color: #ffffff;
		}

		.border {
			height: 2px;
			background-color: #007BFF;
			margin: 10px 0;
		}
	</style>
</head>
<body>
<ul>
	<li><div class="border"></div><a href="member.jsp">회원가입</a></li>
	<li><div class="border"></div><a href="product.jsp">제품정보</a></li>
	<li><div class="border"></div><a href="bbs.jsp">게시판</a></li>
	<li><div class="border"></div><a href="basket.jsp">장바구니</a></li>
</ul>
</body>
</html>
