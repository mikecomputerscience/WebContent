<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="com.bwm.db.Data"%>
<%@ page import="com.bwm.time.Time"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="cjob" scope="request" class="job.Cjob" />
<jsp:setProperty name="cjob" property="*" />
<%
Show show=new Show();
Data data=new Data();
Time time=new Time();
int intT=0;
String strName=(String)session.getAttribute("name");
	intT=data.insert("INSERT INTO tb_cjob(cname,specialty,job,emolument,ptime,atime,other) VALUES('"+strName+"','"+
		cjob.getSpecialty()+"','"+cjob.getJob()+"','"+cjob.getEmolument()+"','"+time.getYMD()+"','"+
		cjob.getAtime()+"','"+cjob.getOther()+"')");
	if(intT<=0){
		out.print(show.errorBox("Oops,failed.","Oops,failed."));
		return;
	}else{
		out.print("<script>alert('Successed!');document.location='login.htm';</script>");
	}
%>