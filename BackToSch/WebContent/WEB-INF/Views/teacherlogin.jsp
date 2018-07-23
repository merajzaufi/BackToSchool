<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>LOGIN PAGE</title>
<style>
   .navbar {
        
        background-color:#009900;
        }
        
     .navbar .nav>li>a ,.navbar .navbar-brand{
       
    color: white;
   font-size:20px;
    font-family: 'Comic Sans MS', serif;
      }
      
      .center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 30%;
}
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
     <div class="container">
         <div class="navbar-header">
            
            <i class="fa fa-home" style="font-size:30px;color:lightgreen;text-shadow:2px 2px 4px #000000;padding:5px;"></i> <a href="" class="navbar-brand"></span>SchoolStartHome</a>
         </div>
     </div><!-- end of container -->
</nav><!-- end of navbar -->
<br> <br> 
 


<div class="container">
     <div class="col-6 offset-3 align-self-center">
     
        <div class="card">
           
           <div class="card-header bg-light text-black">
           
             
            
    <img class="center" src="<spring:url value="/resource/images/login.png"></spring:url>"alt="school1"/>
 
  <span style="font-family:'Comic Sans MS';font-size:30px;">Existing Users: login here</span>
           </div>
       
    
     
     <div class="card-body">
        <form role="form" method="post" action="<c:url value='/login'/>">
          <div class="form-group">
             <label for="username">Username :</label>
             <input type="text" class="form-control" placeholder="Enter username" name="username" />
          
          </div>
          
          <div class="form-group">
             <label for="username">Password :</label>
             <input type="text" class="form-control" placeholder="Enter password" name="password" />
          
          </div>
          
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <input type="submit" value="login" name="submit" class="btn btn-lg" style="background-color:#4CAF50;color:white;"/>
           <input type="submit" value="Forgot Password" name="fPassword" class="btn btn-lg btn-default" />
         </form>
         
         <div class="row">
            <div class="col-12">
             <%--  <c:if test="${not empty error}">
                 <p class="alert-danger">${error}</p>
              </c:if>
               <c:if test="${not empty msg}">
                 <p class="alert-warning">${msg}</p>
              </c:if> --%>
            </div>
         </div>
          </div>
     </div>
    </div>  
</div></body>
</html>