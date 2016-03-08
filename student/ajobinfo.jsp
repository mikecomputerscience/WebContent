<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="com.bwm.db.Data"%>
<%@ page import="com.bwm.time.Time"%>

<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="sjob" scope="request" class="job.Sjob" />
<jsp:setProperty name="sjob" property="*" />
<%
Show show=new Show();
Data data=new Data();
Time time=new Time();
int intT=0;
String strName=(String)session.getAttribute("name");
        intT=data.insert("INSERT INTO tb_sjob(sname,specialty,job,emolument,ptime,atime,other) VALUES('"+strName+"','"+
                sjob.getSpecialty()+"','"+sjob.getJob()+"','"+sjob.getEmolument()+"','"+time.getYMD()+"','"+
                sjob.getAtime()+"','"+sjob.getOther()+"')");
        if(intT<=0){
                out.print(show.errorBox("Please log in.","Oops"));
                return;
        }else{
                out.print("<script>alert('Succeed!');document.location='login.htm';</script>");
        }
%>
