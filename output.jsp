<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm</title>
</head>
<body>
	
		<center><h1>You have succesfully registered!</h1>
				<table style="with: 50%">
				<tr><td>
			
					<form action="output.jsp" method="post">
					<input type="submit" value="Logout" name = "logout">
					</form>
				
				</td>
				<td>
			
					<form action="edit.jsp" method="post">
					<input type="submit" value="Edit Info" name = "edit">
					</form>
				
				</td>
				</tr>
			</table>
			</center>
</body>
</html>