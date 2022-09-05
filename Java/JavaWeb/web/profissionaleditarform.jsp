<%@page import="dao.DaoProfissional"%>
<%@ page import="dao.DaoProfissional, classes.Profissional, java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/estilo.css">
            <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <title>Editar Profissionais</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            Profissional profissional = DaoProfissional.getProfissionalById(Integer.parseInt(id));
        %>
        <form action="profissionaleditar.jsp" method="post">
            <h3>Editar Profissional Id: <%=profissional.getId()%></h3>
            <input type="hidden" name="id" value="<%=profissional.getId()%>">
            <input type="text" name="nome" value="<%=profissional.getNome()%>" placeholder="Seu nome..." required>		
            <input type="email" name="email" value="<%=profissional.getEmail()%>" placeholder="Seu e-mail..." required>
            <input type="text" name="funcao" value="<%=profissional.getFuncao()%>" placeholder="Sua Funcao..." required>
        <% if (profissional.getAcesso().equals("Admin")){%>
            <input type="radio" name="acesso" value="Comum" required><label>Comum</label>
            <input type="radio" name="acesso" value="Admin" checked="true"><label>Admin</label>        
        <%}else{%>
            <input type="radio" name="acesso" value="Comum" required checked="true"><label>Comum</label>
            <input type="radio" name="acesso" value="Admin"><label>Admin</label>        
        <%}%>       
            <input type="submit" value="Editar">
        </form>
    </body>
</html>