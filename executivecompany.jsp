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

<body>
The 5 ELIDEK executives that provide the most money for companies.
<% 
 try{ 
 
 Connection connection = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass"); 
 Statement statement = 
connection.createStatement() ; 
 //statement.execute("SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))");
 ResultSet resultset1 = 
statement.executeQuery( "SELECT Organisation.Name, ex.Name, sum(p.Money) FROM project p INNER JOIN Executive ex ON p.Executive_Executive_ID = ex.Executive_ID INNER JOIN Organisation ON p.Organisation_Telephone_Numbers = Organisation.Telephone_Numbers WHERE Organisation.Company_Name = 'Company' GROUP BY ex.Executive_ID, Organisation.Telephone_Numbers ORDER BY sum(p.Money) desc limit 5");
 %> 
<TABLE BORDER="2">
 <TR>
 <td> Company </td>
 <td> Executive </td>
 <td> Fund </td>
 
 </TR>
 
<% while(resultset1.next()){ %>
 <TR>
 <TD> <%= resultset1.getString(1) %></td>
 <TD> <%= resultset1.getString(2) %></TD>
 <TD> <%= resultset1.getString(3) %></TD> 
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