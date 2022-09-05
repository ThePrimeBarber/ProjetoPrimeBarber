<%@page import="dao.DaoProfissional"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.DaoProfissional, classes.Profissional, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/tabela.css">
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Profissionais</title>
    </head>
    <body>
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
                
                List<Profissional> list = DaoProfissional.getProfissionais(id,total);
                request.setAttribute("list", list);
                
                int contagem = DaoProfissional.getContagem();
                int i;
                request.setAttribute("contagem", contagem);
if(contagem%total==0){
    contagem=contagem/total;
}else{
    contagem=contagem/total + 1;    
}
            %>
        
            <h1>Lista de Profissionais</h1>
            <table>
            <tr><th>Id</th><th>Nome</th><th>Email</th><th>Senha</th><th>Funcao</th><th>Acesso</th><th colspan="2">Ações</td></tr>
                <c:forEach items="${list}" var="profissional">
                <tr>
                    <td>${profissional.getId()}</td>
                    <td>${profissional.getNome()}</td>
                    <td>${profissional.getEmail()}</td>            
                    <td>${profissional.getSenha()}</td>    
                    <td>${profissional.getFuncao()}</td>
                    <td>${profissional.getAcesso()}</td>                     
                    <td><a href="profissionaleditarform.jsp?id=${profissional.getId()}"><img src="imagens/pencil-square.svg" alt="Editar" width="32" height="32"></a></td>
                    <td><a href="profissionalexcluir.jsp?id=${profissional.getId()}"><img src="imagens/dash-circle-fill-red.svg" alt="Excluir" width="32" height="32"></a></td>            
                </tr>
                </c:forEach>
            </table>
<div class="pagination">
    <% for(i=1; i <= contagem; i++) {%>
            <a href="profissionaiscontrolar.jsp?pag=<%=i%>"><%=i%></a>
    <% } %>   
</div>  
<a href="profissionalcadastrar.html"><img src="imagens/plus-square-fill.svg" alt="Incluir Profissional" height="35" width="35"></a>
    </div>
    <div class="footer">
        <%@include file="rodape.jsp"%>
    </div>
    </body>
        </html>