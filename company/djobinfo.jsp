<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.db.Data"%>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="java.sql.*"%>
<%
String strId=(String)request.getParameter("intId");
String strName=(String)session.getAttribute("name");
Data data=new Data();
Show show=new Show();
if(strId!=null&&strName!=null){
        int intT=data.delete("DELETE FROM tb_cjob WHERE cname='"+strName+"' AND jobid="+strId);
        if(intT>0){
                out.print("<script>alert('Successfully Deleted!');document.location='login.htm';</script>");
        }else{
                out.print(show.errorBox("Oops,failed.","Oops,failed."));
        }
}else{
    out.print(show.errorBox("Please Log In.","Please Log In."));
}
%>