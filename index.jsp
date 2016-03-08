<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="con" class="com.bwm.db.Conn" scope="page"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/default.css" rel="stylesheet" type="text/css">
</head>
<body background="images/bg.jpg">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="27" colspan="3" align="right"><div id="link"></div></td>
  </tr>
  <tr>
    <td width="1" height="36" background="images/gbnavl.gif"></td>
    <td width="99%" background="images/gbnavm.gif"><div id="link1"><a href="student/">Student Sign Up</a> <a href="company/">Company Sign Up</a></div></td>
    <td width="1" background="images/gbnavr.gif"></td>
  </tr>
</table>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="50"  bgcolor="#FFFFFF"><div id="top"><img src="images/top.gif" width="340" height="38"></div></td>
  </tr>
</table>
<table width="100%" height="400"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr align="center" >
        <td width="50%" height="22"><div id="font1">Looking for a Job?</div></td>
        <td width="50%" height="22"><div id="font1">Looking for Employees?</div></td>
      </tr>
      <tr>
        <td valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
<%
ResultSet rs=con.getRs("SELECT a.jobid,b.name,b.school,b.specialty,b.knowledge,a.job,a.emolument FROM tb_sjob AS a,tb_student AS b WHERE a.sname=b.sname and now()<=atime ORDER BY ptime DESC");
        while(rs.next()){
%>
      <tr>
        <td valign="top"><font id="reg">&lt;&lt;</font><a target="_blank" href="view.jsp?sid=<%=rs.getString(1)%>">[<%=rs.getString(2)%>]毕业于[<%=rs.getString(3)%>，<%=rs.getString(4)%>，<%=rs.getString(5)%>]，欲求[<%=rs.getString(6)%>]职位，要求薪水[<%=rs.getString(7)%>]。</a>&nbsp;</td>
      </tr>
<%
        }
        con.close();
%>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
        <td valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
<%
rs=con.getRs("SELECT a.jobid,b.name,b.manage,a.job,a.emolument FROM  tb_cjob AS a,tb_company AS b WHERE a.cname=b.cname and now()<=atime ORDER BY ptime DESC");
        while(rs.next()){
%>
      <tr>
        <td valign="top"><font id="reg">&gt;&gt;</font><a  target="_blank" href="view.jsp?cid=<%=rs.getString(1)%>">[<%=rs.getString(2)%>]Our Company[<%=rs.getString(3)%>]，Looking for[<%=rs.getString(4)%>]Position，Salary[<%=rs.getString(5)%>]。</a></td>
      </tr>
<%
        }
        con.close();
%>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
      </tr>
    </table></td>
    <td width="180" rowspan="2" valign="top" bgcolor="#F5f7f7"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
        <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="22" colspan="2" align="center"  background="images/tdbg.jpg"><div id="font1">Log In</div></td>
          </tr>
          <form name="form1" method="post" action="login.jsp"><tr>
            <td width="37%" height="22" align="center">User Name：</td>
            <td width="63%">
              <input name="username" type="text" size="12">
            </td>
          </tr>
          <tr>
            <td height="22" align="center">Password：</td>
            <td height="22"><input name="password" type="password" size="12"></td>
          </tr>
          <tr align="center">
            <td height="30" colspan="2">
              <input name="select" type="radio" value="student" checked >
              Student
              <input type="radio" name="select" value="company">
             Company</td>
          </tr>
          <tr align="center">
            <td height="30" colspan="2">
              <input type="submit" name="Submit2" value="Log In">
              &nbsp;
<input name="Submit" type="reset" value="Reset"></td>
          </tr></form>
        </table></td>
      </tr>

      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="100%" height="50"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1"bgcolor="#FFFFFF"><hr size="1" color="#CC3300" style="position:absolute;"></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;<a href="http://itu.edu/">Contact Us</a> | <a href="admin/">System Administrator Log In</a> | &copy;LinkedUs </td>
  </tr>
</table>
</body>
</html>