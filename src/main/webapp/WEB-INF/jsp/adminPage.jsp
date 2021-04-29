<%@page import="javax.swing.text.Document"%>
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
<title>Admin LogIn</title>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
<!-- <script>
javascript:window.history.forward(1);
</script> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Main css -->
<style>
<%@include file="/WEB-INF/style/style.css"%>
</style>
</head>
<body>

	<header>

 <div class="roleContain">
 <div class="inline-block">
							
							
							<img src="/resources/images/ailogo.jfif" alt="logo img">
							</div>
							
							 <div class="inline-block">
						     <div class="headerimage">
						    
							<img src="/resources/images/autoo.jpg" alt="logo img">
							</div>
							</div>
							<div class=inline-block>
							<a href="homepage"><button class="homeButton1">
			<i class="fa fa-home"></i> Home
		</button></a>
		</div>
					
</div>
</header>
	

	<div class="signup">
		<div class="container">
			<div class="signup-content">
				<div class="wrap-login100">
					<div class="signup-image2">
						<img src="/resources/images/admin.jpg" alt="IMG">
					</div>

					<form:form class="register-form2" method="POST" action="aipPage"  onsubmit="return validateForm()"
						name="form" modelAttribute="users">
						<h22 class="form-title2">Admin Login</h22>
						<p style="color: red; margin-left: 80px;">${error}</p>
						<div class="wrap-input100">
							<form:input class="input100"  path="userid" placeholder="User Id" name="uid"/>
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-user"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100">
							<form:password class="input100" path="password" name="password"
								placeholder="Password" />
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-lock"
								aria-hidden="true"></i>
							</span>
						</div>

						<div class="container-login100-form-btn">
							<input type="submit" id="submit" value ="LogIN" class="login100-form-btn"/>
						</div>
						

						

					</form:form>
				</div>
			</div>
		</div>
	</div>
	<footer class="roleFooter">
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
          <p>Cognizant Technology Solutions,SEZ Ave, Elcot Sez, Sholinganallur, Chennai, Tamil Nadu 600119</p>
          <br/>
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
</footer>
		
</body>
</html>