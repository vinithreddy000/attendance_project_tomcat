<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<html>
   <head>        
         <title>STUDENT HOME</title>
		
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
				
                        </UL><BR><BR><BR><br><br><br><br><br> <br><br><br>
			<%
                        try{
                            String name=session.getAttribute("name").toString();
                         
                        
                        %> 
         
         <CENTER>Welcome <b><%=name%></b></center>
                        
                        <%
                        }catch(Exception e){
                            out.println(e.getMessage());
                        }
                        %>
                        <br><br><br><br><br><br><br><br><br><footer>
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



