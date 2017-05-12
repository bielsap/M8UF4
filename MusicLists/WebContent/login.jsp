<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link rel="stylesheet" href="./css/styles.css">
</head>
<body>

	<h1>Identifícate</h1>

	<form method="post" action="validacion.jsp">
		<center>
			<fieldset>
				<legend> Log in! </legend>
				<table>
					<tr>
						<td class="labels"><label>Username</label></td>
						<td><input type="text" name="username" required></td>
					</tr>
					<tr>
						<td class="labels"><label>Password</label></td>
						<td><input type="password" name="password" required></td>
					</tr>
				</table>
				<div>
					<input id="boto" type="submit" value="Login"> &nbsp;&nbsp;
					<input id="boto" type="reset" value="Reset">
				</div>
			</fieldset>
		</center>
	</form>

</body>
</html>