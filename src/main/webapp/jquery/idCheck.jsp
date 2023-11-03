<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    String id = request.getParameter("id");
    String[] list = {"root", "admin", "hong"};
    String result = "사용 가능한 아이디입니다.";

    for(int i = 0; i < list.length; i++){
        if(id.equals(list[i])){
            result = "이미 사용중인 아이디입니다.";
            break;
        }
    }
%><%= result %>