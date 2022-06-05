<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
</head>
<body>
<% String category =(String) session.getAttribute("message14"); 
 String column =(String) session.getAttribute("message15"); 
 String row =(String) session.getAttribute("message16"); 
%>
<H1>Result of search</H1>
 <% 
 Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass"); 
 
 Statement statement = connection.createStatement() ; 
 ResultSet resultset2 = statement.executeQuery( "Select * from "+category+" where "+column+"='"+row+"'"); 
 
 %>
 <TABLE BORDER="2">
 <TR>
 
 </TR>
 <% 
 
 while(resultset2.next()){ %>
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
<br>
<br>
<br>
<br>
<br>
<button onclick="window.location.href='dropdown.jsp'">Go back</button>
 
</body>
</html>