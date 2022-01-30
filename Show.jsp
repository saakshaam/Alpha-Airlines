<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="db.jsp"%>
<style>


</style>
<table align="center" border="2px">
<tr>
<td>Name</td><td>Age</td><td>Sex</td><td>Date</td><td>Meal</td>
</tr>
<% 
String qr="select * from pass";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next()){
	
	do{
		String name=rs.getString("Name");
		int age=rs.getInt("age");
		String sex=rs.getString("sex");
		String date=rs.getString("date");
		String meal=rs.getString("meal");
%>
<tr>
<td><%=name%></td><td><%=age%></td><td><%=sex%></td><td><%=date%></td><td><%=meal%></td>
</tr>
<% 		
	}while(rs.next());
}
else{
	out.println("No Records Found!!");
}
con.close();
%>
</table>