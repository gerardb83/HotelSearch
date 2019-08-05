<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hotel Land</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">
<link href="/styles.css" rel="stylesheet" />
</head>
<body>
	<div class="container">

		<h1>Hotel Land</h1>

		<form action="/selection?city=${city}?maxPrice=${maxPrice}">
			
			<select name="city">
				<c:forEach var="city" items="${cities}">

					<option value="${ city }">${city}</option>

				</c:forEach>
			</select>
			<h3>Max Price</h3><input name="maxPrice" type="number"/>
			<button type="submit" class="btn btn-primary">Go!</button>

		</form>
	</div>

</body>
</html>