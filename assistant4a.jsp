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
String points13=request.getParameter("points13"); 
%>
<body>
 
<% 
 try{ 

 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 ResultSet resultset2 = statement.executeQuery("SELECT * FROM Project WHERE Start_Date>'2000-01-01' AND Start_Date<'2022-05-01' AND End_Date>'2000-01-01' AND End_Date<'2022-05-01' or Executive_Executive_ID IN (SELECT Executive_ID FROM Executive WHERE Name='Smith') or Duration<"+points13+"");
%>
<H1>Programs that have duration smaller than the one you typed:</H1>
<TABLE BORDER="1">
 <TR>
 <TH>Program ID</TH>
 <TH>Name</TH>
 <TH>Elidek Department</TH>

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