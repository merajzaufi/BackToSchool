<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title><spring:message code="lbl.title"/> </title>
<style>
   .error
   {
   color:red
   }
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

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
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
    <div class="row">
        <div class="col-xs-12">
            <h1 class="page-header">Sign In <small>or Sign Up</small></h1>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-6">
            <form class="form-horizontal" method="post" id="signin" data-api="https://api.schoolstart.ca">
    <legend>
        <h3>Have an Account? Please Sign In</h3>
    </legend>
    <br/>
 
        <div class="form-group">
            <label class="col-md-3 control-label" for="email">Email</label>
            <div class="col-md-6">
                <input id="email" name="email" type="email" placeholder="Email Address" class="form-control" required />
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-3 control-label" for="password">Password</label>
            <div class="col-md-6">
                <input id="password" name="password" type="password" placeholder="Password" class="form-control" required />
            </div>
        </div>

        <div class="form-group">
            <br/><br/>
            <div class="col-md-4 col-md-offset-1">
              
                 <input type="submit" value="login" name="submit" class="btn btn-lg" style="background-color:#4CAF50;color:white;"/>
          
            </div>
            <div class="col-md-4">
               <input type="submit" value="Forgot Password" name="fPassword" class="btn btn-lg btn-default" />
            </div>
        </div>

  
</form>

        </div>

           
        <div class="col-xs-6">
            <form:form class="form-horizontal" action="Register" 
             modelAttribute="user">
            <form:errors path="*" cssClass="errorblock" element="div" />
                <h3>Sign up for a School Start Account</h3><br/>
                <div class="form-group">
                    <label class="col-md-3 control-label" for="username">UserName</label>
                    <div class="col-md-6">
                       <form:input path="userName" class="form-control"
                         /> 
                          <form:errors path="userName" cssClass="error"/> 
                         
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label" for="pass">Password</label>
                    <div class="col-md-6">
                         <form:input  path="password" class="form-control"
                         />
                          <form:errors path="password" cssClass="error"/> 
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label" for="confirm">Confirm</label>
                    <div class="col-md-6">
                         <form:input path="confirm" class="form-control"/> 
                          <form:errors path="confirm" cssClass="error"/> 
                    </div>
                </div>

               <br>
                <div class="form-group">
                    <div class="col-md-4 col-md-offset-4">
                        <!-- <a id="signup" class="btn btn-lg btn-info ladda-button"
                            data-style="zoom-out"
                            data-api="https://api.schoolstart.ca/Account?signup"
                            disabled>
                            <span class="ladda-label">
                              <i class="fa fa-user-plus"></i>
                              Parent Sign Up
                            </span>
                        </a> -->
                        
                        <form:button class="btn btn-lg btn-info" >
                            <span >
                              <i class="fa fa-user-plus"></i>
                              Parent Sign Up
                            </span>
                        </form:button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

</body>
</html>
