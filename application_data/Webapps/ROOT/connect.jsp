<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
	Connection connection = null;
 	try {
     	
	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://[CLOUD_SQL_INSTANCE_CONNECTION_NAME]/attendence_project","root","root");
      	String sql="";

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
