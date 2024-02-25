<%-- 
    Document   : userindex
    Created on : 8 Mar, 2022, 7:58:57 AM
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
       <script src="js/jquery-3.3.1.min.js"></script>
       <script src="js/bootstrap.min.js"></script>
       <link rel="stylesheet" type="text/css" href="css/bootsin.css"> 
      <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css"> 
      
        
        <title>User Booking ticket </title>
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
    <div class="col-sm-12" style="min-height: 0px; width:100%; margin-top: 100px; ">
        <ol class="breadcrumb" style="font-size: 20px;">
  <li><a href="../index.html">Home</a></li>
  <li class="active"> User Booked ticket </li>
</ol>
</div>
    </div>
        
        
        <%
            ConnectionMg cm=new ConnectionMg();
            String s="select * from signup where user='"+session.getAttribute("user")+"' and '"+session.getAttribute("password")+"'";
           ResultSet sh=cm.getData(s);
           while(sh.next())
           {
               
  %>   
  <div class="container-fluid" style=" height: auto; background-color:skyblue;">
  <div class="row">
       <div class="col-sm-3" style="height: auto;">
          
      </div>
      <div class="col-sm-6" style="height: auto;">
          <table style="font-size: 20px;">
              <tr>
          <td> Name:  <%out.print(sh.getString(1)); %></td>
          <td>  Gender :  <%out.print(sh.getString(2)); %></td>
          <td>  Mobile Number : <%out.print(sh.getString(3)); %><td>
                 </tr><br/>  
                 <tr>
                     <td>  State:  <%out.print(sh.getString(4)); %><br/></td>
                     <td> Age:  <%out.print(sh.getString(5)); %><br/></td>
              </tr>
              <tr>
                  <td>  User id : <%out.print(sh.getString(6)); %><br/></td>
                  <td> Password :  <%out.print(sh.getString(7)); %></td>
                </tr>
              <tr>
                  <td>  Booking Date:  <%out.print(sh.getString(9)); %></td>
                  <td>  Time :  <%out.print(sh.getString(10)); %><br/></td>
             </tr>
             <tr>
             <td> Type of Person: <%out.print(sh.getString(11)); %></td>
             <td>  One ticket Price :  <%out.print(sh.getString(12)); %></td>
             <td>  Quanitity : <%out.print(sh.getString(13)); %></td>
               </tr><br>
              </table>
               </div>
                <div class="col-sm-3" style="height: auto;">
           <br><br>
               <img src="../images/<%out.print(sh.getString(8)); %>"style="height: 200px; width: 150px; "/><br/>
      </div>
  </div><br><br></div><br>
            <span style="font-size: 10px; cursor: pointer;" onclick="print()">
                     <center>     <input type="submit" value="Print" class="btn btn-success" style="font-size: 30px;"/></center>
            
        </span>     
               <%
               
           }
   %> 
   <br><br>
   <div class="row">    
       <div class="col-sm-12" style="background-color:greenyellow;">
           <center> <label class="text text-uppercase" style="font-weight:bolder; padding-top:1%; font-family:'times new roman'; font-family: bold;
                           font-size:25px; color: #000099;"> Management Of National Park Of Uttar Pradesh </label></center>
            </div>    </div>
    </body>
</html>
