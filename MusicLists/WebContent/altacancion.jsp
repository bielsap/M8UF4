<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action ="insertsong.jsp">
		<table>
			<tr>
				<td><label>Titulo:</label></td>
				<td><input type="text" id="titulo" name="titulo"/></td>
			</tr>
			<tr>
				<td><label>Artista:</label></td>
				<td><input type="text" id="artista" name="artista"/></td>
			</tr>
			<tr>
				<td><label>Genero:</label></td>
				<td><input type="text" id="genero" name="genero"></td>
			</tr>
			<tr>
				<td><label>URL:</label></td>
				<td><input type="text" id="url" name="url"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Meter canción"></td>
			</tr>
		</table>
	</form>

</body>
</html>