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
     String subject=request.getParameter("subject");
    
    try{
        if(pass.equals(cnfrmPass)){
                PreparedStatement ps=connection.prepareStatement("select * from faculty_registration where faculty_id='"+fid+"'");
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    response.sendRedirect("faculty.html?USER_WITH_SAME_NAME_ALREADY_EXIT");
                }else{
                    ps=connection.prepareStatement("insert into faculty_registration values (?,?,?,?,?,?,?,?)");
                    ps.setString(1, fname);
                    ps.setString(2, email);
                    
                    ps.setString(3, pass);
                    ps.setString(4, cnfrmPass);
                    ps.setString(5, fid);
                   
                    ps.setString(6, dept);
                    ps.setString(7, mobNo);
                    ps.setString(8, subject);
                    int i=ps.executeUpdate();
                    if(i>0){
                        response.sendRedirect("admin_add_faculty.html");
                    }else{
                        response.sendRedirect("admin_home.jsp");
                    }
                    
                        
                    
                        response.sendRedirect("admin_home.jsp?ERROR");
                    }
                
        }else{
            response.sendRedirect("admin_home.jsp?PASSWORD_COULD_BE_SAME");
        }
            }catch(Exception e){
                out.println(e.getMessage());
    }
%>