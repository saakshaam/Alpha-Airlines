<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@include file="db.jsp" %>
<table align="center" border="2px">
<%
String id=request.getParameter("id");
String qr="select * from flight where number=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,id);
ResultSet rs=ps.executeQuery();
if(rs.next()){
	do{
		String no=rs.getString("number");
		String name=rs.getString("name");
		String at=rs.getString("atime");
		String dt=rs.getString("dtime");
		String sta=rs.getString("start");
		String en=rs.getString("end");
%>
<tr>
<td><%=no%></td>
<td><%=name %></td>
<td><%=at%></td>
<td><%=dt%></td>
<td><%=sta%></td>
<td><%=en%></td>
</tr>
<%		
	}while(rs.next());
}
else{
	out.println("No Records Found");
}
con.close();
%>
</table>