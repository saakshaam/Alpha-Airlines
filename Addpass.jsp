<%@include file="db.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
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
<%
try{
String pid=request.getParameter("id");
String pname=request.getParameter("pname");
String a=request.getParameter("age");
int age=Integer.parseInt(a);
String sex=request.getParameter("sex");
String date=request.getParameter("date");
String meal=request.getParameter("meal");
String qr="insert into pass values(?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,pname);
ps.setInt(2,age);
ps.setString(3,sex);
ps.setString(4,date);
ps.setString(5,meal);
ps.setString(6,pid);
int i=ps.executeUpdate();
if(i>0){
	%>
	<body><span class="textarea"><%
	out.println("Passeneger Added!!");
	%></span></body>
	<%
}
else{
	%>
	<body><span class="textarea"><%
	out.println("Passeneger Not Added!!");
	%></span></body>
	<%
}
con.close();
}
catch(Exception e){
	return;
}
%>