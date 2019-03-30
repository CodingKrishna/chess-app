<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-image: url("image/forgotpassword.jpg");
	}
</style>
</head>
<body>

	<form action="forgetpassword1" method="get" onsubmit="return check()">
		<input type="text" placeholder="email id" name="email"> 
		<input type="text" id="pass" placeholder="new password" name="new_password">
		<input type="text" id="confirm" placeholder="confirm new password" name="confirm_new_password">
		<button type="submit">SUBMIT</button>
	</form>

	<script type="text/javascript">
		function check() {

			if (!(document.getElementById("pass").value == document
					.getElementById("confirm").value)) {

				alert("pls type both confirm new password and new password same");
				return false;

			}

		}
	</script>


</body>
</html>
