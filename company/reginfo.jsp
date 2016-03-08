<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.bwm.db.Conn"%>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/left.css" rel="stylesheet" type="text/css">
<script src="../js/default.js"></script>
</head>
<body topmargin="0px">
<%
Conn con=new Conn();
Show show=new Show();
String strUserName=(String)session.getAttribute("name");
ResultSet rs=con.getRs("SELECT * FROM tb_company WHERE cname='"+strUserName+"'");
        if(rs.next()){
%>
<table width="100%" height="500"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top"><table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
      <form name="form" method="post" action="mreginfo.jsp">
        <tr align="center">
          <td height="27" colspan="2" bgcolor="#21536A"><div id="reg">Edit</div></td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">User Name:</td>
          <td width="300"><%=rs.getString(1)%></td>
        </tr>
        <tr>
          <td height="22" align="center">Change Password:</td>
          <td><input type="password" name="password"></td>
        </tr>
        <tr>
          <td height="22" align="center">Confirm Password:</td>
          <td><input type="password" name="rpassword"></td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">Company Name:</td>
          <td width="300">
            <input type="text" name="name" value="<%=rs.getString(3)%>">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">Email:</td>
          <td width="300">
            <input type="text" name="email" value="<%=rs.getString(4)%>">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">Telephone:</td>
          <td width="300">
            <input name="tel" type="text" id="tel" value="<%=rs.getString(5)%>">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">Industry:</td>
          <td width="300">
            <input name="manage" type="text" id="manage" value="<%=rs.getString(6)%>">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">Location:</td>
          <td width="300">
            <input name="address" type="text" id="address" value="<%=rs.getString(7)%>">
          </td>
        </tr>
        <tr>
          <td width="200" height="22" align="center">Company Description:</td>
          <td width="300">
            <textarea name="resume" cols="35" rows="5"><%=rs.getString(8)%></textarea>
          </td>
        </tr>
        <tr align="center">
          <td height="35" colspan="2"><input type="submit" name="Submit" value="Edit" onClick="return reg()">
&nbsp;&nbsp;
        <input type="reset" name="Reset" value="Reset"></td>
        </tr>
      </form>
    </table></td>
  </tr>
</table>
<%
        }else{
            out.print(show.errorBox("Please Log In.","Oops"));
        }
%>
</body>
</html>