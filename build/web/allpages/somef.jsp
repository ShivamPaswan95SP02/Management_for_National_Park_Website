<%-- 
    Document   : somef
    Created on : 11 Mar, 2022, 6:27:29 AM
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
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
      <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css"> 
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
  <li><a href="Admin.jsp">Home</a></li>
  <li class="active"> some other Form </li>
</ol>
</div>
    </div>
        
        
        <div class="container-fluid" style=" height: auto; background-color:skyblue;">
  <div class="row">
       <div class="col-sm-3" style="height: auto;">
          
      </div>
     
      <div class="col-sm-6" style="height: auto; width: 50%;">
    
     

        <form action="../Somedb" method="post"enctype="multipart/form-data">
         
           
          <h4>Image: </h4>
          <br>
     <input type="file" name="pic"  class="form-control" placeholder=" Upload Profile" /> 
           <br><br>
        <center> <input type="submit" value="Go To Admin " class="btn btn-success"></center>
           <br><br>
       
      </form>
    </div>
       <div class="col-sm-3" style="height: auto;"></div>
          
      
  </div>
            
        </div>
    </div> 
          <div class="row">    
       <div class="col-sm-12" style="background-color:greenyellow;">
           <center> <label class="text text-uppercase" style="font-weight:bolder; padding-top:1%; font-family:'times new roman'; font-family: bold;
                           font-size:25px; color: #000099;"> Management Of National Park Of Uttar Pradesh </label></center>
            </div>  
           
       </div>
<!--/footer-->
    </body>
</html>

