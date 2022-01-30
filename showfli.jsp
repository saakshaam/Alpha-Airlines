<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp"%>
<table align="center" border="2px">
<tr>
<td>Number</td><td>name</td><td>atime</td><td>dtime</td><td>start</td><td>end</td>
</tr>
<%

String qr="select * from flight";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next()){
	do{
		String no=rs.getString("number");
		String name=rs.getString("name");
		String at=rs.getString("atime");
		String dt=rs.getString("dtime");
		String sta=rs.getString("start");
		String en=rs.getString("end");
%>
<table>
<tr>
<td><%=no%></td><td><%=name %></td><td><%=at %></td><td><%=dt %></td><td><%=sta%></td><td><%=en%></td>
</tr>
</table>
<%
	}while(rs.next());
}
else{              
	out.println("No Flights Available");
}
con.close();
%>
</table>