<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>
<script type="text/javascript">

javascript:window.history.forward(1);

	function uniqueID() {
		var id = document.getElementById("nam").value;
		var unique = document.getElementById("unique");
		unique.value=id+Math.ceil(Math.random()*10000);
	 	}
	function ValidateForm(form){
		ErrorText= "";
		if ( ( form.gender[0].checked == false ) && ( form.gender[1].checked == false ) )
		{
		alert ( "Please choose your Gender: Male or Female" );
		return false;
		}
		if (ErrorText= "") { form.submit() }
		}
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file ="/WEB-INF/style/style.css"%>
body {
	background-image: url("/resources/images/projectImg.jpg");
}
</style>

</head>
<body>
	<div class="roleContain2">
		<div class="logo1">
			<img src="/resources/images/ais.png" alt="IMG">
		</div>
		<div class="roleTitle2">Auto Identification System</div>
	</div>
	<a href="homepage"><button class="home1">
			<i class="fa fa-home"></i> Home
		</button></a> &nbsp;
	<a href="employeeRole"><button class="homeButton5">
			<i class="fa fa-sign-in"></i> SignIn
		</button></a>

	<h2 class="ti">Bank Employee Registration Form</h2>
	<div class="a1">
		<form:form action="signUpSuccess" method="POST" modelAttribute="register" name="form">
			<div class="left">
				<h2>General Information</h2>
				<div class="noborder">
				<a style="color: red; font-size: large;">*</a>
					<form:input path="firstName"  id="nam"  onclick="uniqueID()" placeholder="First Name"/>
					<a style="color: red;"><form:errors path="firstName" /></a><br>
					<a style="color: red; font-size: large;">*</a>
					<form:input path="lastName" placeholder="Last Name" />
					<a style="color: red;"> <form:errors path="lastName" /></a> <br>
					<%-- <form:input path="dateOfBirth"  type="date"  placeholder="Date Of Birth"/> --%>
					<div class="birth">
						<label style="font-size: 20px">Date of Birth<a style="color: red">*</a></label>
						<form:input type="date" path="dateOfBirth" max="2002-05-05"  required="required"/>
						<a style="color: red;"> <form:errors path="dateOfBirth" /></a>
					</div>
					<br>&nbsp;
					<div class="gender">
						<label style="font-size: 20px">Gender<a style="color: red">*</a></label>
						<form:radiobutton path="gender" value="Male" />
						Male
						<form:radiobutton path="gender" value="Female" />
						Female
					</div><br>
					<a style="color: red;"> <form:errors path="gender" /></a>					
				</div>
			</div>
			<div class="form-right">
				<h2>Contact Details</h2>
				<div class="noborder1">
					<label style="font-size: 20px">Contact Number<a style="color: red">*</a></label>
					<form:input path="contactNumber" type="number" maxlength="10"  required="required"
						placeholder="should be of 10 digits" />
					<a style="color: red;"><form:errors path="contactNumber" /></a> <br>
					<label
						style="font-size: 20px">City<a style="color: red">*</a></label>
					<form:input path="city" placeholder="Eg: Narasaraopet"
						/>
					<a style="color: red;"><form:errors path="city" /></a> <br><label
						style="font-size: 20px">State<a style="color: red">*</a></label>
					<form:select path="state" class="custom-select">
						<form:option value="Andaman and Nicobar Islands"
							label="Andaman and Nicobar Islands" />
						<form:option value="Andhra Pradesh" label="Andhra Pradesh" />
						<form:option value="Arunachal Pradesh" label="Arunachal Pradesh" />
						<form:option value="Assam" label="Assam" />
						<form:option value="Bihar" label="Bihar" />
						<form:option value="Chandigarh" label="Chandigarh" />
						<form:option value="Chhattisgarh" label="Chhattisgarh" />
						<form:option value="Dadra and Nagar Haveli"
							label="Dadra and Nagar Haveli" />
						<form:option value="Daman and Diu" label="Daman and Diu" />
						<form:option value="Delhi" label="Delhi" />
						<form:option value="Goa" label="Goa" />
						<form:option value="Gujarat" label="Gujarat" />
						<form:option value="Haryana" label="Haryana" />
						<form:option value="Himachal Pradesh" label="Himachal Pradesh" />
						<form:option value="Jammu and Kashmir" label="Jammu and Kashmir" />
						<form:option value="Jharkhand" label="Jharkhand" />
						<form:option value="Karnataka" label="Karnataka" />
						<form:option value="Kerala" label="Kerala" />
						<form:option value="Lakshadweep" label="Lakshadweep" />
						<form:option value="Madhya Pradesh" label="Madhya Pradesh" />
						<form:option value="Maharashtra" label="Maharashtra" />
						<form:option value="Manipur" label="Manipur" />
						<form:option value="Meghalaya" label="Meghalaya" />
						<form:option value="Mizoram" label="Mizoram" />
						<form:option value="Nagaland" label="Nagaland" />
						<form:option value="Orissa" label="Orissa" />
						<form:option value="Pondicherry" label="Pondicherry" />
						<form:option value="Punjab" label="Punjab" />
						<form:option value="Rajasthan" label="Rajasthan" />
						<form:option value="Sikkim" label="Sikkim" />
						<form:option value="Tamil Nadu" label="Tamil Nadu" />
						<form:option value="Tripura" label="Tripura" />
						<form:option value="Uttaranchal" label="Uttaranchal" />
						<form:option value="Uttar Pradesh" label="Uttar Pradesh" />
						<form:option value="West Bengal" label="West Bengal" />
					</form:select>
					<div class="noborder1">
						<label style="font-size: 20px">User Id</label>
						<form:input path="userId" id="unique" readonly="true"
							label="User Id" />
						&nbsp;
						<label style="font-size: 20px">Password<a style="color: red">*</a></label>
						<form:password path="password" placeholder="Password"
							id="password" required="required" />
						<a style="color: red;"><form:errors path="password" /></a>
					</div>
				</div>
			</div>
			<input type="submit" name="Submit" class="form-submit3" value="Register"  onClick="ValidateForm(this.form)">
		</form:form>
	</div>
	<footer class="roleFooter2">
		<div style="color: black;">
			<p>Posted by: Ch Sai Dinesh Reddy</p>
			<p>
				Contact information: <a href="mailto:someone@example.com">
					850695@cognizant.com</a>.
			</p>
		</div>
	</footer>

</body>
</html>