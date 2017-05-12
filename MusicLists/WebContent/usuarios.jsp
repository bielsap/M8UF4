<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="principal.jsp" />

	<h1>Canciones asociadas al usuario:</h1>
	<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/musiclists", "root", "mysql");
			PreparedStatement ps = null;
			if (!conexion.isClosed()) {

				ps = conexion.prepareStatement(
						"select c.id, c.titulo, c.artista, c.genero, c.url from canciones c, listas l, usuarios u, usuario_lista_cancion r where c.id = r.cancion and l.id = r.lista and u.id = r.usuario and r.usuario = ?");
				//Int id_user = new Int (); Guardar el id del usario cuando inicia sesion y pasarlo en el where de la query
				ps.setInt(1, 3);
				//la query devuelve las canciones de ese usuario independientemente de la lista en la que esten. Solo se tiene en cuenta el id de usuario. Habbrá que pasarlo al hacer login
				// Vigilar el nombre de la tabla relaciones quizás no es el mismo.
				ResultSet rs = ps.executeQuery();

				/*st = conexion.prepareStatement("select c.id, c.titulo, c.artista, c.genero, c.url from canciones c, listas l, usuarios u, usuario_lista_cancion r where c.id = r.id_cancion and l.id = r.id_lista and u.id = r.id_usuario and r.id_usuario = ");
				statement.setString(1, userID);
				ResultSet rs = statement.executeQuery();*/
				//Se presentan los resultados

				out.println("<table border=\"1\"<tr><th>Titulo</th><th>Genero</th><th>Reproductor</th></tr>");
				while (rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getObject("titulo") + "</td>");
					out.println("<td>" + rs.getObject("genero") + "</td>");
					out.println("<td><audio controls><source src=\"" + rs.getObject("url")
							+ "\" type=\"audio/mpeg\"></audio></td>");
				}
				out.println("</table>");
			} else {
				out.println("fallo");
			}
		} catch (Exception e) {
			out.println("Excepcion " + e);
			e.printStackTrace();
		}
	%>
	<h2>Lista:</h2>
	<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/musiclists", "root", "mysql");
			PreparedStatement ps = null;
			if (!conexion.isClosed()) {
				int id = (Integer)session.getAttribute("id");
				//Int id_user = new Int (); Guardar el id del usario cuando inicia sesion y pasarlo en el where de la query
				ps = conexion.prepareStatement("select l.nombre from canciones c, listas l, usuarios u, usuario_lista_cancion r where c.id = r.cancion and l.id = r.lista and u.id = r.usuario and r.usuario = ?");
				ps.setInt(1, id);
				//la query devuelve el nombre de la lista unicamente de ese usuario Solo se tiene en cuenta el id de usuario. Habrá que pasarlo al hacer login
				// Vigilar el nombre de la tabla relaciones quizás no es el mismo.
				ResultSet rs = ps.executeQuery();
						

				//Se presentan los resultados

				while (rs.next()) {
					out.println("<h2>" + rs.getObject("nombre") + "</h2>");
				}
			} else {
				out.println("fallo");
			}
		} catch (Exception e) {
			out.println("Excepcion " + e);
			e.printStackTrace();
		}
	%>
</body>
</html>