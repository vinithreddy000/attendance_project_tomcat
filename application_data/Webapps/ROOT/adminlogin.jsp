<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>adminlogin</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
String userid=request.getParameter("user");

String pwd=request.getParameter("pwd");
try{
if((userid.equals("admin"))&&(pwd.equals("admin"))){
    response.sendRedirect("admin_home.jsp");
}else{
    response.sendRedirect("admin_login.jsp");
}
}catch(Exception e){
    out.println(e);
}
%>
