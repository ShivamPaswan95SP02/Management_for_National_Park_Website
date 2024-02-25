<%-- 
    Document   : signup
    Created on : 12 Feb, 2022, 7:34:55 AM
    Author     : Shivam paswan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/font-awesome.min.css" rel="stylesheet"/>
<link href="css/hover.css" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    function getCaptcha()
    {
        var strArr="123456789abdfghijklmnopqrstuvwxyz";
        var code="";
        for(var i=0;i<5;i++)
        {
            code=code+strArr[Math.floor(Math.random()*17)];
            
        }
        return code;
    }
    function demo()
    {
       var c=getCaptcha(); 
       document.getElementById("s1").innerHTML=c;
       document.getElementById("hdn1").value=c;
    }
    
</script>

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
          font-size:35px; color: #000099;"><marquee>Management Of National Park Of Uttar Pradesh </marquee> </label>
                </div>
               </div>
            
                     </nav>
           </div>
        <div class="row">
    <div class="col-sm-12" style="min-height: 0px; width:100%; margin-top: 100px; ">
        <ol class="breadcrumb" style="font-size: 20px;">
  <li><a href="../index.html">Home</a></li>
  <li class="active"> Booking Of Tickets/Signup </li>
</ol>
</div>
    </div>

<div class="row">
    <div class="container-fluid" style=" height: auto; background:skyblue;">
        <div class="col-sm-2" style="height: auto;"></div>
    <div class="col-sm-8" >
        
        <form action="../SignupDB" method="post" enctype="multipart/form-data">
        
            
            <h4> Name:</h4>
           <input type="text" name="name" class="form-control"/><br>
           <h4> Gender:</h4>
       <input type="radio" name="gender" value="Male"/> Male
       <input type="radio" name="gender" value="Female"/> Female
       <br><br>
       <h4> Mobile number: </h4>
       <input type="number" name="mobile" class="form-control"/>
       <h4> State:</h4>
       <select value="State" name="state" class="form-control"> 
           <option>--Select--</option>
           <option>Andaman and Nicobar Islands</option>
           <option>Chandigarh</option>
            <option>Dadra and Nagar Haveli and Daman and Diu</option>
           <option>Delhi</option>
           <option>Jammu and Kashmir</option>
           <option>Ladakh</option>
           <option>Lakshadweep</option>
           <option>Puducherry</option>
           <option>Andhra Pradesh</option>
           <option>Arunachal Pradesh</option>
           <option>Assam</option>
           <option>Bihar</option> 
            <option>Chhattisgarh</option>
           <option>Goa</option>
           <option>Gujarat</option>
           <option>Haryana</option>
           <option>Himachal Pradesh</option>
            <option>Jharkhand</option>
           <option>Karnataka</option>
           <option>Kerala</option>
           <option>Madhya Pradesh</option>
           <option>Maharashtra</option>
            <option>Manipur</option>
           <option>Meghalaya</option>
           <option>Mizoram</option>
           <option>Nagaland</option>
           <option>Odisha</option>
            <option>Punjab</option>
           <option>Rajasthanh</option>
           <option>Sikkim</option>
           <option>Tamil Nadu</option>
           <option>Telangana</option>
            <option>Tripura</option>
           <option>Uttar Pradesh</option>
           <option>Uttarakhand</option>
           <option>West Bengal</option>
           
       </select>
       <h4> Age:</h4>
       <input type="number" name="age" class="form-control"/>   
       <h4> Email Address:</h4>
           <input type="email" name="email" class="form-control"/>
           <h4>  Password:</h4>
       <input type="password" name="pass" class="form-control"/>
       <h4> Booking Date:</h4>
        <input type="Date" name="Sdate" value="dd-mm-yy" min="#" max="#"/>
        <h4> Time:</h4>
       <input type="radio" name="time" value="8:30AM-12:30PM"/> 8:30AM-12:30PM
       <input type="radio" name="time" value="12:30PM-4:30PM"/> 12:30PM-4:30PM
       <br><br>
       <h4> Type of Person </h4>
      <select value="person" name="person" class="form-control"> 
           <option>--Select--</option>
           <option>Adult(50_Rupees)</option>
          
            <option> Senior Child( 11 year-18 year)50_Rupees</option> 
       </select>
       <h4> Price:</h4>
        <input type="number" name="price" value="50" class="form-control"/>
        <h4> Quantity:</h4>
       <input type="number" name="quantity" class="form-control"/>
       
       <br>
       <h4>   Profile Picture:</h4>
           <input type="file" name="profile" class="form-control"/>
           <h4>  Captcha Code: </h4>
           <span style="font-size:30px; font-family:corsive ; color:blue; margin-left: 120px;">
               <strike id="s1"> 123abc </strike></span>
           <span class="fa fa-refresh" style="font-size: 30px; margin-left: 100px; cursor:pointer; " title="Click here to refresh captcha" onclick="demo()"/></span>
          <input type="hidden" name="hdn1" id="hdn1"/>        
        <br>
        <h4>  Enter Above Captcha Code:</h4>
                   <input type="text" class="form-control" name="cc1"/>
                 
           <br><br>
           <input type="submit" value="Continue To Boocking" class="btn btn-success"/>
           <br><br>
       
      </form>
    </div>
<div class="col-sm-2" style="height: auto;"></div>
</div>
</div>  
        
<div class="row">
    <div class="col-sm-12" style="height: 20px;">
    
    </div></div>
<!--footer-->
    <div class="row">
<div class="col-sm-12 border-top border-3" style="heigth:250px; background:blueviolet;">
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
    <a href="index.html" class="logo"> <img alt="...." class="img-responsive" src="images/flogo.png"
                                            style="width:100px; height:60px;" > </a>
</div>
<div class="col-md-4 col-sm-12 col-xs-12">
   <nav>
      <ul>
         <li><a style="color:navy;">Privacy Policy</a></li>
        
         <li><a style="color:navy">Contact</a></li>
      </ul>
	  
	  <ul>
        
         <li><a style="color:navy;"> Policy</a></li>
       
      </ul>
         <ul>
        
         <li><a style="color:navy;"> VBSPU Jaunpur</a></li>
      </ul>
   </nav>
</div>
    <div class="col-md-3 col-sm-12 col-xs-12" style="margin-top: 100px;">
<p>Management Of National Park Of Uttar Pradesh</p>
</div>
<div class="col-md-4 col-sm-12 col-xs-12">
   <div class="news-group">
       <form action="subscribedb" method="post" enctype="multipart/form-data">
     
     <h4>Email Id</h4>
<br>
<input type="email" name="email" class="form-control" placeholder="enter email"/> 

 <br>
 <h4><input type="button" value=" Submit" class="btn btn-danger"/></h4>
       </form>
   </div>
   </div>
</div>
</div>
</div>
</div>
</div>
    </div> 
<!--/footer-->
        </div>

    </body>
</html>
