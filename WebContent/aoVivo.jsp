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
}
int id=1;
DAOEncontro daoencontro= new DAOEncontro();
Encontro encontro = daoencontro.retonaencontro(id);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/gridAovivo.css">
	<title>WebLiterária</title>
</head>
<body>
<div class="container-box">
		<header class="box cabecalho">
			<div class="texto1">
				<p>VAMOS CONVERSAR? JÁ COMEÇAMOS</p>
			</div>
			<div class="titulo">
				<h1>ESCOLHIDO DA SEMANA</h1>
			</div>
		</header>
		<div class="box profile">
			<div class="background">
				<div class="perfil">
					<img src="img/perfil.png">
				</div>
				<div class="identificacao">
					<p>NOME: <%=usuario.getNome() %></p>
					<form method="#" action="editarPerfil.jsp">
							<button class="btnEditar" type="submit">Editar Perfil</button>
					</form>
					<form method="POST" action="sair.jsp">
							<button class="btnEditar" type="submit">Sair</button>
					</form>
				</div>
			</div>
			<nav class="menu">
				<a href="telaInicio.jsp"><div class="op"><p>HOME</p></div></a>
				<a href="indicacao.jsp"><div class="op"><p>VOTAÇÃO PARA A PRÓXIMA WEBLITERÁRIA</p></div></a>
				
			</nav>
		</div>
		<div class="box aoVivo">
			<div class="container-aoVivo">
				<div class="boxi txt">
					<p>AO VIVO</p>
				</div>
				<div class="boxi img">
					<img class="foto-capa" src="img/capa.png">
				</div>
				<div class="boxi area-comentarios">
					<div class="comentarios">
					 	<p class="area-comentario"></p>
					</div>
				</div>
				<div class="boxi comentar">
					<form method="#" action="#">
						<table>
							<tr>
								<td>ADICIONE SEU COMENTÁRIO</td>
							</tr>
							<tr>
								<td><input class="campo" type="text"></td><td><button class="btn" type="submit">ENVIAR</button></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/comentar.js"></script>
	
</body>
</html>