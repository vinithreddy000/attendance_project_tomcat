<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
	Connection connection = null;
 	try {
     	
	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://gcp-trainer-project-1:asia-south1:att-mysql/attendence_project?cloudSqlInstance=gcp-trainer-project-1:asia-south1:att-mysql&socketFactory=com.google.cloud.sql.mysql.SocketFactory&user=root&password=root");
        String sql="";

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
