<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	int hasta = 10;
%>

<html>
<body>

<h1>Hola Mundo!</h1>

<p>Vamos a contar de 1 a <%=hasta %></p>

<% 
int i=0;
for ( ; i<10; i++) {
	int iprima = i;
	%> 
	-> <b> <%=iprima + 1 %> </b>	
	<%
}
%>

<hr/>
<h2>Elige una opción:</h2>

 <p>
 - <a href="./request/verRequest.jsp">Ver información de una petición HTTP (un HTTP Request)</a>
 </p><p>
 - <a href="./request/verdato1.jsp">Ver información introducida por el usuario en un HTTP Request</a>
 </p>
 
</body>
</html>