<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%>
<%
//Se recogen los datos del formuario de altacancion.jsp
String titulo = request.getParameter("titulo");
String artista = request.getParameter("artista");
String genero = request.getParameter("genero");
String url =request.getParameter("url");

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/musiclists", "root", "mysql");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into canciones(titulo, artista, genero, url) values('"+titulo+"','"+artista+"','"+genero+"','"+url+"')");
        out.println("Cancion guardada correctamente");
        }
        catch(Exception e){
        System.out.print(e);
        out.println("Ha habido algun fallo");
        e.printStackTrace();
        }
%>