<%-- 
    Document   : payment
    Created on : 12 Feb, 2022, 2:54:08 PM
    Author     : Shivam paswan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypackage.ConnectionMg"%>
<%@page contentType="text/html " pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
   <link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/font-awesome.min.css" rel="stylesheet"/>
<link href="css/hover.css" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

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
  <li class="active"> Payment </li>
</ol>
</div>
    </div>
        
        
        <div class="container-fluid" style=" height: auto; background-color:skyblue;">
  <div class="row">
       <div class="col-sm-3" style="height: auto;">
          
      </div>
     
      <div class="col-sm-6" style="height: auto; width: 50%;">
    
      <form action="paydb.jsp">

        <div class="row">
         
            <h3>Payment:</h3>
            Price:
            <span type="number" name="price" value="50" class="form-control"/>50</span>
        Quantity:
        <input type="number" name="quantity" placeholder="Enter of Signup Quantity)" class="form-control"/>
          <h4>User id:</h4>
                <input type="text"  name="uid" placeholder="Userid" class="form-control"/><br> 
        <h4> Amount:</h4>
        <input type="number" name="amount" placeholder="Amount=(Price*Quantity) /multiple price and Quantity: " class="form-control"/>
         
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <h4> Name on Card:</h4>
            <input type="text" name="cardname" placeholder="Enter of Name" class="form-control"/><br>
            <h4> Credit card number:</h4>
            <input type="text"  name="cardnumber" placeholder="1111-2222-3333-4444" class="form-control"/><br>
            <h4> Expiry Month:</h4>
            <select value="State" name="expmonth" placeholder="Exp-Month"  class="form-control"> 
            <option value=''>--Select Month--</option>
    <option selected value='1'>Janaury</option>
    <option value='2'>February</option>
    <option value='3'>March</option>
    <option value='4'>April</option>
    <option value='5'>May</option>
    <option value='6'>June</option>
    <option value='7'>July</option>
    <option value='8'>August</option>
    <option value='9'>September</option>
    <option value='10'>October</option>
    <option value='11'>November</option>
    <option value='12'>December</option>
    </select> 
                <br>

            
            <h4> Expiry Year:</h4>
                <input type="number"  name="expyear" placeholder="2022" class="form-control"/><br>
              
                <h4>  CVV:</h4>
                <input type="number" name="cvv" placeholder="000" class="form-control"/><br>
           
         <label>
          <input type="checkbox" checked="checked" name="con"> conform Payment 
        </label><br>
        <input type="submit" value="Successfully Complited " class="btn btn-success"><br><br>
        </div>
      </form>
    </div>
       <div class="col-sm-3" style="height: auto;"></div>
          
      
  </div>
             <div class="row">
<div class="col-sm-12 border-top border-3" style="heigth: 250px; background:blueviolet;">
<div class="card text-center">
  <div class="card-header">
   <h4> <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a style="color:lime;" href="#">Active</a>
      </li>
      <li class="nav-item">
        <a style="color:lime;" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a style="color:lime;" href="#">Disabled</a>
      </li>
    </ul></h4>
  </div>
       
  
  
</div>
<div class="footer-copyright">
<div class="container">
<div class="row">
<div class="col-sm-1">
    <a href="index.html" class="logo"> <img alt="Tutorials Point" class="img-responsive" src="../images/logo2.jpg"
                                            style="width:100px; height:60px;" > </a>
</div>
<div class="col-md-4 col-sm-12 col-xs-12">
   <nav>
      <ul>
         <li><a style="color:navy;">Privacy Policy</a></li>
         <li><a style="color:navy;">Cookies Policy</a></li>
         <li><a style="color:navy">Contact</a></li>
      </ul>
	  
	  <ul>
         <li><a style="color:navy;">Previous</a></li>
         <li><a style="color:navy;"> Policy</a></li>
         <li><a style="color:navy">Next</a></li>
      </ul>
   </nav>
</div>
    <div class="col-md-3 col-sm-12 col-xs-12" style="margin-top: 100px;">
<p>Management Of National Park Of Uttar Pradesh</p>
</div>
<div class="col-md-4 col-sm-12 col-xs-12">
   <div class="news-group">
      
      <span class="input-group-addon" id="sizing-addon2">
     <h4>Email Id</h4>
<br>
<input type="email" class="form-control" placeholder="enter email" aria-describedby="sizing-addon2"/> 
</span>
 <br>

 <span class="input-group-addon" id="sizing-addon3">
     <h4><input type="button" value=" Submit" class="btn btn-danger" aria-describedby="sizing-addon3"/></h4></span>
      
   </div>
   </div>
</div>
</div>
   
</div>
     <div class="row">
        <div class="col-sm-12" style="height:20px;">
    <div class="card text-center"></div>
    </div>
    </div>
</div>
        
</div>
    
        </div>
</div>
         
    </body>
</html>
