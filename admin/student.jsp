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
    <td height="50" align="center"><div id="font">Students' Information Management</div></td>
  </tr>
  <tr>
    <td valign="top"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
      <tr align="center" bgcolor="#21536A">
	<td height="22"><div id="reg">User Name</div></td>
	<td><div id="reg">Password</div></td>
	<td><div id="reg">Real Name</div></td>
	<td><div id="reg">Gender</div></td>
	<td ><div id="reg">Birthday</div></td>
	<td ><div id="reg">School</div></td>
	<td ><div id="reg">Major</div></td>
	<td ><div id="reg">Highest Level of Education</div></td>
	<td ><div id="reg">Email</div></td>
	<td ><div id="reg">Delete</div></td>
      </tr>
<%
Conn con=new Conn();
ResultSet rs=con.getRs("SELECT * FROM tb_student");
while(rs.next()){
%>
      <tr align="center">
	<td height="22" align="left">
      <%
	String strSname=rs.getString(1);
	out.print(strSname);
%></td>
	<td align="left"><%=rs.getString(2)%></td>
	<td align="left"><%=rs.getString(3)%></td>
	<td align="center">
<%
	if(rs.getInt(5)==1){
		out.print("Male");
	}else{
		out.print("Female");
	}
%></td>
	<td align="center"><%=rs.getDate(6)%></td>
	<td align="left"><%=rs.getString(7)%></td>
	<td align="left"><%=rs.getString(8)%></td>
	<td align="center"><%=rs.getString(9)%></td>
	<td align="left"><%=rs.getString(10)%></td>
	<td align="center"><a href="dstudent.jsp?sname=<%=strSname%>">Delete</a></td>
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
