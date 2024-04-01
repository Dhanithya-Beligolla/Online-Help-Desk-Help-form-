<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Update</title>
		<link rel="stylesheet" type="text/css" href="modifyForm.css">
	</head>
	<body>
		
		<%
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String category = request.getParameter("category");
			String subject = request.getParameter("subject");
			String description = request.getParameter("description");
		%>
		<div class="container">
			<h1>Update Help Form </h1>
		
			<form action="FormUpdate" method="post">
				<table>
				
					<tr>
						<td>Form ID</td>
						<td><input type="text" name="formid" value="<%= id %>" readonly></td>
					</tr>
					
					<tr>
						<td>Name</td>
						<td><input type="text" name="name" value="<%= name %>" readonly></td>
					</tr>
					
					<tr>
						<td>Email</td>
						<td><input type="text" name="email" value="<%= email %>" readonly></td>
					</tr>
					
					<tr>
						<td>Category</td>
						<td>
							<select  name="category" value="<%= category %>">
				                    <option value="">-- Choose an option --</option>
				                    <option value="Mathematics">Mathematics</option>
				                    <option value="Science">Science</option>
				                    <option value="IT">IT</option>
				                    <option value="Business">Business</option>
				            </select>
				        </td>
					</tr>
					
					<tr>
						<td>Subject</td>
						<td><input type="text" name="subject" value="<%= subject %>" ></td>
					</tr>
					
					<tr>
						<td>Description</td>
						<td><input type="text" name="description" value="<%= description %>" ></td>
					</tr>	
					
				</table>
				<br>
				<input type="submit" name="submit" value="Update My Form">
				
			</form>
			
			<!--back button-->
			<button onclick="goBack()">Back</button>
		
		    <script>
		        function goBack() {
		            window.history.back();
		        }
		    </script>
		</div>
	</body>
</html>