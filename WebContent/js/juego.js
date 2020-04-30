"use strict";
function anade() {
	var xmlhttp;
	var pregunta = document.getElementById("pregunta").value;
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			//
		}
	}
	var urlmodificada = "jsp/creador.jsp?pregunta=" + pregunta;
	xmlhttp.open("GET", urlmodificada, true);
	xmlhttp.send();
	
	document.getElementById("pregunta").value = '';
	
}

function elimina() {
	var xmlhttp;
	var pregunta = document.getElementById("pregunta").value;
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// 
		}
	}
	var urlmodificada = "jsp/destructor.jsp?pregunta=" + pregunta;
	xmlhttp.open("GET", urlmodificada, true);
	xmlhttp.send();
	
	document.getElementById("pregunta").value = '';
	
}

function eliminaEnLista(pregunta) {
	var xmlhttp;
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// 
		}
	}
	var urlmodificada = "jsp/destructor.jsp?pregunta=" + pregunta;
	xmlhttp.open("GET", urlmodificada, true);
	xmlhttp.send();
}

function mostrar() {
	var xmlhttp;
	var listaActual = document.getElementById("listaActual");
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			listaActual.innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "jsp/listador.jsp", true);
	xmlhttp.send();
}

function ocultarLista() {
	var actual = document.getElementById("listaActual").style.visibility;
	if(actual != "hidden") {
		document.getElementById("listaActual").style.visibility = "hidden";
		document.querySelector("#headerLista").innerHTML = "La lista está oculta";
	} else {
		document.getElementById("listaActual").style.visibility = "";
		document.querySelector("#headerLista").innerHTML = "Las palabras de la lista son:";
	}
}

window.onload = mostrar;


