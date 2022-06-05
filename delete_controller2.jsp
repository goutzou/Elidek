<%@page import="CRUD.delete_values2"%>
<%@page import="CRUD.edit_values2"%>
<%@page import="common.Organisation"%>
<%@page import="CRUD.insert_values2"%>
<%@page import="java.lang.NullPointerException"%>
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
int Telephone_Numbers = Integer.parseInt(request.getParameter("Telephone_Numbers")); 
 delete_values2 obj_Delete_values2=new delete_values2(); 
 obj_Delete_values2.delete_value2(Telephone_Numbers); 
} catch (NumberFormatException e) {
	  e.printStackTrace();
}
%>
<script type="text/javascript">
window.location.href="http://localhost:8082/DatabasesELIDEK/insert_values2.jsp"
</script>
</body>
</html>