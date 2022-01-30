<%@page import="java.sql.PreparedStatement" %>
<%@include file="db.jsp" %>
<style>
body {
  margin:0;
  padding:0;
  font-family: sans-serif;
  background: linear-gradient(#141e30, #243b55);
}
.textarea{
	font:150px;
	color:white;
	padding:50px;

}
</style>
<%
try{
String number=request.getParameter("number");
String name=request.getParameter("name");
String atime=request.getParameter("atime");
String dtime=request.getParameter("dtime");
String start=request.getParameter("start");
String end=request.getParameter("end");
String qr="insert into flight values(?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,number);
ps.setString(2,name);
ps.setString(3,atime);
ps.setString(4,dtime);
ps.setString(5,start);
ps.setString(6,end);
int i=ps.executeUpdate();
if(i>0){
	%>
	<body><span class="textarea"><% out.println("Record Inserted!!"); %></span></body>
	<%
}
else{
	%>
	<body><span class="textarea"><%
	out.println("Record Not Inserted!!");
	%></span></body>
	<%
}
con.close();
}
catch(Exception e){
	return;
}
%>