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
                PreparedStatement ps=connection.prepareStatement("select * from faculty_registration where faculty_id='"+fid+"'");
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    response.sendRedirect("faculty.html?USER_WITH_SAME_NAME_ALREADY_EXIT");
                }else{
                    ps=connection.prepareStatement("insert into faculty_registration values (?,?,?,?,?,?,?)");
                    ps.setString(1, fname);
                    ps.setString(2, email);
                    
                    ps.setString(3, pass);
                    ps.setString(4, cnfrmPass);
                    ps.setString(5, fid);
                   
                    ps.setString(6, dept);
                    ps.setString(7, mobNo);
                    
                    int i=ps.executeUpdate();
                    if(i>0){
                        response.sendRedirect("faculty_home.jsp");
                    }else{
                        response.sendRedirect("faculty_registration.html");
                    }
                    
                        
                    
                        response.sendRedirect("faculty_registration.html?ERROR");
                    }
                
        }else{
            response.sendRedirect("registered.html?PASSWORD_COULD_BE_SAME");
        }
            }catch(Exception e){
                out.println(e.getMessage());
    }
%>