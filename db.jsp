<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ams","root","newroot");
%>