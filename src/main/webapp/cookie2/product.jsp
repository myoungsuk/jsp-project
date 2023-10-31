<%@page import="bean.ProductDTO" %>
<%@page import="java.util.ArrayList" %>
<%@page import="bean.ProductDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products</title>
    <link rel="stylesheet" type="text/css" href="../css/project.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <% if (session.getAttribute("id") != null) { %>
                <li class="nav-item">
                    <span class="navbar-text mr-3"><%= session.getAttribute("id") %>님 환영합니다.</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-outline-danger" href="logout.jsp">로그아웃</a>
                </li>
                <% } %>
            </ul>
        </div>
        <div id="top2">
            <jsp:include page="top2.jsp"></jsp:include>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <div id="top">
        <jsp:include page="top.jsp"></jsp:include>
    </div>
    <h2 class="mb-4">제품 목록</h2>
    <div class="row">
        <%
            ProductDAO dao = new ProductDAO();
            ArrayList<ProductDTO> list = dao.list();
        %>
        <% for (ProductDTO bag : list) { %>
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="../img/<%= bag.getImg() %>" class="card-img-top"
                     alt="<%= bag.getTitle() %>">
                <div class="card-body">
                    <h5 class="card-title"><a
                            href="product2.jsp?id=<%= bag.getId() %>"><%= bag.getTitle() %>
                    </a></h5>
                    <p class="card-text">가격: <%= bag.getPrice() %>
                    </p>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>
</body>
</html>

