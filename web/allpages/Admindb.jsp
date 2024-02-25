<%-- 
    Document   : Admindb
    Created on : 11 Mar, 2022, 5:51:20 AM
    Author     : Shivam paswan
--%>

<%@page import="org.apache.catalina.User"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.ConnectionMg"%>
<%
        String Adminid=request.getParameter("aid");
        String Password=request.getParameter("pass");
           ConnectionMg cm=new ConnectionMg();
           String comman="SELECT * FROM log WHERE Email='"+Adminid+"' and Password='"+Password+"'";
           ResultSet sh=cm.getData(comman);
          if(sh.next())
           {    
             out.print("<script>window.location.href='Admin.jsp'</script>");
           
           }
           else
         {
             out.print("<script>alert('your login not successfully');window.location.href='AdminF.jsp'</script>");
         }
           
                
               %>
