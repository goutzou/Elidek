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
Researchers with age under 40 and the number of projects that they are involved in. 
<% 
 try{ 
 
 Connection connection = 
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass"); 
 Statement statement = 
connection.createStatement() ; 
 statement.execute("SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))");
 ResultSet resultset1 = 
statement.executeQuery( "select R.*,count(R.Researcher_ID) as count from Researcher R left join Researcher_has_Project RP On R.Researcher_ID = RP.Researcher_Researcher_ID where R.Age<40 and Project_Project_ID in (select Project_ID from Project where End_Date>'2022-01-06' AND Start_Date<='2022-06-06') group by R.Researcher_ID order by count(R.Researcher_ID);"); 
 %> 
<TABLE BORDER="2">
 <TR>
 <td> Researcher ID </td>
 <td> Name </td>
 <td> Surname </td>
 <td> Gender </td>
 <td> Age </td>
 <td> Date of Birth </td>
 <td> Organisation Telephone Numbers </td>
 
 </TR>
 
<% while(resultset1.next()){ %>
 <TR>
 <TD> <%= resultset1.getString(1) %></td>
 <TD> <%= resultset1.getString(2) %></TD>
 <TD> <%= resultset1.getString(3) %></TD> 
 <TD> <%= resultset1.getString(4) %></TD>
 <TD> <%= resultset1.getString(5) %></TD>
 <TD> <%= resultset1.getString(6) %></TD>
 <TD> <%= resultset1.getString(7) %></TD>
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