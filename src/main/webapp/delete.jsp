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
		int result = dao.delete(id); //1, 0
		String resultText = "회원탈퇴실패함.";
		if(result == 1){
			resultText = "회원탈퇴성공함.";
		}
		
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">
<h4><%= resultText %></h4>
</body>
</html>