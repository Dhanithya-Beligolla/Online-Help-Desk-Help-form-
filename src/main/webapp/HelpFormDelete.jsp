<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
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
	<h1>Delete Help Form </h1>

	<form action="FormDelete" method="post">
	<table>
		<tr>
			<td>Form ID</td>
			<td><input type="text" name="formid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="Name" value="<%= name %>" readonly></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="Email" value="<%= email %>" readonly></td>
	</tr>
	<tr>
		<td>Category</td>
		<td><input type="text" name="Category" value="<%= category %>" readonly></td>
	</tr>
	<tr>
		<td>Subject</td>
		<td><input type="text" name="Subject" value="<%= subject %>" readonly></td>
	</tr>
		<tr>
		<td>Description</td>
		<td><input type="text" name="Description" value="<%= description %>" readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Form">

	</form>
	<button onclick="goBack()">Back</button>

    <script>
        // JavaScript function to go back to the previous page
        function goBack() {
            window.history.back();
        }
    </script>
	</div>
</body>
</html>