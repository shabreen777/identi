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
<title>BEmp SignIn</title>
<!-- <script>
javascript:window.history.forward(1);
</script> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
<%@include file ="/WEB-INF/style/style.css"%>
body {
    background-image: url("/resources/images/lock.jpg");
}
</style>
</head>
<body><div class="be">
<div class="roleContain2"><div class="logo1">
							<img src="/resources/images/ais.png" alt="IMG">
						</div>
<div class="roleTitle2">Auto Identification System</div></div>

<a href="homepage"><button class="homeButton1"><i class="fa fa-home"></i> Home</button></a>
	<div class="container-login10">
		<div class="wrap-login10">
			<form:form class="login10-form" method="get" action="bankEmp" modelAttribute="users">
				<h2 class="form-title10">Bank Employee Sign In</h2>
				<p style="color: red; text-align: center; margin-top: -40px;">${error}</p>
				<div class="wrap-input10">
				
					<form:input class="input10"  path="userid" name="userId" placeholder="User Id"/>
					<span class="focus-input10"></span>
						<span class="symbol-input10">
							<i class="fa fa-user"></i>
						</span>
				 </div>

				<div class="wrap-input10">
						<form:password class="input10" path="password" name="password"
							placeholder="Password"/> <span class="focus-input10"></span>
						<span class="symbol-input10"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>

				<div class="container-login10-form-btn">
					<button class="login100-form-btn">
						Sign In
					</button>
				</div>
		
				<div class="text-center">
					<a href="signup" class="txt2 hov1">
						Sign Up
					</a>
				</div>
			</form:form>

			
		</div>
	</div><footer class="roleFooter2">
  <p>Posted by: D.Mahidhar</p>
  <p>Contact information: <a href="mailto:someone@example.com">
  850694@cognizant.com</a>.</p>
</footer>
</div>
</body>

</html>