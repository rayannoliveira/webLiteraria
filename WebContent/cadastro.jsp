<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/gridLogin.css">
</head>
<body>
	<div class="container-box">
		<div class="filhoLogo">
		 	<div class="logo">
		 		<a href="index.jsp"><img src="img/perfil.png"></a>
		 	</div>
		</div>
		<div class="formulario">
				<form class="formFormulario" action="validaCadastro.jsp" method="POST">
					<table>
						<tr>
				           <td><input type="text" name="txtNome" value="" placeholder="Nome"></td>
				         </tr>
				         <tr>
				           <td><input type="text" name="TxEmail" value="" placeholder="E-mail"></td>
				         </tr>
				         <tr>
				           <td><input id="senha" type="password" name="txtSenha" value="" placeholder="Senha"/></td>
				         </tr>
				         <tr>
				           <td><input id="confSenha" type="password" name="txtSenhaop" value="" placeholder="Confirmar Senha"/></td>
				         </tr>
				         
				         
				          <tr>
				           <td><button class="botao" type="submit"  name="btsalva">Cadastrar</button></td>
				         </tr> 
					</table>
          		
           		</form>
           		
		</div>
		<div class=" texto FilhoCadastro">
	        <p>Já posui uma conta?<a href="login.jsp">Login</a></p>
	     </div>
	</div>
	
</body>
</html>