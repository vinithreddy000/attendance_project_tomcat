<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
    String fname=request.getParameter("fname");
    String fid=request.getParameter("fid");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    String cnfrmPass=request.getParameter("cpass");
    String mobNo=request.getParameter("mob");
    
    
    String dept=request.getParameter("dept");
   
    
    try{
        if(pass.equals(cnfrmPass)){
                
            PreparedStatement ps=connection.prepareStatement("update faculty_registration set faculty_name='"+fname+"',email='"+email+"',password='"+pass+"',cnfrm_password='"+cnfrmPass+"',department='"+dept+"',mobile_no='"+mobNo+"' where faculty_id='"+fid+"'");
            int i=ps.executeUpdate();
            if(i>0){
                response.sendRedirect("admin_home.jsp");
            }else{
                response.sendRedirect("admin_update_faculty.html");
            }
        }else{
            response.sendRedirect("registered.html?PASSWORD_COULD_BE_SAME");
        }
            }catch(Exception e){
                out.println(e.getMessage());
    }
%>