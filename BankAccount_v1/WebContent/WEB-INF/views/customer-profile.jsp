<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Customer Profile</title>
</head>
<body>


<div align="center" class="jumbotron">

		<h1 class="display-8">MIKA BANK</h1>
		
		<br><br>
		<nav class="nav nav-pills flex-column flex-sm-row">
		<a class="flex-sm-fill text-sm-center nav-link btn btn-outline-secondary" href="editcustomer?customerId=${customerid}">Update Profile</a>
		<a class="flex-sm-fill text-sm-center nav-link btn btn-outline-secondary" href="deletecustomer?customerId=${customerid}">Delete Account</a>
		<a class="flex-sm-fill text-sm-center nav-link btn btn-outline-secondary" href="deposit?customerId=${customerid}">Deposit</a>
		<a class="flex-sm-fill text-sm-center nav-link btn btn-outline-secondary" href="withdraw?customerId=${customerid}">Withdraw</a>
		</nav>
		
		<br><br>
		
		<h4 class="display-6">Customer Account</h4>
		
		<table class="table table-hover table-dark">
			
				
				<tr>
					<td>First Name:</td>
					<td>${firstname}</td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td>${lastname}</td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td>${gender}</td>
				</tr>
				<tr>
					<td>Email Address:</td>
					<td>${email}</td>
				</tr>
				<tr>
					<td>Telephone Number:</td>
					<td>${phoneno}</td>
				</tr>														
				<tr>
					<td>Account Type:</td>
					<td>${accounttype}</td>
				</tr>
				<tr>
					<td>Account No:</td>
					<td>${accountno}</td>
				</tr>					
				<tr>
					<td>Bank Card No:</td>
					<td>${cardno}</td>
				</tr>
				<tr>
					<td>Balance:</td>
					<td>$${balance}</td>
				</tr>
				
			</table>
			
			<br><br>
			
			<h4 class="display-6">Address</h4>
			
			<table class="table table-hover table-dark">
					
					
				<tr>
					<td>Street Number:</td>
					<td>${streetno}</td>
				</tr>
				<tr>
					<td>Street Name:</td>
					<td>${streetname}</td>
				</tr>
				<tr>
					<td>City:</td>
					<td>${city}</td>
				</tr>	
				<tr>
					<td>Province/State:</td>
					<td>${province}</td>
				</tr>
				<tr>
					<td>Postal Code:</td>
					<td>${postalcode}</td>
				</tr>
				<tr>
					<td>Country:</td>
					<td>${country}</td>
				</tr>
				
			
			</table>
			
			
		
		<div>
			<br><br>
		</div>
	
		
		<a class="btn btn-secondary btn-lg" href="getcustomers">Main Page</a>
		
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>