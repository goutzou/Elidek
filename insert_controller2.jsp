<%@page import="CRUD.insert_values2"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error_organisation.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Organisation</title>
</head>
<body>
<%
try {
try {
 int Telephone_Numbers = Integer.parseInt(request.getParameter("Telephone_Numbers")); 
 //int Telephone_Numbers = 3;
 String Name = request.getParameter("Name"); 
 String Acronym = request.getParameter("Acronym"); 
 String Street = request.getParameter("Street"); 
 int Street_Number = Integer.parseInt(request.getParameter("Street_Number")); 
 //int Street_Number = 43;
 String City = request.getParameter("City"); 
 int Postal_Code = Integer.parseInt(request.getParameter("Postal_Code")); 
 //int Postal_Code = 43;
 insert_values2 obj_Insert_Values2=new insert_values2(); 
 obj_Insert_Values2.Insert_Values2(Telephone_Numbers, Name, Acronym, Street, Street_Number, City, Postal_Code); 
}
catch (NumberFormatException ex) {
	 System.out.println(ex);
}
} catch (NullPointerException e) {
	System.out.println(e);
}
%>
<script type="text/javascript">
window.location.href="http://localhost:8082/DatabasesELIDEK/insert_values2.jsp"
</script>
</body>
</html>
