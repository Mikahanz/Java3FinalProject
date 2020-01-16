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
<title>Update Customer Profile</title>
</head>
<body>

<div align="center" class="jumbotron">

		
		<h1 class="display-8">Update Customer Profile</h1>
		<br><br>
		
		<div align="center">
		
		<form:form action="updatecustomer" method="post" modelAttribute="editedcustomer" >
			
			<table class="table table-hover table-dark">
			
					<form:hidden path="id" />
					
					<form:hidden path="balance"/>
					<form:hidden path="address.id"/>
							
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstName"/></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastName"/></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><form:radiobutton path="gender" value="Male"/>Male
						<form:radiobutton path="gender" value="Female"/>Female</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input path="email"/></td>
				</tr>
				<tr>
					<td>Phone No:</td>
					<td><form:input path="phoneNo"/></td>
				</tr>				
				<tr>
					<td>Account Type:</td>
					<td><form:radiobutton path="accountType" value="Chequing"/>Chequing
						<form:radiobutton path="accountType" value="Saving"/>Saving</td>
				</tr>
				<tr>
					<td>Account No:</td>
					<td><form:input path="accountNo"/></td>
				</tr>							
				<tr>
					<td>Bank Card No:</td>
					<td><form:input path="cardNo"/></td>
				</tr>
				<tr>
					<td>Address</td>
					<td></td>
				</tr>
				<tr>
					<td>Street Number:</td>
					<td><form:input path="address.streetNo"/></td>
				</tr>		
				<tr>
					<td>Street Name:</td>
					<td><form:input path="address.streetName"/></td>
				</tr>	
				<tr>
					<td>City:</td>
					<td><form:input path="address.city"/></td>
				</tr>	
				<tr>
					<td>Province/State:</td>
					<td><form:input path="address.province"/></td>
				</tr>	
				<tr>
					<td>Postal Code/Zip Code:</td>
					<td><form:input path="address.postalCode"/></td>
				</tr>	
				<tr>
					<td>Country:</td>
					<td><form:input path="address.country"/></td>
				</tr>		
				
			
			</table>
			<br>
			<input type='submit' value='Update Customer' class="btn btn-secondary btn-lg">
			<a class="btn btn-secondary btn-lg"  href="getcustomerdetail?customerId=${customerid}">Cancel Update</a>
		</form:form>
		
		</div>
		
		<br><br>
		
		<a class="btn btn-secondary btn-lg" href="getcustomers">Main Page</a>


</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>