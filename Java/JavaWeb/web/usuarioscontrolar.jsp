<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.Dao, dao.UsuariosDao, classes.Usuario, java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/tabela.css">
            <link href="css/menu.css" rel="stylesheet" type="text/css"/>
            <link href="css/padrao.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Usuários</title>
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
                
                List<Usuario> list = UsuariosDao.getUsuarios(id,total);
                request.setAttribute("list", list);
                
                int contagem = UsuariosDao.getContagem();
                int i;
                request.setAttribute("contagem", contagem);
if(contagem%total==0){
    contagem=contagem/total;
}else{
    contagem=contagem/total + 1;    
}
            %>
        
            <h1>Lista de Usuários</h1>
            <table>
            <tr><th>Id</th><th>Nome</th><th>Email</th><th>Senha</th><th>Acesso</th><th>Status</th><th colspan="3">Ações</td></tr>
                <c:forEach items="${list}" var="usuario">
                <tr>
                    <td>${usuario.getId()}</td>
                    <td>${usuario.getNome()}</td>
                    <td>${usuario.getEmail()}</td>            
                    <td>${usuario.getSenha()}</td>    
                    <td>${usuario.getAcesso()}</td>
                    <td>${usuario.getStatus()}</td>
                    <td><a href="usuarioeditarform.jsp?id=${usuario.getId()}"><img src="imagens/pencil-square.svg" alt="Editar" width="32" height="32"></a></td>
                    <td><a href="usuariobloquear.jsp?id=${usuario.getId()}&status=${usuario.getStatus()}"><img src="./imagens/x-octagon-fill.svg" alt="Bloquear" width="32" height="32"></a></td>
                    <td><a href="usuarioexcluir.jsp?id=${usuario.getId()}"><img src="imagens/dash-circle-fill.svg" alt="Excluir" width="32" height="32"></a></td> 
                </tr>
                </c:forEach>
            </table>
<div class="pagination">
    <% for(i=1; i <= contagem; i++) {%>
            <a href="usuarioscontrolar.jsp?pag=<%=i%>"><%=i%></a>
    <% } %>   
</div>  
<a href="usuariocadastrarform.html"><img src="imagens/plus-square-fill.svg" height="35" width="35" alt="Incluir Usuário"></a>
    </div>
    <div class="footer">
        <%@include file="rodape.jsp"%>
    </div>
    </body>
</html>