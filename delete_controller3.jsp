<%@page import="CRUD.delete_values3"%>
<%@page import="CRUD.edit_values3"%>
<%@page import="common.Project"%>
<%@page import="CRUD.insert_values3"%>
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
int Project_ID = Integer.parseInt(request.getParameter("Project_ID")); 
 delete_values3 obj_Delete_values3=new delete_values3(); 
 obj_Delete_values3.delete_value3(Project_ID); 
} catch (NumberFormatException e) {
	  e.printStackTrace();
}
%>
<script type="text/javascript">
window.location.href="http://localhost:8082/DatabasesELIDEK/insert_values3.jsp"
</script>
</body>
</html>