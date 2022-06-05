<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.PreparedStatement" %>
<%@ page errorPage="error_search.jsp" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<%! String month= ("customer");%>
<%! String glenti= ("gerger");%>
<%! String message4=("Researcher");%>
<%! String message5=("Researcher_ID");%>
<%! String message6=("10");%>
<%! String message14=("default");%>
<%! String message15=("default");%>
<%! String message16=("default");%>

<HTML>
 <HEAD>
 <TITLE>SEARCH</TITLE>
 </HEAD>
 <BODY>
 <H1>SEARCH</H1>
 <%
 Connection connection =
DriverManager.getConnection("jdbc:mysql://localhost:3306/elidek", "root", "Appl3pass");
 Statement statement = connection.createStatement() ;
 %>

 <% ResultSet resultset4 = statement.executeQuery("show tables");%>

 <form name="f1" method="get" action="#" id="myForm">

 <select name="clr">
 <option selected="selected">---input---</option>
 <option>Project</option>
 <option>Researcher</option>
 <option>Organisation</option>
 <option>Executive</option>


 </select>
 <%
 message4=request.getParameter("clr");
 if (message4==null){
 message4 ="Researcher";
 }
 else if (message4!=null){
 message14=message4; }
 ResultSet resultset5 = statement.executeQuery( "show columns from "+message4+"");
 %>
 <input type="submit" name="f1" value="ready"
onclick="window.location.href='res.jsp'" >
 </form>

 <form name="f2" method="get" action="#">

 <select name="clr2">
 <option selected="selected">---input---</option>

 <% while(resultset5.next()){ %>
 <option><%= resultset5.getString(1)%></option>
 <% } %>
 </select>
 <%
 message5=request.getParameter("clr2");
 if (message5==null){
 message5 ="Researcher_ID";
 }else 
 if (message5!=null){
 message15=message5;
 }
 ResultSet resultset6 = statement.executeQuery("Select Researcher_ID from Researcher");
 if (message14!="default" && message15!="default"){
 resultset6 = statement.executeQuery( "Select distinct "+message15+" from "+message14+"");
 }
 %>
 <input type="submit" name="f1" value="ready" />
 </form>

 <form name="f3" method="get" action="#">
 <select name="clr3">
 <option selected="selected">---input---</option>

 <% while(resultset6.next()){ %>
 <option><%= resultset6.getString(1)%></option>
 <% } %>
 </select>
 <%
 message6=request.getParameter("clr3");
 if (message6==null){
 message6 ="12";
 }
 else if (message6!=null){
 message16=message6;
 }
 %>
 <input type="submit" name="f3" value="ready" />
 </form>

 <%
 message6=request.getParameter("clr3");
 session.setAttribute("message14", message14);
 session.setAttribute("message15", message15);
 session.setAttribute("message16", message16);
 %>
<br>
<h3>You are searching for:</h3>
<TABLE BORDER="1">
 <TR>
 <TH>Table</TH>
 <TH>Column</TH>
 <TH>Column value</TH>
 </TR>
 <TR>
 <TD> <%= message14 %></td>
 <TD> <%= message15 %></TD>
 <TD> <%= message16 %></TD>
 </TR>
 </TABLE>
<button onclick="window.location.href='res.jsp'"
id="button1">Fulfill request</button>
<br>
<br>
<%= "Please click Reset Button before any different type of search."
%>
<form method='post'>
<input type="hidden" name="customer" value="Vimal"
onclick="window.location.href='dropdown.jsp'" />
<button value="confirm" name ="submit" id="button2"
onclick="window.location.href='dropdown.jsp'">Reset search</button> </form>


<% String x = request.getParameter("submit");
if(x!=null && x.equals("confirm"))
{
 message14="default";
 message15="default";
 message16="default";
 message4="default";
 message5="default";
 message6="default";
}
%>

 <br>
 <br>
 <br>
 <br>
 <br>
 <br>
 <br>

 <button onclick="window.location.href='index.html'">Home page</button>
 </BODY>
</HTML>