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
<h1> chegou</h1>
<%
            String nome=request.getParameter("txtNome");
            String email= request.getParameter("TxEmail");
            String senha= request.getParameter("txtSenha");
            Usuario obju= new Usuario();
            obju.setNome(nome);
            obju.setEmail(email);
            obju.setSenha(senha);
            DAOUsuario objdao= new DAOUsuario();
            objdao.cadastrarUsuario(obju);
            
            
         %>
        <b>Nome:</b> <%= obju.getNome()%>
        <br>
        <b>Senha:</b ><%=obju.getSenha()%>
        <%
        ArrayList<Usuario> listaUsuarios= objdao.listarUsuario();
        %>
        <form action="">
        <table border="1">
        	<tr>
        		<td>Id</td>
        		<td>Nome</td>
        		<td>Email</td>
        		<td>Senha</td>
        		<td>EXCLUIR</td>
        	</tr>
        	<%
        	for(Usuario u : listaUsuarios){
        	%>
        	<tr>
        		<td><%=u.getId() %></td>
        		<td><%=u.getNome() %></td>
        		<td><%=u.getEmail() %></td>
        		<td><%=u.getSenha() %></td>
        		<td><input type="checkbox"></td>
        	</tr>
        	<%
        	} 
        	%>
        </table>
        </form>
</body>
</html>