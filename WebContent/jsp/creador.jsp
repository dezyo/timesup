<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="preguntas.ColeccionPreguntas" %>

<% 
ColeccionPreguntas coleccionPreguntas = (ColeccionPreguntas) session.getAttribute("coleccionPreguntas");

if(coleccionPreguntas != null && request.getParameter("pregunta") != null) {
	coleccionPreguntas.addPregunta(request.getParameter("pregunta"));
	out.print(request.getParameter("pregunta"));
}
%>
