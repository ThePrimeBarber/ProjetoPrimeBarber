<%@ page import="dao.Dao"%>
<jsp:useBean id="u" class="classes.Produtos"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
    
<%
    int i = dao.ProdutosDao.excluirProdutos(u);
    response.sendRedirect("produtoscontrolar.jsp?pag=1");
%>