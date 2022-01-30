<%
String aname=request.getParameter("aname");
String pwd=request.getParameter("pwd");
if(aname.equals("admin") && pwd.equals("12345")){
	%>
	<jsp:forward page="adminhome.html"></jsp:forward>
	<%
}
else{
	out.println("<script>window.alert('Invalid Name or Password')</script>");
}
%>