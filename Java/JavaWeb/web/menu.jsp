<head>
<meta charset="utf-8">
</head>
<body>
<ul>
  <li><a href="principal.jsp">Principal</a></li>

     <%
      String adm = (String) request.getSession().getAttribute("acesso");
 
       if (adm.equals("Admin")) {
          %>

<li class='dropdown'><a href='javascript:void(0)' class='dropbtn'>Usuários</a>
    <div class='dropdown-content'><a href='usuariosrelatorio.jsp'>Relatório de Usuários</a><a href='usuarioscontrolar.jsp?pag=1'>Controlar Usuários</a><a href='usuariocadastrarform.html'>Cadastrar Usuário</a></div></li>
<li class='dropdown'><a href='javascript:void(0)' class='dropbtn'>Profissionais</a>
    <div class='dropdown-content'><a href='profissionaiscontrolar.jsp?pag=1'>Controlar Profissionais</a>
<li class='dropdown'><a href='javascript:void(0)' class='dropbtn'>Clientes</a>
     <div class='dropdown-content'><a href='clientescontrolar.jsp?pag=1'>Lista de Clientes</a></div></li>
            <%
          
        }
   %>  
   <li><a href='produtoscontrolar.jsp?pag=1'>Produtos</a></li>
 
<li class="dropdown" style="float:right">
    <a href="javascript:void(0)" class="dropbtn"><%=request.getSession().getAttribute("usuario")%></a>
    <div class="dropdown-content">
      <a href="#">Alterar Dados</a>
      <a href="#">Alterar Senha</a>
      <a href="deslogar.jsp"> <img src="imagens/box-arrow-left.svg"> Deslogar></a>
    </div>
  </li>
</ul>

</body>