<%@page import="CRUD.insert_values3"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.ParseException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error_project.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Project</title>
</head>
<body>
<%
try{
try {
 int Project_ID = Integer.parseInt(request.getParameter("Project_ID")); 
 String Title = request.getParameter("Title"); 
 String Summary = request.getParameter("Summary"); 
 int Money = Integer.parseInt(request.getParameter("Money")); 
 String start_date = request.getParameter("start_date"); 
 SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); 
 java.util.Date date = sdf1.parse(start_date); 
 java.sql.Date Start_Date = new java.sql.Date(date.getTime());
 String end_date = request.getParameter("end_date"); 
 SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd"); 
 java.util.Date date1 = sdf1.parse(end_date); 
 java.sql.Date End_Date = new java.sql.Date(date.getTime());
 //int Duration = Integer.parseInt(request.getParameter("Duration")); 
 insert_values3 obj_Insert_Values3 = new insert_values3(); 
 obj_Insert_Values3.insert_values3(Project_ID, Title, Summary, Money, Start_Date, End_Date); 
} catch (ParseException e) {
	  e.printStackTrace();
}
} catch (NullPointerException e) {
	System.out.println(e);
}
%>
<script type="text/javascript">
window.location.href="http://localhost:8082/DatabasesELIDEK/insert_values3.jsp"
</script>
</body>
</html>