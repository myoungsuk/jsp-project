<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    String dollar = request.getParameter("dollar");

    int dollar2 = Integer.parseInt(dollar);
    double won = 1323;
    int result = (int) (dollar2 * won);


%><%= result %>