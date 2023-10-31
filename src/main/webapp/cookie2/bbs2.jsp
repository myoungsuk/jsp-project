<%@page import="bean.BbsDTO2"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<jsp:useBean id="bag" class="bean.BbsDTO2"></jsp:useBean>
<jsp:setProperty property="id" name="bag"/>
<%
	BbsDAO dao = new BbsDAO();
	BbsDTO2 bag2 = dao.getOneId(bag);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/project.css">
	<!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include> <!-- 액션태그 -->
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
		<br>
		<% if(session.getAttribute("id") != null ) { %>
		<%= session.getAttribute("id") %>님 환영합니다.
		<a href="logout.jsp">
			<button class="btn btn-outline-danger">로그아웃</button>
		</a>
		<% } %>
		<br>
		<%-- <%= bag2 %> --%>
		<table class="table">
			<tr class="table-success">
				<td>제목</td>
				<td><%= bag2.getTitle() %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><%= bag2.getContent() %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= bag2.getWriter() %></td>
			</tr>
		</table>
		<center>

			<a href="bbs.jsp">
				<button class="btn btn-info">리스트로</button>
			</a>
			<%
				if(session.getAttribute("id") != null){
					if(session.getAttribute("id").equals(bag2.getWriter())){
			%>
			<a href="update.jsp"><%= bag2.getId() %>
				<button class="btn btn-danger">수정하기</button>
			</a>
			<a href="delete.jsp"><%= bag2.getId() %>
				<button class="btn btn-danger">삭제하기</button>
			</a>
			<% }} %>
		</center>
	</div>
</div>
</body>
</html>