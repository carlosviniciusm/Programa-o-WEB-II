<%-- 
    Document   : remAluno
    Created on : 15/09/2017, 15:46:52
    Author     : Vinicius
--%>
<%@page import="java.sql.ResultSet"%>
<%@include file="../conexao.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Professores</title>
    </head>
    <body>
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <a class="brand" href="../index.jsp">Colégio Help - Remover Professores</a>
                <ul class="nav">
                    <li class="active"><a href="../professores/cadastrarProfessor.jsp">Cadastrar</a></li>
                    <li><a href="../listar/listarProfessores.jsp">Listar</a></li>
                    <li><a href="../busca/buscaProfessor.jsp">Buscar</a></li>
                    <li><a href="../index.jsp">Voltar</a></li>
                </ul>
            </div>
        </div>

        <%
        if (request.getParameter("id") != null) {
            String sqldel = "delete from professores where id=" + request.getParameter("id");
            int resdel = stm.executeUpdate(sqldel);
            if (resdel > 0) {
                out.println("Registro removido com sucesso.");
              
                out.println("\n</td></tr><tr><td colspan='2'><a href='../listar/listarProfessores.jsp" + "'>Voltar</a></td></tr>");
                    
            } else {
                out.println("Registro não removido.");
            }
        } %>
    </body>
</html>
