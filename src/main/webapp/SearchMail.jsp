<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>search form</title>
		<link rel="stylesheet" type="text/css" href="SearchMail.css">
	
	</head>
	<body>
	
		<br><br><br><br><br>
		<div class="wrapper">
		
			<h1>Search Your Form</h1>
			
			<form action="SearchForm" method="post">
				<div class="input-box">
					Your Email <input type="text" name="email" placeholder="Enter your email"><br>
				</div><br><br>	
				
				<input type="submit" class="btn" name="submit" value="Search">
			</form>
		</div>
	</body>
</html>