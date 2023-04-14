<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Iniciar sesión - Tienda Zapasweb</title>
	<link rel="stylesheet" href="style.css">
		<script type="text/javascript">
function compruebayenvia() {
	datos=document.iniciosesion;
	if (datos.usuario.value == '' ||
			datos.pass.value == '')
		alert ('¡Tiene que rellenar todos los campos!');
	else datos.submit();
}
function compruebanums(campo, evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if (keycode < 48 || keycode > 57) //Rango ASCII de números
	{
		if (keycode != 8 && keycode != 27 && keycode != 0 ) { //Caracteres especiales permitidos
			alert('Sólo puede introducir números ');
			return false;
		}
		else return true;
	}
	else return true;
}
function compruebaalfan(campo, evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if (( keycode < 48 || keycode > 57 ) && ( keycode < 64 || keycode > 90 ) && ( keycode < 97 || keycode > 122 )) //Rango ASCII de números y letras
	{
		if (keycode != 8 && keycode != 13 && keycode != 27 && keycode != 0 ) { //Caracteres especiales permitidos
			alert('Sólo puede introducir letras y números ');
			return false;
		} else if (keycode == 13) {
			compruebayenvia();
		} else return true;
	} else {
		return true;
	}
}
<%String incorrect=request.getParameter("var");
if (incorrect==null)
	incorrect=" ";
	else%> //capturamos si la variable del login si esta mal o bien clvaes o usuario

</script>
</head>
<body>
	<header>
		<h1>Tienda Zapaweb</h1>
		
	</header>
	
	<main>
		<h1>Iniciar Sesión en la App</h1>
<form action="./LoginAuthenticator" method="post" name="iniciosesion" id="iniciosesion">
<table style="text-align: left; border: none;">
<tr><td>
<input type="hidden" name="varoculta" value="secreto"/>
Usuario:
	</td><td><input type="text" name="usuario" onkeypress="return compruebaalfan(this,event);" maxlength="10" value="" class="inputgris"/>
</td></tr><tr><td>Contraseña:
	</td><td><input type="password" name="pass" onkeypress="return compruebaalfan(this,event);" maxlength="8" value="" class="inputgris"/>
</td></tr><tr><td>
	</td><td style="text-align: right;">
		<input type="button" name="send" value="Enviar" onclick="compruebayenvia();"/>
</td></tr></table>
</form>

<%=incorrect %> <!-- printeamos el mensaje si esta mal claves o usuario -->
	</main>
	
	<footer>
		<p>&copy; 2023 Tienda Zapaweb</p>
	</footer>
</body>
</html>