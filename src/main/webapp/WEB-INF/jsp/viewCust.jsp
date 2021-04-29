<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Customer</title>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
<style>
<%@include file ="/WEB-INF/style/style.css"%>
body {
	background-image: url("/resources/images/bk.jpg");
}
</style>
</head>
<body>
<body>
	<div class="roleContain">
		<div class="logo1">
			<img src="/resources/images/ais.png" alt="IMG">
		</div>
		<div class="roleTitle">Auto Identification System</div>
	</div>

	<div id="wrapper">
		<h2>
			<center>Customer Details</center>
		</h2>

		<div>
			<center>
				<table>
					<tr style="text-align: center;">
						<td>Customer Name:</td>
						<td style="color: aqua;">${details.custName}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Account Number:</td>
						<td style="color: aqua;">${details.custAccNum}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Debit Card Number:</td>
						<td style="color: aqua;">${details.debitNum}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Credit Card Number:</td>
						<td style="color: aqua;">${details.creditNum}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Credit Limit:</td>
						<td style="color: aqua;">${details.creditLimit}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Credit Card Status:</td>
						<td style="color: aqua;">${details.creditStatus}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Borrower Rate:</td>
						<td style="color: aqua;">${details.borrowerRate}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Accural Status:</td>
						<td style="color: aqua;">${details.accuralStatus}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Email:</td>
						<td style="color: aqua;">${details.email}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Amount Used:</td>
						<td style="color: aqua;">${details.amountUsed}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Payment Used Date :</td>
						<td style="color: aqua;">${details.paymentUsedDate}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Repayment Date:</td>
						<td style="color: aqua;">${details.repaymentDate}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Due Past Days:</td>
						<td style="color: aqua;">${details.pastDue}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Default Status:</td>
						<td style="color: aqua;">${details.defaultStatus}</td>
					</tr>
					<tr style="text-align: center;">
						<td>Comments:</td>
						<td style="color: aqua;">${details.comments}</td>
					</tr>
					<tr>
						<td><button class="homeButton1"
								style="background-color: blue; border-radius: 10px"
								onclick="goBack()">Back</button></td>
					</tr>
				</table>
		</div>
		</center>
	</div>


</body>
<footer class="rf">
  <p>Posted by: Ch Sai Dinesh Reddy</p>
  <p>Contact information: <a href="mailto:someone@example.com">
  850695@cognizant.com</a>.</p>
</footer>
</html>