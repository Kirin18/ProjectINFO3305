<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html>

<head>
<meta charset="ISO-8859-1">
<title>New Registration</title>
</head>

<body>
	
	<center><h1>Registration Form</h1>
	<form action="regOutput.jsp" method="post">
			<table style="with: 50%">
				<tr>
					<td><b>First Name</b></td>
					<td><input type="text" name="firstName" /></td>
				</tr>
				<tr>
					<td><b>Last Name</b></td>
					<td><input type="text" name="lastName" /></td>
				</tr>
				<tr>
					<td><b>UserName</b></td>
					<td><input type="text" name="username" /></td>
				</tr>
					<tr>
					<td><b>Password</b></td>
					<td><input type="password" name="password" /></td>
				</tr>
					<tr>
					<td><b>Confirm Password</b></td>
					<td><input type="password" name="conPassword" /></td>
				</tr>
				<tr>
					<td><b>IC Number</b></td>
					<td><input type="text" name="icNo" /></td>
				</tr>
				<tr>
					<td><b>Contact No</b></td>
					<td><input type="text" name="contact" /></td>
				</tr></table>
			<br><br><input type="submit" value="Submit" /><input type="reset" value="Clear" />
	</form></center>
	
</body>
	
</body>
</html>