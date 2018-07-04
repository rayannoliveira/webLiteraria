<%@page import="DAO.DAOLivro"%>
<%@page import="modelo.Livro"%>

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
DAOLivro daolivro= new DAOLivro();
String imagem=request.getParameter("n");
int i= Integer.parseInt(imagem);
if(i==2){
daolivro.votarLivro(i);
	response.sendRedirect("indicacao.jsp");
}else{
	if(i==3){
		daolivro.votarLivro(i);
		response.sendRedirect("indicacao.jsp");
	}
	else{
		daolivro.votarLivro(i);
		response.sendRedirect("indicacao.jsp");
	}
}


%>
</body>
</html>