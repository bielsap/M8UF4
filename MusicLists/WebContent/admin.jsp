<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/musiclists","root","mysql");
        if(!conexion.isClosed())
        {
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select * from usuarios");
           
            out.println("<table border= \"1\"<tr><th>Id</th><th>Nombre</th><th>Pass</th></tr>");
           
            while (rs.next())
            {
                out.println("<tr>");
                out.println("<td>"+rs.getObject("id")+"</td>");
                out.println("<td>"+rs.getObject("usuari")+"</td>");
                out.println("<td>"+rs.getObject("pass")+"</td>");
                out.println("</tr>");
               
            }
            out.println("</table>");
        }
        else{
            out.println("Error de conexión");
        }
    }catch (Exception e){
        out.println("Exception"+e);
        e.printStackTrace();
    }
%>
<h2>Total canciones visibles: </h2>
<%
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/musiclists","root","mysql");
    if(!conexion.isClosed())
    {
        Statement stsong = conexion.createStatement();
        ResultSet rssong = stsong.executeQuery("select * from canciones");
       
        out.println("<table border= \"1\"<tr><td>Id</td><td>Titulo</td><td>Artista</td><td>Genero</td><td>Enlace</td></tr>");
       
        while (rssong.next())
        {
            out.println("<tr>");
            out.println("<td>"+rssong.getObject("titulo")+"</td>");
            out.println("<td>"+rssong.getObject("artista")+"</td>");
            out.println("<td>"+rssong.getObject("genero")+"</td>");
            out.println("<td><a href=\""+rssong.getObject("url")+"\">"+rssong.getObject("titulo")+"</a>"+"</td>");
            out.println("</tr>");
           
        }
        out.println("</table>");
    }
    else{
        out.println("Error de conexión");
    }
}catch (Exception e){
    out.println("Exception"+e);
    e.printStackTrace();
}
%>
</body>
</html>