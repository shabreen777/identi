<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Card Blocked!!</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file ="/WEB-INF/style/style.css"%>
body {
    background-image: url("/resources/images/projectImg.jpg");
}</style>
</head>
<body>
<div class="roleContain">
		<div class="logo1">
			<img src="/resources/images/ais.png" alt="IMG">
		</div>
		<div class="roleTitle">Auto Identification System</div>
	</div>
	<a href="employeeRole"><button class="homeButton1">
			<i class="fa fa-sign-out"></i> Log Out
		</button></a>
		
		<center>
	<strong style="color: aqua; font-size: 50px;">Hello, ${nam }</strong>
	<%-- <u style="color: aqua;">Hello, ${nam }</u> --%>
<p style="font-size: 50px;color: black;">Your Card is blocked!!<br>
Status : <u style="color: red;">${state}</u></p></center><a style="color: red;font-size: 60px; text-decoration: underline;">Note:</a>
<a style="text-align: center;font-size: 50px;color: black;">You can unblock your card if you pay the total due amount.</a>

</body>
</html>