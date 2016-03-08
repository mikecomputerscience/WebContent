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
        int intT=data.delete("DELETE FROM tb_sjob WHERE sname='"+strName+"' AND jobid="+strId);
        if(intT>0){
                out.print("<script>alert('Delete Successfully');document.location='login.htm';</script>");
        }else{
                out.print(show.errorBox("Database Error","Oops"));
        }
}else{
    out.print(show.errorBox("Please log in.","Oops."));
}
%>