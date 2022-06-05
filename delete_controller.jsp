<%@page import="CRUD.delete_values"%>
<%@page import="CRUD.edit_values"%>
<%@page import="common.Researcher"%>
<%@page import="CRUD.insert_values"%>
<%@page import="java.text.ParseException"%>
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
 delete_values obj_Delete_values=new delete_values(); 
 obj_Delete_values.delete_value(Researcher_ID); 
} catch (NumberFormatException e) {
	  e.printStackTrace();
}
%>
<script type="text/javascript">
window.location.href="http://localhost:8082/DatabasesELIDEK/insert_values.jsp"
</script>
</body>
</html>