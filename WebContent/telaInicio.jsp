<%@page import="java.text.SimpleDateFormat"%>
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
	<link rel="stylesheet" href="css/gridTelaInicio.css">
	<link href="https://fonts.googleapis.com/css?family=Caveat" rel="stylesheet">
	<title>WebLiterária</title>
</head>
<body>
	<div class="container-box">
		<header class="box cabecalho">
			<div class="texto1">
				<p>VENHA PARTICIPAR DA NOSSA PRÓXIMA WEBLITERÁRIA</p>
			</div>
			<div class="titulo">
				<h1>Escolhido da semana</h1>
			</div>
		</header>
		<div class="box profile">
			<div class="background">
				<div class="perfil">
					<img src="img/perfil.png">
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
	
		<%  java.util.Date data= new java.util.Date ();
			
		  java.sql.Date datasql=  new java.sql.Date (data.getTime());
		  
		  
		  Date dataencontro=encontro.getDataencontro();
		  if(datasql.compareTo(dataencontro)>0){
			  response.sendRedirect("aoVivo.jsp");
			%>
				
			<%
		  }
		  else{
			  %>
		  		<div class="box resenha">
		<div class="containerResenha">
			<div class="boxRe tituloResenha">
				<h3>RESENHA SEM SPOILERS</h3>
			</div>
			<div class="boxRe textoResenha">
				<p>
				<%=encontro.getLivro().getResenha() %>
				</p>
			</div>
			<div class="boxRe capa">
					<img src="imgcapas/<%=encontro.getLivro().getImagem()%>">
			</div>
			<div class="boxRe hora">
			<%
			SimpleDateFormat fomato= new SimpleDateFormat("dd/MM/yyyy");
			String datar= fomato.format( encontro.getDataencontro());
			
			%>
			<p> Data do Evento| <%= datar%>| </p>
			</div>
			</div>
			</div>
		  <%
		  }
		%>
		
				
</body>
</html>