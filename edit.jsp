<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass"); 
 Statement statement = connection.createStatement() ; 
 ResultSet resultset2 = statement.executeQuery("SELECT * FROM Researcher"); 
 
 
%>
<TABLE BORDER="1">
 <TR>
 <TH>Hour of Day (0-24)</TH>
 <TH>Under 20</TH>
 <TH>20-29</TH>
 <TH>30-39</TH>
 <TH>40-49</TH>
 <TH>Over 50</TH>
 
 
 </TR>
 <% while(resultset2.next()){ %>
 <TR>
 <TD> <%= resultset2.getString(1) %></TD>
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