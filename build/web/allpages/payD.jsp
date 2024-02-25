<%-- 
    Document   : payD
    Created on : 10 Mar, 2022, 3:13:13 PM
    Author     : Shivam paswan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.ConnectionMg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/font-awesome.min.css" rel="stylesheet"/>
<link href="css/hover.css" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
        <title> All Booking Ticket</title>
    </head>
    <body>
       <div class="container-fluid">
             <div class="row">
                 <nav class="navbar navbar-default navbar-fixed-top" >
           
               
               <div class="cl-sm-12" style="border-radius:0px; height: 95px;
     font-size: 30px; background-image:linear-gradient(wheat,skyblue,green);">
                   <div class="col-sm-2">
                   <img src="images/logo.png" style="height: 95px; width:110px;"></img>
                   </div>
                   <div class="col-sm-10">
            <label class="text text-uppercase" style="font-weight:bolder; padding-top:1%; font-family:'times new roman'; font-family: bold;
          font-size:35px; color: #000099;"><marquee> Management Of National Park Of Uttar Pradesh  </marquee> </label>
                </div>
               </div>
            
                     </nav>
           </div>
        <div class="row">
    <div class="col-sm-12" style="height:auto; width:100%; margin-top: 100px; ">
        <ol class="breadcrumb" style="font-size: 20px;">
  <li><a href="Admin.jsp">Admin Home</a></li>
  <li class="active"> All Booking Ticket</li>
</ol>
</div>
    </div>
           <div class="row">
           
    <div class="col-sm-12" style=" height: 100%;">
        
        <div class="col-sm-2" style="font-size: 18px; ">
                <table style="width: 100%;   color: purple; ">
                    <ol>
                        <li><a href="allsignupD.jsp" >All Booking Ticket</a></li> <br>
                    
                        <li> <a href="payD.jsp" >Payment Details</a></li> <br>
                  
                        <li><a href="feedbackD.jsp" >feedback Details</a></li><br>
                  
                        <li><a href="subscribedb.jsp" > Subscribe Management </a></li><br>
                   
                        <li><a href="somef.jsp" >some other form</a></li><br>
                    
                        
                
                        <br>
                    
                    </ol>
                </table>
                </div>
           
            
            
    <div class="col-sm-10" style="background: mediumaquamarine; height: 100%; font-size: 16px; font-family: cursive; 
             border:5px; solid yellowgreen; padding:15px;  color: white;">
      
        <table border="2" style="margin-top: 50px; ">
            <br>
         <tr>
             <th> PayerId  </th> 
             <th>Amount  </th> 
             <th>Name on Card </th>
             <th>Credit card number </th>
             <th>Expiry Month </th> 
             <th> Expiry Year</th> 
              <th> CVV </th>  
              <th>conform Payment </th>
            
              
            </tr>
        
        <%
           ConnectionMg cm=new ConnectionMg();
           String command="select*from payment ";
           ResultSet rs=cm.getData(command);
           while(rs.next())
           {
 %>
 
  
<tr>
        <td> <%=rs.getString(1)%></td>
        <td> <%=rs.getString(2)%></td>
        <td> <%=rs.getString(3)%></td>
        <td> <%=rs.getString(4)%></td>
        <td> <%=rs.getString(5)%></td>
        <td> <%=rs.getString(6)%></td>
        <td> <%=rs.getString(7)%></td>
        <td> <%=rs.getString(8)%></td>
</tr>  
       
  <% }%>
            </table>
        <br>
    
            </div>
</div>  
           </div>
            <div class="row">    
       <div class="col-sm-12" style="background-color:greenyellow;">
           <center> <label class="text text-uppercase" style="font-weight:bolder; padding-top:1%; font-family:'times new roman'; font-family: bold;
                           font-size:25px; color: #000099;"> Management Of National Park Of Uttar Pradesh </label></center>
            </div>  
           
       </div>
           </div>
    </body>
</html>

