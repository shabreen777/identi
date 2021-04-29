<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success!!!</title>
<!-- <script>
javascript:window.history.forward(1);
</script> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
<%@include file ="/WEB-INF/style/style.css"%>
body {
    background-image: url("/resources/images/projectImg.jpg");
}</style>
</head>
<body>
<div class="roleContain"><div class="logo1">
							<img src="/resources/images/ais.png" alt="IMG">
						</div>
<div class="roleTitle">Auto Identification System</div></div>	
<a href="adminRole?userid=${name}"><button class="homeButton1"><i class="fa fa-sign-out"></i> Log Out</button></a>

	<a style="color:orange; font-size: x-large;3">Welcome, ${name}!</a>
	<br>
	<a href="dueList"><button class="dueList"><i class="fa fa-folder-open"></i> DueList(>180days)</button></a>
	
	<table class="auto" border="1"><%
			int count = 0;
		%>
		<h3	style="text-align: center; font-family: sans-serif; font-size: xx-large; margin-top: 0px;">Auto
			Defaulters List</h3>

		<thead style="background-color: #0CAF50; font-size: medium;">
			<tr style="height: 50px">
				<th>S.No</th>
				<th>Customer Id</th>
				<th>Customer Name</th>
				<th>Account Number</th>
				<th>Borrower Rate</th>
				<th>Accural Status</th>
				<th>Due Period (in days)</th>
				<!-- <th>Default Status</th>
				<th>Comments</th>  -->
				<th>Update</th>
				
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${auto}" var="a">
				<tr>
					<td>
						<%count++;
						out.print(count);
						%>
					</td>
					<td>${a.id}</td>
					<td>${a.custName}</td>
					<td>${a.custAccNum}</td>
					<td>${a.borrowerRate }</td>
					<td>${a.accuralStatus }</td>
					<td>${a.pastDue }</td>
					<%--<td>${a.defaultStatus}</td>
					 <td>${a.comments}</td>  --%>
					<td><div class="form-button" ><a href="editCust?custName=${a.custName}"> 
								<input type="button" class="upBtn" value="Update" /></a>
						</div></td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
	<table class="auto" border="1"><%
			int count1 = 0;
		%>
		<h3	style="text-align: center; font-family: sans-serif; font-size: xx-large;">Manual
			Defaulters List</h3>

		<thead style="background-color: #0CAF50; font-size: medium;">
			<tr style="height: 50px">
				<th>S.No</th>
				<th>Customer Id</th>
				<th>Customer Name</th>
				<th>Account Number</th>
				<th>Borrower Rate</th>
				<th>Accural Status</th>
				<th>Due Period (in days)</th>
				<!-- <th>Default Status</th>
				<th>Comments</th> -->
				<th>Update</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${manual}" var="m">
				<tr>
					<td>
						<%count1++;
						out.print(count1);
						%>
					</td>
					<td>${m.id}</td>
					<td>${m.custName}</td>
					<td>${m.custAccNum}</td>
					<td>${m.borrowerRate }</td>
					<td>${m.accuralStatus }</td>
					<td>${m.pastDue }</td>
					<%-- <td>${m.defaultStatus}</td>
					<td>${m.comments}</td>  --%>
					<td><div class="form-button">		
								<a href="editCust?custName=${m.custName}"> 
								<input type="button" class="upBtn" value="Update"/></a>
							</div></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<footer class="roleFooter">
  <p>Posted by: D.Mahidhar</p>
  <p>Contact information: <a href="mailto:someone@example.com">
  850694@cognizant.com</a>.</p>
</footer>
</body>
</html>