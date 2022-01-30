<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.io.PrintWriter" %>
<%@include file="db.jsp" %>
<%
PrintWriter outer=response.getWriter();
String no,namely="yes",at,dt,sta,en;
String id=request.getParameter("pidi");
String qr="select * from flight where number=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,id);
ResultSet rs=ps.executeQuery();
if(rs.next()){
		 no=rs.getString("number");
		 namely=rs.getString("name");
		 at=rs.getString("atime");
		 dt=rs.getString("dtime");
		 sta=rs.getString("start");
		 en=rs.getString("end");
		 outer.println(no+" "+namely+" "+at+" ");
}
else{
	out.println("No Records Found");
}
out.println("Ticket Booked!!");
String pname=(String)session.getAttribute("name");
String iage=(String)session.getAttribute("age");
String isex=(String)session.getAttribute("sex");
String num=(String)session.getAttribute("numb");
String imail=(String)session.getAttribute("email");
String passno=(String)session.getAttribute("pnoi");
String pvst=(String)session.getAttribute("vst");
String ivisa=(String)session.getAttribute("visa");
outer.println("Ticket Booked for "+pname+" with the flight of "+namely);
%>