<%-- 
    Document   : logindb
    Created on : 4 Mar, 2022, 10:30:07 AM
    Author     : Shivam paswan
--%>
<%@page import="org.apache.catalina.User"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.ConnectionMg"%>
<%
        String Userid=request.getParameter("id");
        String password=request.getParameter("psw");
           ConnectionMg cm=new ConnectionMg();
           String comman="SELECT * FROM signup WHERE User='"+Userid+"' and Password='"+password+"'";
           ResultSet sh=cm.getData(comman);
          if(sh!=null && sh.next())
           {    
             out.print("<script>window.location.href='userindex.jsp'</script>");
            session.setAttribute("User", Userid);
             session.setAttribute("Password", password);
           }
           else
         {
             out.print("<script>alert('your login not successfully');window.location.href='loginf.html'</script>");
         }
           
                
               %>
