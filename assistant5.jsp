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
String points16=request.getParameter("points16"); 
%>
<body>
Searching Researchers that work on the project with ID <%=points16%>. 
<% 
 try{ 

 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 ResultSet resultset2 = statement.executeQuery("SELECT * FROM Researcher WHERE Researcher_ID IN (SELECT Researcher_Researcher_ID FROM Researcher_has_Project WHERE Project_Project_ID = "+points16+")");  

		 
%>

<TABLE BORDER="1">
 <TR>
 <TH>Researcher ID</TH>
 <TH>Name</TH>
 <TH>Surname</TH>
 <TH>Gender</TH>
 <TH>Age</TH>
 <TH>Date of Birth</TH>
 
 </TR>
 <% while(resultset2.next()){ %>
 <TR>
 <TD> <%= resultset2.getString(1) %></td>
 <TD> <%= resultset2.getString(2) %></TD>
 <TD> <%= resultset2.getString(3) %></td>
 <TD> <%= resultset2.getString(4) %></TD>
 <TD> <%= resultset2.getString(5) %></td>
 <TD> <%= resultset2.getString(6) %></TD>
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
