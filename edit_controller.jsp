<%@page import="CRUD.edit_values"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="common.Researcher"%>
<%@page import="CRUD.insert_values"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-
1">
<title>Insert title here</title>
</head>
<body>
<%
try {
 int Researcher_ID=Integer.parseInt(request.getParameter("Researcher_ID"));
 String Name=request.getParameter("Name"); 
 String surname=request.getParameter("surname"); 
 String Gender=request.getParameter("Gender"); 
 int Age=Integer.parseInt(request.getParameter("Age"));
 try {
 String date_of_birth = request.getParameter("date_of_birth"); 
 SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); 
 java.util.Date date = sdf1.parse(date_of_birth); 
 java.sql.Date Date_of_Birth = new java.sql.Date(date.getTime());
 int Organisation_Telephone_Numbers=Integer.parseInt(request.getParameter("Organisation_Telephone_Numbers")); 
 Researcher obj_User_Bean=new Researcher(); 
 obj_User_Bean.setResearcher_ID(Researcher_ID); 
 obj_User_Bean.setName(Name); 
 obj_User_Bean.setsurname(surname); 
 obj_User_Bean.setGender(Gender); 
 obj_User_Bean.setAge(Age); 
 obj_User_Bean.setDate_of_Birth1(Date_of_Birth); 
 obj_User_Bean.setOrganisation_Telephone_Numbers(Organisation_Telephone_Numbers); 
 edit_values obj_Edit_values=new edit_values(); 
 obj_Edit_values.edit_researcher(obj_User_Bean); 
} catch (ParseException e) {
	  e.printStackTrace();
} }
catch (NumberFormatException np){ 
 System.out.println(np); 
 } 
%>
<script type="text/javascript">
window.location.href="http://localhost:8080/JSP_MySQL_CRUD/insert_values.jsp"
</script>
</body>
</html>