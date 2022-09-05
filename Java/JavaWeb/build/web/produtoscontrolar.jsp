<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Dao, dao.ProdutosDao, classes.Produtos, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
            <link href="css/menu.css" rel="stylesheet" type="text/css"/>
            <link href="css/padrao.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Produtos</title>
    </head>
    <body>
            
        <%@include file="acessoadm.jsp"%>
        
        <div class="topnav">
                <%@include file="menu.jsp"%>
            </div>
            <div class="content">        
            <%
                String pag = request.getParameter("pag");
                int id = Integer.parseInt(pag);
                
                //Quantidade de Registros da Página
                int total = 5;
                
                if(id!=1){
                    id = id -1;
                    id = id * total + 1;
                }
                
                List<Produtos> list = ProdutosDao.getProdutos(id,total);
                request.setAttribute("list", list);
                
                int contagem = ProdutosDao.getContagem();
                int i;
                request.setAttribute("contagem", contagem);
if(contagem%total==0){
    contagem=contagem/total;
}else{
    contagem=contagem/total + 1;    
}
            %>
        
            <h1>Lista de Produtos</h1>
            <table>
            <tr><th>Id</th><th>Nome</th><th>Quantidade</th><th>Preço</th><th>Marca</th><th colspan="2">Ações</td></tr>
                <c:forEach items="${list}" var="produtos">
                <tr>
                    <td>${produtos.getId()}</td>
                    <td>${produtos.getNome()}</td>
                    <td>${produtos.getQuantidade()}</td>            
                    <td>${produtos.getPreco()}</td>    
                    <td>${produtos.getMarca()}</td>
                    <td><a href="produtoseditarform.jsp?id=${produtos.getId()}"><img src="imagens/pencil-square.svg" alt="Editar" width="32" height="32"></a></td>
                    <td><a href="produtosexcluir.jsp?id=${produtos.getId()}"><img src="imagens/dash-circle-fill-red.svg" alt="Excluir" width="32" height="32"></a></td> 
                </tr>
                </c:forEach>
            </table>
<div class="pagination">
    <% for(i=1; i <= contagem; i++) {%>
            <a href="produtoscontrolar.jsp?pag=<%=i%>"><%=i%></a>
    <% } %>   
</div>  
<a href="produtocadastrarform.html"><img src="imagens/plus-square-fill.svg" height="35" width="35" alt="Incluir Produto"></a>
    </div>
    <div class="footer">
        <%@include file="rodape.jsp"%>
    </div>
    </body>
</html>