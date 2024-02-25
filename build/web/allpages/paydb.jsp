<%-- 
    Document   : paydb
    Created on : 9 Mar, 2022, 7:00:09 PM
    Author     : Shivam paswan
--%>
<%@page import="mypackage.ConnectionMg"%>
<%@page import="java.io.PrintWriter"%>
<%
   String Userid=request.getParameter("uid");
     String Amount=request.getParameter("amount");
       String CardName=request.getParameter("cardname");
       String Cardnumber=request.getParameter("cardnumber");
       String Expmonth=request.getParameter("expmonth");
       String Expyear=request.getParameter("expyear");
       String CVV=request.getParameter("cvv");
       String CPayment=request.getParameter("con");

          ConnectionMg cm=new ConnectionMg(); 
           String command="insert into payment values('"+Userid+"','"+Amount+"','"+CardName+"','"+Cardnumber+"','"+Expmonth+"','"+Expyear+"','"+CVV+"','"+CPayment+"')";
           
           
      if(cm.ExecuteInsertUpdateSelectOrDelete(command))
      {
        
          out.print("<script>alert('your Ticket Booking complited ');window.location.href='../index.html';</script>");
      }
       else
      {
          out.print("<script>alert('your Ticket Booking is not complited ');window.location.href='allpages/payment.jsp';</script>");
      }   
     
    %>

