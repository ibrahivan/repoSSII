<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Enumeration<String> params = request.getParameterNames(); 
%>
<html>

<head>
</head>

<body>

<h1>Información introducida por el usuario en el HTTP Request</H1>
<h3>Se trata de datos que han llegado a este servidor Tomcat y que fueron introducidos por el usuario.</h3>
<b>Fíjate en la dirección web que pone el navegador...</b>
<ul>

 <%
	while(params.hasMoreElements()) {
 		String paramName = params.nextElement();
  	%>
  		<li>Parameter Name: <b><%=paramName %></b> <br/> - has this value: <b><i><%=request.getParameter(paramName) %> </i></b><br/>
<%	
 	}
    %>

</ul>
<br/>
<hr/>

 - <a href="../">Volver</a>


</body>

</html>