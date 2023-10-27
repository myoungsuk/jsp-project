<%@page import="bean.BbsVO"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String no = request.getParameter("no");
    	BbsDAO dao = new BbsDAO();
    	BbsVO bag = dao.one(Integer.parseInt(no));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		font-size: 20px;
		text-align: center;
	}
	.left { 
		/* 여러개를 선택해서 지정하고 싶을 때 클래스를 사용. 클래스 중 left에 해당하는 것만 스타일을 지정해라. */
		/* 클래스 선택은 .클래스명 */
		width: 100px;
		background: blue;
		color: white;
	}
	#bottom {
		background: red;
		color: yellow;
	}
	input{
		background: greenyellow;
	}
	textarea{
		background: greenyellow;
	}
</style>
</head>
<body bgcolor="red">

<table border="1" align="center">
			<tr>
				<td class="left">번호: </td>
				<td>
					<%= bag.getNo() %>
				</td>
			</tr>
			<tr>
				<td class="left">제목: </td>
				<td>
					<%= bag.getTitle() %>
				</td>
			</tr>
			<tr>
				<td class="left">내용: </td>
				<td>
					<textarea cols="20" rows="5" name="content"><%= bag.getContent() %></textarea>
				</td>
			</tr>
			<tr>
				<td class="left">작성자: </td>
				<td>
					<%= bag.getWriter() %> 
				</td>
			</tr>
		</table>
</body>
</html>