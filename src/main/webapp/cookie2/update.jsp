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
	<title>글 수정하기</title>
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
				<div class="card-header bg-warning">
					<h5 class="mb-0">글 수정하기</h5>
				</div>
				<div class="card-body">
					<form action="update2.jsp">
						<input name="id" value="<%= bag2.getId() %>" type="hidden">
						<div class="mb-3">
							<label for="title" class="form-label">제목</label>
							<input type="text" class="form-control" id="title" name="title" value="<%= bag2.getTitle()%>">
						</div>
						<div class="mb-3">
							<label for="content" class="form-label">내용</label>
							<textarea class="form-control" id="content" name="content" rows="4"><%= bag2.getContent()%></textarea>
						</div>
						<div class="mb-3">
							<label for="writer" class="form-label">작성자</label>
							<input type="text" class="form-control" id="writer" name="writer" value="${id}" readonly>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-info">글수정하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
