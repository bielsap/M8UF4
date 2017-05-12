<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="m8.uf4.Cancion"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/styles.css">
</head>
<body>
	<div class="contenido">
		<div class="cabecera">
			<h1 class="titulo">MusicLists</h1>
			<!-- img -->
		</div>

		<!-- login -->
		<div class="login">
			<nav> <a href="./login">Login</a> <a href="./registrar">Alta</a> </nav>
		</div>
		<!-- menu esquerra -->
		<div class="esquerra">
			<div class="menu_esq">
				<h4>Géneres</h4>
				<li><a href="#pop">Pop</a></li> <br />
				<li><a href="#rock">Rock</a></li> <br />
				<li><a href="#folk">Folk</a></li> <br />
				<li><a href="#jazz">Jazz</a></li> <br />
			</div>
		</div>

		<div class="mprincipal">
			<h1>Lista de canciones</h1>
			<div class="musica">
				<%
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/musiclists", "root", "mysql");
						PreparedStatement ps = null;
						if (!conexion.isClosed()) {
							ps = conexion.prepareStatement("select * from canciones");
							ResultSet result = ps.executeQuery();

							out.println(
									"<table border= \"1\"<tr><th>Titulo</th><th>Artista</th><th>Genero</th><th>Enlace</th></tr>");

							while (result.next()) {
								out.println("<tr>");
								out.println("<td>" + result.getObject("titulo") + "</td>");
								out.println("<td>" + result.getObject("artista") + "</td>");
								out.println("<td>" + result.getObject("genero") + "</td>");
								out.println("<td><a href=\"" + result.getObject("url") + "\">" + result.getObject("titulo")
										+ "</a>" + "</td>");
								out.println("</tr>");

							}
							out.println("</table>");
						} else {
							out.println("Error de conexión");
						}
					} catch (Exception e) {
						out.println("Exception" + e);
						e.printStackTrace();
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>