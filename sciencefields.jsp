<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<%
 String a= ("Researcher"); 
%>
<HTML>
 <HEAD>
 <TITLE>Search Science Field</TITLE>
 </HEAD>
 <BODY>
 <form name="frm" method="get" action="assistant1a.jsp">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
 <td width="22%">&nbsp;</td>
 <td width="78%">&nbsp;</td>
 </tr>
 <tr>
 <td>Search Science Fields By Project ID. Full list of projects and their IDs can be found in the home page.</td>
 <td><input type="text" step="1" name="points1a" ></td>
 
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