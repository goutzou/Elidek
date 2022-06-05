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
String points1=request.getParameter("points1"); 
%>
<body>
Searching projects that researcher with ID <%=points1%> is working on. 
<% 
 try{ 

 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 ResultSet resultset2 = statement.executeQuery("SELECT * FROM Project WHERE Project_ID IN (SELECT Project_Project_ID FROM Researcher_has_Project WHERE Researcher_Researcher_ID = "+points1+")");
%>
<H1>Assistant view #1 for the calculation of Project</H1>
<TABLE BORDER="1">
 <TR>
 <TH>Project ID</TH>
 <TH>Project Title</TH>
 <TH>Duration</TH>
 <TH>Money (in EUROS)</TH>
 <TH>Project Start Date</TH>
 <TH>Project End Date</TH>

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
 <% 
 } }
  catch (Exception e){ 
 System.out.println(e); 
 }%>
 </TABLE>
 <button onclick="window.location.href='index.html'">Home Page</button>
</body>
</html>
