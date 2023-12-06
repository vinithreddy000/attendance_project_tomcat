<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
    String sub1=request.getParameter("sub1");
    String sub2=request.getParameter("sub2");
    String sub3=request.getParameter("sub3");
    String sub4=request.getParameter("sub4");
    String sub5=request.getParameter("sub5");
    String sub6=request.getParameter("sub6");
    
    
    String branch=request.getParameter("branch");
    String year=request.getParameter("year");
    String semester=request.getParameter("semester");
    
 
       
                PreparedStatement ps2=connection.prepareStatement("select * from year_subject where year='"+year+"' and branch='"+branch+"' and semester='"+semester+"'");
                ResultSet rs2=ps2.executeQuery();
                if(rs2.next()){
                    response.sendRedirect("admin_home.jsp?USER_WITH_SAME_NAME_ALREADY_EXIT");
                }else{
                    PreparedStatement ps=connection.prepareStatement("insert into year_subject(branch,year,semester,sub1,sub2,sub3,sub4,sub5,sub6) values(?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, branch);
                    ps.setString(2, year);
                    ps.setString(3, semester);
                    ps.setString(4, sub1);
                    ps.setString(5, sub2);
                    ps.setString(6, sub3);
                    ps.setString(7, sub4);
                    ps.setString(8, sub5);
                    ps.setString(9, sub6);
                    int i=ps.executeUpdate();
                    if(i>0){
                        response.sendRedirect("admin_year_subject.jsp");
                    }else{
                        response.sendRedirect("admin_home.jsp");
                    }
                    
                        
                   
                }  
        
                
        
          
%>