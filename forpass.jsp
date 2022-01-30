<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp"%>
<%
try{
String username=request.getParameter("ufname");
String npass=request.getParameter("newpass");
String qr="update user set password=? where name=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,npass);
ps.setString(2,username);
int status=0;
status=ps.executeUpdate();
if(status>0){
	out.println("You have sucessfully changed your password");
%>
	<a href="user.html">Go To login Page</a>
<%
}
else{
	out.println("Username doesnt exist");
}
}
catch(Exception e){
	e.printStackTrace();
}

%>