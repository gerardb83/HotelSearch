<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hotel Land - ${city}</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<link href="/styles.css" rel="stylesheet" /> 
</head>
<body>
<div class="container">

		<h1>${hotel.name } </h1>
		<table class="table">
			<thead>
				<tr>
					<th>Rating</th><th>Hotel Name</th><th>Price Per Night</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${hotel.rating}</td>
					<td>${hotel.name}</td>
					<td>$${hotel.pricePerNight}</td>
					
				</tr>
			</tbody>
		</table>

		
		<iframe src="https://www.google.com/maps/embed?${hotel.map } width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	<a class="btn primary" href="/">Back to Home</a>
	</div>
	
</body>
</html>