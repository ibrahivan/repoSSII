<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SESSION CHECKER</title>
</head>
<body>
<%
//aquí pongo todo el código java que quiera que mi servidor ejecute.

String usuario=""; 
try {  //AQUI VA EL CONTROL DE SESION
	usuario=session.getAttribute("attributo2").toString();
	String acceso = session.getAttribute("attributo1").toString();
 	if (!acceso.equals("1")){ 
 		%><h1>SESION NO INICIADA</h1><%}
 	else{
 		%><h1>SESION INICIADA</h1><%}
} catch (Exception e) {
	%>
		<h1>SESION NO INICIADA</h1><%
}

%>
</body>
</html>