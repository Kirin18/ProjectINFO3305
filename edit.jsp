<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Details</title>
</head>
<body>
	
	<center><h1>Update Form</h1>
	Please enter username and password
	<form action="editValidation.jsp" method="post">
	
			<table style="with: 50%">
				<tr>
					<td><b>Username</b></td>
					<td><input type="text" name="username"/></td>
				</tr>
				<tr>
					<td><b>Password</b></td>
					<td><input type="password" name="password"/></td>
				</tr></table>
				
			<br><br><input type="submit" value="Submit" />
			
	</form>
	</center>
	
	
	



</body>
</html>