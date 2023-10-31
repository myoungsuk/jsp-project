<%@page import="bean.BbsDTO2"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="bag" class="bean.BbsDTO2"></jsp:useBean>
<jsp:setProperty property="id" name="bag"/>
<%
	BbsDAO dao = new BbsDAO();
	BbsDTO2 bag2 = dao.one(bag);
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>게시글 상세보기</title>
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

		<div class="col-md-12 mb-3">
			<table class="table table-bordered">
				<tbody>
				<tr class="table-success">
					<th width="15%">제목</th>
					<td><%= bag2.getTitle() %></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%= bag2.getWriter() %></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><%= bag2.getContent() %></td>
				</tr>

				</tbody>
			</table>
		</div>

		<div class="col-md-12 text-center">
			<a href="bbs.jsp" class="btn btn-info me-2">리스트로</a>
			<%
				if(session.getAttribute("id") != null){
					if(session.getAttribute("id").equals(bag2.getWriter())){
			%>
			<a href="update.jsp?id=<%= bag.getId()%>" class="btn btn-warning me-2">수정하기</a>
			<a href="delete.jsp?id=<%= bag.getId()%>" class="btn btn-danger">삭제하기</a>
			<% }} %>
		</div>
	</div>
</div>
</body>
</html>
