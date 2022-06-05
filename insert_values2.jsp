<%@page import="java.util.Iterator"%>
<%@page import="common.Organisation"%>
<%@page import="common.DB_Connection"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.read_values2"%>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-s1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Insert Values</h1>
<form action="controller/insert_controller2.jsp">
Telephone Numbers :<input type="text" name="Telephone_Numbers"><br>
Name :<input type="text" name="Name"><br>
Acronym :<input type="text" name="Acronym"><br>
Category ID :<input type="text" name="Category_Category_ID"><br>
Street :<input type="text" name="Street"><br>
Street Number :<input type="text" name="Street Number"><br>
City :<input type="text" name="City"><br>
Postal Code :<input type="text" name="Postal_Code"><br>
<input type="submit" value="Insert">
</form>
<hr>
<%
read_values2 obj_Read_Values2=new read_values2(); 
List<Organisation> list=obj_Read_Values2.get_values2(); 
Iterator<Organisation> it_list2=list.iterator(); 
%>
<table border="1">
<p> Welcome to home page! </p>
<td> Telephone Numbers </td>
<td> Name </td>
<td> Acronym </td>
<td> Street </td>
<td> Street Number </td>
<td> City </td>
<td> Postal Code </td>
<%
while(it_list2.hasNext()){ 
 Organisation obj_User_Bean2=new Organisation(); 
obj_User_Bean2=it_list2.next(); 
%>
<tr>
<td><%=obj_User_Bean2.getTelephone_Numbers() %></td>
<td><%=obj_User_Bean2.getName() %></td>
<td><%=obj_User_Bean2.getAcronym() %></td>
<td><%=obj_User_Bean2.getStreet() %></td>
<td><%=obj_User_Bean2.getStreet_Number() %></td>
<td><%=obj_User_Bean2.getCity() %></td>
<td><%=obj_User_Bean2.getPostal_Code() %></td>
<td>
<a href="edit2.jsp?Telephone_Numbers=<%=obj_User_Bean2.getTelephone_Numbers()%>">Edit</a>
</td>
<td>
<a
href="controller/delete_controller2.jsp?Telephone_Numbers=<%=obj_User_Bean2.getTelephone_Numbers()%>">Delete</a>
</td>
</tr>
<%
} 
%>
</table>
</center>
<li><a href = "index.html">home page</a></li>
</body>
</html>