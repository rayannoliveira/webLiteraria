<%@page import="javax.swing.JOptionPane"%>
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

String email= request.getParameter("Txtemail");
String senha= request.getParameter("txtSenha");
Usuario obj1= new Usuario();
obj1.setEmail(email);
obj1.setSenha(senha);

DAOUsuario objdao= new DAOUsuario();
Usuario usuario =objdao.validar(obj1);
		if(usuario!=null){
			//Cria a sessao (Chave,Valor)
			session.setAttribute("usuario", usuario);
			response.sendRedirect("telaInicio.jsp");
			
			
		}else{
			response.sendRedirect("login.jsp");
			JOptionPane.showMessageDialog(null, "Login ou senhas incorretas");
		}
%>
</body>
</html>