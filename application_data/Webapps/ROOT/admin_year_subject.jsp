<!doctype html>

<html>
	<head>
		 <title>add subjet</title>
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
						 
						<center><UL>
                         <LI><a href="admin_home.jsp"  >Home</a></li>
                                                        <LI><a href="admin_add_hod.html"  >Add Hod</a></li>
                            <li><a href="admin_update_hod.html"  >Update Hod</a></li>
                            <li><a href="admin_add_faculty.html" >Add Faculty</a></li>
                            
                <li><a href="admin_update_faculty.html"  >Update Faculty</a></li>
                <li><a href="admin_year_subject.jsp"  >Add Subject</a></li>
                <li><a href="logout.jsp" >log Out</a></li>
				
			</UL></center>
<br><br>
	
<center>   
            <h2>Add Subject</h2>
		
			
            <form action="admin_year_subject_java.jsp" method="post">
                 <table  width="auto" >
          <tr><th>         subject1:      </th><td>           <input type="text" name="sub1" placeholder="sub1"  required=""/><br></td></tr>
	 <tr><th> 	subject 2:      </th><td>        <input type="text" name="sub2" placeholder="sub2" required=""><br></td></tr>
          <tr><th>         subject3:    </th><td>                      <input type="text" name="sub3" placeholder="sub3" required="" ><br></td></tr>
           <tr><th>        subject 4:    </th><td>                      <input type="text" name="sub4" placeholder="sub4" required="" ><br></td></tr>
	 <tr><th> 	subject 5:     </th><td>       	<input type="text" name="sub5" placeholder="sub5" required="" ><br></td></tr>
            <tr><th>        subject 6:  </th><td>                    <input type="text" name="sub6" placeholder="sub6" required="" ><br></td></tr>
                                       
                                       
            <tr><th>            Branch :  </th><td> 
                                        <select name="branch" style="width:95%; padding: 10px 10px 10px 10px;" required="">
                                        <option>--Select--</option>
                                        <option>Computer Technology</option>
                                        <option>Information Technology</option>
                                        </select><br></td></tr>
          <tr><th>          Year :  </th><td> 
                                        <select name="year" style="width:45%; margin: 1em 0 0;padding: 10px 10px 10px 10px;" required="">
                                        <option>--Select--</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        </select><br></td></tr>
          <tr><th>          Semester :  </th><td> 
                                        <select name="semester" style="width:45%; margin: 1em 0 0;padding: 10px 10px 10px 10px;" required="">
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
										<br>
                 </table>  <br><br>
					<input type="submit" value="Register">
            </form></center>
<br><footer>
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