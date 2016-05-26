<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%
 //verifico se foi enviado o campo txtNome
 if(request.getParameter("txtNome") == null)
 {
     //volta para a tela da listagem
     response.sendRedirect("index.jsp");
     return;
 }
 //verifica se o campo está vazio
  if(request.getParameter("txtNome").isEmpty())
 {
     //volta para a tela da listagem
     response.sendRedirect("index.jsp");
 }
 
 //Gravar a Editora no banco
 EditoraDAO dao = new EditoraDAO(); 
 //Monto o objeto com os dados para sem inserir
 Editora obj = new Editora();
 
 obj.setNome(request.getParameter("txtNome"));
 
 //executo o insert na DAO    
 dao.incluir(obj);
 %>

<%@include file="../cabecalho.jsp"%>

         <h1 >Cadastro de Editora</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             
             <a href="index.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
