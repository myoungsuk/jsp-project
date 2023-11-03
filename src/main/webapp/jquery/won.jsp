<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    String won = request.getParameter("won");
    int won2 = Integer.parseInt(won);
    int dollar = (int) (won2 / 1200.0 * 100) / 100;

%><%= dollar%>