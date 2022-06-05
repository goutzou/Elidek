<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<%
 String a= ("Program"); 
%>
<HTML>
 <HEAD>
 <TITLE>Search Program</TITLE>
 </HEAD>
 <BODY>
 <form name="frm" method="get" action="assistant2a.jsp">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
 <td width="22%">&nbsp;</td>
 <td width="78%">&nbsp;</td>
 </tr>
 <tr>
 <td>Oldest Start Date:</td>
 <td><input type="text" step="1" name="points6" ></td>
 
 </tr>
  <tr>
 <td width="22%">&nbsp;</td>
 <td width="78%">&nbsp;</td>
 </tr>
 <tr>
 <td>Most Recent Start Date:</td>
 <td><input type="text" step="1" name="points7" ></td>
 
 </tr>
   <tr>
 <td width="22%">&nbsp;</td>
 <td width="78%">&nbsp;</td>
 </tr>
 <tr>
 <td>Oldest End Date:</td>
 <td><input type="text" step="1" name="points8" ></td>
 
 </tr>
 <tr>
 <td width="22%">&nbsp;</td>
 <td width="78%">&nbsp;</td>
 </tr>
 <tr>
 <td>Latest End Date (Can be in the future):</td>
 <td><input type="text" step="1" name="points9" ></td>
 
 </tr>
 
 <tr>
 <td>&nbsp;</td>
 <td><input type="submit" name="submit" value="Search"></td>
 </tr>
 <tr>
 <td>&nbsp;</td>
 <td>&nbsp;</td>
 </tr>
 
</table>
</form>
<button onclick="window.location.href='index.html'">Home Page</button>
</body>
</html>
 
 </BODY>
 </HTML>