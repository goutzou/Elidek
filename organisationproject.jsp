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
Organisations with the same number of projects in two consecutive years, where number of projects larger than 10.
(If page is empty, is because the result of the query is null and not because the query is not functional).
<% 
 try{ 
 
 Connection connection = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass"); 
 Statement statement = 
connection.createStatement() ; 
 //statement.execute("SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))");
 ResultSet resultset1 = 
statement.executeQuery( "WITH YearProj AS (SELECT O.Telephone_Numbers AS TN, YEAR(P.Start_Date) AS DT, COUNT(*) AS CNT FROM Organisation O, Project P WHERE O.Telephone_Numbers = P.Organisation_Telephone_Numbers GROUP by O.Name, YEAR(P.Start_Date)) SELECT O.Telephone_Numbers AS OrganisationTN, O.Name AS OrganisationName FROM Organisation O, YearProj yp1, YearProj yp2 WHERE (O.Telephone_Numbers = yp1.TN  AND O.Telephone_Numbers = yp2.TN AND yp1.DT = yp2.DT-1 AND yp1.CNT = yp2.CNT AND yp1.CNT >= 10)");


 %> 
<TABLE BORDER="2">
 <TR>
 <td> Telephone Number </td>
 <td> Organisation Name </td>
</TR>
 
<% while(resultset1.next()){ %>
 <TR>
 <TD> <%= resultset1.getString(1) %></td>
 <TD> <%= resultset1.getString(2) %></TD>
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