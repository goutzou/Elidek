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
<title>Project</title>
</head>
<body>
<%
String points1a=request.getParameter("points1a"); 
%>
<body>
Searching scientfic fields that the project with ID <%=points1a%> is about. 
<% 
 try{ 

 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 ResultSet resultset2 = statement.executeQuery("SELECT * FROM Science_Field WHERE Science_Field_ID IN (SELECT Science_Field_Science_Field_ID FROM Project_has_Science_Field WHERE Project_Project_ID =  "+points1a+")");  

%>

<TABLE BORDER="1">
 <TR>
 <TH>Scientific Field ID</TH>
 <TH>Name</TH>

 </TR>
 <% while(resultset2.next()){ %>
 <TR>
 <TD> <%= resultset2.getString(1) %></td>
 <TD> <%= resultset2.getString(2) %></TD>

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
