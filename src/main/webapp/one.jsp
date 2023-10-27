<%@page import="bean.MemberVO"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  
    	1. 데이터를 받아서 저장해두자.
    	HttpServletRequest request = new HttpServletRequest(); 내장객체 
    	2. dao를 이용해서 데이터를 주면서 db처리해달라고 요청 
    	3. 요청에 대한 결과를 html을 만든다.
    -->
    <%
		String id = request.getParameter("id"); //id=apple   
		
		MemberDAO dao = new MemberDAO();
		MemberVO bag = dao.one(id);		
    	//자동import : 클릭하고 나서 컨트롤 + 쉬프트 + m
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
검색해온 id: <%= bag.getId() %> <br>
검색해온 pw: <%= bag.getPw()%> <br>
검색해온 name: <%= bag.getName() %> <br>
검색해온 tel: <%= bag.getTel()%> <br>

</body>
</html>