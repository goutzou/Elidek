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
<title>Science Fields</title>
</head>
<body>
<% 
 Connection connection = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass"); 
 Statement statement = connection.createStatement() ; 
 ResultSet resultset2 = statement.executeQuery( "select * from science_field"); 
%>
<H1>A table of all Science Fields</H1>
<TABLE BORDER="1">
 <TR>
 <TH>Science Field ID</TH>
 <TH>Name</TH>
 
 </TR>
 <% while(resultset2.next()){ %>
 <TR>
 <TD> <%= resultset2.getString(1) %></td>
 <TD> <%= resultset2.getString(2) %></TD>
 
 </TR>
 <% } %>
 </TABLE>
 <button onclick="window.location.href='index.html'">Home Page</button>
 
</body>
</html>