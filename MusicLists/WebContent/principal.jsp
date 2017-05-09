<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="">
 $(".del").click(function (event) {
     event.preventDefault();
     alert($(this).attr('href'));
  });
</script>
</head>
<body>
<% %>
<!-- login -->
<div class="esquerra">
	<div class="menu_esq">
	<h4>Géneres</h4>
		<li><a href="#pop">Pop</a></li><br>
		<li><a href="#rock">Rock</a></li><br>
		<li><a href="#folk">Folk</a></li><br>
		<li><a href="#jazz">Jazz</a></li><br>
	</div>
</div>

<div class="mprincipal">
	<h1>Llista de cançons</h1>
	<div class="musica">
		<ul>
			<li >1
				<audio controls>
					<source src="http://cobrar-deudas.com/M9-Isaac/musica/altamira.mp3" type="audio/mpeg">
				</audio>
			</li>
			<li>2
				<audio controls src="http://cobrar-deudas.com/M9-Isaac/musica/elangeldelaguarda.mp3"></audio>
			</li>
			<li>3
				<audio controls src="http://cobrar-deudas.com/M9-Isaac/musica/elmejorhotel.mp3"></audio>
			</li>
			<li>4
				<audio controls src="http://cobrar-deudas.com/M9-Isaac/musica/elviejo.mp3"></audio>
			</li>
			<li>5
				<audio controls src="http://cobrar-deudas.com/M9-Isaac/musica/nubesnegrasdirecto.mp3"></audio>
			</li>
			<li>6
				<audio controls src="http://cobrar-deudas.com/M9-Isaac/musica/nubesnegrasdirecto.mp3"></audio>
			</li>
			<li>7
				<audio controls src=http://cobrar-deudas.com/M9-Isaac/musica/stylo.mp3></audio>
			</li>		
		</ul>
	</div>
</div>
</body>
</html>