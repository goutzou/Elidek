<%@page import="java.util.Iterator"%>
<%@page import="common.Researcher"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.read_values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-
1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Insert Values</h1>
<form action="controller/insert_controller.jsp">
Researcher ID :<input type="text" name="Researcher_ID"><br>
Name :<input type="text" name="Name"><br>
Surname :<input type="text" name="urname"><br>
Gender :<input type="text" name="Gender"><br>
Age :<input type="text" name="Age"><br>
Date of Birth :<input type="text" name="Date_of_Birth"><br>
Organisation Telephone Numbers :<input type="text" name="Organisation_Telephone_Numbers"><br>
<input type="submit" value="Insert">
</form>
<hr>
<%
read_values obj_Read_Values=new read_values(); 
List<Researcher> list=obj_Read_Values.get_values(); 
Iterator<Researcher> it_list=list.iterator(); 
%>
<table border="1">
<p> Welcome to home page! </p>
<td> Researcher ID </td>
<td> Name </td>
<td> Surname </td>
<td> Gender </td>
<td> Age </td>
<td> Date of Birth </td>
<td> Organisation Telephone Numbers </td>
<%
while(it_list.hasNext()){ 
Researcher obj_User_Bean=new Researcher(); 
obj_User_Bean=it_list.next(); 
%>
<tr>
<td><%=obj_User_Bean.getResearcher_ID() %></td>
<td><%=obj_User_Bean.getName() %></td>
<td><%=obj_User_Bean.getsurname() %></td>
<td><%=obj_User_Bean.getGender() %></td>
<td><%=obj_User_Bean.getAge() %></td>
<td><%=obj_User_Bean.getDate_of_Birth1() %></td>
<td><%=obj_User_Bean.getOrganisation_Telephone_Numbers() %></td>
<td>
<a href="edit.jsp?card_no=<%=obj_User_Bean.getResearcher_ID()%>">Edit</a>
</td>
<td>
<a
href="controller/delete_controller.jsp?card_no=<%=obj_User_Bean.getResearcher_ID()%>">Delete</a>
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