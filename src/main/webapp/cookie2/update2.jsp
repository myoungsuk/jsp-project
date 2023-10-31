<%@ page import="bean.BbsDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!--

-->

<jsp:useBean id="bag" class="bean.BbsDTO2"></jsp:useBean>
<jsp:setProperty property="*" name="bag"/>

<%
    BbsDAO dao = new BbsDAO();
    int result = dao.update(bag);
    if (result == 1) {
%>
<script>
    alert('수정성공@@@');
    location.href = 'bbs.jsp';
</script>
<%
} else {
%>
<script>
    alert('수정실패@@@');
</script>
<% } %>
%>