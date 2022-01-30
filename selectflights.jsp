<form action="bookticketone.jsp">
Enter Flight Number<input type="text" name="pid">
<input type="submit">
</form>
<%
String namely=request.getParameter("name");
String aging=request.getParameter("age");
String sexy=request.getParameter("sex");
String num=request.getParameter("no");
String mail=request.getParameter("email");
session.setAttribute("name",namely);
session.setAttribute("age",aging);
session.setAttribute("sex",sexy);
session.setAttribute("numb",num);
session.setAttribute("email",mail);
%>