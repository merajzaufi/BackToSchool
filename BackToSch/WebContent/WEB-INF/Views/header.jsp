<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome Spring</h1>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style>
    .btn-lg {
    margin-right: 5px;
            }

    .page-header
      {
         padding-top:-10px;
      }

     .navbar {
        
        background-color:#009900;
        }
        
     .navbar .nav>li>a ,.navbar .navbar-brand{
       
    color: white;
   font-size:20px;
    font-family: 'Comic Sans MS', serif;
      }
      
      .jumbotron .col-lg-4{
       padding-top:10px;
      }
      
      .btn-group .btn {
 
  color: green;
  background-color: white;
  border: 2px solid #4CAF50;;
  border-radius: 15px;
  
}

 .btn-group .btn:hover {background-color:#009900;color:white}
 
 #feedback,#gallery,#features,#faq,#contact{
 font-family:Trebuchet MS, sans-serif;
 
 }
</style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
     <div class="container">
         <div class="navbar-header">
             <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
             </button>
             <a href="" class="navbar-brand"><span class="glyphicon glyphicon-home"></span>SchoolStartHome</a>
         </div>
         <div class="collapse navbar-collapse" id="navbar-collapse">
             <ul class="nav navbar-nav">
                   <li><a href="#feedback">Feedback</a>
                   <li><a href="#gallery">Gallery</a>
                   <li><a href="#features">Features</a>
                   <li><a href="#faq">FAQ</a>
                   <li><a href="#contact">Contact Us</a>
             </ul>
             <ul class="nav navbar-nav navbar-right">
                  <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                  <li><a href="new" ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
         </div>
      </div><!-- end of container -->
</nav><!-- end of navbar -->

<div class="jumbotron">
   <div class="container text-center">
       <div class="row">
         <div class="col-lg-4">
           <img src="<spring:url value="/resources/images/logo.jpg"></spring:url>"alt="school1"/>
         </div>
         <div class="col-lg-offset-3">
            <h1 style="font-family:'Comic Sans MS';font-weight: 900;">School <span style="color:#009900;">Start</span></h1>
             <a><span style="font-family:'Comic Sans MS';font-weight:400;">Back to school with school start</span></a>
              <br/> <br/>
             <div class="btn-group">
                 <a href="" class="btn btn-lg"> <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Parents Shop here </a>
                 <a href="" class="btn btn-lg"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>Teachers Post here</a>
             </div>
         </div>
       </div>
        
      
    </div>
</div><!-- end of jumbotron -->

<div class="container">
   <section>
      <div class="page-header" id="feedback">
         <h2>Feedback</h2>
     </div>
     <div class="row">
         <div class="col-lg-4">
            <div class="card" style="height:200px">
            <div class="card-body" style="height:200px">
            <p class="card-text"><b>"</b>Thanks so much, these orders have been so seamless! Great job! We really enjoyed that we could have parents order online, especially the ones that are new and wanted to order in September. <b>"</b></p>
            <footer>-St. James, Calgary</footer>
            </div>
            </div>
         </div>

        <div class="col-lg-4">
            <div class="card" style="height:200px">
            <div class="card-body" style="height:200px">
            <p class="card-text"><b>"</b>It was slick as a whistle. No problems at all. We were very happy! <b>"</b> </p>
            <footer>-Red Deer Lake School, Calgary</footer>
            </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="card" style="height:200px">
            <div class="card-body" style="height:200px">
            <p class="card-text"><b>"</b>Everything went perfectly. Everything came on time, andthere were no problems <b>"</b> </p>
            <footer>-Rendell Park School, Lloydminster</footer>
            </div>
            </div>
        </div>
     </div>
   </section>
</div> <!-- end of container -->


<!-- gallery -->

<div class="container">
   <section>
   <div class="page-header" id="gallery">
       <h2>Gallery</h2>
   </div>
    <div class="carousel slide" id="screenshot-carousel" data-ride="carousel">
        <ol class="carousel-indicators">
             <li data-target="#screenshot-carousel" data-slide-to="0" class="active"></li>
             <li data-target="#screenshot-carousel" data-slide-to="1"></li>
             <li data-target="#screenshot-carousel" data-slide-to="2"></li>
             <li data-target="#screenshot-carousel" data-slide-to="3"></li>
        </ol>
    <div id="myCarousel" class="carousel-inner">
            <div class="item active">
                <img src="<spring:url value="/resources/images/charity1.jpg"></spring:url>"alt="school1"/>
                <div class="carousel-caption">
                  <h3><span style="color:blue;">Charity Heading</span></h3>
                  <p><span style="color:blue;">To Make Charity</span></p>
               </div>
           </div>
           <div class="item">
              <img src="<spring:url value="/resources/images/charity2.jpg"></spring:url>"alt="school1"/>
              <div class="carousel-caption">
                   <h3><span style="color:blue;">Charity Heading</span></h3>
                   <p><span style="color:blue;">To Make Charity</span></p>
              </div>
          </div>
          <div class="item">
              <img src="<spring:url value="/resources/images/c7.jpg"></spring:url>"alt="school1"/>
              <div class="carousel-caption">
                  <h3><span style="color:blue;">Charity Heading</span></h3>
                  <p><span style="color:blue;">To Make Charity</span></p>
             </div>
         </div>
         <div class="item">
             <img src="<spring:url value="/resources/images/c8.jpg"></spring:url>"alt="school1"/>
             <div class="carousel-caption">
                 <h3><span style="color:blue;">Charity Heading</span></h3>
                  <p><span style="color:blue;">To Make Charity</span></p>
             </div>
         </div>

   <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
   </a>
   <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
    </a>

   </div> 
   </div>
   </section>
   <hr>
