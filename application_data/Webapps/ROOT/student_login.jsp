<!doctype html>

<html>
	<head>
		<title> STUDENT Login form </title>
		<link rel="stylesheet" href="student style.css">
	

	</head>
	<body>
	<BR>
	<BR>
	<UL>
				<LI><A href="index.jsp">BACK</A></LI>
	</ul>
	
	<div class="loginBox">
            <form action="student_login_java.jsp" method="post" >
		<img src="Student user logo.png" class="user">
		<h2>Student Login</h2>
                <form action="student_login_java.jsp" method="post">
			<p>Username</p>
			<input type="text" name = "uname" placeholder="Enter Username">
			<p>Password</p>
			<input type="password" name = "pass" placeholder="Enter Password">
			<input type="submit" value="submit">
			
                         
		</form>
	</div>
	</body>
</html>