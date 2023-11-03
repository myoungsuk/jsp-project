<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니 현황</title>
    <style>
        .cart-status {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<div class="cart-status">
    <h2>장바구니 현황</h2>
    <%
        ArrayList<ProductDTO> list = (ArrayList<ProductDTO>) session.getAttribute("basket");
        if(list != null && session.getAttribute("id") != null){
            out.println("<p>장바구니 count: " + list.size() + "개</p>");
            for(ProductDTO product : list) {
                // 예시로 상품 이름만 출력. 필요에 따라 다른 상품 정보도 출력 가능
                out.println("<p>" + product.getTitle() + "</p>");
            }
        } else {
            out.println("<p>장바구니가 비어있습니다.</p>");
        }
    %>
</div>

</body>
</html>
