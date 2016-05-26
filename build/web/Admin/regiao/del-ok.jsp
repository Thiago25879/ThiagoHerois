<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%
 //verifico se veio o código por get  
 if(request.getParameter("codigo")==null) 
 {
     response.sendRedirect("index.jsp");
     return; //paro a execução aqui
 }
 /*
    1. Buscar o objeto a partir da chave primária
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

         <h1 >Exclusão de Regiao</h1>
            
         <div>
             Registro excluído com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
