<%@page import="bean.BbsDTO2"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>게시판</title>
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
			<div class="alert alert-success d-flex align-items-center">
				<strong><%=session.getAttribute("id")%></strong>님 환영합니다.
				<div class="ms-auto">
					<a href="insert.jsp" class="btn btn-danger btn-sm me-2">글쓰기</a>
					<a href="logout.jsp" class="btn btn-outline-danger btn-sm">로그아웃</a>
				</div>
			</div>
			<% } %>

			<%
				BbsDAO dao = new BbsDAO();
				ArrayList<BbsDTO2> list = dao.list();
			%>

			<h5 class="text-muted">전체 게시물: <%= list.size() %>개</h5>
		</div>

		<div class="col-md-12">
			<table class="table table-bordered table-hover">
				<thead class="table-dark">
				<tr>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
				</tr>
				</thead>
				<tbody>
				<% for(BbsDTO2 bag: list) {%>
				<tr>
					<td><%= bag.getTitle() %></td>
					<td>
						<a href="bbs2.jsp?id=<%= bag.getId() %>">
							<%= bag.getContent() %>
						</a>
					</td>
					<td><%= bag.getWriter() %></td>
				</tr>
				<%} %>
				</tbody>
			</table>
		</div>
	</div>
</div>

</body>
</html>
