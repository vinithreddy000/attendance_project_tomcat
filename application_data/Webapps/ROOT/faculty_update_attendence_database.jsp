<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="studentleft style.css" REL="STYLESHEET">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance Project</title>
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
        <h1>Update Attendance!</h1>
        <%
             String year=request.getParameter("year");
             
                            String semester=request.getParameter("semester");
                           
                            String branch=request.getParameter("branch");
                            
                            String subject=request.getParameter("subject");
                            
                            
                            java.util.Date dNow = new java.util.Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String toDate=sdf.format(dNow);
          
        %>
        Date : <%=toDate%>
        <form method="post" action="faculty_update_attendence_database_java.jsp?date=<%=toDate%>&subject=<%=subject%>&branch=<%=branch%>&semester=<%=semester%>&year=<%=year%>">
         <table  width="auto" >
        <%
                            try{
                                PreparedStatement ps=connection.prepareStatement("select * from student_registration where branch='"+branch+"' and year='"+year+"' and semester='"+semester+"'");
                                ResultSet rs=ps.executeQuery();
                                int i=1;
                                while(rs.next()){
                            
                            %>
                            
                            <tr>
                                 <td><input type="text"  value="<%=rs.getString(2)%>" name="n<%=i %>" ></td>
                                 <td><input type="radio"  name=cat<%=i %>  value="1"> Present</td>
                                <td><input type="radio" name=cat<%=i %>  value="0"> Absent</td>
                                 
                            
                                   
                            </tr> 
                                    <%
                                    i++;
                                }
                                
                                
                                
                                %>
                                <input type="hidden" value="<%=i %>" name="tot">
                            
                                    
                  
                  
                  
                  <th><button type="submit" class="btn" style="margin:5px;width: 90%;height: 25px; ">Submit</button></th></tr>
                        </table>
        </form>
                                    
                                <%
                            }catch(Exception e){
                                out.println(e.getMessage());
                            }
                                    %>
  
                         </center><BR><BR>
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
            </footer></body>
</html>
