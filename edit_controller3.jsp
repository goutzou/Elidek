<%@page import="CRUD.edit_values3"%>
<%@page import="common.Project"%>
<%@page import="CRUD.insert_values3"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.ParseException"%>
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
try { 
 int Project_ID = Integer.parseInt(request.getParameter("Project_ID")); 
 String Title = request.getParameter("Title"); 
 String Summary = request.getParameter("Summary"); 
 int Money = Integer.parseInt(request.getParameter("Money")); 
 try {
 String start_date = request.getParameter("start_date"); 
 SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); 
 java.util.Date date = sdf1.parse(start_date); 
 java.sql.Date Start_Date = new java.sql.Date(date.getTime());
 String end_date = request.getParameter("end_date"); 
 SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd"); 
 java.util.Date date1 = sdf1.parse(end_date); 
 java.sql.Date End_Date = new java.sql.Date(date.getTime());
 
 Project obj_User_Bean3=new Project(); 
 obj_User_Bean3.setProject_ID(Project_ID); 
 obj_User_Bean3.setTitle(Title); 
 obj_User_Bean3.setSummary(Summary); 
 obj_User_Bean3.setMoney(Money); 
 obj_User_Bean3.setStart_Date(Start_Date); 
 obj_User_Bean3.setEnd_Date(End_Date);  
 edit_values3 obj_Edit_values3=new edit_values3(); 
 obj_Edit_values3.edit_project(obj_User_Bean3); 
 } catch (ParseException e) {
	  e.printStackTrace();
 }
 } catch (NumberFormatException np){ 
 System.out.println(np); 
} 
} catch (NullPointerException ex) {
	System.out.println(ex);
}
%>
%>
<script type="text/javascript">
window.location.href="http://localhost:8082/DatabasesELIDEK/insert_values3.jsp"
</script>
</body>
</html>