<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance Project</title>
        <link href="studentleft style.css" REL="STYLESHEET">
        <style>
                        th, td {
                                padding: 8px;
                                text-align: left;
                              }
                    </style>
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
				
			</UL><BR><BR>
                        <center>
        <h1> Update Attendance!</h1>
        <form method="post" action="faculty_update_attendence_database.jsp">
         <table  width="auto" >
                            
                            <tr>
                                <th style="color: red">Year : </th><td><select name="year">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                    </select></td>
                                
                            </tr> <tr>
                                <th style="color: red">semester : </th><td><select name="semester">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                    </select></td>
                                
                            </tr>
                            <tr>
                                <th style="color: red">Branch : </th><td><select name="branch">
                            <%
                            try{
                                 String branch=session.getAttribute("branch").toString();
                                PreparedStatement ps=connection.prepareStatement("select * from year_subject where branch='"+branch+"'");
                                ResultSet rs=ps.executeQuery();
                                while(rs.next()){
                            
                            %>
                                        <option name="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                                    
                                    <%
                                }
                                    %>
                                    </select>
                  </tr>
                  <tr>
                                <th style="color: red">Subject : </th><td><select name="subject">
                            <%
                                PreparedStatement ps2=connection.prepareStatement("select * from year_subject where branch='"+branch+"'");
                                ResultSet rs2=ps2.executeQuery();
                                while(rs2.next()){
                            
                            %>
                                        <option name="<%=rs2.getString(4)%>"><%=rs2.getString(4)%></option>
                                        <option name="<%=rs2.getString(5)%>"><%=rs2.getString(5)%></option>
                                        <option name="<%=rs2.getString(6)%>"><%=rs2.getString(6)%></option>
                                        <option name="<%=rs2.getString(7)%>"><%=rs2.getString(7)%></option>
                                        <option name="<%=rs2.getString(8)%>"><%=rs2.getString(8)%></option>
                                        <option name="<%=rs2.getString(9)%>"><%=rs2.getString(9)%></option>
                                        
                                    
                                    <%
                                }
                            }catch(Exception e){
                                out.println(e.getMessage());
                            }
                                    %>
                                    </select>
                  </tr>
                  
                  
                  <th><button type="submit" class="btn" style="margin:5px;width: 90%;height: 25px; ">Submit</button></th></tr>
                        </table>
        </form>
                                      </center>
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
