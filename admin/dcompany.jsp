<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.bwm.db.Data"%>
<%@ include file="include.jsp"%>
<%
String strCname=(String)request.getParameter("cname");
Data data=new Data();
int intT=data.delete("DELETE FROM tb_company WHERE cname='"+strCname+"'");
	if(intT>0){
		out.print("<script>alert('Successfully Deleted!');document.location='login.htm';</script>");
	}else{
	    new Show().errorBox("Delete Failed!","Delete Failed!");
	}
%>
