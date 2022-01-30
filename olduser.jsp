<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp"%>
<%
try{
String username=request.getParameter("name");
String userpass=request.getParameter("pass");
String query="select * from user where name=? and password=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,username);
ps.setString(2,userpass);
ResultSet rs=ps.executeQuery();
boolean status=false;
status=rs.next();
//status=true;
if(status){
	out.println("You have logeed in sucessfully");
	session.setAttribute("session","TRUE");
%>
	<a href="Ulogin.html"> Go into Module</a>
<%
}
else{
	out.println("Sorry!Invalid User and Password");
}
}
catch(Exception e){
	e.printStackTrace();
}




%>