<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
				<h1 class="red">Excluir Conta</h1>
				<p>Caso você apague sua conta, saiba que não será possível reativá-la novamente.</p>
			</div>
			<div class="caixa-form">
				<h2>Apagar sua conta ira:</h2>
				<ul class="lista">
					<li>Apagar todos os seus dados do WebLiterária</li>
					<li>Apagar todos as mensagens que já enviou</li>
					<li>Nos deixar bastante triste :(</li>
				</ul>
				<button class="btnApagar">Excluir minha conta</button>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/apagaConta.js"></script>
</body>
</html>