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
<title>Register Customer</title>
</head>
<body>

<div align="center" class="jumbotron">

		
		<h1 class="display-8">Register Customer</h1>
		<br><br>
		
		
		<div align="center">
		
		<form:form action="saveCustomer" method="post" modelAttribute="customer" class="needs-validation">
			
			
			<table class="table table-hover table-dark">
			
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName" value="Mark" placeholder="First Name"/></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName" value="Otto" placeholder="Last Name"/></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:radiobutton path="gender" value="Male" checked="checked" />Male
						<form:radiobutton path="gender" value="Female" />Female</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input type="email" path="email" value="Otto@mail.com" placeholder="Email Address"/></td>
				</tr>
				<tr>
					<td>Phone No:</td>
					<td><form:input path="phoneNo" value="999-999-9999" placeholder="Phone Number"/></td>
				</tr>				
				<tr>
					<td>Account Type:</td>
					<td><form:radiobutton path="accountType" value="Chequing" checked="checked" />Chequing
						<form:radiobutton path="accountType" value="Saving"/>Saving</td>
				</tr>
				<tr>
					<td>Account No:</td>
					<td><form:input path="accountNo" value="1234567" placeholder="Account Number"/></td>
				</tr>
				<tr>
					<td>Account Balance:</td>
					<td><form:input path="balance" value="50" placeholder="Minimum Balance $50"/></td>
				</tr>
				<tr>
					<td>Bank Card No:</td>
					<td><form:input path="cardNo" value="1234567890" placeholder="Bank Card No"/></td>
				</tr>
				<tr>
					<td>Address</td>
					<td></td>
				</tr>
				<tr>
					<td>Street Number:</td>
					<td><form:input path="address.streetNo" value="999" placeholder="Street Number"/></td>
				</tr>		
				<tr>
					<td>Street Name:</td>
					<td><form:input path="address.streetName" value="Otto" placeholder="Street Name"/></td>
				</tr>	
				<tr>
					<td>City:</td>
					<td><form:input path="address.city" value="London" placeholder="City"/></td>
				</tr>	
				<tr>
					<td>Province/State:</td>
					<td><form:input path="address.province" value="Ontario" placeholder="Province"/></td>
				</tr>	
				<tr>
					<td>Postal Code/Zip Code:</td>
					<td><form:input path="address.postalCode" value="X9X 9X9" placeholder="Postal Code"/></td>
				</tr>	
				<tr>
					<td>Country:</td>
					<td><form:input path="address.country" value="Canada" placeholder="Country"/></td>
				</tr>	
				
			
			</table>
			<br>
			<input type='submit' value='Register Customer' class="btn btn-secondary btn-lg">
		</form:form>
		
		</div>
		
		<br><br><br><br>
		
		<a class="btn btn-secondary btn-lg" href="getcustomers">Back To Main Page</a>


</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>