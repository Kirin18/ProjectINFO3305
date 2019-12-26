<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Details</title>
</head>


	<%	
		String[] username = new String[30];
		String[] password = new String [30];
		String[] fName = new String[30];
		String[] lName = new String [30];
		String[] icNo = new String[30];
		String[] contact = new String [30];
		String userKey = "";
		String userPass = "";
	%>
	
	<% 
		userKey = request.getParameter("username");
		userPass = request.getParameter("password");
	%>
	

	<% for(int i=0; i<30; i++){%>
		
		<% 
			username[i] = (String) session.getAttribute("sessusername"); 
			password[i] = (String) session.getAttribute("sesspassword"); 
			fName[i] = (String) session.getAttribute("sessfName");
			lName[i] = (String) session.getAttribute("sesslName");
			icNo[i] = (String) session.getAttribute("sessicNo");
			contact[i] = (String) session.getAttribute("sesscontact");
		%>
		
		<%if(userKey.equals(username[i])){ %>
			
			<form action="editOutput.jsp" method="post">
			<table style="with: 50%">
				<tr>
					<td><b>First Name</b></td>
					<td><input type="text" name="firstName"/></td>
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
		</form>
		
		<%if(userKey.equals(username[i])){
			
			break;
			
		}%>
		
		<%if(!userKey.equals(username[i])){ %>
			
			Unsuccesful!
			
		<%}%>
		
		<%if(!userKey.equals(username[i])){ 
			
			break;
			
		}%>
		
		<%}%>
	<%}%>
	
</body>
</html>