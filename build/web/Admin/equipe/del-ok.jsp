<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
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
    EquipeDAO dao = new EquipeDAO();
    Equipe obj = new Equipe();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    //Busca a categoria
    obj = dao.buscarPorChavePrimaria(codigo);
    //excluir a categoria buscada
    dao.excluir(obj);
 %>

<%@include file="../cabecalho.jsp"%>

         <h1 >Exclus�o de Equipe</h1>
            
         <div>
             Registro exclu�do com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
