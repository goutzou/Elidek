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
String points2=request.getParameter("points2"); 
String points3=request.getParameter("points3"); 
String points4=request.getParameter("points4");
String points5=request.getParameter("points5");
%>
<body>
Searching projects that researcher with ID <%=points2%> is working on. 
Searching projects that researcher with ID <%=points2%> is working on. 
<% 
 try{ 

 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 ResultSet resultset2 = statement.executeQuery("SELECT * FROM Project WHERE Start_Date>'"+points2+"' AND Start_Date<'"+points3+"' AND End_Date>'"+points4+"' AND End_Date<'"+points5+"' or Executive_Executive_ID IN (SELECT Executive_ID FROM Executive WHERE Name='Smith') or Duration<10");
%>
<H1>Assistant view #1 for the calculation of Project</H1>
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