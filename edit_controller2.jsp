<%@page import="CRUD.edit_values2"%>
<%@page import="common.Organisation"%>
<%@page import="CRUD.insert_values2"%>
<%@page import="java.text.SimpleDateFormat"%>
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
 int Telephone_Numbers = Integer.parseInt(request.getParameter("Telephone_Numbers")); 
 String Name = request.getParameter("Name"); 
 String Acronym = request.getParameter("Acronym"); 
 //int Category_Category_ID = Integer.parseInt(request.getParameter("Category_Category_ID"));  
 String Street = request.getParameter("Street"); 
 int Street_Number = Integer.parseInt(request.getParameter("Street_Number"));  
 String City = request.getParameter("City"); 
 int Postal_Code = Integer.parseInt(request.getParameter("Postal_Code")); 
 Organisation obj_User_Bean2=new Organisation(); 
 obj_User_Bean2.setTelephone_Numbers(Telephone_Numbers);
 obj_User_Bean2.setName(Name) ;
 obj_User_Bean2.setAcronym(Acronym); 
 /*obj_User_Bean2.setCategory_Category_ID(Category_Category_ID);*/
 obj_User_Bean2.setStreet(Street) ;
 obj_User_Bean2.setStreet_Number(Street_Number); 
 obj_User_Bean2.setCity(City);
 obj_User_Bean2.setPostal_Code(Postal_Code);
 edit_values2 obj_Edit_values2=new edit_values2(); 
 obj_Edit_values2.edit_organisation(obj_User_Bean2); 
 } catch (NumberFormatException np){ 
 System.out.println(np); 
} 
%>
<script type="text/javascript">
window.location.href="http://localhost:8082/DatabasesELIDEK/insert_values2.jsp"
</script>
</body>
</html>