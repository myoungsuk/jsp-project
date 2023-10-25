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
     	String writer = request.getParameter("writer");
     	
     	BbsDAO dao = new BbsDAO();
     	BbsVO bag = new BbsVO();
     	bag.setTitle(title);
     	bag.setContent(content);
     	bag.setWriter(writer);
     	
     	dao.insert(bag);
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
게시물이 등록되었습니다.<br>
서버에서 받은 데이터는 <%= title %>, <%= content %>, <%= writer %>
</body>
</html>