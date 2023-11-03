<%@page import="java.util.ArrayList" %>
<%@page import="bean.ProductDTO" %>
<%@page import="bean.MemberDTO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:useBean id="bag" class="bean.ProductDTO"></jsp:useBean>
"
<jsp:setProperty name="bag" property="*"/>

<%
	ArrayList<ProductDTO> list = null;
	if(session.getAttribute("basket") == null) {
		list = new ArrayList<>();
	}else {
		list = (ArrayList<ProductDTO>)session.getAttribute("basket");
	}
//    ArrayList<ProductDTO> list = (ArrayList<ProductDTO>) session.getAttribute("list");
//    if (list == null) {
//        list = new ArrayList<ProductDTO>();
//        session.setAttribute("list", list);
//    }
    if(bag != null && bag.getTitle() != null && !bag.getTitle().isEmpty() && bag.getPrice() != null) {
        list.add(bag);
        session.setAttribute("basket", list);
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니 확인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
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
            <% if (session.getAttribute("id") != null) { %>
            <div class="alert alert-info d-flex align-items-center">
                <strong><%=session.getAttribute("id")%>
                </strong>님 환영합니다.
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
                        <%
							if(session.getAttribute("id") != null){
                            for (int i = 0; i < list.size(); i++) {
                                ProductDTO dto = list.get(i);
								if(dto.getTitle() != null && !dto.getTitle().isEmpty() && dto.getPrice() != null) {
                        %>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <%= dto.getTitle() %>
                            <span class="badge bg-primary rounded-pill">가격: <%= dto.getPrice() %> | <a
                                    href="order.jsp?id=<%= dto.getId() %>">주문하기</a></span>
                        </li>
                        <%
                            }
							}
							}
							// end of for-loop
                        %>
                    </ul>
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