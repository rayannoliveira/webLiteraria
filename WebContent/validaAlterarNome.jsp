<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//Usuario usuario = (Usuario)session.getAttribute("usuario");
//String email=usuario.getEmail();
String email= request.getParameter("email");
String Novonome= request.getParameter("nome");

Usuario obju= new Usuario();
obju.setNome(Novonome);
obju.setEmail(email);
	DAOUsuario objdao= new DAOUsuario();
	objdao.alterarNome(obju);
	response.sendRedirect("telaInicio.jsp");
%>


</body>
</html>