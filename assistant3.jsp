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
String points10=request.getParameter("points10"); 
%>
<body>
 
<% 
 try{ 

 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 ResultSet resultset2 = statement.executeQuery("SELECT * FROM Project WHERE Start_Date>'2000-01-01' AND Start_Date<'2022-05-01' AND End_Date>'2000-01-01' AND End_Date<'2022-05-01' or Executive_Executive_ID IN (SELECT Executive_ID FROM Executive WHERE Name='"+points10+"') or Duration<10");
%>
<H1>Projects that the executive you searched for is funding:</H1>
<TABLE BORDER="1">
 <TR>
 <TH>Project ID</TH>
 <TH>Project Title</TH>
 <TH>Summary</TH>
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
   <form name="frm" method="get" action="assistant5.jsp">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
 <td width="22%">&nbsp;</td>
 <td width="78%">&nbsp;</td>
 </tr>
 <tr>
 <td>Enter Project ID To See its Researchers:</td>
 <td><input type="text" step="1" name="points16" ></td>
 
 </tr>
  <tr>
 <td width="22%">&nbsp;</td>
 <td width="78%">&nbsp;</td>
 </tr>
 <button onclick="window.location.href='index.html'">Home Page</button>
</body>
</html>