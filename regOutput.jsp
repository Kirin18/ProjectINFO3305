<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>

<body>

		<%!
			String[] fName = new String[30];
			String[] lName = new String[30];
			String[] username = new String[30];
			String[] password = new String[30];
			String[] conPassword = new String[30];
			String[] icNo = new String[30];
			String[] contact = new String[30];
		
		%>

		<%for(int i = 0; i <30; i++){%>
		
		<%if (fName[i] != null){ 
		
			 continue;
			
		} %>
		
		
		<%
			password[i] = request.getParameter("password");
			session.setAttribute("sesspassword",password[i]);
		
			conPassword[i] = request.getParameter("conPassword");
				
		%>
		
		<%if(!password[i].equals(conPassword[i])){%>
			
			<jsp:forward page="unmatch.jsp"></jsp:forward>
			
		<%} %>
		
		
		<% 	
			fName[i] = request.getParameter("firstName");
			session.setAttribute("sessfName",fName[i]);
			
			lName[i] = request.getParameter("lastName");
			session.setAttribute("sesslName",lName[i]);
			
			username[i] = request.getParameter("username");
			session.setAttribute("sessusername",username[i]);
			
			icNo[i] = request.getParameter("icNo");
			session.setAttribute("sessicNo",icNo[i]);
			
			contact[i] = request.getParameter("contact");
			session.setAttribute("sesscontact",contact[i]);
		%>	
		
		
		<%if (password[i].equals(conPassword[i])){%>
			Member: <%=i+1 %>
			<center><h1>Confirm Details</h1>
				<table style="with: 50%">
					<tr>
						<td><b>First Name:</b></td>
						<td><%=fName[i] %></td>
					</tr>
					<tr>
						<td><b>Last Name:</b></td>
						<td><%=lName[i] %></td>
					</tr>
					<tr>
						<td><b>UserName:</b></td>
						<td><%=username[i] %></td>
					</tr>
						<tr>
						<td><b>Password:</b></td>
						<td><%=password[i] %></td>
					</tr>
					<tr>
						<td><b>IC Number:</b></td>
						<td><%=icNo[i] %></td>
					</tr>
					<tr>
						<td><b>Contact No:</b></td>
						<td><%=contact[i] %></td>
					</tr>
				</table>
			
				<br><br>
				<table style="with: 50%">
				<tr><td>
			
					<form action="output.jsp" method="post">
					<input type="submit" value="Confirm" name = "confirm">
					</form>
				
				</td>
				</tr>
			</table>
			</center>
			
			<%}%>	
			
			<%if (password[i].equals(conPassword[i])){
				break;
			}%>
			
		<%}%>
		
</body>
</html>