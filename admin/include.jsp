<%@ page import="com.bwm.page.Show" %>
<%
if(session.getAttribute("admin")==null){
	out.print(new Show().errorBox("Please Log In","Please Log In"));
	return;
}
%>