<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<html>
   <head>        
         <title>HOUR ATTENDENCE </title>
		
		<link href="studentleft style.css" REL="STYLESHEET">
   </head>
         <BODY bgcolor="white">
		     
                    
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
         <CENTER><form method="post" action="student_hour_attendence_java.jsp">
            
        <table>
            <tr>Please Select Date to View Attendence on that Day  : </tr><tr> <input type="date" name="input_date" required=""/></tr>
        </table>
        
        <button type="submit">Submit</button>
             </form></center>
		
                        <br><br><br><br><br><br><br><br><br>
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

         </BODY>
         
</html>



