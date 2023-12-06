<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>class attendance</title>
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
                            <H1><img src="HOMEPAGE LOGO1.jpg" WIDTH="1340" HIGHT="80%" scroll="0"></h1>
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
				
			</UL>



                
			 <br><br>
    <center>  <h1>Attendance!</h1>
        <form method="post" action="faculty_add_attendence_database.jsp">
         <table  width="auto" >
                            
                    
<%
int roll_no_count=0;
int presenty_count=0;
int i = 0;
int total_presenty=0;
int avg_presenty=0;
int avg_class_presenty=0;
int avg_class_presenty1=0;

String date;
String subject;
String roll_no;
%>
<tr>
    <th>Roll Number</th><th>Present Days / Total Lectures</th><th>Presenty in % </th>
</tr>
             <%
try{
    PreparedStatement ps2=connection.prepareStatement("select count(distinct roll_no) from presenty_by_subject");
    ResultSet rs2=ps2.executeQuery();
    while(rs2.next()){
         roll_no_count=rs2.getInt(1);
        
    }
    PreparedStatement ps5=connection.prepareStatement("select count(presenty) from presenty_by_subject");
    ResultSet rs5=ps5.executeQuery();
    while(rs5.next()){
         presenty_count=rs5.getInt(1);
        
    }
    total_presenty=presenty_count/roll_no_count;
    
    
    PreparedStatement ps=connection.prepareStatement("select distinct roll_no from presenty_by_subject");
    ResultSet rs=ps.executeQuery();
    while(rs.next()){
    
           PreparedStatement ps3=connection.prepareStatement("select presenty from presenty_by_subject where  roll_no='"+rs.getString("roll_no")+"'");
           ResultSet rs3=ps3.executeQuery();
           while(rs3.next()){
              
               i++;
           
           }
           avg_presenty= (i / total_presenty) * 100;
           
           %>
              
             <tr>
                 <td><%= rs.getString("roll_no")%></td><td><%= i%> / <%= total_presenty%></td><td><%= avg_presenty%></td>
             </tr> 
             <%
              String avg_presenty1=Integer.toString(avg_presenty);
             PreparedStatement ps4=connection.prepareStatement("insert into avg_presenty values(?,?)");
             ps4.setString(1, rs.getString("roll_no"));
             ps4.setString(2, avg_presenty1);
             ps4.executeUpdate();
             %>
             <%
           i=0;
       
        
    }
   
    PreparedStatement ps6=connection.prepareStatement("select avg(avg_presenty) from avg_presenty");
    ResultSet rs6=ps6.executeQuery();
    while(rs6.next()){
        avg_class_presenty=rs6.getInt(1);
    }
    %>
             Class Final Average is : <%= avg_class_presenty%>
             <%
}catch(Exception e){
    out.println(e.getMessage());
}
%>
                            
                            
                            
                
                  
                        </table>
        </form></center>
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
