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
<title>Customer Accounts</title>
</head>
<body>

<div align="center" class="jumbotron">
		
		<h1 class="display-8">MIKA BANK</h1>
		<br><br>
		<h4 class="display-6">Customer Accounts</h4>
		<table class="table table-hover table-dark">
			<tr>				
				<th>First Name</th>
				<th>Last Name</th>		
				<th>Account Type</th>	
				<th>Account Number</th>		
				<th>Card Number</th>	
				<th>Profile Detail</th>								
			</tr>

			<c:forEach var="customer" items="${listcustomer}">
				<tr>
					<!-- <td><c:out value="${customer.id}"></c:out></td>	 -->
					<td><c:out value="${customer.firstName}"></c:out></td>
					<td><c:out value="${customer.lastName}"></c:out></td>
					<!-- <td><c:out value="${customer.gender}"></c:out></td> -->	
					<!-- <td><c:out value="${customer.email}"></c:out></td> -->
					<!-- <td><c:out value="${customer.phoneNo}"></c:out></td> -->
					<td><c:out value="${customer.accountType}"></c:out></td>
					<td><c:out value="${customer.accountNo}"></c:out></td>
					<!-- <td><c:out value="${customer.balance}"></c:out></td> -->
					<td><c:out value="${customer.cardNo}"></c:out></td>
					<!-- <td><c:out value="${customer.address}"></c:out></td> -->						
					<td><a class="btn btn-light btn-sm" href="getcustomerdetail?customerId=${customer.id}">Open Profile</a></td>					
				</tr>
			</c:forEach>

		</table>
		
		<div>
			<br><br><br><br>
		</div>
		
		<a class="btn btn-secondary btn-lg" href="addcustomer">Register Customer</a>
		<a class="btn btn-secondary btn-lg" href="search">Search By Bank Card Number</a>
		
		<br><br>
		<a class="btn btn-secondary btn-lg" href="getcustomers">Main Page</a>		
		

</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>