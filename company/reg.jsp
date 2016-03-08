<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.bwm.page.Show"%>
<%@ page import="com.bwm.db.Data"%>
<%@ page import="com.bwm.string.Str"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="company" class="job.Company" scope="request" />
<jsp:setProperty name="company" property="*"/>
<%
Show show=new Show();
Str str=new Str();
company.setCname(str.dbEncode(company.getCname()));
company.setAddress(str.dbEncode(company.getAddress()));
company.setEmail(str.dbEncode(company.getEmail()));
company.setManage(str.dbEncode(company.getManage()));
company.setName(str.dbEncode(company.getName()));
company.setPassword(str.dbEncode(company.getPassword()));
company.setResume(str.dbEncode(company.getResume()));
company.setTel(str.dbEncode(company.getTel()));
if(company.getCname().equals("")||company.getName().equals("")||company.getPassword().equals("")||company.getEmail().equals("")){
        out.print(show.errorBox("Please fill out the form completely.","Oops"));
        return;
}else{
        if(company.getCname().compareTo("z")>0||company.getCname().compareTo("0")<0){
                out.print(show.errorBox("Special characters and numbers are not allowed in user name.","Oops"));
                return;
        }
       int intT=0;
        Data data=new Data();
        intT=data.getRowCount("tb_company WHERE cname='"+company.getCname()+"'");
        if(intT>0){
            out.print(show.errorBox("Sorry, that username already exists. Please try with another one.","Oops"));
            return;
        }else{
            intT=data.insert("INSERT INTO tb_company(cname,password,name,email,tel,manage,address,resume) VALUES('"+
                company.getCname()+"','"+company.getPassword()+"','"+company.getName()+"','"+company.getEmail()+"','"+
                company.getTel()+"','"+company.getManage()+"','"+company.getAddress()+"','"+company.getResume()+"')");
            if(intT<=0){
                        out.print(show.errorBox("Sorry, that username already exists. Please try with another one.","Oops"));
                        return;
            }else{
                        out.print("<script>alert('Register Successed!');document.location='../';</script>");
            }
        }
}
%>
