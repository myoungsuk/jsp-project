<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 
    	1) 클라이언트로부터 전달되는 데이터 받아서 저장하기 
    	2) dao이용해서 db처리하기 
    	3) 결과 html로 만들어서 클라이언트로 전송하기 
     -->
     <%
     	String title = request.getParameter("title");
     	String content = request.getParameter("content");
     	String no = request.getParameter("no");
     	
     	BbsDAO dao = new BbsDAO();
     	int result = dao.update(title, content, Integer.parseInt(no));
    	String resultText = "수정실패";
    	if(result == 1){
    		resultText = "수정성공";
    	}
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= resultText %>
</body>
</html>