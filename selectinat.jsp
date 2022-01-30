<form action="bookiticket.jsp">
Enter flight number<input type="text" name="pidi">
<input type="submit" value="submit">
</form>
<%
String iname=request.getParameter("name");
String iage=request.getParameter("age");
String sexe=request.getParameter("sex");
String number=request.getParameter("no");
String imail=request.getParameter("email");
String ipno=request.getParameter("pno");
String ivst=request.getParameter("vst");
String ivisa=request.getParameter("tyvisa");
session.setAttribute("name",iname);
session.setAttribute("age",iage);
session.setAttribute("sex",sexe);
session.setAttribute("numb",number);
session.setAttribute("email",imail);
session.setAttribute("pnoi",ipno);
session.setAttribute("vst",ivst);
session.setAttribute("visa",ivisa);

%>