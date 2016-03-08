<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.bwm.db.Data"%>
<%@ include file="include.jsp"%>
<%
String strSname=(String)request.getParameter("sname");
Data data=new Data();
int intT=data.delete("DELETE FROM tb_student WHERE sname='"+strSname+"'");
	if(intT>0){
		out.print("<script>alert('Successfully Deleted!');document.location='login.htm';</script>");
	}else{
	    new Show().errorBox("Delete Failed!","Delete Failed!");
	}
%>
