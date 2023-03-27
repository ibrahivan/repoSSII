<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	int hasta = 20;
%>

<html>
<body>

<h1>Hola Mundo!</h1>

<h4>Vamos a contar de 1 a <%=hasta %></h4>
<p>De este modo podrás ver como el código pasa de HTML a Java y viceversa, y cómo estando en HTML introduzco valores de Java.</p>
<p>Haz variaciones para ver cómo funciona.</p>

<hr/>

<% 
int i=0;
for ( ; i<hasta; i++) {
	int iprima = i;
	%> 
	-> <b> <%=iprima + 1 %> </b>	
	<%
}
%>


 
</body>
</html>