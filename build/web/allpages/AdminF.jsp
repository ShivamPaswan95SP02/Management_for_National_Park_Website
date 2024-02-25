<%-- 
    Document   : AdminF
    Created on : 11 Mar, 2022, 5:41:29 AM
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
        <title>Admin Page</title>
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
  <li class="active"> Admin Form </li>
</ol>
</div>
    </div>
        
        
        <div class="container-fluid" style=" height: auto; background-color:skyblue;">
  <div class="row">
       <div class="col-sm-3" style="height: auto;">
          
      </div>
     
      <div class="col-sm-6" style="height: auto; width: 50%;">
    
     

        <form action="Admindb.jsp" method="post">
         
           
          <h4>Admin Id:</h4>
                <input type="text"  name="aid" placeholder="Userid" class="form-control"/><br> 
        <h4> Password:</h4>
        <input type="text" name="pass" placeholder=" Password" class="form-control"/>
         
         <br><br>
        <center> <input type="submit" value="Go To Admin " class="btn btn-success"></center>
           <br><br>
       
      </form>
    </div>
       <div class="col-sm-3" style="height: auto;"></div>
          
      
  </div>
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
    </body>
</html>
