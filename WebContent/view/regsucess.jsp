<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url("image/chess4.jpg");
	width: 100%;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	position: fixed;
}

.card1 {
	float: right;
	margin-left: 90px;
	margin-top: 100px;
	width: 400px;
	height: 400px;
	border: 1px white;
}

.text {
	float: center;
	margin: auto;
	margin-top: -100px;
	position: absolute;
	top: 50%;
	width: 100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
	<center>
		<h1>Registered Succesfully !!!</h1>
	</center>
	<table>
		<td>
			<%
				String uname = request.getParameter("fname");
			%>
			<div class="card1">
				<center>
					<p>
						<class="text">
						<h1>
							Welcome,<%=uname%></h1>
					</p>
					<br>
					<h2>We are most delightfully welcoming you to join us between!
					</h2>
					<h2>"05-feb-2019 to 10-feb-2019"</h2>
			</div>
		</td>
		<td>
			<div class="card1">
				<p></p>
			</div>
		</td>
		<td>
			<div class="card1">
				<p style="font-style: italic">
					<b>"Chess, one of the oldest and most popular board games,
						played by two opponents on a checkered board with specially
						designed pieces of contrasting colours, commonly white and black.
						White moves first, after which the players alternate turns in
						accordance with fixed rules, each player attempting to force the
						opponents principal piece, the King, into checkmatea position
						where it is unable to avoid capture.Chess, one of the oldest and
						most popular board games, played by two opponents on a checkered
						board with specially designed pieces of contrasting colours,
						commonly white and black. White moves first, after which the
						players alternate turns in accordance with fixed rules, each
						player attempting to force the opponents principal piece, the
						King, into checkmate a position where it is unable to avoid
						capture."</b>
				</p>
			</div>
		</td>
</body>
</html>