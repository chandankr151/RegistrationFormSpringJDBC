<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
	margin:0px;
	padding:0px;
	display: flex;
	flex-direction: column;
	height: 100vh;
	justify-content: center;
	align-items: center;
	font-family:cursive;
}

table, tr, td, th{
	border: 1px solid black;
	padding: 3px;
}

h1{
	margin-top: 420px;
}

a{
	text-decoration: none;
}
</style>
</head>
<body>

	<!-- <div class="container"> -->
		<h1 class="text-center">Available Users</h1>
		<hr>
		<table>
			<thead>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>ImageName</th>
				<th colspan="2">Modify</th>
			</thead>
			<tbody>


				<c:forEach items="${user}" var="user">
					<tr>
						<td>${user.id}</td>
						<td>${user.fullName}</td>
						<td>${user.email}</td>
						<td>${user.password}</td>
						<td>${user.image}</td>
						
						<td colspan="2"><a href="${user.id }">edit</a>
							<a href="${user.id }">/delete</a>
						</id>
						
					</tr>
				</c:forEach>
			</tbody>
			<tfoot></tfoot>
		</table>
	<!-- </div> -->

</body>
</html>