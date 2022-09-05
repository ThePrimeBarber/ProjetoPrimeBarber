<%@ page import="dao.Dao"%>
<jsp:useBean id="u" class="classes.Produtos"></jsp:useBean>
<jsp:setProperty property="*" name="u" />
    
<%
    int i = dao.ProdutosDao.editarProdutos(u);
    response.sendRedirect("produtoscontrolar.jsp?pag=1");
%>