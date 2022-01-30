<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
//<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp"%>
<%
try{
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String query="insert into user values(?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,name);
ps.setString(2,pass);
int status=0;
status=ps.executeUpdate();
if(status>0){
	out.println("You have registered successfully");
%>
	<a href="user.html">Go To login Page</a>
<%
}
else{
	out.println("Some Error occurred");
}
}
catch(Exception e){
	e.printStackTrace();
}
%>