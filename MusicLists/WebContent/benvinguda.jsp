<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Benvingut</title>
<link rel="stylesheet" href="./css/styles.css">
</head>
<body>
<h1>Login!</h1>
<% String benvinguda = "Benvingut ";
String usuari = session.getAttribute("usuari").toString();
if (usuari.equals("admin")) {
	benvinguda += "<span class='login'>usuari administrador</span>";
}%>
<span><%out.println(benvinguda);%></span>
</body>
</html>