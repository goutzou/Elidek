<%@page import="CRUD.insert_values"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.ParseException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error_researcher.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Researcher</title>
</head>
<body>
<%
try {
 int Researcher_ID=Integer.parseInt(request.getParameter("Researcher_ID"));
 String Name=request.getParameter("Name"); 
 String surname=request.getParameter("surname"); 
 String Gender=request.getParameter("Gender"); 
 int Age=Integer.parseInt(request.getParameter("Age"));
 String date_of_birth = request.getParameter("Date_of_Birth"); 
 SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); 
 java.util.Date date = sdf1.parse(date_of_birth); 
 java.sql.Date Date_of_Birth = new java.sql.Date(date.getTime());
 int Organisation_Telephone_Numbers=Integer.parseInt(request.getParameter("Organisation_Telephone_Numbers")); 
 insert_values obj_Insert_Values=new insert_values(); 
 obj_Insert_Values.Insert_Values(Researcher_ID, Name, surname, Gender, Age, Date_of_Birth, Organisation_Telephone_Numbers); 
} catch (NumberFormatException e) {
	  e.printStackTrace();
}
%>
<script type="text/javascript">
window.location.href="http://localhost:8082/DatabasesELIDEK/insert_values.jsp"
</script>
</body>
</html>
