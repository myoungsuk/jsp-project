<%@page import="java.util.ArrayList"%>
<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BbsDAO dao = new BbsDAO();
	ArrayList<BbsVO> list = dao.list();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	*{
		color: red;
	}
	
	.head {
		width: 150px;
		background: blue;
		color: white;
		text-align: center;
	}
	
	.data { 
		width: 150px;
		background: white;
		color: blue;
		text-align: center;
	}

</style>
</head>
<body>

<table border="1" align="center">
	<tr>
		<td class="head">게시번호</td>
		<td class="head">제목</td>
		<td class="head">내용</td>
		<td class="head">작성자</td>
	</tr>
	<%for(BbsVO vo : list){ %>
		<tr>
			<td class="data"><%=vo.getNo() %></td>
			<td class="data">
				<a href="one2.jsp?no=<%=vo.getNo() %>">
					<%=vo.getTitle() %>
				</a>
			</td>
			<td class="data"><%=vo.getContent() %></td>
			<td class="data"><%=vo.getWriter() %></td>
		</tr>
	<%} %>
</table>

</body>
</html>