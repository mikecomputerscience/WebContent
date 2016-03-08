<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="con" class="com.bwm.db.Conn" scope="page"/>
<jsp:useBean id="show" class="com.bwm.page.Show" scope="page"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/default.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<p align="center" style=" margin-top:30">&nbsp;</p>
<table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
  <tr align="center">
    <td height="27" colspan="4" bgcolor="#21536A"><div id="reg">Details</div></td>
  </tr>
<%
String strSid=(String)request.getParameter("sid");
String strCid=(String)request.getParameter("cid");
String strEmail=null;
if(strSid!=null){
        ResultSet rs=con.getRs("SELECT * FROM tb_student AS a,tb_sjob AS b WHERE b.jobid='"+strSid.trim()+"'  AND a.sname=b.sname");
        if(rs.next()){
%>
  <tr>
    <td height="22" align="center" >Name:</td>
    <td ><%=rs.getString(3)%></td>
    <td align="center" >Age:</td>
    <td ><%=rs.getInt(4)%></td>
  </tr>
  <tr>
    <td height="22" align="center" >Sex:</td>
    <td ><%
                int intS=rs.getInt(5);
                if(intS==1){
                        out.print("Male");
                }else{
                        out.print("Female");
                }
%></td>
    <td align="center" >Birthday:</td>
    <td ><%=rs.getString(6)%></td>
  </tr>
  <tr>
    <td height="22" align="center" >School:</td>
    <td ><%=rs.getString(7)%></td>
    <td align="center" >Major:</td>
    <td ><%=rs.getString(8)%></td>
  </tr>
  <tr>
    <td height="22" align="center" >Highest Level of Education:</td>
    <td ><%=rs.getString(9)%></td>
    <td align="center" >E―mail：</td>
    <td >
<%
                        strEmail=rs.getString(10);
                        session.setAttribute("email",strEmail);
                        out.print(strEmail);
%></td>
  </tr>
  <tr>
    <td height="22" align="center" >Resume:</td>
    <td colspan="3" ><%=rs.getString(11)%></td>
  </tr>
  <tr >
    <td height="22" align="center" >Industry:</td>
    <td ><%=rs.getString(14)%></td>
    <td align="center" >Job Function: </td>
    <td ><%=rs.getString(15)%></td>
  </tr>
  <tr >
    <td height="22" align="center" >Compensation: </td>
    <td ><%=rs.getString(16)%></td>
    <td align="center" >Posted Date:</td>
    <td ><%=rs.getString(17)%></td>
  </tr>
  <tr >
    <td height="22" align="center" >Application Deadline:</td>
    <td ><%=rs.getString(18)%></td>
    <td align="center" >&nbsp;</td>
    <td >&nbsp;</td>
  </tr>
  <tr >
    <td height="22" align="center" >Others:</td>
    <td colspan="3" ><%=rs.getString(19)%></td>
  </tr>
<%
        }else{
                show.errorBox("No match","No match");
        }
        rs.close();
        con.close();
}else if(strCid!=null){
        ResultSet rs=con.getRs("SELECT * FROM tb_company AS a,tb_cjob AS b WHERE b.jobid='"+strCid.trim()+"'  AND a.cname=b.cname");
                if(rs.next()){
%>
  <tr>
    <td height="22" align="center" >Company:</td>
    <td ><%=rs.getString(3)%></td>
    <td align="center" >E―mail：</td>
    <td >
<%
                        strEmail=rs.getString(4);
                        session.setAttribute("email",strEmail);
                        out.print(strEmail);
%></td>
  </tr>
  <tr>
    <td height="22" align="center" >Contact us:</td>
    <td ><%=rs.getString(5)%></td>
    <td align="center" >Industry:</td>
    <td ><%=rs.getString(6)%></td>
  </tr>
  <tr>
    <td height="22" align="center" >Location:</td>
    <td colspan="3" ><%=rs.getString(7)%></td>
  </tr>
  <tr>
    <td height="22" align="center" > Company Description:</td>
    <td colspan="3" ><%=rs.getString(8)%></td>
  </tr>
  <tr >
    <td height="22" align="center" > Industry: </td>
    <td ><%=rs.getString(11)%></td>
    <td align="center" > Position:： </td>
    <td ><%=rs.getString(12)%></td>
  </tr>
  <tr >
    <td height="22" align="center" > Compensation: </td>
    <td ><%=rs.getString(13)%></td>
    <td align="center" >Posted Date:</td>
    <td ><%=rs.getString(14)%></td>
  </tr>
  <tr >
    <td height="22" align="center" >Application Deadline:</td>
    <td colspan="3" ><%=rs.getString(15)%></td>
  </tr>
  <tr >
    <td height="22" align="center" >Others:</td>
    <td colspan="3" ><%=rs.getString(16)%></td>
  </tr>
<%
                }else{
                        show.errorBox("No match","No match");
                }
                rs.close();
                con.close();
}
%>
  <tr align="center" >
    <td height="35" colspan="4"><a href="mail/">Send Email</a>&nbsp;&nbsp;&nbsp;&nbsp;<a onClick="Jscript:window.close()" style="cursor:hand; ">关闭窗口</a></td>
  </tr>
</table>
</body>
</html>
