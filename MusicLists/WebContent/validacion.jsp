<%-- 
    Document   : validate
    Created on : 31/03/2017
    Author     : Pilar Bielsa
--%>
 
<%@ page language="java" import="java.lang.*" %>
<%@ page import ="java.sql.*" %>

<%
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection   
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/musiclists", "root","mysql");
        PreparedStatement pst = conn.prepareStatement("Select id,usuari,pass from usuarios where usuari=? and pass=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()) { 
        	System.out.println("Login correcte!"); 
        	session.setAttribute("usuari", username);
        	if(username.equals("admin")) {
        		String redirectURL = "./admin";
                response.sendRedirect(redirectURL);
        	} else if (!username.isEmpty()){ 
        		String redirectURL = "./usuarios";
                response.sendRedirect(redirectURL);
        	}
        	session.setAttribute("id", rs.getObject("id"));
        }
                  
        else {
        	System.out.println("Usuari o pass inccorrectes");
        		
        		session.setAttribute("incorrecte", "Usuari no permés");
				String redirectURL = "./login";
	           	response.sendRedirect(redirectURL);				
        }
        	
   }
   catch(Exception e){   
	   out.println(e.getMessage());
       out.println("Oops, error! Torna a intentar-ho.");       
   }      
%>