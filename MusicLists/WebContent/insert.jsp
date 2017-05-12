<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%>
<%
//Se recogen los datos del formuario de alta.jsp
String nombre=request.getParameter("nombre");
String pass=request.getParameter("pass");

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/musiclists", "root", "mysql");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into usuarios(usuari, pass) values('"+nombre+"','"+pass+"')");
        out.println("Usuario dado de alta correctamente");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>