<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
<style type="text/css">
<%@ include file ="/WEB-INF/style/style.css"%>
body {
	background-image: url("/resources/images/bk.jpg");
}
</style>
</head>
<body>
	<div class="roleContain">
		<div class="logo1">
			<img src="/resources/images/ais.png" alt="IMG">
		</div>
		<div class="roleTitle">Auto Identification System</div>
	</div>
	<a href="homepage"><button class="homeButton1">
			<i class="fa fa-home"></i> Home
		</button></a><a href="aipPage?userid=${userid}"><button class="homeButton1"
								style="background-color: blue; border-radius: 10px"
								>Back</button></a>
		<h2 style="text-align: center;">Edit Customer Details</h2>
	<div class="custEdit">
		<table style="align-items: center;">
			<form:form action="updateEdited?custName=${customer.custName}"
				method="get" modelAttribute="cust">

				<tr>
					<td>Customer Name :</td>
					<td><form:input path="custName" value="${customer.custName}"
						readonly="true" /></td> 
				</tr>
				<tr>
					<td>Borrower Rating:</td>
					<td><form:input path="borrowerRate"
							value="${customer.borrowerRate}" /></td>
				</tr>
				<tr>
					<td>Accural Status:</td>
					<td><form:input path="accuralStatus"
							value="${customer.accuralStatus}" /></td>
				</tr>
				<tr>
					<td>Due :</td>
					<td><form:input path="pastDue" value="${customer.pastDue}" /></td>
				</tr>

				<tr>
					<td>Default Status</td>
					<td><form:input path="defaultStatus"
							value="${customer.defaultStatus}" /></td>
				</tr>

				<tr>
					<td>Comments</td>
					<td><form:textarea path="comments"
							value="${customer.comments}" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Update" /></td>
				</tr>
			</form:form>
		</table>
	</div>

</body>
<footer class="roleFooter">
	<p>Posted by: Ch Sai Dinesh Reddy</p>
	<p>
		Contact information: <a href="mailto:someone@example.com">
			850695@cognizant.com</a>.
	</p>
</footer>
</html>