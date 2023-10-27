<%@page import="bean.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MemberDAO dao = new MemberDAO();
    ArrayList<MemberVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
<!-- 반복문(for)문 필요! -->
<% //스크립트릿 
	for(MemberVO bag: list){ //{bag, bag, bag, ...}
%>
검색해온 id: <%= bag.getId() %> <br>
검색해온 pw: <%= bag.getPw()%> <br>
검색해온 name: <%= bag.getName() %> <br>
검색해온 tel: <%= bag.getTel()%> <br>
<hr>
<% } //for %>
</body>
</html>