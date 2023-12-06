<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
   
    String uName=request.getParameter("fname");
    String pass=request.getParameter("pass");
    
    try{
        
        PreparedStatement ps=connection.prepareStatement("select * from faculty_registration where faculty_id='"+uName+"' and password='"+pass+"'");
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            String name=rs.getString(1);
            String id=rs.getString(5);
            String branch=rs.getString(6);
            response.sendRedirect("faculty_home.jsp");
            session.setAttribute("id", id);
            session.setAttribute("name", name);
            session.setAttribute("branch", branch);
        }
        else{
            response.sendRedirect("faculty_login.jsp");
        }
        
    }catch(Exception e){
        out.println(e.getMessage());
    }


%>