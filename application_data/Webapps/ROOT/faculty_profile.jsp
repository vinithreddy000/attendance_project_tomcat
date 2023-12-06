<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
                        th, td {
                                padding: 15px;
                                text-align: left;
                              }
                    </style>
        <link href="studentleft style.css" REL="STYLESHEET">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty profile</title>
    </head>
    <body>
         
                    <header> 
                            <H1>
                                <img src="HOMEPAGE LOGO1.jpg" WIDTH="1340" HIGHT="0" scroll="0">
                            </h1>
                        </header>

		     
  
                
			<UL>
                            <LI><a href="faculty_home.jsp" >Home</a></li>
                            <LI><a href="faculty_add_attendence.jsp"  >Add Attendance</a></li>
                            <li><a href="faculty_update_attendence.jsp"  >Update Attendance</a></li>
                            <li><a href="faculty_add_student.jsp"  >Add Student</a></li>
                            <li><a href="faculty_update_student.jsp" >Update Student</a></li>
                                <li><a href="faculty_class_attendence.jsp" >View Class Attendance</a></li>
                                <li><a href="faculty_profile.jsp"  >View Profile</a></li>
                                <li><a href="faculty_change_password.jsp" >Change Password</a></li>
                                <BR><BR>
                                <li><a href="logout.jsp" target="_top">log Out</a></li>
				
			</UL><BR><BR><BR><BR><BR>
                        <center>
        <%
        String id=session.getAttribute("id").toString();
        
        PreparedStatement ps=connection.prepareStatement("select * from faculty_registration where faculty_id='"+id+"'");
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
        
        %>
        <table>
            <tr><td>Faculty Id : </td><td><%=rs.getString(5)%></td></tr>
            <tr><td>Faculty Name : </td><td><%=rs.getString(1)%></td></tr>
            <tr><td>Faculty E-Mail : </td><td><%=rs.getString(2)%></td></tr>
            <tr><td>Faculty Department : </td><td><%=rs.getString(6)%></td></tr>
            <tr><td>Faculty Mobile-No : </td><td><%=rs.getString(7)%></td></tr>
            
            
        </table>
            <%
        }
            %>
   </center><BR><BR><BR><BR><BR><BR>
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
