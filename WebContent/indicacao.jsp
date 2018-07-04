<%@page import="DAO.DAOEncontro"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="modelo.Usuario"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/gridIndicacao.css">
	<title>WebLiterária</title>
</head>
<body>
<%
Usuario usuario = (Usuario)session.getAttribute("usuario");

if(usuario == null){
	//Usuario não logado
	response.sendRedirect("index.jsp");
}
%>


	<div class="container-box">
		<header class="box cabecalho">
			<div class="texto1">
				<p>ESCOLHA UM LIVRO QUE VOCÊ QUER COMENTAR</p>
			</div>
			<div class="titulo">
				<h1>VOTAÇÃO DA SEMANA</h1>
			</div>
		</header>
		<div class="box profile">
			<div class="background">
				<div class="perfil">
					<img src="img/perfi	l.png">
				</div>
				<div class="identificacao">
					<p>NOME: <%=usuario.getNome() %> </p>
					
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
		<div class="box indicacao ">
			<div class="containerIndicacao-box">
				<div class="boxIn horario">
					<p>SETEMBRO 9, 2019 | 2:00 PM| </p>
				</div>
				<form class="boxIn formulario gridForm" action="validaVotacao.jsp" method="post">
					<div class=" boxf imagem1">
						<label><input type="radio" value=2 name="n" id="livro"><img class="img livro1" alt="" src="img/outraai.jpg"></label>
					</div>
					<div class=" boxf imagem2">
						<label><input type="radio"  value=3 name="n" id="livro"><img class="img livro2" alt="" src="img/download.jpg"></label>
					</div>
					<div class="boxf imagem3">
						<label><input type="radio" value=4 name="n" id="livro"><img class="img livro3" alt="" src="img/oi.jpg"></label>
					</div>
					<div class="boxf botao">
						<button class="votar">votar</button>			
					</div>
				</form>
			</div>
		</div>	
	</div>
</body>
</html>