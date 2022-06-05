<%@page import="CRUD.edit_values2"%>
<%@page import="common.Organisation"%>
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
int Telephone_Numbers=Integer.parseInt(request.getParameter("Telephone_Numbers")); 
edit_values2 obj_Edit_values2=new edit_values2(); 
Organisation obj_User_Bean2 = obj_Edit_values2.get_value_of_user2(Telephone_Numbers); 
%>
<center>
<h1>Edit Values</h1>
<form action="controller/edit_controller2.jsp">
Telephone Numbers :<input type="text" name="Telephone_Numbers"
value="<%=Telephone_Numbers%>"><br>
Name :<input type="text" name="Name"
value="<%=obj_User_Bean2.getName()%>"><br>
Acronym :<input type="text" name="Acronym"
value="<%=obj_User_Bean2.getAcronym()%>"><br>
Street :<input type="text" name="Street"
value="<%=obj_User_Bean2.getStreet()%>"><br>
Street Number:<input type="text" name="Street_Number"
value="<%=obj_User_Bean2.getStreet_Number()%>"><br>
City :<input type="text" name="City"
value="<%=obj_User_Bean2.getCity()%>"><br>
Postal Code :<input type="text" name="Postal_Code"
value="<%=obj_User_Bean2.getPostal_Code()%>"><br>
<input type="submit" value="Edit">
</form>
<%
} catch (NumberFormatException ex) {
	 System.out.println(ex);
}
%>
</center>
</body>