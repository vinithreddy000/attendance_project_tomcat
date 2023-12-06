<!doctype html>

<html>
	<head>
              <title>add student</title>
		
		
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
				
			</UL><BR><BR><BR>
                        <center>
	
            
            <h2>Add Student </h2>
		
			
            <form action="faculty_add_student_java.jsp" method="post">
                 <table  width="auto" >
                            
                            <tr>  
                                <th>  Student Name:  </th> <td>         <input type="text" name="sname" placeholder="Student Name"  required=""/></td></tr>
               <tr>       <th>       R.No:	</th><td>  	<input type="text" name="rno" placeholder="Roll Number" required=""></td></tr>
                  <tr>    <th>       Email     </th>    <td>         <input type="email" name="email" placeholder="E-Mail" required="" ></td></tr>
                   <tr>     <th>      Password    </th>    <td>         <input type="password" name="pass" placeholder="Password" required="" ></td></tr>
		  <tr> 	 <th>  Confirm Password:</th>	<td>  	<input type="password" name="cpass" placeholder="Password Confirmation" required="" ></td></tr>
                    <tr>      <th>     Mobile Number:</th>    <td>            <input type="text" name="mob" placeholder="Mobile Number" required="" ></td></tr>
                                       
                   <tr>     <th>       Date Of birth:  </th>       <td>       <input type="date" name="dob" placeholder="Date of Birth"  required="" ></td></tr>
                   <tr>          <th>                Branch : </th>
                                       <td>   <select name="branch" style="width:95%; padding: 10px 10px 10px 10px;" required="">
                                        <option>--Select--</option>
                                        <option>Computer Technology</option>
                                        <option>Information Technology</option>
                                        </select></td></tr>
                    <tr>         <th>                Year : </th>
                                      <td>    <select name="year" style="width:45%; margin: 1em 0 0;padding: 10px 10px 10px 10px;" required="">
                                        <option>--Select--</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        </select></td></tr>
                    <tr>          <th>               Semester : </th>
                                      <td>    <select name="semester" style="width:45%; margin: 1em 0 0;padding: 10px 10px 10px 10px;" required="">
                                        <option>--Select--</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                          </select></td></tr>
                                        
                   
                 </table><br>
                 <h4> 	<input type="submit" value="Register"></h4>
            </form>
			
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
            </footer>
            
            
	</body>
</html>