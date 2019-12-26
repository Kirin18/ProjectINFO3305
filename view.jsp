<%@ page session="true" %>

<!-- import Login and java.sql --> 
<%@ page import="student.Login, java.sql.*" %>

<!-- repeating set Header --> 
<%@ include file="setHeader.jsp" %> 
<%
  // check if the session is not empty or null
  if(session.getAttribute("bean") != null){
	  
  // retrieve Login Bean from session	  
  Login bean = (Login)session.getAttribute("bean");
  
  // check whether the Login and Password are not null or empty
  boolean status = bean.isValid();
  if(bean.getLogin() != null && bean.getPassword() != null){
	  
	  // if user is a valid user
    if(status){
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View</title>
</head>

<body>
	<center>
	<font face="arial" size="2">
	<br>
	<table width="300" cellspacing="1" cellpadding="1" border="0" align="center">
	<tr>
	<td colspan="3" align="center"><font face="Arial, Helvetica, sans-serif" size="2"><b>Bus Reservation Details</b></font></td>
	</tr>
	<tr>
	<td colspan="3">&nbsp;</td>
	</tr>
	<% 
           String sql = "";
           int id = Integer.parseInt(request.getParameter("id"));
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dev?autoReconnect=true&useSSL=false","DBlogin","DBpassword");
           sql="SELECT * FROM registration WHERE recordID = ?";
           PreparedStatement statement = con.prepareStatement(sql);
           statement.setInt(1, id);
           ResultSet resultSet = statement.executeQuery();
           
           while(resultSet.next()){
	%>
	<tr>
	<td width="100"><font face="Arial, Helvetica, sans-serif" size="2">Username</font></td>
	<td width="10"><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("name")%></font></td>
	</tr>
	
	<tr>
	<td><font face="Arial, Helvetica, sans-serif" size="2">Fullname</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("icno")%></font></td>
	</tr>
	
	<tr>
	<td><font face="Arial, Helvetica, sans-serif" size="2">Address</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("address")%></font></td>
	</tr>
	
	<tr>
	<td><font face="Arial, Helvetica, sans-serif" size="2">Country</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("country")%></font></td>
	</tr>
	
	<tr>
	<td><font face="Arial, Helvetica, sans-serif" size="2">Phone</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("phone")%></font></td>
	</tr>

	<tr>
	<td><font face="Arial, Helvetica, sans-serif" size="2">Email</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2">:</font></td>
	<td><font face="Arial, Helvetica, sans-serif" size="2"><%=resultSet.getString("email")%></font></td>
	</tr>
	
<tr>
<td colspan="3" align="center"><form>
							
						</form><br><br><a href="main.jsp">Home</a>&nbsp;&nbsp;&nbsp;<a href="update.jsp?id=<%= id %>">Update</a>&nbsp;&nbsp;&nbsp;<a href="Deletion?id=<%= id %>">Cancel Booking</a></font></td>
</tr>
<% } %>
</table>
<br>

</center>
</font>
</body>
</html>