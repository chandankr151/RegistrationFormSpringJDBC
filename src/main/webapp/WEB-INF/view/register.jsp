<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register jsp</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body>
	
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center fs-3">Register Page</div>
						<p class="fs-bold text-center">${register}</p>
					<div class="card-body">

						<form action="createUser" method="post" >
						
							<div class="mb-3">
								<label for="name" class="form-label">Enter Full Name </label>
								<input type="text" class="form-control" id="name" name="fullName" required>
							</div>
							
							<div class="mb-3">
								<label for="email" class="form-label">Enter Email</label>
								<input type="email" class="form-control" id="email" name="email" required>
							</div>
							
							<div class="mb-3">
								<label for="pass" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="pass" name="password" required>
							</div>
							
							<div class="mb-3">
								<label for="name" class="form-label">Enter Image Name </label>
								<input type="text" class="form-control" id="imgname" name="image" required>
							</div>
							
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input"
									id="Check1"> <label class="form-check-label"
									for="exampleCheck1" name="check" required>Check me out</label>
							</div>
							<button type="submit" class="btn btn-primary col-md-12">Register</button>
						</form>
					</div>

				</div>
			</div>

		</div>

	</div>

	<a href="home">home</a>
	<a href="displayAll">DisplayAllUser</a>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>