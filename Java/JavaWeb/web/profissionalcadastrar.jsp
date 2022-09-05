<%@ page import="dao.DaoProfissional"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="p" class="classes.Profissional"></jsp:useBean>
<jsp:setProperty property="*" name="p" />
    
<%
    int i = DaoProfissional.cadastrarProfissional(p);
    
    if(i>0){
        response.sendRedirect("profissionaiscontrolar.jsp?pag=1");
    }else{
        response.sendRedirect("profissionalcadastrar-erro.jsp");        
    }
%>