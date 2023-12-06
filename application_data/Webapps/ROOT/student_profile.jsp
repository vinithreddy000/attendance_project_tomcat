<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STUDENT PROFILE</title>
        <link href="studentleft style.css" REL="STYLESHEET">
         <style>
                        th, td {
                                padding: 15px;
                                text-align: left;
                              }
                    </style>
    </head>
    <body bgcolor="white">
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
        <BR><BR><BR>
        <%
            String id=session.getAttribute("roll_number").toString();
            String name=session.getAttribute("name").toString();
            
            try{
            PreparedStatement ps1=connection.prepareStatement("select * from student_registration where roll_no='"+id+"'");
            ResultSet rs1=ps1.executeQuery();
            if(rs1.next()){
        
        
        
        %>
       <table  width="40%" >
                            <tr>
                                <th >Name       : </th><td><%=rs1.getString(1)%></td>
                            </tr>
                            <tr>
                                <th >Roll No       : </th><td><%=rs1.getString(2)%></td>
                            </tr>
                            <tr>
                                <th>Email Id   : </th><td><%=rs1.getString(3)%></td>
                            </tr>   
                            <tr>
                                <th>Branch   : </th><td><%=rs1.getString(6)%></td>
                            </tr>   
                            <tr>
                                <th>Year         : </th><td><%=rs1.getString(7)%></td>
                            </tr>
                            <tr>
                                <th> Semester  : </th><td><%=rs1.getString(8)%></td>
                            </tr>  
                            <tr>
                                <th>Date of Birth          : </th><td><%=rs1.getString(9)%></td>
                            </tr>   
                        </table>
                            <%
            }
            }catch(Exception e){
                out.println(e.getMessage());
            }
                            
                            %>
            <footer>
                    <table background="footer.jpg"height="0" width="1340" >
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
