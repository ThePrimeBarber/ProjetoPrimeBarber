<%@ page import="dao.DaoProfissional"%>
<jsp:useBean id="p" class="classes.Profissional"></jsp:useBean>
<jsp:setProperty property="*" name="p" />
    
<%
    int i = DaoProfissional.editarProfissional(p);
    response.sendRedirect("profissionaiscontrolar.jsp?pag=1");
%>