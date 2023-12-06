<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>change password</title>
         <link href="studentleft style.css" REL="STYLESHEET">
    </head>
    <body>
          <header> 
                            <H1>
                                <img src="HOMEPAGE LOGO1.jpg" WIDTH="1340" HIGHT="0" scroll="0">
                            </h1>
                         </header>
       
        <nav>
                        <UL>
                            <LI><a href="student_home.jsp"  >Home</a></li>
                            <LI><a href="student_profile.jsp" >Student Profile</a></li>
                            <li><a href="student_hour_attendence.jsp"  >Hour Vise Attendance</a></li>
                            <li><a href="student_view_attendence.jsp"  >View Attendance</a></li>
				
                                <li><a href="student_change_password.jsp"  >Change Password</a></li>
                                <li><a href="logout.jsp" target="_top">log Out</a></li>
				
			</UL>
        </nav>
  <BR><BR><BR><BR><BR><BR><BR><BR><BR>  <BR><BR><BR><center>
        <%
            String student_name=session.getAttribute("name").toString();
        %>
        <form method="post" action="student_change_password_html.jsp">
            Hello <%=student_name%>
        <table>
            <tr>Please Enter Your Current Password  : </tr><tr> <input type="text" name="input_password" required=""/></tr>
        </table>
        
        <button type="submit">Submit</button>
        </form><center><br><br><BR><BR><BR>
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
