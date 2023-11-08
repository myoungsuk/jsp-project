<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그는 무조건 get요청, 단순한 요청  -->
	<a href="hi?q=car">Get요청</a><br>
	<!-- form태그는 get/post중 선택할 수 있음. -->
	<form action="hi" method="post"> <!-- 기본값은 get!  -->
		 id : <input name="id" value="apple"><br>
		 pw : <input name="pw" value="1234"><br>
		 <button>서버로 제출</button>
	</form>
</body>
</html>