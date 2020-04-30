<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="preguntas.ColeccionPreguntas" %>
<%@ page import="java.util.*" %>
<%
	ColeccionPreguntas coleccionPreguntas = (ColeccionPreguntas) session.getAttribute("coleccionPreguntas");
	if (coleccionPreguntas != null) {
		HashSet<String> coleccion = coleccionPreguntas.getColeccion();
		Iterator<String> iterador = coleccion.iterator();
		while (iterador.hasNext()) {
			String siguiente = iterador.next();
			out.print("<li>" + siguiente + "</li><button type='button' id='enviaPregunta' onclick='eliminaEnLista(\"" + siguiente + "\"	); mostrar();'> Elimina este </button>");
		}
	}
%>
