<%-- 
    Document   : allsignupD
    Created on : 10 Mar, 2022, 2:30:24 PM
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
             <th> Name </th> 
             <th> Gender  </th> 
             <th>  Mobile Number </th>
             <th>State </th>
             <th> Age </th>
             <th> Email </th> 
             <th> Password </th> 
              <th> Profile </th>  
              <th>Booking Date </th>
             <th> Time</th>
             <th> Type of Person</th> 
             <th> One ticket Price</th> 
              <th> Quanitity </th>  
              
            </tr>
        
        <%
           ConnectionMg cm=new ConnectionMg();
           String command="select*from signup ";
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
        <td> <img src="../images/<%=rs.getString(8)%>" style="height: 100px; width: 70px;"/></td>
      <td> <%=rs.getString(9)%></td>
      <td> <%=rs.getString(10)%></td>
        <td> <%=rs.getString(11)%></td>
        <td> <%=rs.getString(12)%></td>
        <td> <%=rs.getString(13)%></td>
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
