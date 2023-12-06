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
                PreparedStatement ps=connection.prepareStatement("select * from student_registration where roll_no='"+rno+"'");
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    response.sendRedirect("student_registration.html?USER_WITH_SAME_NAME_ALREADY_EXIT");
                }else{
                    ps=connection.prepareStatement("insert into student_registration values (?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, sname);
                    ps.setString(2, rno);
                    ps.setString(3, email);
                    ps.setString(4, pass);
                    ps.setString(5, cnfrmPass);
                    ps.setString(6, branch);
                   
                    ps.setString(7, year);
                    ps.setString(8, semester);
                    ps.setString(9, dob );
                    ps.setString(10, mobNo);
                    int i=ps.executeUpdate();
                    if(i>0){
                        response.sendRedirect("faculty_add_student.jsp");
                    }else{
                        response.sendRedirect("faculty_home.jsp");
                    }
                    
                        
                    
                        response.sendRedirect("faculty_add_student.jsp?ERROR");
                    }
                
        }else{
            response.sendRedirect("faculty_add_student.jsp?PASSWORD_COULD_BE_SAME");
        }
            }catch(Exception e){
                out.println(e.getMessage());
    }
%>