<!doctype html>

<html>
	<head>
		
<title>add faculty</title>
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
    <LI><a href="admin_home.jsp"  >Home</a></li>
                            <LI><a href="admin_add_hod.html"  >Add Hod</a></li>
                            <li><a href="admin_update_hod.html"  >Update Hod</a></li>
                            <li><a href="admin_add_faculty.html" >Add Faculty</a></li>
                            
                <li><a href="admin_update_faculty.html"  >Update Faculty</a></li>
                <li><a href="admin_year_subject.jsp"  >Add Subject</a></li>
                <li><a href="logout.jsp" >log Out</a></li>
				
			</UL><br><br><br>
			
    
			
	
            
        <center>         <h2>Update Faculty</h2>
		 <%
            
                String faculty_id=request.getParameter("faculty_id");
            %>
			
            <form action="admin_update_faculty_java.jsp" method="post">
                 <table  width="auto" >
                <tr><th>        Faculty name:  </th><td>                 <input type="text" name="fname" placeholder="Faculty Name"  required=""/></td></tr>
                 <tr><th>           ID:      </th><td>         <input type="text" name="fid" value="<%= faculty_id%>" readonly></td></tr>
                  <tr><th>      Email:    </th><td>                   <input type="email" name="email" placeholder="E-Mail" required="" ></td></tr>
                <tr><th>       Password:  </th><td>                     <input type="password" name="pass" placeholder="Password" required="" ></td></tr>
	   <tr><th>   	Confirm Password:</th><td> 			<input type="password" name="cpass" placeholder="Password Confirmation" required="" ></td></tr>
              <tr><th>        Mobile Number: </th><td>                        <input type="text" name="mob" placeholder="Mobile Number" required="" ></td></tr>
                                       
                                       
           <tr><th>           Department : </th><td>
                                        <select name="dept" style="width:95%; padding: 10px 10px 10px 10px;" required="">
                                        <option>--Select--</option>
                                        <option>Computer Technology</option>
                                        <option>Information Technology</option>
                                        </select>
               </td></tr></table><br><br>
					<input type="submit" value="Register">
            </form><br><br>
			
            
        </CENTER>
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