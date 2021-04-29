<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Due Less than 90</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<table class="auto" border="1">
		<%
			int count = 0;
		%>
		<h3	style="text-align: center; font-family: sans-serif; font-size: xx-large; margin-top: 0px;">Due List Less Than 90 Days</h3>

		<thead style="background-color: #0CAF50; font-size: medium;">
			<tr style="height: 50px">
				<th>S.No</th>
				<th>Customer Id</th>
				<th>Customer Name</th>
				<th>Account Number</th>
				<!-- <th>Contact Number</th> -->
				<th>Amount Used</th>
				<th>Email</th>
				<th>Alert!!</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${list}" var="a">
				<tr>
					<td>
						<%
							count++;
						out.print(count);
						%>
					</td>
					<td>${a.id}</td>
					<td>${a.custName}</td>
					<td>${a.custAccNum}</td>
					<td>${a.amountUsed }</td>
					<td>${a.email}</td>
					<%-- <td>${a.comments}</td>  --%>
					<td><div class="form-button" class="fa fa-sign-out">
							<a
								href="alert90?custName=${a.custName}">
								<input type="button" class="upBtn1" value="Late Payment Charges" />
							</a>
						</div></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
<footer class="roleFooter">
  <p>Posted by: D.Mahidhar</p>
  <p>Contact information: <a href="mailto:someone@example.com">
  850694@cognizant.com</a>.</p>
</footer>
</html>