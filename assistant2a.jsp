<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<%@ page errorPage="error_search.jsp" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Program</title>
</head>
<body>
<%
String points6=request.getParameter("points6"); 
String points7=request.getParameter("points7"); 
String points8=request.getParameter("points8");
String points9=request.getParameter("points9");
%>
<body>
<% 
 try{ 

 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 ResultSet resultset2 = statement.executeQuery("SELECT * FROM Program WHERE Program_ID IN (SELECT Program_Program_ID FROM Project WHERE Start_Date>'"+points6+"' AND Start_Date<'"+points7+"' AND End_Date>'"+points8+"' AND  End_Date<'"+points8+"' or Executive_Executive_ID IN (SELECT Executive_ID FROM Executive WHERE Name='Smith') or Duration<10)");
%>
<H1>Assistant view #1 for the calculation of Project</H1>
<TABLE BORDER="1">
 <TR>
 <TH>Program ID</TH>
 <TH>Name</TH>
 <TH>Elidek Dep</TH>
 </TR>
 <% while(resultset2.next()){ %>
 <TR>
 <TD> <%= resultset2.getString(1) %></td>
 <TD> <%= resultset2.getString(2) %></TD>
 <TD> <%= resultset2.getString(3) %></TD>

 </TR>
 <% 
 } }
  catch (Exception e){ 
 System.out.println(e); 
 }%>
 </TABLE>
 <button onclick="window.location.href='index.html'">Home Page</button>
</body>
</html>