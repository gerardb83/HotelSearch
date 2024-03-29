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

		<h1>Hotels in ${city} </h1>
		<table class="table">
			<thead>
				<tr>
					<th>Rating</th><th>Hotel Name</th><th>Price Per Night</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="hotels" items="${hotels}">
				<tr>
					<td>${hotels.rating}</td>
					<td><a href="/detail?name=${hotels.id}">${hotels.name}</a></td>
					<td>$${hotels.pricePerNight}</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a class="btn primary" href="/">Back to Home</button>
	</div>
	
</body>
</html>