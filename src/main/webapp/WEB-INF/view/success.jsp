<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
	display: flex;
	height: 100vh;
	justify-content: center;
	align-items: center;
}

.container {
	width: 600px;
	height: 500px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	border-radius: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

table, tr, td {
	border: 1px solid black;
}
</style>
</head>
<body>

	<div class="container">
		<h1 class="text-center">Registered Successfully.</h1>
		<hr>
		<table>
			<thead>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>ImageName</th>
			</thead>
			<tbody>
				<tr>
					<td><h5>Name: ${user.fullName }</h5></td>
					<td><h5>Email: ${user.email }</h5></td>
					<td><h5>Password: ${user.password }</h5></td>
					<td><h5>Image Name: ${user.image }</h5></td>
				</tr>
			</tbody>
			<tfoot></tfoot>
		</table>
	</div>

</body>
</html>