<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Role Selection</title>



<style>
<%@include file ="/WEB-INF/style/style.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<header class="header">

 <div class="roleContain">

 <div class="inline-block">
							
							
							<img src="/resources/images/ailogo.jfif" alt="logo img" class="responsive">
							</div>
							
							 <div class="inline-block">
						     <div class="headerimage">
						    
							<img src="/resources/images/autoo.jpg" alt="logo img" class="responsive1">
							</div>
							</div>
					
</div>

</header>

	<div class ="rolepage">
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Role Selection</h2>
						<div class="wrap-input100">
							
							<span class="bank-icon"></span> <span
								class="symbol-input200"> <i class="fa fa-bank"
								aria-hidden="true"></i>
							</span>
						</div>
						
						
						<form method="get" class="register-form" action="role">
							
							<div class="form-button">
								<a href="adminRole"> <input type="button" value="AIP ADMIN"
									name="AIP Admin" id="AIP Admin" class="form-submit" /> </a>
							</div>
							<div class="form-button">		
								<a href="employeeRole"> 
								<input type="button" name="Bank Employee" id="Bank Employee"
									class="form-submit1" value="BANK EMPLOYEE" /></a>
							</div>
							
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="/resources/images/bank.jfif" alt="logo">
						</figure>
					</div>
				</div>
			</div>
		
		</section>
			</div>
		<footer>	
		<div class="roleFooter">
         <div class="footer-left">
         <h1>ABOUT US</h1>
         <div class="footp">
         <p >Banks provide different payment services, and a bank account is considered indispensable by most businesses and individuals</p>
         </div>
         <div class="socials">
         <a href="#"><i class="fa fa-facebook"></i></a>
         <a href="#"><i class="fa fa-twitter"></i></a>
         <a href="#"><i class="fa fa-dribble"></i></a>
         <a href="#"><i class="fa fa-tumblr"></i></a>
         </div>
         </div>
     
          <div class="footer-right">
         
          <a href= "#"><i class="fa fa-map-marker"></i></a>
          
          Cognizant Technology Solutions,SEZ Ave, Elcot Sez, Sholinganallur, Chennai, Tamil Nadu 600119
          <br>
          <br>
        <a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a>
        <p> +1 555 444333
        </p>
        <br/>
        <a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a>
        <p>896915@cognizant.com</p>
          </div>
          <div class="footer-bootom">
          <p>All Rights reserved by &copy;conceptial 2020</p>
          </div>
          </div>
</footer>
		
		
</body>
</html>