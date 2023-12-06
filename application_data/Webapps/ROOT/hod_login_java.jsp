<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
   
    String uName=request.getParameter("hid");
    String pass=request.getParameter("pwd");
    
    try{
        
        PreparedStatement ps=connection.prepareStatement("select * from hod_registration where hod_id='"+uName+"' and password='"+pass+"'");
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            String name=rs.getString(1);
            String id=rs.getString(5);
            String branch=rs.getString(6);
            response.sendRedirect("hod_actual_home.jsp");
            session.setAttribute("id", id);
            session.setAttribute("name", name);
            session.setAttribute("branch", branch);
        }else{
            response.sendRedirect("hod_login.jsp");
        }
        
    }catch(Exception e){
        out.println(e.getMessage());
    }


%>