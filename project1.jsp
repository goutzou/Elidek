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
<title>prodprice</title>
</head>
<body>
<%
 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 ResultSet resultset2 = statement.executeQuery( "select * from Project");
%>
<H1>Assistant view #1 for the calculation of Project</H1>
<TABLE BORDER="1">
 <TR>
 <TH>Project Start Date</TH>
 <TH>Project End Date</TH>
 <TH>Title</TH>
 <TH>Summary</TH>
 <TH>Money</TH>
 <TH>Duration</TH>

 </TR>
 <% while(resultset2.next()){ %>
 <TR>
 <TD> <%= resultset2.getString(1) %></td>
 <TD> <%= resultset2.getString(2) %></TD>
 <TD> <%= resultset2.getString(3) %></TD>
 <TD> <%= resultset2.getString(4) %></TD>
 <TD> <%= resultset2.getString(5) %></TD>
 <TD> <%= resultset2.getString(6) %></TD>

 </TR>
 <% } %>
 </TABLE>
</body>
</html>
