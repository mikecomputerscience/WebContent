<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/left.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0px">
<table width="100%" height="500"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top"><table width="500" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F5f7f7">
        <form name="form1" method="post" action="send.jsp">
      <tr align="center">
        <td height="27" colspan="2" bgcolor="#21536A"><div id="reg">Send Emails</div></td>
      </tr>
      <tr>
        <td width="200" height="22" align="center">Recipient1:</td>
        <td width="300"><input type="text" name="from" value="
<%
String strEmail=(String)session.getAttribute("email");
if(strEmail!=null){
        out.print(strEmail);
        session.removeAttribute("email");
}
%>
        "></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient2:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient3:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient4:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient5:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient6:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient7:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient8:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient9:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Recipient10:</td>
        <td height="22"><input type="text" name="from"></td>
      </tr>
      <tr>
        <td height="22" align="center">Subject:</td>
        <td height="22"><input name="subject" type="text" size="35"></td>
      </tr>
      <tr>
        <td height="22" colspan="2" align="center">Content:</td>
        </tr>
      <tr>
        <td height="22" colspan="2" align="center"><textarea name="message" cols="60" rows="12"></textarea></td>
        </tr>
      <tr>
        <td height="27" colspan="2" align="center"><input type="submit" name="Submit" value="Confirm">
                &nbsp;&nbsp;
                <input type="reset" name="Submit2" value="Reset"></td>
      </tr>
        </form>
   </table></td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
  </tr>
</table>
</body>
</html>