<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="studentleft style.css" REL="STYLESHEET">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW ATTENDANCE </title>
    </head>
    <body>
         <header> 
                            <H1><img src="HOMEPAGE LOGO1.jpg" WIDTH="99.4%" HIGHT="80%" scroll="0"></h1>
        </header>
			<Ul>
                            <LI><a href="student_home.jsp" >Home</a></li>
                            <LI><a href="student_profile.jsp" >Student Profile</a></li>
                            <li><a href="student_hour_attendence.jsp" >Hour Vise Attendance</a></li>
                            <li><a href="student_view_attendence.jsp"  >View Attendance</a></li>
				
                                <li><a href="student_change_password.jsp" >Change Account Password</a></li>
                                <li><a href="logout.jsp" target="_top">log Out</a></li>
				
                        </UL><BR><br><br><br><br><br><br>
        <%
 
    
    String roll_number=session.getAttribute("roll_number").toString();
    
   try{
    PreparedStatement ps=connection.prepareStatement("select * from presenty_by_subject where roll_no='"+roll_number+"'");
    ResultSet rs=ps.executeQuery();
    
    
    
    %>
      
          
        <table border="1">
        <tr><th>Date</th><th>Subject</th><th>Attendence</th></tr>
        <%
    while(rs.next()){
        
    
%>

<tr><td><%= rs.getString(1)%></td><td><%= rs.getString(5)%></td><td><%=rs.getString(6) %></td></tr>
<%

    }
    }catch(Exception e){
        out.println(e.getMessage());
    }
%>
  </table>      
        Note : 1=Present & 0=Absent
        <br><br><br><br><br>
         <footer>
                    <table background="footer.jpg"height="80" width="1340" >
                            <tr>
                                <td>
                                    <center>   
                                        <big>
                                            <font color="white">Developer of this page is : <b><i><big>vinith singareddy</big></i></b> <b><i><small>---</b></i></small>
                                            </font>
                                        </big>
                                    </center>
                                </td>
                            </tr>
                    </table>
            </footer>
        
        
        
            
        
        
        
    </body>
</html>
