<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.io.PrintWriter" %>
<%@include file="db.jsp" %>
<%
PrintWriter outer=response.getWriter();
String no,name,at,dt,sta,en;
String id=request.getParameter("pid");
String qr="select * from flight where number=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,id);
ResultSet rs=ps.executeQuery();
if(rs.next()){
		 no=rs.getString("number");
		 name=rs.getString("name");
		 at=rs.getString("atime");
		 dt=rs.getString("dtime");
		 sta=rs.getString("start");
		 en=rs.getString("end");
		 outer.println(no+" "+name+" "+at+" ");
}
else{
	out.println("No Records Found");
}
out.println();
String n=(String)session.getAttribute("name");
String umar=(String)session.getAttribute("age");
String gender=(String)session.getAttribute("sex");
String numberr=(String)session.getAttribute("numb");
String mialing=(String)session.getAttribute("email");
outer.println(n);
con.close();
%>
