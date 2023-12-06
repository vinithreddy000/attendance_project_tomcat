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
            String passWord=request.getParameter("input_password");
            
            String id=session.getAttribute("id").toString();
            
            PreparedStatement ps=connection.prepareStatement("select * from hod_registration where hod_id='"+id+"' and password='"+passWord+"'");
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                response.sendRedirect("hod_change_password_new.jsp");
            }else{
                out.println("Please enter correct Password for your Account");
            }
        %>
 
                        </center><br><br><br><br><br>
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
