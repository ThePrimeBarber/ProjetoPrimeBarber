<%@page import="dao.ClienteDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.ClienteDao, classes.Cliente, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/tabela.css">
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Clientes</title>
    </head>
    <body>
        <%@include file="acessocomum.jsp"%>   
        
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
                
                List<Cliente> list = dao.ClienteDao.getCliente(id,total);
                request.setAttribute("list", list);
                
                int contagem = ClienteDao.getContagem();
                int i;
                request.setAttribute("contagem", contagem);
if(contagem%total==0){
    contagem=contagem/total;
}else{
    contagem=contagem/total + 1;    
}
            %>
        
            <h1>Lista de Clientes</h1>
            <table>
            <tr><th>Id</th><th>Nome</th><th>Cpf</th><th>Endereco</th><th>Telefone</th></tr>
                <c:forEach items="${list}" var="cliente">
                <tr>
                    <td>${cliente.getId()}</td>
                    <td>${cliente.getNome()}</td>
                    <td>${cliente.getCpf()}</td>            
                    <td>${cliente.getEndereco()}</td>
                    <td>${cliente.getTelefone()}</td>                               
                </tr>
                </c:forEach>
            </table>
<div class="pagination">
    <% for(i=1; i <= contagem; i++) {%>
            <a href="clientescontrolar.jsp?pag=<%=i%>"><%=i%></a>
    <% } %>   
</div> 
    </div>
    <div class="footer">
        <%@include file="rodape.jsp"%>
    </div>
    </body>
        </html>