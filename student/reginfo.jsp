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
String strChecked="checked";
String strUserName=(String)session.getAttribute("name");
ResultSet rs=con.getRs("SELECT * FROM tb_student WHERE sname='"+strUserName+"'");
        if(rs.next()){
%>
<table width="100%" height="500"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top"> <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
        <form name="form" method="post" action="mreginfo.jsp">
          <tr align="center">
            <td height="27" colspan="2" bgcolor="#21536A"><div id="reg">Update Profile</div></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">User Name:</td>
            <td width="300"><%=rs.getString(1)%></td>
          </tr>
          <tr>
            <td height="22" align="center">Password:</td>
            <td><input type="password" name="password"></td>
          </tr>
          <tr>
            <td height="22" align="center">Confirm Password:</td>
            <td><input type="password" name="rpassword"></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">Real Name:</td>
            <td width="300"><input type="text" name="name" value="<%=rs.getString(3)%>"></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">Age:</td>
            <td width="300"><input type="text" name="age" value="<%=rs.getInt(4)%>"></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">Gender:</td><%int intSex=rs.getInt(5);%>
            <td width="300"><input type="radio" name="sex" value="1" <%=intSex==1?strChecked:null%>>
              Male
              <input type="radio" name="sex" value=0 <%=intSex==0?strChecked:null%>>
              Female </td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">Birthday:</td>
            <td width="300"><input type="text" name="birthday" value="<%=rs.getDate(6)%>">
             YYYY-MM-DD</td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">School:</td>
            <td width="300"><input type="text" name="school" value="<%=rs.getString(7)%>"></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">Major:</td>
            <td width="300"><input type="text"  name="specialty" value="<%=rs.getString(8)%>"></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">Highest Level of Education:</td>
            <td width="300"><input type="text" name="knowledge"  value="<%=rs.getString(9)%>"></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">Email:</td>
            <td width="300"><input type="text" name="email"value="<%=rs.getString(10)%>"></td>
          </tr>
          <tr>
            <td width="200" height="22" align="center">Resume:</td>
            <td width="300"><textarea name="resume" cols="35" rows="5"><%=rs.getString(11)%></textarea></td>
          </tr>
          <tr align="center">
            <td height="35" colspan="2"><input type="submit" name="Submit" value="Confirm" onClick="return reg()">
&nbsp;&nbsp;
              <input type="reset" name="Reset" value="Reset"></td>
          </tr>
        </form>
      </table></td>
  </tr>
</table>
<%
        }else{
            out.print(show.errorBox("Database Error，please log in again。","Oops"));
        }
%>
</body>
</html>