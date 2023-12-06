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
                PreparedStatement ps=connection.prepareStatement("select * from hod_registration where hod_id='"+hid+"'");
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    response.sendRedirect("admin_add_hod.html?USER_WITH_SAME_NAME_ALREADY_EXIT");
                }else{
                    ps=connection.prepareStatement("insert into hod_registration values (?,?,?,?,?,?,?)");
                    ps.setString(1, hname);
                    ps.setString(2, email);
                    
                    ps.setString(3, pass);
                    ps.setString(4, cnfrmPass);
                    ps.setString(5, hid);
                   
                    ps.setString(6, dept);
                    ps.setString(7, mobNo);
                    
                    int i=ps.executeUpdate();
                    if(i>0){
                        response.sendRedirect("admin_home.jsp");
                    }else{
                        response.sendRedirect("admin_add_hod.html.html");
                    }
                    
                        
                    
                        response.sendRedirect("admin_add_hod.html?ERROR");
                    }
                
        }else{
            response.sendRedirect("admin_add_hod.html?PASSWORD_COULD_BE_SAME");
        }
            }catch(Exception e){
                out.println(e.getMessage());
    }
%>