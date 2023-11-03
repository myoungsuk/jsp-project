<%@page import="bean.ProductDTO"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!--
1.앞페이지에서 넘어온 id를 받아서 bag을 만들어서 저장
(액션태그이용)
2.dao를 이용해서 db처리
3.db에서 가지고 온 데이터를 테이블로 출력
-->
<!--
import bean.ProductDTO;
ProductDTO bag = new ProductDTO();
-->
<jsp:useBean id="bag" class="bean.ProductDTO"></jsp:useBean>
<!--
bag.setId(request.getParamter("id");
-->
<jsp:setProperty property="id" name="bag"/>
<%
    ProductDAO dao = new ProductDAO();
    ProductDTO bag2 = dao.one(bag); //ProductDTO
%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>제품 상세 정보</title>
    <link rel="stylesheet" type="text/css" href="css/project.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="../js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#basket').click(function () {
                $.ajax({
                   url : "basket.jsp",
                    data : {
                       id : '<%= bag2.getId() %>',
                        title : '<%= bag2.getTitle() %>',
                        price : '<%= bag2.getPrice() %>'
                    },
                    success: function () {
                        alert("장바구니에 담겼습니다.")
                        let go = confirm("장바구니로 이동하시겠습니까?")
                        if (go) {
                            location.href = "basket.jsp"
                        }else {
                            location.href = "product2.jsp?id=<%= bag2.getId() %>";
                        }
                    }
                });
            });
        });


    </script>
</head>
<body>
<div class="container mt-5">
    <!-- top.jsp 포함 위치 -->
    <div class="row mb-5">
        <div class="col-md-12">
            <jsp:include page="top.jsp"></jsp:include>
        </div>
    </div>

    <!-- top2.jsp 포함 위치 -->
    <div class="row mb-5">
        <div class="col-md-12">
            <jsp:include page="top2.jsp"></jsp:include>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <img src="../img/<%= bag2.getImg()%>" class="img-fluid rounded mx-auto d-block"
                 alt="<%= bag2.getTitle() %>">
        </div>
        <div class="col-md-6">
            <h2><%= bag2.getTitle()%>
            </h2>
            <hr>
            <p><strong>상품아이디:</strong> <%= bag2.getId()%>
            </p>
            <p><strong>상품내용:</strong> <%= bag2.getContent()%>
            </p>
            <p><strong>상품가격:</strong> <%= bag2.getPrice()%>원</p>
            <p><strong>상품회사:</strong> <%= bag2.getCompany()%>
            </p>
            <button class="btn btn-primary btn-lg btn-block mb-2" id = "basket">장바구니</button>
            <button class="btn btn-secondary btn-lg btn-block mb-2">주문하기</button>
        </div>
    </div>
</div>
</body>
</html>
