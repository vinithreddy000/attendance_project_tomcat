<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
   
    String uName=request.getParameter("uname");
    String pass=request.getParameter("pass");
    
    try{
        
        PreparedStatement ps=connection.prepareStatement("select * from student_registration where roll_no='"+uName+"' and password='"+pass+"'");
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            String name=rs.getString(1);
            String roll_number=rs.getString(2);
            response.sendRedirect("student_home.jsp");
            session.setAttribute("roll_number", roll_number);
            session.setAttribute("name", name);
        }else{
            response.sendRedirect("student_login.jsp");
        }
        
    }catch(Exception e){
        out.println(e.getMessage());
    }


%>