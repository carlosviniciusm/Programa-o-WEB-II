
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../conexao.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Professores</title>
    </head>
    <body>
        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <a class="brand" href="../index.jsp">Colégio Help - Listar Professores</a>
                <ul class="nav">
                    <li class="active"><a href="../professores/cadastrarProfessor.jsp">Cadastrar</a></li>
                    <li><a href="listarProfessores.jsp">Listar</a></li>
                    <li><a href="../busca/buscaProfessor.jsp">Buscar</a></li>
                    <li><a href="../index.jsp">Voltar</a></li>
                </ul>
            </div>
        </div>

        <table class="table">
            <thead>
                
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Telefone</th>
                    <th>E-mail</th>
                    <th>Disciplina</th>
                    <th>Atualizar</th>
                    <th>Remover</th>
                </tr>
            </thead>
            <%            ResultSet res = stm.executeQuery("select * from professores");
                    if (res.next()) {
                        do { %>
            <tbody >
                <tr>
                    <th scope="row"><%out.println(res.getString(1));%></th>
                    <td><%out.println(res.getString(2));%></td>
                    <td><%out.println(res.getString(3));%></td>
                    <td><%out.println(res.getString(4));%></td>
                    <td><%out.println(res.getString(5));%></td>
                    <td><%out.println(res.getString(6));%></td>
                    <td><%out.println("<a href='../professores/updateProfessores.jsp?id=" + res.getString(1) + "'>");%><div align="center"><img src="../img/editar.gif" height="20" width="20"/></div></td>
                    <td><%out.println("<a href='../remover/remProfessor.jsp?id=" + res.getString(1) + "'>");%><div align="center"><img src="../img/remover.gif" height="20" width="20"/></div></td>
                </tr>
            </tbody>
            <%                    } while (res.next());
                } else {
                    out.println("Sem usuários");
                }
            %>
        </table>

    </body>
</html>
