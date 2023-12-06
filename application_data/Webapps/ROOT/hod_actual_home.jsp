<html>
   <head>        
         <title>HOD HOME</title>
		
		<link href="studentleft style.css" REL="STYLESHEET">
   </head>
         <BODY bgcolor="WHITE">
		     
   <header> 
                            <H1><img src="HOMEPAGE LOGO1.jpg" WIDTH="1340" HIGHT="80%" scroll="0"></h1>
                         </header>




                
			<UL>
				   <LI><a href="hod_actual_home.jsp" >Home</a></li>
				<li><a href="hod_class_attendence.jsp"  >View Class Attendance</a></li>
                                <li><a href="hod_profile.jsp" >View Profile</a></li>
                                <li><a href="hod_change_password.jsp" >Change Password</a></li>
                                <li><a href="logout.jsp" >log Out</a></li>
				
			</UL>  <br><br><br><br><br><br><br><br><br> <br><br><br><br>
				  
         <center>

 <%
                        try{
                            String name=session.getAttribute("name").toString();
                         
                        
                        %> 
         
                        Welcome <%=name%>
                        
                        <%
                        }catch(Exception e){
                            out.println(e.getMessage());
                        }
                        %>


         </center>


<br><br><br><br><br> <br><br><br>
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



