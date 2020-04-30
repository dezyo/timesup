<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="preguntas.ColeccionPreguntas" %>

<jsp:useBean id="partida" class="preguntas.Partida" scope="session"></jsp:useBean>
<jsp:setProperty name="partida" property="coleccion" value="${coleccionPreguntas.coleccion}"/>

<% 
partida.barajar();
out.print(partida.repartir());
%>