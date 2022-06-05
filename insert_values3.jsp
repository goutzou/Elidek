<%@page import="java.util.Iterator"%>
<%@page import="common.Project"%>
<%@page import="common.DB_Connection"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.read_values3"%>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Insert Values</h1>
<form action="controller/insert_controller3.jsp">
Project ID :<input type="text" name="Project_ID" ><br>
Title :<input type="text" name="Title" ><br>
Summary :<input type="text" name="Summary"><br>
Money :<input type="text" name="Money"><br>
Start Date :<input type="text" name="Start_Date"><br>
End Date :<input type="text" name="End_Date"><br>
<input type="submit" value="Insert">
</form>
<hr>
<%
try {
read_values3 obj_Read_Values3=new read_values3(); 
List<Project> list=obj_Read_Values3.get_values3(); 
Iterator<Project> it_list3=list.iterator(); 
%>
<table border="1">
<p> Welcome to home page! </p>
<td> Project ID </td>
<td> Title </td>
<td> Summary </td>
<td> Money </td>
<td> Start Date </td>
<td> End Date </td>    
<%
while(it_list3.hasNext()){ 
 Project obj_User_Bean3=new Project(); 
 obj_User_Bean3=it_list3.next(); 
%>
<tr>
<td><%=obj_User_Bean3.getProject_ID() %></td>
<td><%=obj_User_Bean3.getTitle() %></td>
<td><%=obj_User_Bean3.getSummary() %></td>
<td><%=obj_User_Bean3.getMoney() %></td>
<td><%=obj_User_Bean3.getStart_Date() %></td>
<td><%=obj_User_Bean3.getEnd_Date() %></td>
<td>
<a
href="edit3.jsp?Project_ID=<%=obj_User_Bean3.getProject_ID()%>">Edit</a>
</td>
<td>
<a
href="controller/delete_controller3.jsp?Project_ID=<%=obj_User_Bean3.getProject_ID()%>">Delete</a>
</td>
</tr>
<%
} } catch (NullPointerException e) {
	System.out.println(e);
}
%>
</table>
</center>
<li><a href = "index.html">home page</a></li>
</body>
</html>