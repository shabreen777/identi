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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
<%@ include file ="/WEB-INF/style/style.css"%>
body {
	background-image: url("/resources/images/lo.jpg");
}
</style>
<link rel="stylesheet" type="text/css" href="/DataTables/datatables.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.js"></script>  
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript">
$(document).ready(function() {  
    $('#MyTable').DataTable( {  
        initComplete: function () {  
            this.api().columns().every( function () {  
                var column = this;  
                var select = $('<select><option value=""></option></select>')  
                    .appendTo( $(column.footer()).empty() )  
                    .on( 'change', function () {  
                        var val = $.fn.dataTable.util.escapeRegex(  
                            $(this).val()  
                        );  
                //to select and search from grid  
                        column  
                            .search( val ? '^'+val+'$' : '', true, false )  
                            .draw();  
                    } );  
   
                column.data().unique().sort().each( function ( d, j ) {  
                    select.append( '<option value="'+d+'">'+d+'</option>' )  
                } );  
            } );  
        }  
    } );  
} );s  
/* $(document).ready( function () {
    $('#MyTable').DataTable();
} ); */
</script> 
</head>
<body><div class="roleContain"><div class="logo1">
							<img src="/resources/images/ais.png" alt="IMG">
						</div>
<div class="roleTitle">Auto Identification System</div></div>	
	<a href="employeeRole"><button class="homeButton1">
			<i class="fa fa-sign-out"></i>LogOut
		</button></a>
	<h1 style="color: red;">Welcome, ${user}</h1>
<table id="MyTable" class="display" cellspacing="0" width="100%" style="background-color: aqua;" class="auto" border="1"> 
<%int count = 0;%>
<p	style="text-align: center; font-family:serif; font-size: xx-large; margin-top:-40px; color:black;">Total Defaulters List</p> 
	<thead style="background-color: #0CAF50; font-size: medium;">
			<tr style="height: 50px">
				<th>S.No</th>
				<th>Customer Name</th>
				<th>Account Number</th>
				<th>Credit Limit</th>
				<th>Amount Used</th>
				<th>Borrower Rate</th>
				<th>Accural Status</th>
				<th>Due Period (in days)</th>
				<th>Email</th>
				<th>Default Status</th>
				<th>View</th>
							
			</tr>
		</thead>
        
        <tbody>
			<c:forEach items="${list}" var="a">
				<tr>
					<td>
						<%count++;
						out.print(count);
						%>
					</td>
					<td>${a.custName}</td>
					<td>${a.custAccNum}</td>
					<td>${a.creditLimit}</td>
					<td>${a.amountUsed }</td>	
					<td>${a.borrowerRate }</td>				
					<td>${a.accuralStatus }</td>
					<td>${a.pastDue }</td>
					<td>${a.email}</td>
					<td>${a.defaultStatus}</td>
					<td><div class="form-button"><a href="viewCust?custName=${a.custName}"> 
								<input type="button" class="upBtn2" value="View" /></a>
						</div></td>
					</tr>
			</c:forEach>
		</tbody>  
    </table>  
    <div class="a2">
    <a href="less90" ><button class="d1"> <i class="fa fa-folder-open"></i> Due(<90)</button></a>
    <a href="90-180" ><button class="d2"> <i class="fa fa-folder-open"></i> Due(90-180)</button></a>
    <a href="180-365" ><button class="d3"> <i class="fa fa-folder-open"></i> Due(180-365)</button></a>
    <a href="great365" ><button class="d4"> <i class="fa fa-folder-open"></i> Due(>365)</button></a></div>
</body>
<footer class="roleFooter2">
  <p>Posted by: Ch Sai Dinesh Reddy</p>
  <p>Contact information: <a href="mailto:someone@example.com">
  850695@cognizant.com</a>.</p>
</footer>
</html>
