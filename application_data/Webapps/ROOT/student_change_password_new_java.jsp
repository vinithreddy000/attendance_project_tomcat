<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String passWord=request.getParameter("input_password");
            
            String roll_number=session.getAttribute("roll_number").toString();
            try{
            PreparedStatement ps=connection.prepareStatement("update student_registration set password='"+passWord+"',cnfrm_password='"+passWord+"' where roll_no='"+roll_number+"'");
            int i=ps.executeUpdate();
            if(i>0){
                response.sendRedirect("student_home.jsp");
            }else{
                out.println("Something Wrong");
            }
            }catch(Exception e){
                out.println(e.getMessage());
            }
        %>
    </body>
</html>