</div>

<!-- Features -->

<div class="container">
   <section>
    <div class="page-header" id="features">
       <h2>Features</h2>
    </div>

     <div class="row">
       <div class="col-lg-8">
           <h3>Why School Start?</h3>
           <p><span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Order your supply list online.<br/><br/>
           <span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Order any number of additional required items (if you already own the Webster’s dictionary that is required you will not have to purchase it through our program).<br/><br/>
           <span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Receive your school supplies in an environmentally friendly, reusable shopping bag complete with your student’s name and grade level.<br/><br/>
           <span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>There are no minimum amount of school supply packages required to start the program at your school (if certain parents wish to purchase their supplies elsewhere they are free to do so)
           </p>
       </div>
       <div class="col-lg-4">

            <img src="<spring:url value="/resources/images/c1.jpg"></spring:url>"alt="school1"/>
       </div>
    </div>

    <div class="row">

        <div class="col-lg-8">
            <img src="<spring:url value="/resources/images/c9.jpg"></spring:url>"alt="school1"/>
        </div>
        <div class="col-lg-4">
             <h3><i class="fa fa-truck" style="font-size:30px;color:lightgreen;text-shadow:2px 2px 4px #000000;padding:5px;"></i>Delivery</h3>
             <p><span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Packages will be delivered to your school on your specified delivery date..<br/><br/>
             <span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Packages are labeled (name / grade level) for the first day of school.<br/><br/>
             <span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Schools will be provided with a summary sheet of all students who have ordered supplies through School Start.<br/><br/>
             <span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Parents will be able to view confirmation orders online along with delivery details.</p>
       </div>
   </div>
<!-- end of row -->

<hr>
   <div class="row">
       <div class="col-lg-6">
           <div class="panel panel-default">
           <div class="panel-body text-center">
                <h4><span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Benefits</h4>
                <p>Teachers receive standardized supplies that they want in the classroom (when you order Crayola you get Crayola).
                   Students receive quality brand name products that will last the entire school year.
                    Parents save money and valuable time over their summer holidays.</p>
           </div>
           </div>
       </div>
       <div class="col-lg-6">
            <div class="panel panel-default">
            <div class="panel-body text-center">
               <h4><span class="glyphicon glyphicon-ok-circle" style="font-size:30px;color:lightgreen"></span>Benefits</h4>
                <p>Teachers receive standardized supplies that they want in the classroom (when you order Crayola you get Crayola).
                Students receive quality brand name products that will last the entire school year.
                Parents save money and valuable time over their summer holidays.</p>
           </div>
           </div>
       </div>
   </div>
</section>
</div>

<!-- End of features -->

<div class="container">
  <section>
     <div class="page-header" id="faq">
        <h2>FAQ</h2>
     </div>
     <div class="panel-group" id="accordian">
        <div class="panel panel-default">
          <div class="panel-heading">
          <div class="panel-title">
             <a href="#collapse-1" data-toggle="collapse" data-present="#accordian">
               Question one?
             </a>
          </div><!-- end of panel title -->
          <div id="collapse-1" class="panel-collapse collapse in">
          <div class="panel-body">
              We may collect non-personal identification information about Users whenever they interact with our Site. 
              Non-personal identification information may include the browser name, the type of computer and technical 
              information about Users means of connection to our Site, such as the operating system and the Internet service 
              providers utilized and other similar information.
              
          </div>
          </div>
          </div>
        </div><!-- end of panel -->
        
          <div class="panel panel-default">
          <div class="panel-heading">
          <div class="panel-title">
             <a href="#collapse-2" data-toggle="collapse" data-present="#accordian">
               Question Two?
             </a>
          </div><!-- end of panel title -->
          <div id="collapse-2" class="panel-collapse collapse">
          <div class="panel-body">
              We may collect non-personal identification information about Users whenever they interact with our Site. 
              Non-personal identification information may include the browser name, the type of computer and technical 
              information about Users means of connection to our Site, such as the operating system and the Internet service 
              providers utilized and other similar information.
              
          </div>
          </div>
          </div>
        </div><!-- end of panel -->
        
          <div class="panel panel-default">
          <div class="panel-heading">
          <div class="panel-title">
             <a href="#collapse-3" data-toggle="collapse" data-present="#accordian">
               Question Three?
             </a>
          </div><!-- end of panel title -->
          <div id="collapse-3" class="panel-collapse collapse">
          <div class="panel-body">
              We may collect non-personal identification information about Users whenever they interact with our Site. 
              Non-personal identification information may include the browser name, the type of computer and technical 
              information about Users means of connection to our Site, such as the operating system and the Internet service 
              providers utilized and other similar information.
              
          </div>
          </div>
          </div>
        </div><!-- end of panel -->
        
     </div> <!-- end of panel group -->
  </section>
</div>

<!-- Contact Us -->
<div class="container">
  <section>
    <div class="page-header">
      <h2>Contact Us.</h2>
      <small>Contact us for more</small>
    </div>
    <div class="row">
      <div class="col-lg-8">
         <p>Send us a message / call us</p>
         <strong>SchoolStart</strong><br>
         <span class="glyphicon glyphicon-earphone" style="font-size:20px;color:lightgreen"></span>1-800-580-1868<br>
         <span class="glyphicon glyphicon-phone" style="font-size:20px;color:lightgreen"></span>1-800-580-1890<br>
        <span class="glyphicon glyphicon-envelope" style="font-size:20px;color:lightgreen"></span> info@schoolstart.ca<br>
        1317 - 43 Avenue SE<br>
        Calgary, AB<br>
        T2G 2A3
      </div>
      
      
     
    </div>
     <hr>
  </section>
  
</div>


</body>
</html>