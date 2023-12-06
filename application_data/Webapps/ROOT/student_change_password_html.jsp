<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link href="studentleft style.css" REL="STYLESHEET">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>wrong password</title>
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
        <BR><BR><BR><br><br><BR><BR><BR><br><br><BR><BR><BR>
    <center>
        <%
            String passWord=request.getParameter("input_password");
            
            String roll_number=session.getAttribute("roll_number").toString();
            
            PreparedStatement ps=connection.prepareStatement("select * from student_registration where roll_no='"+roll_number+"' and password='"+passWord+"'");
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                response.sendRedirect("student_change_password_new.jsp");
            }else{
                out.println("Please enter correct Password for your Account");
            }
        %>
    </center> <br><br><BR><BR><BR><br><br><footer>
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
