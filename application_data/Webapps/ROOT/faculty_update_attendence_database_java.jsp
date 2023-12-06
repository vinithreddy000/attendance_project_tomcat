
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
 
    String year=request.getParameter("year");
    String semester=request.getParameter("semester");
    String branch=request.getParameter("branch");
    String date=request.getParameter("date");
     
    String subject=request.getParameter("subject");
    //String branch=session.getAttribute("branch").toString();
   int a=Integer.parseInt(request.getParameter("tot"));

Statement st1 = connection.createStatement();
ResultSet rs2;
int m=0;
int k=0;
for(int i=1;i<a;i++)
{
   
String b=request.getParameter("n"+i);
String c=request.getParameter("cat"+i);
  

PreparedStatement pst2=connection.prepareStatement("update presenty_by_subject set presenty='"+c+"' where subject='"+subject+"' and roll_no='"+b+"' and date='"+date+"'");
      
   
       pst2.executeUpdate();
}   
 response.sendRedirect("faculty_home.jsp");
%>