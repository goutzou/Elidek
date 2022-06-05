<%@page import="CRUD.edit_values3"%>
<%@page import="common.Project"%>
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
int Project_ID=Integer.parseInt(request.getParameter("Project_ID")); 
edit_values3 obj_Edit_values3=new edit_values3(); 
Project obj_User_Bean3 = obj_Edit_values3.get_value_of_user(Project_ID); 
%>
<center>
<h1>Edit Values</h1>
<form action="controller/edit_controller3.jsp">
Project ID :<input type="text" name="Project_ID"
value="<%=Project_ID%>"><br>
Title :<input type="text" name="Title"
value="<%=obj_User_Bean3.getTitle()%>"><br>
Summary :<input type="text" name="Summary"
value="<%=obj_User_Bean3.getSummary()%>"><br>
Money :<input type="text" name="Money"
value="<%=obj_User_Bean3.getMoney()%>"><br>
Start Date :<input type="text" name="Start_Date"
value="<%=obj_User_Bean3.getStart_Date()%>"><br>
End Date:<input type="text" name="End_Date"
value="<%=obj_User_Bean3.getEnd_Date()%>"><br>
<input type="submit" value="Edit">
</form>
<%
} catch (NumberFormatException ex) {
	 System.out.println(ex);
}
%>
</center>
</body>