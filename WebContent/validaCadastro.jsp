<%@page import="javax.swing.JOptionPane"%>
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
<%

            String nome=request.getParameter("txtNome");
            String email= request.getParameter("TxEmail");
            String senha= request.getParameter("txtSenha");
            String senhaconf= request.getParameter("txtSenhaop");
            out.println(senha);
            out.println("asdsa");
            out.println(senhaconf);
            if(senha.equalsIgnoreCase(senhaconf)){
            	Usuario obju= new Usuario();
                obju.setNome(nome);
                obju.setEmail(email);
                obju.setSenha(senha);
                System.out.println(obju.getEmail());
                System.out.println(obju.getNome());
                System.out.println(obju.getSenha());
                DAOUsuario objdao= new DAOUsuario();
                objdao.cadastrarUsuario(obju);
                session.setAttribute("usuario", obju);
            	response.sendRedirect("telaInicio.jsp");
            	
            }
            else{
            	
            	response.sendRedirect("cadastro.jsp");
            	 JOptionPane.showMessageDialog(null, "Senhas não estão iguais");
            }
            
            
            
            
           // DAOUsuario objdao= new DAOUsuario();
            //objdao.cadastrarUsuario(obju);
            
            
            
            
         %>

</body>
</html>