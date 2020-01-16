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
<title>Deposit</title>
</head>
<body>

<div align="center" class="jumbotron">
		<br>
		
		<h1 class="display-8">Deposit</h1>
		
		<br>
		
		<div align="center">
		
		<form:form  action="depositbalance"  method="post" modelAttribute="editedformbalance">
			
			
			<table class="table table-hover table-dark">
			
					<form:hidden path="id" />		
					<form:hidden path="firstName" />
					<form:hidden path="lastName" />		
					<form:hidden path="gender" />	
					<form:hidden path="email"/>
					<form:hidden path="phoneNo"/>
					<form:hidden path="accountType"/>
					<form:hidden path="accountNo" />
					<form:hidden path="cardNo" />
					
					<form:hidden path="address.id"/>
					<form:hidden path="address.streetNo"/>
					<form:hidden path="address.streetName"/>
					<form:hidden path="address.city"/>
					<form:hidden path="address.province"/>
					<form:hidden path="address.postalCode"/>
					<form:hidden path="address.country"/>			
					
												
				<tr>
					<td>First Name:</td>
					<td>${firstname}</td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td>${lastname}</td>
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
					<td>Balance:</td>
					<td>${balance}</td>
				</tr>
				<tr>
					<td>Deposit Amount:</td>
					<td><form:input path="balance"/></td>
				</tr>				
	
			</table>
			
			<br>
			
			<input type='submit' value='Submit Transaction' class="btn btn-secondary btn-lg">
			<a class="btn btn-secondary btn-lg"  href="getcustomerdetail?customerId=${customerid}">Cancel Transaction</a>
		</form:form>
		
		</div>
		
		<br><br><br><br>
		
		<a class="btn btn-secondary btn-lg" href="getcustomers">Main Page</a>


</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>