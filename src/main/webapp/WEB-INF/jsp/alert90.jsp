<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.text.DateFormat,java.util.Date"%>
<%@ page import = "javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>alert!!</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file ="/WEB-INF/style/style.css"%>
body {
    background-image: url("/resources/images/projectImg.jpg");
}</style>
</head>
<body>
<%
		Date date = new Date();
	SimpleDateFormat ft =
	         new SimpleDateFormat ("E dd.MM.yyyy 'at' hh:mm:ss a ");
%>
	<div class="roleContain">
		<div class="logo1">
			<img src="/resources/images/ais.png" alt="IMG">
		</div>
		<div class="roleTitle">Auto Identification System</div>
	</div>
	<a href="employeeRole"><button class="homeButton1">
			<i class="fa fa-sign-out"></i> Log Out
		</button></a>


	<a><h2 style="font-size: xx-large; text-align: center;">
			Late payment charges for <a style="color: aqua;">${nam}</a> is <a style="color: aqua;">${amount}</a>
			<br>
			This message will be sent to <a style="color: aqua;">${email}</a> on <%
		out.print(ft.format(date));
	%>
		</h2></a>



</body>
</html>