<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%
    if(request.getParameter("txtNome") == null || request.getParameter("txtCodigo") ==null)
    {
        response.sendRedirect("index.jsp");
        return;
    }
    RegiaoDAO dao = new RegiaoDAO();
    Regiao obj = new Regiao();
    //Monto o objeto a partir das informa��es do formul�rio
    obj.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
    obj.setNome(request.getParameter("txtNome"));
    //Gravo a atualiza��o na base de dados
    dao.alterar(obj);
    
%>


<%@include file="../cabecalho.jsp"%>

         <h1 >Altera��o de Regiao</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
