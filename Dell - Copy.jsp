<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<style>

body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
}
.textarea{
	color:#fff;
	font:150px;
	padding:50px;
}
</style>
<%String id=request.getParameter("id");
String qr="delete from pass where id=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,id);
int i=ps.executeUpdate();
if(i>0){
%>
%>
	<body><span class="textarea"><%
	out.println("Record Deleted!!");
	%></span></body>
<% }
else{
	%>
	<body><span class="textarea"><%
	out.println("Record Not Deleted!!");
	%></span></body>
<% 
}
%>


