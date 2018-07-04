<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/gridLogin.css">
</head>
<body>
	<div class="container-box">
		<div class="filhoLogo">
		 	<div class="logo">
		 		<img src="img/perfil.png">
		 	</div>
		</div>
		<div class="formulario">
				<form class="formFormulario" action="validaLogin.jsp" method="POST">
					<table>
						<tr>
				           <td><input type="text" name="Txtemail" value="" placeholder="E-mail"></td>
				         </tr>
				         <tr>
				           <td><input type="password" name="txtSenha" value="" placeholder="Senha"/></td>
				         </tr>
				          <tr>
				           <td><button class="botao" type="submit"  name="btsalva">Login</button></td>
				         </tr> 
					</table>
           		</form>
		</div>
		<div class=" texto FilhoCadastro">
	        <p>Não tem uma conta?<a href="cadastro.jsp">Cadastrar</a></p>
	     </div>
	</div>
</body>
</html>