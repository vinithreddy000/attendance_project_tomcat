<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
    String sname=request.getParameter("sname");
    String rno=request.getParameter("rno");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    String cnfrmPass=request.getParameter("cpass");
    String mobNo=request.getParameter("mob");
    
    String dob=request.getParameter("dob");
    String branch=request.getParameter("branch");
    String year=request.getParameter("year");
    String semester=request.getParameter("semester");
    
    try{
        
        if(pass.equals(cnfrmPass)){
                
                    PreparedStatement ps4=connection.prepareStatement("update student_registration set name='"+sname+"',email='"+email+"',password='"+pass+"',cnfrm_password='"+cnfrmPass+"',branch='"+branch+"',year='"+year+"',semester='"+semester+"',dob='"+dob+"',mobile_no='"+mobNo+"' where roll_no='"+rno+"'");
                    
                    int i=ps4.executeUpdate();
                    if(i>0){
                        response.sendRedirect("student_login.jsp");
                    }else{
                        response.sendRedirect("student_registration.html");
                    }
                    
                        
                    
        }else{
            response.sendRedirect("registered.html?PASSWORD_COULD_BE_SAME");
        }
            }catch(Exception e){
                out.println(e.getMessage());
    }
%>