<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulario</title>
</head>
<body>
 <form action="result.jsp" method="POST">
           Nome: <input type="text" name="txtNome" value="" /> <br>
           Email: <input type="text" name="TxEmail" value="" /><br>
           Senha: <input type="password" name="txtSenha" value="" /><br>
            <input type="submit" value="Salvar" name="bsalvar" /><br>
        </form>
</body>
</html>