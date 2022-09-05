<%@ page import="dao.Dao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="u" class="classes.Produtos"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
    
<%
    int i = dao.ProdutosDao.cadastrarProdutos(u);
    
    if(i>0){
        response.sendRedirect("produtoscontrolar.jsp?pag=1");
    }else{
        response.sendRedirect("produtocadastrar-erro.jsp");        
    }
%>