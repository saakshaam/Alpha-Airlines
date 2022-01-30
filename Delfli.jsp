<%@include file="db.jsp" %>
<%@page import="java.sql.PreparedStatement" %>
<style>
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
}
.textarea{
	color:white;
	font:150px;
	padding-top:50px;
	padding-left:50px;
	padding-right:50px;
	padding-bottom:50px;
}

</style>
<%
try{
String number=request.getParameter("number");
String qr="delete from flight where number=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,number);
int i=ps.executeUpdate();
if(i>0){
%>
	<body><span class=textarea><%
	out.println("Flight Deleted!!");
	%></span></body>
	<%
}
else{
	%>
	<body><span class="textarea"><% 
	out.println("Not Deleted");
	%></span></body>
	<%
}
}
catch(Exception e){
	return;
}

%>