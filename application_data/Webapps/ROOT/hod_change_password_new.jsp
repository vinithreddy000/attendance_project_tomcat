<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        	<link href="studentleft style.css" REL="STYLESHEET">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <header> 
                            <H1><img src="HOMEPAGE LOGO1.jpg" WIDTH="1340" HIGHT="80%" scroll="0"></h1>
                         </header>




                
			<UL>
				
				<li><a href="faculty_class_attendence.jsp"  >View Class Attendance</a></li>
                                <li><a href="hod_profile.jsp" >View Profile</a></li>
                                <li><a href="hod_change_password.jsp" >Change Password</a></li>
                                <li><a href="logout.jsp" >log Out</a></li>
				
                        </UL>  <br><br><br><br><br><br><br><br><br> <br><br><br><br><center>
        <%
            String faculty_name=session.getAttribute("name").toString();
        %>
        <form method="post" action="hod_change_password_new_java.jsp">
            Hello <%= faculty_name%>
        <table>
            <tr>Please Enter Your New Password  : </tr><tr> <input type="text" name="input_password" required=""/></tr>
        </table>
        
        <button type="submit">Submit</button>
        </form></center><br><br><br><br>
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
