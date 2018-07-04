<%@page import="modelo.Encontro"%>
<%@page import="DAO.DAOEncontro"%>
<%@page import="modelo.Usuario"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
Usuario usuario = (Usuario)session.getAttribute("usuario");
//String emailusuario = (String)session.getAttribute("login");
//out.println(usuario);


if(usuario == null){
	//Usuario não logado
	response.sendRedirect("index.jsp");
}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>editar perfil</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/editarPerfil.css">
	<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
</head>
<body>
	<div class="container">
		<header class="box filho-header">
			WebLiteraria
		</header>
		<div class="box filho-menu">
			<div class="suaConta">
				<p>Sua Conta</p>
			</div>
			<a href="editarPerfil.jsp">
				<div class="menu-op">
					<p>Editar Perfil</p>
				</div>
			</a>
			<a href="trocarSenha.jsp">
				<div class="menu-op">
					<p>Mudar Senha</p>
				</div>
			</a>
			<a href="excluirConta.jsp">
				<div class="menu-op">
					<p>Excluir Conta</p>
				</div>
			</a>
			<a href="telaInicio.jsp">
				<div class="menu-op baixo">
					<p>Sair</p>
				</div>
			</a>
		</div>
		<div class="box filho-formulario">
			<div class="txt-editar">
				<h1>Editar Perfil</h1>
			</div>
			<div class="caixa-form">
				<form action="validaAlterarNome.jsp" method="POST">
					<table>
						<tr>
							<td>Email</td>
						</tr>
						<tr>
							<td><input class="inp" type="text"  name="email"></td>
						</tr>
							<tr>
							<td>nome</td>
						</tr>
						<tr>
							<td><input class="inp" type="text" name="nome"></td>
						</tr>
					</table>
					<button class="btn cancelar" type="reset">Cancelar</button>
					<button class="btn salvar" type="submit">Salvar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>