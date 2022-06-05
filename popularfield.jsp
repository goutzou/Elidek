<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String points14=request.getParameter("points14"); 
%>
<body>
Choose a Field ID you would like. Full list of the Fields can be found in the Home Page.
<% 
 try{ 
 Connection connection = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass"); 
 Statement statement = 
connection.createStatement() ; 
 //statement.execute("SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))");
 ResultSet resultset1 = 
statement.executeQuery("select p.Title, r.Name, r.Surname from Project P, Researcher R where exists(select Project_ID from Researcher_has_Project RP where (RP.Researcher_Researcher_ID = R.Researcher_id and RP.Project_Project_ID = P.Project_ID)) AND exists(select Project_ID from Project_has_Science_Field PF where P.project_id = PF.Project_Project_ID and PF.Science_Field_Science_Field_ID = '"+points14+"') AND P.end_date > CURDATE() AND P.start_date < DATE_SUB(CURDATE(), INTERVAL 1 YEAR)");
 
 %> 
<TABLE BORDER="2">
 <TR>
 <td> Project Title </td>
 <td> Researcher Name </td>
 <td> Researcher Surname </td>
 </TR>
 
<% while(resultset1.next()){ %>
 <TR>
 <TD> <%= resultset1.getString(1) %></td>
 <TD> <%= resultset1.getString(2) %></TD>
 <TD> <%= resultset1.getString(3) %></TD> 
 </TR>
 <% } %>
 </TABLE> 
 
<% 
 
 
 } catch (Exception e){ 
 System.out.println(e); 
 } 
 
 
%>
<button onclick="window.location.href='index.html'">Go Back</button>
</body>
</html>
</body>
</html>