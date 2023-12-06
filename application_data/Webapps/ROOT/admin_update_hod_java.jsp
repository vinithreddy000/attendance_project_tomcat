<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
    String hname=request.getParameter("hname");
    String hid=request.getParameter("hid");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    String cnfrmPass=request.getParameter("cpass");
    String mobNo=request.getParameter("mob");
    
    
    String dept=request.getParameter("dept");
   
    
    try{
        if(pass.equals(cnfrmPass)){
                PreparedStatement ps=connection.prepareStatement("update hod_registration set hod_name='"+hname+"', email='"+email+"', password='"+pass+"',cnfrm_password='"+cnfrmPass+"',department='"+dept+"',mobile_no='"+mobNo+"' where hod_id='"+hid+"'");
                int i=ps.executeUpdate();
                if(i>0){
                    response.sendRedirect("admin_home.jsp");
                }else{
                    response.sendRedirect("admin_update_hod.html");
                }
        }else{
            response.sendRedirect("admin_add_hod.html?PASSWORD_COULD_BE_SAME");
        }
            }catch(Exception e){
                out.println(e.getMessage());
    }
%>