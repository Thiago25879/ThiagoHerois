<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
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
    EditoraDAO dao = new EditoraDAO();
    Editora obj = new Editora();
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    //Busca a Editora
    obj = dao.buscarPorChavePrimaria(codigo);
    //excluir a Editora buscada
    dao.excluir(obj);
 %>

<%@include file="../cabecalho.jsp"%>

         <h1 >Exclus�o de Editora</h1>
            
         <div>
             Registro exclu�do com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
