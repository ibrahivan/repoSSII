<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//Aquí va codigo JAVA	
%>
<html>

<head>
</head>

<body>
<h1>Información contenida en el objeto HTTP Request</H1>
<h3>Se trata de datos que han llegado a este servidor Tomcat desde el navegador que estás usando.</h3>

<ul>
	<li>
		Tenemos la IP desde la que accedes: <b><%=request.getRemoteAddr() %></b><br/>.
	</li>
	<li>
		Tenemos la IP a la que accedes: <b><%=request.getLocalAddr() %></b><br/>.
	</li>
	<li>
		Tenemos la ID de Sessión que pide tu navegador: <b><%=request.getRequestedSessionId() %></b><br/>.
	</li>
	<li>
		Tenemos la ruta web que tu navegador ha pedido: <b><%=request.getRequestURI() %></b><br/>.
	</li>
	<li>
		Tenemos el protocolo que está usando tu navegador: <b><%=request.getProtocol() %></b><br/>.
	</li>
	<li>
		Tenemos el navegador que estás usando: <b><%=request.getHeader("User-Agent") %></b><br/>.
	</li>
</ul>
<p>Esto es una muestra de la información que tu navegador ha enviado a este servidor, y que se queda contenida en el Request.</p>
<br/>
<hr/>

 - <a href="../">Volver</a>


</body>

</html>