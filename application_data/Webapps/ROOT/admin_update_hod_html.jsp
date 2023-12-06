<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<!doctype html>

<html>
	<head>
			<title>update hod</title>
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
			<center>
	
            <%
            
                String hod_id=request.getParameter("HOD_ID");
         
            %>
            <h2>Update HOD</h2>
		
			
            <form action="admin_update_hod_java.jsp" method="post">
                 <table  width="auto" > 
       <tr><th>                 NAME:    </th><td>     <input type="text" name="hname" placeholder="HOD Name"  required=""/><br></td></tr>
      <tr><th>                         ID:    </th><td>          <input type="text" name="hid" value="<%=hod_id%>" readonly><br></td></tr>
       <tr><th>                         EMAIL:   </th><td>              <input type="email" name="email" placeholder="E-Mail" required="" ><br></td></tr>
         <tr><th>                         PASSWORD:   </th><td>            <input type="password" name="pass" placeholder="Password" required="" ><br></td></tr>
	  <tr><th>      		CONFIRM PASSWORD:</th><td> 		<input type="password" name="cpass" placeholder="Password Confirmation" required="" ><br></td></tr>
          <tr><th>                     MOBILE NUMBER:  </th><td>                <input type="text" name="mob" placeholder="Mobile Number" required="" ><br></td></tr>
                                       
                                       
    <tr><th>               Department : </th><td> 
                                        <select name="dept" style="width:95%; padding: 10px 10px 10px 10px;">
                                        <option>--Select--</option>
                                        <option>Computer Technology</option>
                                        <option>Information Technology</option>
                                        </select></td></tr></table><br><br>
                                        
					<input type="submit" value="update"><br>
            </form><br><br><footer>
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
			
                        </center>
            
            
	</body>
</html>