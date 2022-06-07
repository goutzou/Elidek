<%@page import="CRUD.edit_values"%>
<%@page import="common.Researcher"%>
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
<%
try {
int Researcher_ID=Integer.parseInt(request.getParameter("Researcher_ID")); 
edit_values obj_Edit_values3=new edit_values(); 
Researcher obj_User_Bean3 = obj_Edit_values3.get_value_of_user(Researcher_ID); 
%>
<center>
<h1>Edit Values</h1>
<form action="controller/edit_controller3.jsp">
Researcher ID :<input type="text" name="Researcher_ID"
value="<%=Researcher_ID%>"><br>
Name :<input type="text" name="Name"
value="<%=obj_User_Bean3.getName()%>"><br>
Surname :<input type="text" name="Surname"
value="<%=obj_User_Bean3.getsurname()%>"><br>
Gender :<input type="text" name="Gender"
value="<%=obj_User_Bean3.getGender()%>"><br>
Age :<input type="text" name="Age"
value="<%=obj_User_Bean3.getAge()%>"><br>
Date of Birth :<input type="text" name="Date_of_Birth"
value="<%=obj_User_Bean3.getDate_of_Birth1()%>"><br>
Organisation Telephone Numbers :<input type="text" name="Organisation_Telephone_Numbers"
value="<%=obj_User_Bean3.getOrganisation_Telephone_Numbers()%>"><br>
<input type="submit" value="Edit">
</form>
<%
} catch (NumberFormatException ex) {
	 System.out.println(ex);
}
%>
</center>
</body>
