<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%
 //verifico se veio o c�digo por get  
 if(request.getParameter("codigo")==null) 
 {
     response.sendRedirect("index.jsp");
     return; //paro a execu��o aqui
 }
 /*
    1. Buscar o objeto a partir da chave prim�ria
    2. Mando excluir na dao
 */
    RegiaoDAO dao = new RegiaoDAO();
    Regiao obj = new Regiao();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    //Busca a Regiao
    obj = dao.buscarPorChavePrimaria(codigo);
    //excluir a Regiao buscada
    dao.excluir(obj);
 %>

<%@include file="../cabecalho.jsp"%>

         <h1 >Exclus�o de Regiao</h1>
            
         <div>
             Registro exclu�do com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
