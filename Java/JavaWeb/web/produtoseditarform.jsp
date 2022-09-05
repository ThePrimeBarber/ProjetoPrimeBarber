<%@ page import="dao.Dao, classes.Produtos, java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/estilo.css">
            <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <title>Editar Produtos</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            Produtos produto = dao.ProdutosDao.getProdutosById(Integer.parseInt(id));
        %>
        <form action="produtoseditar.jsp" method="post">
            <h3>Editar Produto Id: <%=produto.getId()%></h3>
            <input type="hidden" name="id" value="<%=produto.getId()%>">
            <input type="text" name="nome" value="<%=produto.getNome()%>" placeholder="Nome do Produto..." required>		
            <input type="text" name="marca" value="<%=produto.getMarca()%>" placeholder="Marca do Produto" required>
            <input type="text" name="quantidade" value="<%=produto.getQuantidade()%>" placeholder="Quantidade do Produto em estoque..." required>
     <input type="text" name="preco" value="<%=produto.getPreco()%>" placeholder="Preco do Produto" required>
            <input type="submit" value="Editar">
        </form>
    </body>
</html>