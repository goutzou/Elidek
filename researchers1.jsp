<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<%
 String a= ("Researcher"); 
%>
<HTML>
 <HEAD>
 <TITLE>Search Researcher</TITLE>
 </HEAD>
 <BODY>
 <form name="frm" method="get" action="assistant1.jsp">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
 <td width="22%">&nbsp;</td>
 <td width="78%">&nbsp;</td>
 </tr>
 <tr>
 <td>Search Researcher's Projects by typing in his ID. 
 Full list of the researchers and their IDs can be found in the Home Page.</td>
 <td><input type="text" step="1" name="points1" ></td>
 
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