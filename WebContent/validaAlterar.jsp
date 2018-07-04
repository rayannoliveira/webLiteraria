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
<h1> olá </h1>

<%
Usuario usuario = (Usuario)session.getAttribute("usuario");
String email=usuario.getEmail();

String senha= request.getParameter("txtSenha");
String Novasenha= request.getParameter("txtNovaSenha");
String senhaconf= request.getParameter("txtSenhaop");
if(Novasenha.equalsIgnoreCase(senhaconf)){
	Usuario obju= new Usuario();
	out.print(Novasenha);
    obju.setSenha(Novasenha);
    obju.setEmail(email);
  	DAOUsuario objdao= new DAOUsuario();
  	objdao.alterarSenha(obju);
   
   response.sendRedirect("telaInicio.jsp");
	
}
else{
	
	response.sendRedirect("trocarSenha.jsp");
	 JOptionPane.showMessageDialog(null, "Senhas não estão iguais");
}

%>
</body>
</html>