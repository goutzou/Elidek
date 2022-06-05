<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Popular Pairs</title>
</head>
<body>
<%
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass"); 
 Statement statement = connection.createStatement() ; 
 ResultSet resultset2 = statement.executeQuery("select a,b, count(*) as count from (SELECT Project_has_Science_Field.Project_Project_ID, Project_has_Science_Field.Science_Field_Science_Field_ID AS a, P.Science_Field_Science_Field_ID as b FROM Project_has_Science_Field JOIN Project_has_Science_Field P ON Project_has_Science_Field.Project_Project_ID = P.Project_Project_ID WHERE Project_has_Science_Field.Science_Field_Science_Field_ID <> P.Science_Field_Science_Field_ID) as N Group By a,b Order By count DESC LIMIT 3");
%>
The 3 Most Popular Pairs of Science Fields
<TABLE BORDER="1">
 <TR>
 <TH>Science Field #1 ID</TH>
 <TH>Science Field #2 ID</TH>
  <TH>Count</TH>
 
 </TR>
 <% while(resultset2.next()){ %>
 <TR>
 <TD> <%= resultset2.getString(1) %></TD>
 <TD> <%= resultset2.getString(2) %></TD>
 <TD> <%= resultset2.getString(3) %></TD>
 </TR>
 <% } %>
</TABLE> 
<% 
 ResultSet resultset21 = statement.executeQuery( "select * from Science_Field"); 
%>
<H1>A table of all science fields</H1>
<TABLE BORDER="1">
 <TR>
 <TH>Science Field ID</TH>
 <TH>Name</TH>
 
 </TR>
 <% while(resultset21.next()){ %>
 <TR>
 <TD> <%= resultset21.getString(1) %></td>
 <TD> <%= resultset21.getString(2) %></TD>
 </TR>
 <% } %>
 </TABLE>
 
 
 <li><a href = "index.html">home page</a></li>
</body>
</html>