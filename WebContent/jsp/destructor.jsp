<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="preguntas.ColeccionPreguntas" %>
<% 
if(request.getParameter("pregunta") != null) {
	String pregunta = request.getParameter("pregunta");
	ColeccionPreguntas coleccionPreguntas = (ColeccionPreguntas) session.getAttribute("coleccionPreguntas");
	coleccionPreguntas.removePregunta(pregunta);
	out.print(pregunta);
}
%>
