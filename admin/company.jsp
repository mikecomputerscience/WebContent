<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.bwm.db.Conn" %>
<%@ include file="include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/left.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0px">
<table width="98%" height="500"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="50" align="center"><div id="font">Company Information Management</div></td>
  </tr>
  <tr>
    <td valign="top"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
      <tr align="center" bgcolor="#21536A">
	<td height="22"><div id="reg">User Name</div></td>
	<td><div id="reg">Password</div></td>
	<td><div id="reg">Company</div></td>
	<td><div id="reg">Email</div></td>
	<td ><div id="reg">Contact Number</div></td>
	<td ><div id="reg"> Industry</div></td>
	<td ><div id="reg">Location</div></td>
	<td ><div id="reg">Delete</div></td>
      </tr>
<%
Conn con=new Conn();
ResultSet rs=con.getRs("SELECT * FROM tb_company");
while(rs.next()){
%>
      <tr align="center">
	<td height="22" align="left">
<%
	String strCname=rs.getString(1);
	out.print(strCname);
%></td>
	<td align="left"><%=rs.getString(2)%></td>
	<td align="left"><%=rs.getString(3)%></td>
	<td align="left"><%=rs.getString(4)%></td>
	<td align="left"><%=rs.getString(5)%></td>
	<td align="left"><%=rs.getString(6)%></td>
	<td align="left"><%=rs.getString(7)%></td>
	<td align="center"><a href="dcompany.jsp?cname=<%=strCname%>">Delete</a></td>
      </tr>
<%
}
con.close();
%>
      <tr>
	<td colspan="10">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
