<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/styles.css">
</head>
<body>
	<h1>Registro usuario</h1>
	<form method="post" action="insert.jsp">
		<center>
			<fieldset>
				<legend> Date de alta </legend>
				<table>
					<tr>
						<td class="labels"><label> Nombre: </label></td>
						<td><input type="text" id="nombre" name="nombre" /></td>
					</tr>
					<tr>
						<td class="labels"><label>Password: </label></td>
						<td><input type="password" id="pass" name="pass" /></td>
					</tr>
					<tr>
						<td><input type="submit" id="alta" value="Dar de alta" /></td>
					</tr>
				</table>
			</fieldset>
		</center>
	</form>

</body>
</html>