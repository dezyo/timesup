<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Iterator" %>
<%@ page import="preguntas.ColeccionPreguntas" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adivina</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
</head>
<script src="js/juego.js"></script>


<body>

<jsp:useBean id="coleccionPreguntas" class="preguntas.ColeccionPreguntas" scope="session"></jsp:useBean>

<h1>Adivina</h1>

<p> Juego creado por Enrique Sanchez </p>

<p> Introduce aquí las palabras a adivinar </p>

<form action="#">
	<input type="text" name="pregunta" id="pregunta">
	<button type="button" onclick="anade(); mostrar();"> Añade </button>
	<button type="button" onclick="elimina(); mostrar();"> Elimina </button>
</form>

<button type="button" onclick="ocultarLista()"> Ocultar / Mostrar </button>
<h3 id="headerLista">Las palabras de la lista son:</h3>
<div>
<ul id="listaActual">

</ul>
</div>

<a href="jsp/juego.jsp" class="btn btn-primary">Jugar</a>

<script type="text/javascript">
	document.querySelector("#pregunta").addEventListener('keypress',
			function(e) {
				if (e.key === 'Enter') {
					anade();
					mostrar();
				}
			});
</script>

</body>
</html>