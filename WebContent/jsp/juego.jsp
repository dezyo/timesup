<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="preguntas.ColeccionPreguntas" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Juego</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
<% 
ColeccionPreguntas coleccionPreguntas = (ColeccionPreguntas) session.getAttribute("coleccionPreguntas");

if(coleccionPreguntas != null) { %>
	<script>
		"use strict";
		function cargaPregunta() {
			var xmlhttp;
			var txt;
			xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					txt = xmlhttp.responseText;
					document.getElementById('recuadroPregunta').innerHTML = txt;
				}
			}
			xmlhttp.open("GET", "repartidor.jsp", true);
			xmlhttp.send();
		}

		window.onload = updateClock;
		var totalTime = 35;
		function updateClock() {
			document.getElementById('countdown').innerHTML = totalTime;
			if (totalTime <= 0) {
				alert('Final');
				window.location="../index.jsp";
			} else {
				totalTime -= 1;
				setTimeout("updateClock()", 1000);
			}
		}

		cargaPregunta();

		var puntos = 0;
		function sumaPunto(){
			puntos = puntos + 1;
			document.getElementById("puntuacion").innerHTML = "Puntos equipo: " + puntos;
		}

		function restaTiempo() {
			totalTime = totalTime - 5;
			document.getElementById('countdown').innerHTML = totalTime;
		}
		
		</script>

	<span id="countdown"></span>
	<p id="recuadroPregunta"> Test </p>
	<button type="button" class="btn btn-success" onclick="cargaPregunta(); sumaPunto(); ">Acierto</button>
	<button type="button" class="btn btn-danger" onclick="cargaPregunta(); restaTiempo();">Pasar palabra</button>
	<p id="puntuacion"> Puntos equipo: 0 </p>
		
<%
} else { %>

	<p> Algo ha salido mal</p>

<%
}
%>
</body>
</html>